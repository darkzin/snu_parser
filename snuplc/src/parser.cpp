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


    CToken moduleToken, t;
    Consume(tModule, &moduleToken);
    Consume(tIdent, &t);
    string moduleName = t.GetValue();

    CAstModule *module = new CAstModule(moduleToken, t.GetValue());
    CSymtab *moduleSymtab = module->GetSymbolTable();
    CAstStatement *statseq = NULL;

    InitSymbolTable(moduleSymtab);

    Consume(tSemicolon);

    varDeclaration(module);

    while(First::SubroutineDecl(_scanner->Peek().GetType())){
        subroutineDecl(module);
    }

    Consume(tBegin);

    statseq = statSequence(module);

    Consume(tEnd);

    Consume(tIdent, &t);

    if(moduleName != t.GetValue()) {
        SetError(t, "module identifier mismatch ('" + moduleName + "' != '" + t.GetValue() + "').");
    }

    Consume(tDot);

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

    CSymtab *symbolTable= s->GetSymbolTable();;
    CToken ident;
    const CSymbol *identSymbol = symbolTable->FindSymbol(identToken->GetValue());
    CAstDesignator *lhs;
    CAstArrayDesignator *lhsArray;


    if(identToken != NULL){
        ident = *identToken;
    }
    else {
        Consume(tIdent, &ident);
    }

    if(identSymbol == NULL) {
        SetError(identToken, "undefined identifier.");
        return NULL;
    }

    if(identSymbol->GetSymbolType() == stProcedure) {
        SetError(identToken, "designator expected.");
        return NULL;
    }

    if(_scanner->Peek().GetType() != tLBrak) {
        lhs = new CAstDesignator(identToken, identSymbol);
    }

    else {
        lhsArray = new CAstArrayDesignator(identToken, identSymbol);

        while (_scanner->Peek().GetType() == tLBrak) {
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
    EToken nextTokenType = _scanner->Peek().GetType();
    CAstExpression *unary = NULL, *n = NULL;

    switch (nextTokenType) {
        // qualident and subroutineCall shared First(tIdent)
        // so we should check next token to verify which statement is called.
    case tIdent:
        Consume(tIdent, &identToken);
        nextTokenType = _scanner->Peek().GetType();

        // subroutineCall Case.
        if (nextTokenType == tLParens) {
            return functionCall(s, &identToken);
        }

        // Qualident Case.
        else if (nextTokenType == tLBrak || Follow::Qualident(nextTokenType)) {
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
    CAstExpression *expression = NULL;

    expression = factor(s);

    EToken nextTokenType = _scanner->Peek().GetType();

    while (nextTokenType == tMulDiv || nextTokenType == tAnd) {
        CToken opToken;
        EOperation op;
        CAstExpression *leftExpression = expression, *rightExpression;

        if(nextTokenType == tMulDiv) {
            Consume(tMulDiv, &opToken);
            op = (opToken.GetValue() == "*" ? opMul : opDiv);
        }
        else {
            Consume(tAnd, &opToken);
            op = opAnd;
        }

        rightExpression = factor(s);
        expression = new CAstBinaryOp(opToken, op, leftExpression, rightExpression);

        nextTokenType = _scanner->Peek().GetType();
    }

    return expression;
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
    CAstExpression *expression = NULL;
    CAstUnaryOp *unaryExpression = NULL;
    CToken unaryOpToken, nextToken;
    EOperation unaryOp, binaryOp;
    EToken nextTokenType, unaryOpTokenType = _scanner->Peek().GetType();
    CAstConstant *number = NULL;
    bool becomeNegetiveNumber = false;

    if(unaryOpTokenType == tPlusMinus) {
        Consume(tPlusMinus, &unaryOpToken);

        if(unaryOpToken.GetValue() == "+"){
            unaryOp = opPos;
        }
        else {
            unaryOp = opNeg;
        }

        expression = term(s);

        if(CAstConstant *number = dynamic_cast<CAstConstant *>(expression)){
            int value = (unaryOp == opNeg ? -1 : 1) * ((CAstConstant *)number)->GetValue();
            expression = new CAstConstant(unaryOpToken, expression->GetType(), value);
        }
        else {
            expression = new CAstUnaryOp(unaryOpToken, unaryOp, expression);
        }
    }

    else {
        expression = term(s);
    }

    nextTokenType = _scanner->Peek().GetType();

    while (nextTokenType == tPlusMinus || nextTokenType == tOr) {
        CAstExpression *leftExpression = expression, *rightExpression;

        Consume(nextTokenType, &nextToken);

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

        expression = new CAstBinaryOp(nextToken, binaryOp, leftExpression, rightExpression);
        nextTokenType = _scanner->Peek().GetType();
    }


    return expression;
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
    CToken nextToken;
    EToken nextTokenType;
    EOperation relOp;
    CAstExpression *leftExpression = NULL, *rightExpression = NULL;

    leftExpression = simpleexpr(s);
    nextTokenType = _scanner->Peek().GetType();

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

    CAstDesignator *lhs = qualident(s, identToken);
    Consume(tAssign);

    CAstExpression *rhs = expression(s);

    return new CAstStatAssign(*identToken, lhs, rhs);
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
    CToken ident;
    CAstFunctionCall *funcCall;
    CAstExpression *actualParam;
    int index = 0, paramCount = 0;
    const CSymParam *paramSymbol = NULL;

    if(identToken == NULL) {
        Consume(tIdent, &ident);
    }
    else {
        ident = identToken;
    }

    CSymtab *symtab = s->GetSymbolTable();
    const CSymProc *subroutineSymbol = (const CSymProc*)symtab->FindSymbol(identToken->GetValue());

    if(subroutineSymbol == NULL) {
        SetError(ident, "undefined identifier.");
        return NULL;
    }
    else if(subroutineSymbol->GetSymbolType() != stProcedure){
        SetError(ident, "invalid procedure/function identifier.");
        return NULL;
    }

    Consume(tLParens);
    funcCall = new CAstFunctionCall(*identToken, subroutineSymbol);

    if(subroutineSymbol->GetNParams() == 0) {
        Consume(tRParens);
        return funcCall;
    }

    actualParam = expression(s);
    paramCount++;

    if(paramCount > subroutineSymbol->GetNParams()) {
        SetError(ident, "not match a number of parameters.");
        return NULL;
    }
    const CType *actualParamType;

    actualParamType = actualParam->GetType();
    if(actualParamType->IsArray() && ((CArrayType *)actualParamType)->GetNElem() != -1){
        actualParam = new CAstSpecialOp(ident, opAddress, actualParam);
    }

    funcCall->AddArg(actualParam);

    while(_scanner->Peek().GetType() == tComma){
        Consume(tComma);
        actualParam = expression(s);
        paramCount++;
        if(paramCount > subroutineSymbol->GetNParams()) {
            SetError(ident, "not match a number of parameters.");
            break;
        }

        actualParamType = actualParam->GetType();
        if(actualParamType->IsArray() && ((CArrayType *)actualParamType)->GetNElem() != -1){
            actualParam = new CAstSpecialOp(ident, opAddress, actualParam);
        }
        funcCall->AddArg(actualParam);
    }

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
    CAstStatement *ifBody, *elseBody;
    CToken lastToken;

    Consume(tIf);
    Consume(tLParens);

    cond = expression(s);

    Consume(tRParens);
    Consume(tThen);

    ifBody = statSequence(s);

    if(_scanner->Peek().GetType() == tElse) {
        Consume(tElse);
        elseBody = statSequence(s);
    }

    Consume(tEnd, &lastToken);

    return new CAstStatIf(lastToken, cond, ifBody, elseBody);
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
    CToken lastToken;

    Consume(tWhile);
    Consume(tLParens);
    cond = expression(s);
    Consume(tRParens);

    Consume(tDo);

    whileBody = statSequence(s);

    Consume(tEnd, &lastToken);

    return new CAstStatWhile(lastToken, cond, whileBody);
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
    Consume(tReturn, &returnToken);

    if(First::Expression(_scanner->Peek().GetType())) {
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
    CAstStatement *head = NULL;

    EToken tt = _scanner->Peek().GetType();
    if (!Follow::StatSequence(tt)) {
        CAstStatement *tail = NULL;

        do {
            CToken t, identToken;
            EToken tt = _scanner->Peek().GetType();
            CAstStatement *st = NULL;

            // statement ::= assignment | subroutineCall | ifStatement | whileStatement | returnStatement
            switch (tt) {
                // assignment and subroutineCall shared First(tIdent)
                // so we should check next token to verify which statement is called.
            case tIdent:
                Consume(tIdent, &identToken);
                tt = _scanner->Peek().GetType();

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
    EToken nextTokenType = _scanner->Peek().GetType();

    if(First::VarDeclaration(nextTokenType)) {
        Consume(tVarDecl, &nextToken);

        do {
            varDecl(s);
            Consume(tSemicolon);
            nextTokenType = _scanner->Peek().GetType();
        } while(First::VarDecl(nextTokenType));
    }

    //else if(!Follow::VarDeclaration(nextTokenType)) {
    //SetError(nextToken, "varDeclaration expected.");
    //}
}

const CType* CParser::type(const CType *innerType) {
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
    CToken nextToken = _scanner->Peek();

    switch(nextToken.GetType()) {
    case tBoolean:
        Consume(tBoolean);
        varType = type(tm->GetBool());
        break;
    case tChar:
        Consume(tChar);
        varType = type(tm->GetChar());
        break;
    case tInteger:
        Consume(tInteger);
        varType = type(tm->GetInt());
        break;
    case tLBrak:
        Consume(tLBrak);
        if(innerType != NULL) {
            nextToken = _scanner->Peek();
            int numberOfElement = -1;

            if(nextToken.GetType() == tRBrak) {
                Consume(tRBrak);
            }
            else {
                Consume(tNumber);
                numberOfElement = atoi(nextToken.GetValue().c_str());
                Consume(tRBrak);
            }

            varType = tm->GetArray(numberOfElement, type(innerType));
            break;
        }

    default:
        if(!Follow::Type(nextToken.GetType())) {
            SetError(nextToken, "type expected.");
        }
    }

    nextToken = _scanner->Peek();
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
    vector<CToken> identTokens;
    CToken nextToken, typeToken, numberToken;
    EToken nextTokenType;
    const CType *varType;

    Consume(tIdent, &nextToken);
    identTokens.push_back(nextToken);

    while(_scanner->Peek().GetType() != tColon) {
        Consume(tComma);
        Consume(tIdent, &nextToken);
        identTokens.push_back(nextToken);
    }

    Consume(tColon);

    int size = identTokens.size();
    CSymtab *symbolTable = s->GetSymbolTable();
    CSymParam *symbol = NULL;
    varType = type(NULL);

    for(int i = 0; i < size; i++){
        const CSymbol *duplicateSymbol = symbolTable->FindSymbol(identTokens[i].GetValue(), sLocal);

        if(duplicateSymbol != NULL) {
            SetError(identTokens[i], "duplicate variable declaration '" + identTokens[i].GetValue() + "'.");
            return;
        }

        if(procedureSymbol != NULL) {
            if(varType->IsArray()) {
                varType = CTypeManager::Get()->GetPointer(varType);
            }
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
    //
    // FIRST(subroutineDecl) = { tProcedure tFunction }
    //
    // FOLLOW(subroutineDecl) = { tBegin }
    //
    CTypeManager *tm = CTypeManager::Get();
    CToken classToken, identToken, endIdentToken;

    switch(_scanner->Peek().GetType()){
    case tProcedure:
        Consume(tProcedure, &classToken);
        break;
    case tFunction:
        Consume(tFunction, &classToken);
        break;
    default:
        SetError(_scanner->Peek(), "subroutineDecl expected.");
    }

    Consume(tIdent, &identToken);
    CSymtab *symbolTable = s->GetSymbolTable();
    CSymProc *procedureSymbol = new CSymProc(identToken.GetValue(), tm->GetNull());
    const CSymbol *duplicateSymbol = symbolTable->FindSymbol(identToken.GetValue());

    if(duplicateSymbol != NULL) { //&& duplicateSymbol->GetSymbolType() == stProcedure) {
        SetError(identToken, "duplicate procedure/function declaration '" + identToken.GetValue() + "'.");
        return;
    }

    symbolTable->AddSymbol(procedureSymbol);
    CAstProcedure *procedure = new CAstProcedure(identToken, identToken.GetValue(), s, procedureSymbol);

    if(_scanner->Peek().GetType() == tLParens) {
        Consume(tLParens);
        if(First::VarDeclSequence(_scanner->Peek().GetType())){
            varDecl(procedure, procedureSymbol);

            while (_scanner->Peek().GetType() == tSemicolon) {
                Consume(tSemicolon);
                varDecl(procedure, procedureSymbol);
            };
        }

        Consume(tRParens);
    }

    if(classToken.GetType() == tFunction) {
        Consume(tColon);
        procedureSymbol->SetDataType(type(NULL));
    }
    Consume(tSemicolon);

    varDeclaration(procedure);
    Consume(tBegin);
    procedure->SetStatementSequence(statSequence(procedure));
    Consume(tEnd);
    Consume(tIdent, &endIdentToken);

    if(identToken.GetValue() != endIdentToken.GetValue()) {
        SetError(endIdentToken, "procedure/function identifier mismatch ('" + identToken.GetValue() + "' != '" + endIdentToken.GetValue() + "').");
    }
    Consume(tSemicolon);
    }

    /*CAstScope* CParser::procedureDecl(CAstScope *s) {
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
    }*/

    CAstConstant* CParser::numberConst(void) {
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
        //
        // number ::= digit { digit }.
        //
        // "digit { digit }" is scanned as one token (tNumber)
        //

        CTypeManager *tm = CTypeManager::Get();
        CToken t;

        Consume(tString, &t);

        return new CAstStringConstant(t, t.GetValue(), s);
    }
