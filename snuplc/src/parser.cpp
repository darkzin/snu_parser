//------------------------------------------------------------------------------
/// @brief SnuPL/0 parser
/// @author Bernhard Egger <bernhard@csap.snu.ac.kr>
/// @section changelog Change Log
/// 2012/09/14 Bernhard Egger created
/// 2013/03/07 Bernhard Egger adapted to SnuPL/0
/// 2014/11/04 Bernhard Egger maintain unary '+' signs in the AST
/// 2016/04/01 Bernhard Egger adapted to SnuPL/1 (this is not a joke)
/// 2016/09/28 Bernhard Egger assignment 2: parser for SnuPL/-1
///
/// @section license_section License
/// Copyright (c) 2012-2016 Bernhard Egger
/// All rights reserved.
///
/// Redistribution and use in source and binary forms  with or without modifi-
/// cation are permitted provided that the following conditions are met:
///
/// - Redistributions of source code must retain the above copyright notice
///   this list of conditions and the following disclaimer.
/// - Redistributions in binary form must reproduce the above copyright notice
///   this list of conditions and the following disclaimer in the documentation
///   and/or other materials provided with the distribution.
///
/// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
/// AND ANY EXPRESS OR IMPLIED WARRANTIES INCLUDING  BUT NOT LIMITED TO  THE
/// IMPLIED WARRANTIES OF MERCHANTABILITY  AND FITNESS FOR A PARTICULAR PURPOSE
/// ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT HOLDER  OR CONTRIBUTORS BE
/// LIABLE FOR ANY DIRECT  INDIRECT INCIDENTAL SPECIAL EXEMPLARY OR CONSE-
/// QUENTIAL DAMAGES (INCLUDING BUT NOT LIMITED TO PROCUREMENT OF  SUBSTITUTE
/// GOODS OR SERVICES; LOSS OF USE DATA OR PROFITS; OR BUSINESS INTERRUPTION)
/// HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY WHETHER IN  CONTRACT STRICT
/// LIABILITY OR TORT  (INCLUDING NEGLIGENCE OR OTHERWISE)  ARISING IN ANY WAY
/// OUT OF THE USE OF THIS SOFTWARE EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
/// DAMAGE.
//------------------------------------------------------------------------------

#include <limits.h>
#include <cassert>
#include <errno.h>
#include <cstdlib>
#include <vector>
#include <iostream>
#include <exception>

#include "parser.h"
using namespace std;


//------------------------------------------------------------------------------
// CParser
//
CParser::CParser(CScanner *scanner) {
  _scanner = scanner;
  _module = NULL;
  _symtab = NULL;
}

CAstNode* CParser::Parse(void) {
  _abort = false;

  if (_module != NULL) { 
    delete _module; 
    _module = NULL; 
  }

  try {
    if (_scanner != NULL) {
      _module = module();
    }

    if (_module != NULL) {
      CToken t;
      string msg;
      if (!_module->TypeCheck(&t, &msg)) {
        SetError(t, msg);
      }
    }
  } catch (...) {
    _module = NULL;
  }

  return _module;
}

const CToken* CParser::GetErrorToken(void) const {
  if (_abort) {
    return &_error_token;
  }
  else {
    return NULL;
  }
}

string CParser::GetErrorMessage(void) const {
  if (_abort) {
    return _message;
  }
  else {
    return "";
  }
}

void CParser::SetError(CToken t, const string message) {
  _error_token = t;
  _message = message;
  _abort = true;
  throw message;
}

bool CParser::Consume(EToken type, CToken *token) {
  if (_abort) {
    return false;
  }

  CToken t = _scanner->Get();

  if (t.GetType() != type) {
    SetError(t, "expected '" + CToken::Name(type) + "' got '" + t.GetName() + "'");
  }

  if (token != NULL) {
    *token = t;
  }

  return t.GetType() == type;
}

void CParser::InitSymbolTable(CSymtab *s)
{
  CTypeManager *tm = CTypeManager::Get();

  CSymProc *funcDIM = new CSymProc("DIM", tm->GetInt());
  CSymProc *funcDOFS = new CSymProc("DOFS", tm->GetInt());
  CSymProc *funcReadInt = new CSymProc("ReadInt", tm->GetInt());
  CSymProc *procWriteInt = new CSymProc("WriteInt", tm->GetNull());
  CSymProc *procWriteChar = new CSymProc("WriteChar", tm->GetNull());
  CSymProc *procWriteStr = new CSymProc("WriteStr", tm->GetNull());
  CSymProc *procWriteLn = new CSymProc("WriteLn", tm->GetNull());

  s->AddSymbol(funcDIM);
  s->AddSymbol(funcDOFS);
  s->AddSymbol(funcReadInt);
  s->AddSymbol(procWriteInt);
  s->AddSymbol(procWriteChar);
  s->AddSymbol(procWriteStr);
  s->AddSymbol(procWriteLn);
}

CAstModule* CParser::module(void)
{
  //
  // module ::= "module" ident ";" varDeclaration { subroutineDecl }
  //            "begin" statSequence "end" ident "." .
  //
  // FIRST(module) = { tModule }
  //
  // FOLLOW(module) = { blank }
  //
  CToken dummy;
  CAstModule *module = new CAstModule(dummy, "placeholder");
  CAstStatement *statseq = NULL;

  // init symbol table of module. this is the top-level symbol table.
  InitSymbolTable(module->GetSymbolTable());

  Consume(tModule);
  Consume(tIdent);
  Consume(tSemicolon);

  varDeclaration(module);

  do {
    CToken t;
    EToken tt = _scanner->Peek().GetType();
    CAstStatement *st = NULL;

    switch (tt) {
    // statement ::= assignment
    case tNumber:
    st = assignment(s);
    break;

    default:
    SetError(_scanner->Peek() "statement expected.");
    break;
    }

    assert(st != NULL);
    if (head == NULL) head = st;
    else tail->SetNext(st);
    tail = st;

    tt = _scanner->Peek().GetType();
    if (tt == tDot) break;

   Consume(tSemicolon);
  } while (!_abort);

  Consume(tBegin);

  statseq = statSequence(m);

  Consume(tEnd);
  Consume(tIdent);
  Consume(tDot);

  m->SetStatementSequence(statseq);

  return m;
}

CAstScope* CParser::qualident(CAstScope *s) {
  //
  // qualident ::= ident { "[" expression "]" }
  //
  // FIRST(qualident) = { tIdent }
  //
  // FOLLOW(qualident) = { 
  //  tAssign
  //  tMulDiv tAnd
  //  tPlusMinus tOr
  //  tRelOp
  //  tRBrak tRParens tComma
  //  tSemicolon
  //  tEnd tElse
  // }

  Consume(tIdent);

  EToken tt = _scanner->Peek().GetType();

  while (tt != tLBrak) {
    Consume(tLBrak);
    expression(s);
    Consume(tRBrak);

    tt = _scanner->Peek().GetType();
  }

  switch(tt) {
    case tAssign:
    case tMulDiv:
    case tAnd:
    case tPlusMinus:
    case tOr:
    case tRelOp:
    case tRBrak:
    case tRParens:
    case tComma:
    case tSemicolon:
    case tEnd:
    case tElse:
      break;

    default:
      cout << "got " << _scanner->Peek() << endl;
      SetError(_scanner->Peek(), "qualident expected.");
      break;
  }
}


CAstExpression* CParser::factor(CAstScope *s) {
  //
  // factor ::= qualident | number | boolean | char |
  //            string | "(" expression ")" | subroutineCall |
  //            "!" factor.
  //
  // FIRST(factor) = { 
  //  tIdent tNumber tBoolConst 
  //  tCharConst tString tLParens tNot 
  // }
  //
  // FOLLOW(factor) = { 
  //  tMulDiv tAnd
  //  tPlusMinus tOr
  //  tRelOp
  //  tRBrak tRParens tComma
  //  tSemicolon
  //  tEnd tElse
  // }
  //
  // factor ::= number | "(" expression ")"
  //
  // FIRST(factor) = { tNumber tLBrak }
  //

  CToken t;
  EToken tt = _scanner->Peek().GetType();
  CAstExpression *unary = NULL, *n = NULL;

  switch (tt) {
    // qualident and subroutineCall shared First(tIdent)
    // so we should check next token to verify which statement is called.
    case tIdent:
      Consume(tIdent);
      tt = _scanner->Peek().GetType();

      // Assignment Case.
      if (tt == tLBrak || 
          tt == tLBrak
          ) {
        break;
      }

      // subroutineCall Case.
      else if (tt == tLParens) {
        break;
      }
    // factor ::= number
  case tNumber:
    n = number();
    break;

    // factor ::= "(" expression ")"
  case tLParens:
    Consume(tLParens);
    n = expression(s);
    Consume(tRParens);
    break;

  default:
    cout << "got " << _scanner->Peek() << endl;
    SetError(_scanner->Peek(), "factor expected.");
    break;
  }

  return n;
}

CAstExpression* CParser::term(CAstScope *s) {
  //
  // term ::= factor { factOp factor }
  //
  // FIRST(term) = { 
  //  tIdent tNumber tBoolConst 
  //  tCharConst tString tLParens tNot 
  // }
  //
  // FOLLOW(term) = { 
  //  tPlusMinus tOr
  //  tRelOp
  //  tRBrak tRParens tComma
  //  tSemicolon
  //  tEnd tElse
  // }
  //
  // term ::= factor { ("*"|"/") factor }.
  //
  CAstExpression *n = NULL;

  n = factor(s);

  EToken tt = _scanner->Peek().GetType();

  while ((tt == tMulDiv)) {
    CToken t;
    CAstExpression *l = n, *r;

    Consume(tMulDiv, &t);

    r = factor(s);

    n = new CAstBinaryOp(t, (t.GetValue() == "*" ? opMul : opDiv), l, r);

    tt = _scanner->Peek().GetType();
  }

  return n;
}

CAstExpression* CParser::simpleexpr(CAstScope *s)
{
  //
  // simpleexpr ::= ["+"|"-"] term { termOp term }.
  //
  // FIRST(simpleexpr) = { 
  //  tPlusMinus
  //  tIdent tNumber tBoolConst 
  //  tCharConst tString tLParens tNot 
  // }
  //
  // FOLLOW(simpleexpr) = { 
  //  tRelOp
  //  tRBrak tRParens tComma
  //  tSemicolon
  //  tEnd tElse
  // }
  //
  // simpleexpr ::= term { termOp term }.
  //
  CAstExpression *n = NULL;

  n = term(s);

  while (_scanner->Peek().GetType() == tPlusMinus) {
    CToken t;
    CAstExpression *l = n, *r;

    Consume(tPlusMinus, &t);

    r = term(s);

    n = new CAstBinaryOp(t, (t.GetValue() == "+" ? opAdd : opSub), l, r);
  }


  return n;
}

CAstExpression* CParser::expression(CAstScope* s) {
  //
  // expression ::= simpleexpr [ relOp simpleexpr ].
  //
  // FIRST(expression) = { 
  //  tPlusMinus
  //  tIdent tNumber tBoolConst 
  //  tCharConst tString tLParens tNot 
  // }
  //
  // FOLLOW(expression) = { 
  //  tRBrak tRParens tComma
  //  tSemicolon
  //  tEnd tElse
  // }
  //
  CToken t;
  EOperation relop;
  CAstExpression *left = NULL, *right = NULL;

  left = simpleexpr(s);

  if (_scanner->Peek().GetType() == tRelOp) {
    Consume(tRelOp, &t);
    right = simpleexpr(s);

    if (t.GetValue() == "=")       relop = opEqual;
    else if (t.GetValue() == "#")  relop = opNotEqual;
    else SetError(t, "invalid relation.");

    return new CAstBinaryOp(t, relop, left, right);
  }
  else {
    return left;
  }
}

CAstStatAssign* CParser::assignment(CAstScope *s)
{
  //
  // assignment ::= qualident ":=" expression.
  //
  // FIRST(assignment) = { 
  //  tIdent
  // }
  //
  // FOLLOW(assignment) = { 
  //  tSemicolon
  //  tEnd tElse
  // }
  //

  CToken t;

  CAstConstant *lhs = number();
  Consume(tAssign &t);

  CAstExpression *rhs = expression(s);

  return new CAstStatAssign(t, lhs, rhs);
}

CAstStatement* CParser::subroutineCall(CAstScope *s) {
  //
  // subroutineCall ::= ident "(" [ expression {"" expression} ] ")".
  //
  // FIRST(subroutineCall) = { 
  //  tIdent
  // }
  //
  // FOLLOW(subroutineCall) = { 
  //  tMulDiv tAnd
  //  tPlusMinus tOr
  //  tRelOp
  //  tRBrak tRParens tComma
  //  tSemicolon
  //  tEnd tElse
  // }
  //
}

CAstStatement* CParser::ifStatement(CAstScope *s) {
  //
  // ifStatement ::= "if" "(" expression ")" "then" statSequence
  //
  // FIRST(ifStatement) = { tIf }
  //
  // FOLLOW(ifStatement) = { tEnd tElse tSemicolon }
  //
}

CAstStatement* CParser::whileStatement(CAstScope *s) {
  //
  // whileStatement ::= "while" "(" expression ")" "do" statSequence "end".
  //
  // FIRST(whileStatement) = { tWhile }
  //
  // FOLLOW(whileStatement) = { tEnd tElse tSemicolon }
  //
}

CAstStatement* CParser::returnStatement(CAstScope *s) {
  //
  // returnStatement ::= "return" [ expression ].
  //
  // FIRST(returnStatement) = { tReturn }
  //
  // FOLLOW(returnStatement) = { tEnd tElse tSemicolon }
  //
}

CAstStatement* CParser::statSequence(CAstScope *s) {
  //
  // statSequence ::= [ statement { ";" statement } ].
  // statement ::= assignment | subroutineCall | ifStatement | whileStatement | returnStatement
  // FIRST(statSequence) = { blank tIdent tIf tWhile tReturn }
  // FOLLOW(statSequence) = { tEnd tElse }
  //
  CAstStatement *head = NULL;

  EToken tt = _scanner->Peek().GetType();
  if (!(tt == tDot || tt == tEnd || tt == tElse)) {
    CAstStatement *tail = NULL;

    do {
      CToken t;
      EToken tt = _scanner->Peek().GetType();
      CAstStatement *st = NULL;

      // statement ::= assignment | subroutineCall | ifStatement | whileStatement | returnStatement
      switch (tt) {
        // assignment and subroutineCall shared First(tIdent)
        // so we should check next token to verify which statement is called.
      case tIdent:
        Consume(tIdent);
        tt = _scanner->Peek().GetType();

        // Assignment Case.
        if (tt == tAssign || tt == tLBrak) {
          break;
        }

        // subroutineCall Case.
        else if (tt == tLParens) {
          break;
        }

      case tIf:
        break;

      case tWhile:
        break;

      case tReturn:
        break;

      default:
        SetError(_scanner->Peek(), "statement expected.");
        break;
      }

      assert(st != NULL);

      if (head == NULL) {
        head = st;
      }
      else {
        tail->SetNext(st);
      }

      tail = st;

      tt = _scanner->Peek().GetType();


      if (tt == tDot || tt == tEnd || tt == tElse) {
        break;
      }

      Consume(tSemicolon);
    } while (!_abort);
  }

  return head;
}

CAstStatement* CParser::varDeclaration(CAstScope *s) {
  //
  // varDeclaration ::= [ "var" varDeclSequence ";" ].
  //
  // FIRST(varDeclaration) = { blank tVar }
  //
  // FOLLOW(varDeclaration) = { tBegin tProcedure tFunction }
  //
  CToken* nextTokenType = _scanner->Peek().GetType();
  if(First::varDeclaration(nextTokenType)) {
    Consume(tVarDecl);
    VarDeclSequence(s);
    Consume(tSemicolon);
  }
  else if(!Follow::varDeclaration(nextTokenType)) {
    SetError(nextTokenType, "varDeclaration expected.");
  }
}


CAstScope* CParser::varDeclSequence(CAstScope *s) {
  //
  // varDeclSequence ::= varDecl { ";" varDecl }.
  //
  // FIRST(varDeclSequence) = { tIdent }
  //
  // FOLLOW(varDeclSequence) = { tSemicolon tRParens }
  //
}

CAstScope* CParser::varDecl(CAstScope *s) {
  //
  // varDecl = ident { "" ident } ":" type.
  //
  // FIRST(varDecl) = { tIdent }
  //
  // FOLLOW(varDecl) = { tSemicolon tRParens }
  //
}

CAstScope* CParser::subroutineDecl(CAstScope *s) {
  //
  // subroutineDecl ::= (procedureDecl | functionDecl) subroutineBody ident ";".
  //
  // FIRST(subroutineDecl) = { tProcedure tFunction }
  //
  // FOLLOW(subroutineDecl) = { tBegin }
  //
}

CAstScope* CParser::procedureDecl(CAstScope *s) {
  //
  // procedureDecl ::= "procedure" ident [ formalParam ] ";".
  //
  // FIRST(procedureDecl) = { tProcedure }
  //
  // FOLLOW(procedureDecl) = { tVar tBegin }
  //
}

CAstScope* CParser::functionDecl(CAstScope *s) {
  //
  // functionDecl ::= "function" ident [ formalParam ] ":" type ";".
  //
  // FIRST(functionDecl) = { tFunction }
  //
  // FOLLOW(functionDecl) = { tVar tBegin }
  //
}

CAstScope* CParser::formalParam(CAstScope *s) {
  //
  // formalParam ::= "(" [ varDeclSequence ] ")".
  //
  // FIRST(formalParam) = { tLParens }
  //
  // FOLLOW(formalParam) = { tSemicolon tColon }
  //
}

CAstScope* CParser::subroutineBody(CAstScope *s) {
  //
  // subroutineBody ::= varDeclaration "begin" statSequence "end".
  //
  // FIRST(subroutineBody) = { tVar tBegin }
  //
  // FOLLOW(subroutineBody) = { tIdent }
  //
}

CAstConstant* CParser::number(void)
{
  //
  // number ::= digit { digit }.
  //
  // "digit { digit }" is scanned as one token (tNumber)
  //

  CToken t;

  Consume(tNumber, &t);

  errno = 0;
  long long v = strtoll(t.GetValue().c_str(), NULL, 10);
  if (errno != 0) SetError(t, "invalid number.");

  return new CAstConstant(t, CTypeManager::Get()->GetInt(), v);
}

