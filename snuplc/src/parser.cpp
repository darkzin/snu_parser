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
    SetError(t, "expected '" + CToken::Name(type) + "', got '" + t.GetName() + "'");
  }

  if (token != NULL) {
    *token = t;
  }

  return t.GetType() == type;
}

void CParser::InitSymbolTable(CSymtab *s)
{
  // Initialize procedure/functions and their parameters.
  // First, declare procedure symbol.
  // Second, declare parameter symbols.
  // Third, add parameter symbols to procedure symbol.
  // Finally, add procedure symbol to symbol table.

  CTypeManager *tm = CTypeManager::Get();

  CSymProc *funcDIM = new CSymProc("DIM", tm->GetInt());
  CSymParam *funcDIMParamA = new CSymParam(0, "a", tm->GetVoidPtr());
  CSymParam *funcDIMParamDim = new CSymParam(1, "dim", tm->GetInt());
  funcDIM->AddParam(funcDIMParamA);
  funcDIM->AddParam(funcDIMParamDim);
  s->AddSymbol(funcDIM);

  CSymProc *funcDOFS = new CSymProc("DOFS", tm->GetInt());
  CSymParam *funcDOFSParamA = new CSymParam(0, "a", tm->GetVoidPtr());
  funcDOFS->AddParam(funcDOFSParamA);
  s->AddSymbol(funcDOFS);

  CSymProc *funcReadInt = new CSymProc("ReadInt", tm->GetInt());
  s->AddSymbol(funcReadInt);

  CSymProc *procWriteInt = new CSymProc("WriteInt", tm->GetNull());
  CSymParam *procWriteIntParamI = new CSymParam(0, "i", tm->GetInt());
  procWriteInt->AddParam(procWriteIntParamI);
  s->AddSymbol(procWriteInt);

  CSymProc *procWriteChar = new CSymProc("WriteChar", tm->GetNull());
  CSymParam *procWriteCharParamC = new CSymParam(0, "c", tm->GetChar());
  procWriteChar->AddParam(procWriteCharParamC);
  s->AddSymbol(procWriteChar);

  CSymProc *procWriteStr = new CSymProc("WriteStr", tm->GetNull());
  CSymParam *procWriteStrParamStr = new CSymParam(0, "str", tm->GetPointer(tm->GetArray(-1, tm->GetChar())));
  procWriteStr->AddParam(procWriteStrParamStr);
  s->AddSymbol(procWriteStr);

  CSymProc *procWriteLn = new CSymProc("WriteLn", tm->GetNull());
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
  // init symbol table of module. this is the top-level symbol table.


  CToken moduleToken, beginIdentToken, endIdentToken;
  // "module"
  Consume(tModule, &moduleToken);

  // ident
  Consume(tIdent, &beginIdentToken);
  string moduleName = beginIdentToken.GetValue();

  // Create AstModule, and get symbol table of this module.
  CAstModule *module = new CAstModule(moduleToken, beginIdentToken.GetValue());
  CSymtab *moduleSymtab = module->GetSymbolTable();
  CAstStatement *statseq = NULL;

  // Initialize global procedure/functions(System provided).
  InitSymbolTable(moduleSymtab);

  // ";"
  Consume(tSemicolon);

  // varDeclaration
  varDeclaration(module);

  // Consume subroutineDecl until there is no subroutineDecl.
  while(First::SubroutineDecl(_NextToken().GetType())){
    subroutineDecl(module);
  }

  // "begin"
  Consume(tBegin);

  // statSequence
  statseq = statSequence(module);

  // "end"
  Consume(tEnd);

  // ident
  // this must be equal the upper one.
  Consume(tIdent, &endIdentToken);

  if(beginIdentToken.GetValue() != endIdentToken.GetValue()) {
    SetError(endIdentToken, "module identifier mismatch ('" + beginIdentToken.GetValue() + "' != '" + endIdentToken.GetValue() + "').");
  }

  // "."
  Consume(tDot);

  // set statement sequence to module scope.
  module->SetStatementSequence(statseq);

  return module;
}

CAstDesignator* CParser::qualident(CAstScope *s, CToken *identToken) {
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

  CSymtab *symbolTable= s->GetSymbolTable();
  CToken ident;
  const CSymbol *identSymbol = symbolTable->FindSymbol(identToken->GetValue());
  CAstDesignator *lhs;
  CAstArrayDesignator *lhsArray;

  // ident
  //
  // If identToken is passed by parameter, then use that.
  // Else Consume.
  if(identToken != NULL){
    ident = *identToken;
  }
  else {
    Consume(tIdent, &ident);
  }

  // If identSymbol don't exist, this identifier is not declared.
  if(identSymbol == NULL) {
    SetError(identToken, "undefined identifier.");
    return NULL;
  }

  // If identSymbol exist but it is procedure,
  // This is Error because qualident only use variable(include params) identifier.
  if(identSymbol->GetSymbolType() == stProcedure) {
    SetError(identToken, "designator expected.");
    return NULL;
  }

  // ArrayDesignator has two approch.
  // 1. Pointer of Array (formal parameter).
  // 2. Just Array (local variable, global variable).
  //
  // If next token is not left braket and symbol also scalar type,
  // this identifier is scalar type.
  if(_NextToken().GetType() != tLBrak && identSymbol->GetDataType()->IsScalar()) {
    lhs = new CAstDesignator(identToken, identSymbol);
  }

  // Else array type.
  else {
    lhsArray = new CAstArrayDesignator(identToken, identSymbol);

    // { "[" expression "]" }.
    while (_NextToken().GetType() == tLBrak) {
      Consume(tLBrak);
      lhsArray->AddIndex(expression(s));
      Consume(tRBrak);
    }

    lhsArray->IndicesComplete();

    lhs = lhsArray;
  }

  return lhs;
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

  CToken t, identToken;
  CAstExpression *unary = NULL, *n = NULL;

  switch (_NextToken().GetType()) {
    // qualident and subroutineCall shared First(tIdent)
    // so we should check next token to verify which statement is called.
  case tIdent:
    Consume(tIdent, &identToken);

    // subroutineCall Case.
    if (_NextToken().GetType() == tLParens) {
      return functionCall(s, &identToken);
    }

    // Qualident Case.
    else if (_NextToken().GetType() == tLBrak || Follow::Qualident(_NextToken().GetType())) {
      n = qualident(s, &identToken);
      break;
    }

    // factor ::= number
  case tNumber:
    n = numberConst();
    break;

    // factor ::= boolean
  case tBoolConst:
    n = boolConst();
    break;

    // factor ::= char
  case tCharConst:
    n = charConst();
    break;

    // factor ::= string
  case tString:
    n = stringConst(s);
    break;

    // factor ::= "!" factor
  case tNot:
    Consume(tNot, &t);
    n = new CAstUnaryOp(t, opNot, factor(s));
    break;

    // factor ::= "(" expression ")"
  case tLParens:
    Consume(tLParens);
    n = expression(s);
    Consume(tRParens);
    break;

    // Handling Error.
  default:
    //cout << "got " << _NextToken() << endl;
    SetError(_NextToken(), "factor expected.");
    break;
  }

  return n;
}

CAstExpression* CParser::term(CAstScope *s) {
  //
  // term ::= factor { factOp factor }
  //
  // FIRST(term) = { 
  //  tIdent tNumber tBoolean 
  //  tChar tString tLParens tNot 
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
  CAstExpression *n = NULL, *leftExpression = NULL, *rightExpression = NULL;
  CToken opToken;
  EToken nextTokenType;
  EOperation op;

  // factor
  n = factor(s);
  nextTokenType = _NextToken().GetType();

  // { factOp factor }
  // tMulDiv and tAnd are factOp.
  while (nextTokenType == tMulDiv || nextTokenType == tAnd) {
    leftExpression = n;
    rightExpression = NULL;

    // If next token is tMulDiv, operation token is opMul or opDiv.
    if(nextTokenType == tMulDiv) {
      Consume(tMulDiv, &opToken);
      op = (opToken.GetValue() == "*" ? opMul : opDiv);
    }
    // Else opAnd.
    else {
      Consume(tAnd, &opToken);
      op = opAnd;
    }

    rightExpression = factor(s);
    n = new CAstBinaryOp(opToken, op, leftExpression, rightExpression);

    nextTokenType = _NextToken().GetType();
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
  //  tIdent tNumber tBoolean 
  //  tChar tString tLParens tNot 
  // }
  //
  // FOLLOW(simpleexpr) = { 
  //  tRelOp
  //  tRBrak tRParens tComma
  //  tSemicolon
  //  tEnd tElse
  // }
  //
  CAstExpression *n = NULL, *leftExpression = NULL, *rightExpression = NULL;
  CAstUnaryOp *unaryExpression = NULL;
  CAstConstant *number = NULL;
  CToken unaryOpToken, nextToken;
  EToken nextTokenType;
  EOperation unaryOp, binaryOp;

  nextTokenType = _NextToken().GetType();

  // ["+"|"-"]
  // decide which operation we use.
  if(nextTokenType == tPlusMinus) {
    Consume(tPlusMinus, &unaryOpToken);

    if(unaryOpToken.GetValue() == "+"){
      unaryOp = opPos;
    }
    else {
      unaryOp = opNeg;
    }

    nextTokenType = _NextToken().GetType();
    // term
    n = term(s);

    // If next token left parentheses, just do unary expression.
    if (nextTokenType == tLParens) {
      n = new CAstUnaryOp(unaryOpToken, unaryOp, n);
    }

    // Negative sign with number is negative number,
    // So change sign of number.
    else if(CAstConstant *number = dynamic_cast<CAstConstant *>(n)){
      long long originalValue = number->GetValue();
      long long value = ((unaryOp == opNeg ? -1 : 1) * originalValue);
      number->SetValue(value);
    }

    // Next expression is binaryOp, and left operand is AstConstant(integer),
    // change sign of value.
    else if (CAstBinaryOp *binaryOp = dynamic_cast<CAstBinaryOp *>(n)) {
      if (CAstConstant *firstOperand = dynamic_cast<CAstConstant *>(binaryOp->GetLeft())) {
        long long originalValue = firstOperand->GetValue();
        long long value = ((unaryOp == opNeg ? -1 : 1) * originalValue);
        firstOperand->SetValue(value);
      }
      else {
        n = new CAstUnaryOp(unaryOpToken, unaryOp, n);
      }
    }

    // else just do unary expression.
    else {
      n = new CAstUnaryOp(unaryOpToken, unaryOp, n);
    }
    // Else neg operation.
    //CAstConstant *number = dynamic_cast<CAstConstant *>(n);
    //if (number == NULL) {
      //cout << "not number is " << n << endl;
      //n = new CAstUnaryOp(unaryOpToken, unaryOp, n);
    //}
  }

  // term
  else {
    n = term(s);
  }

  nextTokenType = _NextToken().GetType();

  // { termOp term }
  while (nextTokenType == tPlusMinus || nextTokenType == tOr) {
    leftExpression = n;
    rightExpression = NULL;

    Consume(nextTokenType, &nextToken);

    // handling termOp(+, -, &&).
    if(nextTokenType == tPlusMinus && nextToken.GetValue() == "+"){
      binaryOp = opAdd;
    }
    else if(nextTokenType == tPlusMinus && nextToken.GetValue() == "-"){
      binaryOp = opSub;
    }
    else {
      binaryOp = opOr;
    }

    rightExpression = term(s);

    n = new CAstBinaryOp(nextToken, binaryOp, leftExpression, rightExpression);
    nextTokenType = _NextToken().GetType();
  }

  return n;
}

CAstExpression* CParser::expression(CAstScope* s) {
  //
  // expression ::= simpleexpr [ relOp simpleexpr ].
  //
  // FIRST(expression) = { 
  //  tPlusMinus
  //  tIdent tNumber tBoolean 
  //  tChar tString tLParens tNot 
  // }
  //
  // FOLLOW(expression) = { 
  //  tRBrak tRParens tComma
  //  tSemicolon
  //  tEnd tElse
  // }
  //
  CAstExpression *leftExpression = NULL, *rightExpression = NULL;
  CToken nextToken;
  EToken nextTokenType;
  EOperation relOp;

  // simpleexpr.
  leftExpression = simpleexpr(s);
  nextTokenType = _NextToken().GetType();

  // [ relOp simpleexpr ]
  // If there is relOp, It means that there is also simpleexpr.
  if (nextTokenType == tRelOp) {
    Consume(tRelOp, &nextToken);
    rightExpression = simpleexpr(s);

    if(nextToken.GetValue() == "=") {
      relOp = opEqual;
    }
    else if(nextToken.GetValue() == "#") {
      relOp = opNotEqual;
    }
    else if(nextToken.GetValue() == "<") {
      relOp = opLessThan;
    }
    else if(nextToken.GetValue() == "<=") {
      relOp = opLessEqual;
    }
    else if(nextToken.GetValue() == ">") {
      relOp = opBiggerThan;
    }
    else if(nextToken.GetValue() == ">=") {
      relOp = opBiggerEqual;
    }
    else {
      SetError(nextToken, "invalid relation.");
    }

    return new CAstBinaryOp(nextToken, relOp, leftExpression, rightExpression);
  }
  // If not, just return first simpleexpr.
  else {
    return leftExpression;
  }
}

CAstStatAssign* CParser::assignment(CAstScope *s, CToken *identToken) {
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
  // lhs = qualident, rhs = expression.
  CToken assign;
  CAstDesignator *lhs = qualident(s, identToken);
  Consume(tAssign, &assign);

  CAstExpression *rhs = expression(s);

  return new CAstStatAssign(assign, lhs, rhs);
}

CAstFunctionCall* CParser::functionCall(CAstScope *s, CToken* identToken) {
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
  CToken identifier;
  CAstFunctionCall *funcCall;

  CSymtab *symbolTable = s->GetSymbolTable();
  const CSymProc *subroutineSymbol;
  const CSymParam *paramSymbol = NULL;

  int index = 0;

  // ident
  if(identToken == NULL) {
    Consume(tIdent, &identifier);
  }
  else {
    identifier = identToken;
  }

  // Get a symbol table of current scope,
  // then Get the subroutine symbol.
  symbolTable = s->GetSymbolTable();
  subroutineSymbol = (const CSymProc*)symbolTable->FindSymbol(identToken->GetValue());

  // If there is no symbol, There is no declaration of subroutine.
  if(subroutineSymbol == NULL) {
    SetError(identifier, "undefined identifier.");
    return NULL;
  }
  // If there is symbol but not procedure type, It means that this symbol is used by variable.
  else if(subroutineSymbol->GetSymbolType() != stProcedure){
    SetError(identifier, "invalid procedure/function identifier.");
    return NULL;
  }

  // "(" [ expression { "," expression } ] ")"
  // "("
  Consume(tLParens);

  // handling function call.
  funcCall = new CAstFunctionCall(*identToken, subroutineSymbol);

  // If function called without params, check whether a size of formal params is zero.
  // If not, It is error.
  if (_NextToken().GetType() == tRParens) {
    // If function has no param, just close the parentheses and return.
    Consume(tRParens);
    return funcCall;
  }

  // Else function has params, so check expressions.
  // [ expression
  funcCall->AddArg(expression(s));


  // then add param to function.

  // { "," expression }
  while(_NextToken().GetType() == tComma){
    Consume(tComma);
    funcCall->AddArg(expression(s));
  }

  // ")"
  Consume(tRParens);

  return funcCall;
}

CAstStatCall* CParser::procedureCall(CAstScope *s, CToken *identToken) {
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
  //procedureCall equal functionCall which has no reture value.
  return new CAstStatCall(*identToken, functionCall(s, identToken));
}

CAstStatIf* CParser::ifStatement(CAstScope *s) {
  //
  // ifStatement ::= "if" "(" expression ")" "then" statSequence
  // [ "else" statSequence ] "end".
  //
  // FIRST(ifStatement) = { tIf }
  //
  // FOLLOW(ifStatement) = { tEnd tElse tSemicolon }
  //
  CAstExpression *cond;
  CAstStatement *ifBody = NULL, *elseBody = NULL;
  CToken endToken;

  // "if"
  Consume(tIf);
  // "("
  Consume(tLParens);
  // expression. this is condition of if statement.
  cond = expression(s);
  // ")"
  Consume(tRParens);
  // "then"
  Consume(tThen);
  // statSequence. this is body of if statement.
  ifBody = statSequence(s);
  // [ "else" statSequence ]
  if(_NextToken().GetType() == tElse) {
    // "else"
    Consume(tElse);
    // statSequence. this is body if else statement.
    elseBody = statSequence(s);
  }
  // "end"
  Consume(tEnd, &endToken);

  return new CAstStatIf(endToken, cond, ifBody, elseBody);
}

CAstStatWhile* CParser::whileStatement(CAstScope *s) {
  //
  // whileStatement ::= "while" "(" expression ")" "do" statSequence "end".
  //
  // FIRST(whileStatement) = { tWhile }
  //
  // FOLLOW(whileStatement) = { tEnd tElse tSemicolon }
  //
  CAstExpression *cond = NULL;
  CAstStatement *whileBody = NULL;
  CToken endToken;

  // "while"
  Consume(tWhile);
  // "("
  Consume(tLParens);
  // expression. this is condition of while statement.
  cond = expression(s);
  // ")"
  Consume(tRParens);
  // "do"
  Consume(tDo);
  // statSequence. this is body of while statement.
  whileBody = statSequence(s);
  // "end"
  Consume(tEnd, &endToken);

  return new CAstStatWhile(endToken, cond, whileBody);
}

CAstStatReturn* CParser::returnStatement(CAstScope *s) {
  //
  // returnStatement ::= "return" [ expression ].
  //
  // FIRST(returnStatement) = { tReturn }
  //
  // FOLLOW(returnStatement) = { tEnd tElse tSemicolon }
  //
  CAstExpression *returnBody = NULL;
  CToken returnToken;
  // "return"
  Consume(tReturn, &returnToken);
  // [ expression ]
  if(First::Expression(_NextToken().GetType())) {
    returnBody = expression(s);
  }

  return new CAstStatReturn(returnToken, s, returnBody);
}

CAstStatement* CParser::statSequence(CAstScope *s) {
  //
  // statSequence ::= [ statement { ";" statement } ].
  // statement ::= assignment | subroutineCall | ifStatement | whileStatement | returnStatement
  // FIRST(statSequence) = { blank tIdent tIf tWhile tReturn }
  // FOLLOW(statSequence) = { tEnd tElse }
  //
  // It is almost same as original one(SNUPL/-1).
  CAstStatement *head = NULL;

  EToken tt = _NextToken().GetType();
  if (!Follow::StatSequence(tt)) {
    CAstStatement *tail = NULL;

    do {
      CToken t, identToken;
      EToken tt = _NextToken().GetType();
      CAstStatement *st = NULL;

      // statement ::= assignment | subroutineCall | ifStatement | whileStatement | returnStatement
      switch (tt) {
        // assignment and subroutineCall shared First(tIdent)
        // so we should check next token to verify which statement is called.
      case tIdent:
        Consume(tIdent, &identToken);
        tt = _NextToken().GetType();

        // Assignment Case.
        if (tt == tAssign || tt == tLBrak) {
          st = assignment(s, &identToken);
          break;
        }

        // subroutineCall Case.
        else if (tt == tLParens) {
          st = procedureCall(s, &identToken);
          break;
        }

      case tIf:
        st = ifStatement(s);
        break;

      case tWhile:
        st = whileStatement(s);
        break;

      case tReturn:
        st = returnStatement(s);
        break;

      // Handling Error.
      default:
        SetError(_NextToken(), "statement expected.");
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

      tt = _NextToken().GetType();

      if (tt == tDot || tt == tEnd || tt == tElse) {
        break;
      }

      Consume(tSemicolon);
    } while (!_abort);
  }

  return head;
}

void CParser::varDeclaration(CAstScope *s) {
  //
  // varDeclaration ::= [ "var" varDeclSequence ";" ].
  // varDeclSequence ::= varDecl { ";" varDecl }.
  //
  // FIRST(varDeclaration) = { blank tVar }
  // FIRST(varDeclSequence) = { tIdent }
  //
  // FOLLOW(varDeclaration) = { tBegin tProcedure tFunction }
  // FOLLOW(varDeclSequence) = { tSemicolon tRParens }
  //
  CToken nextToken;
  EToken nextTokenType = _NextToken().GetType();

  // if there is "var", declaration start.
  if(First::VarDeclaration(nextTokenType)) {
    // "var"
    Consume(tVarDecl, &nextToken);

    // varDeclSequence
    do {
      // varDecl
      varDecl(s);
      //";"
      Consume(tSemicolon);
      nextTokenType = _NextToken().GetType();
    } while(First::VarDecl(nextTokenType));
  }
}

const CType* CParser::type(const CType *innerType, CToken *typeToken) {
  //
  // type := basetype | type "[" [ number ] "]".
  // basetype := "boolean" | "char" | "integer"
  //
  // FIRST(type) = { tBoolean, tChar, tInteger }
  //
  // FOLLOW(type) = { }
  //
  CTypeManager *tm = CTypeManager::Get();
  const CType *varType = innerType;
  CToken nextToken = _NextToken(), numberToken;

  // Return type using type manager.
  // We don't know how many dimension is required,
  // so handle array dimension recursively.
  switch(nextToken.GetType()) {
  // boolean
  case tBoolean:
    if(typeToken != NULL) Consume(tBoolean, typeToken);
    else Consume(tBoolean);
    varType = type(tm->GetBool());
    break;
  // char
  case tChar:
    if(typeToken != NULL) Consume(tChar, typeToken);
    else Consume(tChar);
    varType = type(tm->GetChar());
    break;
  // integer
  case tInteger:
    if(typeToken != NULL) Consume(tInteger, typeToken);
    else Consume(tInteger);
    varType = type(tm->GetInt());
    break;

  // "[" number "]"
    // "["
    // It means there is a dimension.
  case tLBrak:
    Consume(tLBrak);
    // If innerType is not null,
    // then we make a dimension of innerType.
    if(innerType != NULL) {
      nextToken = _NextToken();
      int numberOfElement = 0;

      // number
      Consume(tNumber, &numberToken);
      numberOfElement = atoi(nextToken.GetValue().c_str());
      if (numberOfElement < 0) {
        SetError(numberToken, "index of array should bigger than zero.");
      }
      // "]"
      Consume(tRBrak);

      varType = tm->GetArray(numberOfElement, type(innerType));
      break;
    }

  default:
    if(!Follow::Type(nextToken.GetType())) {
      SetError(nextToken, "type expected.");
    }
  }

  return varType;
}

const CType* CParser::typep(const CType *innerType) {
  //
  // type := basetype | type "[" [ number ] "]".
  // basetype := "boolean" | "char" | "integer"
  //
  // FIRST(type) = { tBoolean, tChar, tInteger }
  //
  // FOLLOW(type) = { }
  //
  CTypeManager *tm = CTypeManager::Get();
  const CType *varType = innerType;
  CToken nextToken = _NextToken(), numberToken;

  // Return type using type manager.
  // We don't know how many dimension is required,
  // so handle array dimension recursively.
  switch(nextToken.GetType()) {
  // boolean
  case tBoolean:
    Consume(tBoolean);
    varType = typep(tm->GetBool());
    break;
  // char
  case tChar:
    Consume(tChar);
    varType = typep(tm->GetChar());
    break;
  // integer
  case tInteger:
    Consume(tInteger);
    varType = typep(tm->GetInt());
    break;

  // "[" number "]"
    // "["
    // It means there is a dimension.
  case tLBrak:
    Consume(tLBrak);
    // If innerType is not null,
    // then we make a dimension of innerType.
    if(innerType != NULL) {
      nextToken = _NextToken();
      int numberOfElement = -1;

      // closing braket with no number means open array.
      // open array has -1 as index.
      if(nextToken.GetType() == tRBrak) {
        // "]"
        Consume(tRBrak);
      }
      // [ number ]
      else {
        // number
        Consume(tNumber, &numberToken);
        numberOfElement = atoi(nextToken.GetValue().c_str());
        if (numberOfElement < 0) {
          SetError(numberToken, "index of array should bigger than zero.");
        }
        // "]"
        Consume(tRBrak);
      }

      varType = tm->GetArray(numberOfElement, typep(innerType));
      break;
    }

  default:
    if(!Follow::Type(nextToken.GetType())) {
      SetError(nextToken, "type expected.");
    }
  }

  // If innerType is null, and final result is array,
  // this means this turn is the top of the recursive process,
  // and final result needs to be wrapped by pointer.
  if(innerType == NULL && varType->IsArray()) {
    varType = tm->GetPointer(varType);
  }

  return varType;
}

void CParser::varDecl(CAstScope *s, CSymProc *procedureSymbol) {
  //
  // varDecl := ident { "," ident } ":" type.
  //
  // FIRST(varDecl) = { tIdent }
  //
  // FOLLOW(varDecl) = { tSemicolon tRParens }
  //
  // First, we get all identifier into identTokens,
  // after type is decided, then process all identifier.
  //
  vector<CToken> identTokens;
  CToken nextToken, typeToken, numberToken;
  EToken nextTokenType;
  const CType *varType;
  CSymtab *symbolTable = s->GetSymbolTable();
  CSymParam *symbol = NULL;

  // ident
  Consume(tIdent, &nextToken);
  identTokens.push_back(nextToken);

  // come together all identifier.
  while(_NextToken().GetType() != tColon) {
    Consume(tComma);
    Consume(tIdent, &nextToken);
    identTokens.push_back(nextToken);
  }

  // ":"
  Consume(tColon);

  // declare identifiers.
  int size = identTokens.size();
  
  if(procedureSymbol != NULL){
    varType = typep(NULL);
  }
  else {
    varType = type(NULL);
  }

  for(int i = 0; i < size; i++){
    // check whether a variable is already declared.
    const CSymbol *duplicateSymbol = symbolTable->FindSymbol(identTokens[i].GetValue(), sLocal);

    if(duplicateSymbol != NULL) {
      SetError(identTokens[i], "duplicate variable declaration '" + identTokens[i].GetValue() + "'.");
      return;
    }

    // if procedureSymbol is not null, this is parameter declaration.
    if(procedureSymbol != NULL) {
      // if var type is array, this is wrapped with pointer type.
      // because paramter of array should be pointer(reference) of array.
      symbol = new CSymParam(i, identTokens[i].GetValue(), varType);
      procedureSymbol->AddParam(symbol);
      symbolTable->AddSymbol(symbol);
    }
    else {
      symbolTable->AddSymbol(s->CreateVar(identTokens[i].GetValue(), varType));
    }
  }
}

void CParser::subroutineDecl(CAstScope *s) {
  //
  // subroutineDecl ::= (procedureDecl | functionDecl) subroutineBody ident ";".
  // procedureDecl ::= "procedure" ident [ formalParam ] ";".
  // functionDecl ::= "procedure" ident [ formalParam ] ":" type ";".
  // subroutineBody ::= varDeclaration "begin" statSequence "end".
  //
  // FIRST(subroutineDecl) = { tProcedure tFunction }
  //
  // FOLLOW(subroutineDecl) = { tBegin }
  //
  CTypeManager *tm = CTypeManager::Get();
  CToken classToken, identToken, endIdentToken, typeToken;
  const CType *returnType;

  // (procedureDecl | functionDecl)
  // "procedure" or "function"
  switch(_NextToken().GetType()){
  case tProcedure:
    Consume(tProcedure, &classToken);
    break;
  case tFunction:
    Consume(tFunction, &classToken);
    break;
  default:
    SetError(_NextToken(), "subroutineDecl expected.");
  }

  // procedure / function identifier.
  Consume(tIdent, &identToken);
  CSymtab *symbolTable = s->GetSymbolTable();
  CSymProc *procedureSymbol = new CSymProc(identToken.GetValue(), tm->GetNull());
  const CSymbol *duplicateSymbol = symbolTable->FindSymbol(identToken.GetValue());

  // check the duplication.
  if(duplicateSymbol != NULL) { 
    SetError(identToken, "duplicate procedure/function declaration '" + identToken.GetValue() + "'.");
    return;
  }

  symbolTable->AddSymbol(procedureSymbol);
  CAstProcedure *procedure = new CAstProcedure(identToken, identToken.GetValue(), s, procedureSymbol);

  // [ formalParam ]
  if(_NextToken().GetType() == tLParens) {
    // "("
    Consume(tLParens);
    // [ VarDeclSequence ]
    if(First::VarDeclSequence(_NextToken().GetType())){
      varDecl(procedure, procedureSymbol);

      while (_NextToken().GetType() == tSemicolon) {
        Consume(tSemicolon);
        varDecl(procedure, procedureSymbol);
      };
    }
    // ")"
    Consume(tRParens);
  }

  // If this is function declaration, set type.
  if(classToken.GetType() == tFunction) {
    Consume(tColon);
    returnType = type(NULL, &typeToken);
    if(!returnType->IsScalar()) {
      SetError(typeToken, "invalid composite type for function.");
    }
    else {
      procedureSymbol->SetDataType(returnType);
    }
  }
  Consume(tSemicolon);

  // varDeclaration
  varDeclaration(procedure);
  // "begin"
  Consume(tBegin);
  // statSequence
  procedure->SetStatementSequence(statSequence(procedure));
  // "end"
  Consume(tEnd);
  Consume(tIdent, &endIdentToken);

  // check name of procedure/function is same as upper one.
  if(identToken.GetValue() != endIdentToken.GetValue()) {
    SetError(endIdentToken, "procedure/function identifier mismatch ('" + identToken.GetValue() + "' != '" + endIdentToken.GetValue() + "').");
  }
  // ";"
  Consume(tSemicolon);
}

CAstConstant* CParser::numberConst() {
  CToken t;

  Consume(tNumber, &t);

  errno = 0;
  long long v = strtoll(t.GetValue().c_str(), NULL, 10);
  if (errno != 0) SetError(t, "invalid number.");

  return new CAstConstant(t, CTypeManager::Get()->GetInt(), v);
}

CAstConstant* CParser::boolConst(void) {
  //
  // boolean ::= "boolean"
  //

  CToken t;
  long long boolValue = 0;

  Consume(tBoolConst, &t);
  if(t.GetValue() == "true") {
    boolValue = 1;
  }

  return new CAstConstant(t, CTypeManager::Get()->GetBool(), boolValue);
}

CAstConstant* CParser::charConst(void) {
  //
  // char ::= "char"
  //

  CToken t;
  char charValue;

  Consume(tCharConst, &t);
  charValue = t.GetValue().c_str()[0];

  // because escape char string is actually two char,
  // so decide which escape character is used.
  if(charValue == '\\'){
    switch(t.GetValue().c_str()[1]) {
    case 'n':
      charValue = '\n';
      break;
    case 't':
      charValue = '\t';
      break;
    case '\"':
      charValue = '\"';
      break;
    case '\'':
      charValue = '\'';
      break;
    case '\\':
      charValue = '\\';
      break;
    case '0':
      charValue = '\0';
      break;
    }
  }
  return new CAstConstant(t, CTypeManager::Get()->GetChar(), charValue);
}

CAstStringConstant* CParser::stringConst(CAstScope *s) {
  CTypeManager *tm = CTypeManager::Get();
  CToken t;

  Consume(tString, &t);

  return new CAstStringConstant(t, t.GetValue(), s);
}

CToken CParser::_NextToken() {
  return _scanner->Peek();
}
