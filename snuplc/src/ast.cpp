//------------------------------------------------------------------------------
/// @brief SnuPL abstract syntax tree
/// @author Bernhard Egger <bernhard@csap.snu.ac.kr>
/// @section changelog Change Log
/// 2012/09/14 Bernhard Egger created
/// 2013/05/22 Bernhard Egger reimplemented TAC generation
/// 2013/11/04 Bernhard Egger added typechecks for unary '+' operators
/// 2016/03/12 Bernhard Egger adapted to SnuPL/1
/// 2014/04/08 Bernhard Egger assignment 2: AST for SnuPL/-1
///
/// @section license_section License
/// Copyright (c) 2012-2016 Bernhard Egger
/// All rights reserved.
///
/// Redistribution and use in source and binary forms,  with or without modifi-
/// cation, are permitted provided that the following conditions are met:
///
/// - Redistributions of source code must retain the above copyright notice,
///   this list of conditions and the following disclaimer.
/// - Redistributions in binary form must reproduce the above copyright notice,
///   this list of conditions and the following disclaimer in the documentation
///   and/or other materials provided with the distribution.
///
/// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
/// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING,  BUT NOT LIMITED TO,  THE
/// IMPLIED WARRANTIES OF MERCHANTABILITY  AND FITNESS FOR A PARTICULAR PURPOSE
/// ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT HOLDER  OR CONTRIBUTORS BE
/// LIABLE FOR ANY DIRECT,  INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSE-
/// QUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF  SUBSTITUTE
/// GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
/// HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN  CONTRACT, STRICT
/// LIABILITY, OR TORT  (INCLUDING NEGLIGENCE OR OTHERWISE)  ARISING IN ANY WAY
/// OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
/// DAMAGE.
//------------------------------------------------------------------------------

#include <iostream>
#include <cassert>
#include <cstring>

#include <typeinfo>

#include "ast.h"
using namespace std;


//------------------------------------------------------------------------------
// CAstNode
//
int CAstNode::_global_id = 0;

CAstNode::CAstNode(CToken token)
  : _token(token), _addr(NULL)
{
  _id = _global_id++;
}

CAstNode::~CAstNode(void)
{
  if (_addr != NULL) delete _addr;
}

int CAstNode::GetID(void) const
{
  return _id;
}

CToken CAstNode::GetToken(void) const
{
  return _token;
}

const CType* CAstNode::GetType(void) const
{
  return CTypeManager::Get()->GetNull();
}

string CAstNode::dotID(void) const
{
  ostringstream out;
  out << "node" << dec << _id;
  return out.str();
}

string CAstNode::dotAttr(void) const
{
  return " [label=\"" + dotID() + "\"]";
}

void CAstNode::toDot(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << dotID() << dotAttr() << ";" << endl;
}

CTacAddr* CAstNode::GetTacAddr(void) const
{
  return _addr;
}

ostream& operator<<(ostream &out, const CAstNode &t)
{
  return t.print(out);
}

ostream& operator<<(ostream &out, const CAstNode *t)
{
  return t->print(out);
}

//------------------------------------------------------------------------------
// CAstScope
//
CAstScope::CAstScope(CToken t, const string name, CAstScope *parent)
  : CAstNode(t), _name(name), _symtab(NULL), _parent(parent), _statseq(NULL),
    _cb(NULL)
{
  if (_parent != NULL) _parent->AddChild(this);
}

CAstScope::~CAstScope(void)
{
  delete _symtab;
  delete _statseq;
  delete _cb;
}

const string CAstScope::GetName(void) const
{
  return _name;
}

CAstScope* CAstScope::GetParent(void) const
{
  return _parent;
}

size_t CAstScope::GetNumChildren(void) const
{
  return _children.size();
}

CAstScope* CAstScope::GetChild(size_t i) const
{
  assert(i < _children.size());
  return _children[i];
}

CSymtab* CAstScope::GetSymbolTable(void) const
{
  assert(_symtab != NULL);
  return _symtab;
}

void CAstScope::SetStatementSequence(CAstStatement *statseq)
{
  _statseq = statseq;
}

CAstStatement* CAstScope::GetStatementSequence(void) const
{
  return _statseq;
}

bool CAstScope::TypeCheck(CToken *t, string *msg) const
{
  bool result = true;

  try {
    CAstStatement *s = _statseq;
    while (result && (s != NULL)) {
      result = s->TypeCheck(t, msg);
      s = s->GetNext();
    }
  
    vector<CAstScope*>::const_iterator it = _children.begin();
    while (result && (it != _children.end())) {
      result = (*it)->TypeCheck(t, msg);
      it++;
    }
  } catch (...) {
    result = false;
  }

  return result;
}

ostream& CAstScope::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << "CAstScope: '" << _name << "'" << endl;
  out << ind << "  symbol table:" << endl;
  _symtab->print(out, indent+4);
  out << ind << "  statement list:" << endl;
  CAstStatement *s = GetStatementSequence();
  if (s != NULL) {
    do {
      s->print(out, indent+4);
      s = s->GetNext();
    } while (s != NULL);
  } else {
    out << ind << "    empty." << endl;
  }

  out << ind << "  nested scopes:" << endl;
  if (_children.size() > 0) {
    for (size_t i=0; i<_children.size(); i++) {
      _children[i]->print(out, indent+4);
    }
  } else {
    out << ind << "    empty." << endl;
  }
  out << ind << endl;

  return out;
}

void CAstScope::toDot(ostream &out, int indent) const
{
  string ind(indent, ' ');

  CAstNode::toDot(out, indent);

  CAstStatement *s = GetStatementSequence();
  if (s != NULL) {
    string prev = dotID();
    do {
      s->toDot(out, indent);
      out << ind << prev << " -> " << s->dotID() << " [style=dotted];" << endl;
      prev = s->dotID();
      s = s->GetNext();
    } while (s != NULL);
  }

  vector<CAstScope*>::const_iterator it = _children.begin();
  while (it != _children.end()) {
    CAstScope *s = *it++;
    s->toDot(out, indent);
    out << ind << dotID() << " -> " << s->dotID() << ";" << endl;
  }

}

CTacAddr* CAstScope::ToTac(CCodeBlock *cb)
{
  // This implementation just same as documentation thing.
  assert(cb != NULL);

  CAstStatement *s = GetStatementSequence();

  while (s != NULL) {
    CTacLabel *next = cb->CreateLabel();
    s->ToTac(cb, next);
    cb->AddInstr(next);
    s = s->GetNext();
  }

  cb->CleanupControlFlow();

  return NULL;
}

CCodeBlock* CAstScope::GetCodeBlock(void) const
{
  return _cb;
}

void CAstScope::SetSymbolTable(CSymtab *st)
{
  if (_symtab != NULL) delete _symtab;
  _symtab = st;
}

void CAstScope::AddChild(CAstScope *child)
{
  _children.push_back(child);
}


//------------------------------------------------------------------------------
// CAstModule
//
CAstModule::CAstModule(CToken t, const string name)
  : CAstScope(t, name, NULL)
{
  SetSymbolTable(new CSymtab());
}

CSymbol* CAstModule::CreateVar(const string ident, const CType *type)
{
  return new CSymGlobal(ident, type);
}

string CAstModule::dotAttr(void) const
{
  return " [label=\"m " + GetName() + "\",shape=box]";
}



//------------------------------------------------------------------------------
// CAstProcedure
//
CAstProcedure::CAstProcedure(CToken t, const string name,
                             CAstScope *parent, CSymProc *symbol)
  : CAstScope(t, name, parent), _symbol(symbol)
{
  assert(GetParent() != NULL);
  SetSymbolTable(new CSymtab(GetParent()->GetSymbolTable()));
  assert(_symbol != NULL);
}

CSymProc* CAstProcedure::GetSymbol(void) const
{
  return _symbol;
}

CSymbol* CAstProcedure::CreateVar(const string ident, const CType *type)
{
  return new CSymLocal(ident, type);
}

const CType* CAstProcedure::GetType(void) const
{
  return GetSymbol()->GetDataType();
}

string CAstProcedure::dotAttr(void) const
{
  return " [label=\"p/f " + GetName() + "\",shape=box]";
}


//------------------------------------------------------------------------------
// CAstType
//
CAstType::CAstType(CToken t, const CType *type)
  : CAstNode(t), _type(type)
{
  assert(type != NULL);
}

const CType* CAstType::GetType(void) const
{
  return _type;
}

ostream& CAstType::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << "CAstType (" << _type << ")" << endl;
  return out;
}


//------------------------------------------------------------------------------
// CAstStatement
//
CAstStatement::CAstStatement(CToken token)
  : CAstNode(token), _next(NULL)
{
}

CAstStatement::~CAstStatement(void)
{
  delete _next;
}

void CAstStatement::SetNext(CAstStatement *next)
{
  _next = next;
}

CAstStatement* CAstStatement::GetNext(void) const
{
  return _next;
}

CTacAddr* CAstStatement::ToTac(CCodeBlock *cb, CTacLabel *next)
{
  // jump to next.
  cb->AddInstr(new CTacInstr(opGoto, next));
  return NULL;
}


//------------------------------------------------------------------------------
// CAstStatAssign
//
CAstStatAssign::CAstStatAssign(CToken t,
                               CAstDesignator *lhs, CAstExpression *rhs)
  : CAstStatement(t), _lhs(lhs), _rhs(rhs)
{
  assert(lhs != NULL);
  assert(rhs != NULL);
}

CAstDesignator* CAstStatAssign::GetLHS(void) const
{
  return _lhs;
}

CAstExpression* CAstStatAssign::GetRHS(void) const
{
  return _rhs;
}

bool CAstStatAssign::TypeCheck(CToken *t, string *msg) const
{
  const CType *lhsType = _lhs->GetType(), *rhsType = _rhs->GetType();
  stringstream ss;

  // First, check types of right operand and left operand.
  if(!GetLHS()->TypeCheck(t, msg)) return false;
  if(!GetRHS()->TypeCheck(t, msg)) return false;

  // If both operand types are array, It means 'array := array'.
  // SNUPL/1 does not supported assignments to compound types.
  if (lhsType->IsArray() && rhsType->IsArray()) {
    if (t != NULL) *t = GetToken();
    if (msg != NULL) {
      ss << "assignments to compound types are not supported." << endl;
      ss << "  LHS: " << lhsType << endl;
      ss << "  RHS: " << rhsType;
      *msg = ss.str();
    }
    return false;
  }

  // assignment of incompatible types is not supported.
  else if (!lhsType->Match(rhsType)) {
    if (t != NULL) *t = GetToken();
    if (msg != NULL) {
      ss << "incompatible types in assignment:" << endl;
      ss << "  LHS: " << lhsType << endl;
      ss << "  RHS: " << rhsType;
      *msg = ss.str();
    }
    return false;
  } 

  return true;
}

const CType* CAstStatAssign::GetType(void) const
{
  return _lhs->GetType();
}

ostream& CAstStatAssign::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << ":=" << " ";

  const CType *t = GetType();
  if (t != NULL) out << t; else out << "<INVALID>";

  out << endl;

  _lhs->print(out, indent+2);
  _rhs->print(out, indent+2);

  return out;
}

string CAstStatAssign::dotAttr(void) const
{
  return " [label=\":=\",shape=box]";
}

void CAstStatAssign::toDot(ostream &out, int indent) const
{
  string ind(indent, ' ');

  CAstNode::toDot(out, indent);

  _lhs->toDot(out, indent);
  out << ind << dotID() << "->" << _lhs->dotID() << ";" << endl;
  _rhs->toDot(out, indent);
  out << ind << dotID() << "->" << _rhs->dotID() << ";" << endl;
}

CTacAddr* CAstStatAssign::ToTac(CCodeBlock *cb, CTacLabel *next)
{
  // First, evaluation left and right tac.
  CTacAddr* rhsTac = _rhs->ToTac(cb);
  CTacAddr* lhsTac = _lhs->ToTac(cb);

  // then assign lhs to rhs.
  cb->AddInstr(new CTacInstr(opAssign, lhsTac, rhsTac));
  return NULL;
}


//------------------------------------------------------------------------------
// CAstStatCall
//
CAstStatCall::CAstStatCall(CToken t, CAstFunctionCall *call)
  : CAstStatement(t), _call(call)
{
  assert(call != NULL);
}

CAstFunctionCall* CAstStatCall::GetCall(void) const
{
  return _call;
}

bool CAstStatCall::TypeCheck(CToken *t, string *msg) const
{
  return GetCall()->TypeCheck(t, msg);
}

ostream& CAstStatCall::print(ostream &out, int indent) const
{
  _call->print(out, indent);

  return out;
}

string CAstStatCall::dotID(void) const
{
  return _call->dotID();
}

string CAstStatCall::dotAttr(void) const
{
  return _call->dotAttr();
}

void CAstStatCall::toDot(ostream &out, int indent) const
{
  _call->toDot(out, indent);
}

CTacAddr* CAstStatCall::ToTac(CCodeBlock *cb, CTacLabel *next)
{
  int numberOfArgs = GetCall()->GetNArgs();
  CTacAddr *argument;

  // Insert argument's tac values to parameter.
  // This is reverse order. n ~ 0.
  for(int i = (numberOfArgs-1); i >= 0; i--) {
    argument = GetCall()->GetArg(i)->ToTac(cb);
    //if(CTacReference *deref = dynamic_cast<CTacReference *>(argument)) {
      //cout << deref << endl;
      //CTacAddr *temp = cb->CreateTemp(deref->GetSymbol()->GetDataType());
      //cb->AddInstr(new CTacInstr(opAddress, temp, deref));
      //argument = temp;
    //}
    cb->AddInstr(new CTacInstr(opParam, new CTacConst(i), argument));
  }

  // 'functionCall type is null' means there is no return value. so add instruction with Null value.
  if (GetCall()->GetType() == CTypeManager::Get()->GetNull()) {
    cb->AddInstr(new CTacInstr(opCall, NULL, new CTacName(GetCall()->GetSymbol())));
  }
  // Otherwise, with temp value which will get return value.
  else {
    cb->AddInstr(new CTacInstr(opCall, cb->CreateTemp(GetCall()->GetType()), new CTacName(GetCall()->GetSymbol())));
  }

  return NULL;
}


//------------------------------------------------------------------------------
// CAstStatReturn
//
CAstStatReturn::CAstStatReturn(CToken t, CAstScope *scope, CAstExpression *expr)
  : CAstStatement(t), _scope(scope), _expr(expr)
{
  assert(scope != NULL);
}

CAstScope* CAstStatReturn::GetScope(void) const
{
  return _scope;
}

CAstExpression* CAstStatReturn::GetExpression(void) const
{
  return _expr;
}

bool CAstStatReturn::TypeCheck(CToken *t, string *msg) const
{
  // These code are exactly same as example in document.
  const CType *st = GetScope()->GetType();
  CAstExpression *e = GetExpression();

  if (st->Match(CTypeManager::Get()->GetNull())) {
    if (e != NULL) {
      if (t != NULL) *t = e->GetToken();
      if (msg != NULL) *msg = "superfluous expression after return.";
      return false;
    }
  } else {
    if (e == NULL) {
      if (t != NULL) *t = GetToken();
      if (msg != NULL) *msg = "expression expected after return.";
      return false;
    }

    if (!e->TypeCheck(t, msg)) return false;

    if (!st->Match(e->GetType())) {
      if (t != NULL) *t = e->GetToken();
      if (msg != NULL) *msg = "return type mismatch.";
      return false;
    }
  }

  return true;
}

const CType* CAstStatReturn::GetType(void) const
{
  // If return statement have a expression,
  // the type of expression is return statement type.
  // If not, return statement type is null.
  const CType *t = NULL;

  if (GetExpression() != NULL) {
    t = GetExpression()->GetType();
  } else {
    t = CTypeManager::Get()->GetNull();
  }

  return t;
}

ostream& CAstStatReturn::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << "return" << " ";

  const CType *t = GetType();
  if (t != NULL) out << t; else out << "<INVALID>";

  out << endl;

  if (_expr != NULL) _expr->print(out, indent+2);

  return out;
}

string CAstStatReturn::dotAttr(void) const
{
  return " [label=\"return\",shape=box]";
}

void CAstStatReturn::toDot(ostream &out, int indent) const
{
  string ind(indent, ' ');

  CAstNode::toDot(out, indent);

  if (_expr != NULL) {
    _expr->toDot(out, indent);
    out << ind << dotID() << "->" << _expr->dotID() << ";" << endl;
  }
}

CTacAddr* CAstStatReturn::ToTac(CCodeBlock *cb, CTacLabel *next)
{
  // If expression is not null, statement have return value.
  // So evaluate that.
  // If not, just return NULL.
  if(_expr != NULL) {
    cb->AddInstr(new CTacInstr(opReturn, NULL, _expr->ToTac(cb)));
  }
  else {
    cb->AddInstr(new CTacInstr(opReturn, NULL));
  }
  return NULL;
}


//------------------------------------------------------------------------------
// CAstStatIf
//
CAstStatIf::CAstStatIf(CToken t, CAstExpression *cond,
                       CAstStatement *ifBody, CAstStatement *elseBody)
  : CAstStatement(t), _cond(cond), _ifBody(ifBody), _elseBody(elseBody)
{
  assert(cond != NULL);
}

CAstExpression* CAstStatIf::GetCondition(void) const
{
  return _cond;
}

CAstStatement* CAstStatIf::GetIfBody(void) const
{
  return _ifBody;
}

CAstStatement* CAstStatIf::GetElseBody(void) const
{
  return _elseBody;
}

bool CAstStatIf::TypeCheck(CToken *t, string *msg) const
{
  // Condition of if statement must be bool type.
  // So check the type of condition.
  if (!GetCondition()->GetType()->Match(CTypeManager::Get()->GetBool())) {
    if (t != NULL) *t = GetCondition()->GetToken();
    if (msg != NULL) *msg = "boolean expression expected.";
    return false;
  }
  return true;
}

ostream& CAstStatIf::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << "if cond" << endl;
  _cond->print(out, indent+2);
  out << ind << "if-body" << endl;
  if (_ifBody != NULL) {
    CAstStatement *s = _ifBody;
    do {
      s->print(out, indent+2);
      s = s->GetNext();
    } while (s != NULL);
  } else out << ind << "  empty." << endl;
  out << ind << "else-body" << endl;
  if (_elseBody != NULL) {
    CAstStatement *s = _elseBody;
    do {
      s->print(out, indent+2);
      s = s->GetNext();
    } while (s != NULL);
  } else out << ind << "  empty." << endl;

  return out;
}

string CAstStatIf::dotAttr(void) const
{
  return " [label=\"if\",shape=box]";
}

void CAstStatIf::toDot(ostream &out, int indent) const
{
  string ind(indent, ' ');

  CAstNode::toDot(out, indent);

  _cond->toDot(out, indent);
  out << ind << dotID() << "->" << _cond->dotID() << ";" << endl;

  if (_ifBody != NULL) {
    CAstStatement *s = _ifBody;
    if (s != NULL) {
      string prev = dotID();
      do {
        s->toDot(out, indent);
        out << ind << prev << " -> " << s->dotID() << " [style=dotted];"
            << endl;
        prev = s->dotID();
        s = s->GetNext();
      } while (s != NULL);
    }
  }

  if (_elseBody != NULL) {
    CAstStatement *s = _elseBody;
    if (s != NULL) {
      string prev = dotID();
      do {
        s->toDot(out, indent);
        out << ind << prev << " -> " << s->dotID() << " [style=dotted];" 
            << endl;
        prev = s->dotID();
        s = s->GetNext();
      } while (s != NULL);
    }
  }
}

CTacAddr* CAstStatIf::ToTac(CCodeBlock *cb, CTacLabel *next)
{
  CTacAddr *leftExprTac, *rightExprTac;
  CTacLabel *exitLabel = next;
  CTacLabel *ifTrueLabel = cb->CreateLabel("if_true");
  CTacLabel *ifFalseLabel = cb->CreateLabel("if_false");
  CAstStatement *bodyStat, *elseStat;
  EOperation oper;

  // This part needs for optimization. If the condition just true or false value,
  // true value just ignore(not being evaluated),
  // and false value goto falseLabel directly.
  if (CAstConstant *boolValue = dynamic_cast<CAstConstant *>(_cond)){
    if (boolValue->GetValue() == 0) {
      cb->AddInstr(new CTacInstr(opGoto, ifFalseLabel));
    }
  }

  // evaluate the condition. It is boolean operation, so call with true and false label.
  // If the condition is true, then go to body label,
  // else else body label.
  _cond->ToTac(cb, ifTrueLabel, ifFalseLabel);

  // here is body label part. add label, and evaluate body's statements.
  cb->AddInstr(ifTrueLabel);
  bodyStat = _ifBody;
  while(bodyStat != NULL) {
    exitLabel = cb->CreateLabel();
    bodyStat->ToTac(cb, exitLabel);
    cb->AddInstr(exitLabel);
    bodyStat = bodyStat->GetNext();
  }
  // if body part complete, we need to go to outside of if statement.
  cb->AddInstr(new CTacInstr(opGoto, next));

  // here is else body label part. It is same as body label part.
  cb->AddInstr(ifFalseLabel);
  if (_elseBody != NULL) {
    elseStat = _elseBody;
    while(elseStat != NULL) {
      exitLabel = cb->CreateLabel();
      elseStat->ToTac(cb, exitLabel);
      cb->AddInstr(exitLabel);
      elseStat = elseStat->GetNext();
    }
  }

  return NULL;
}


//------------------------------------------------------------------------------
// CAstStatWhile
//
CAstStatWhile::CAstStatWhile(CToken t,
                             CAstExpression *cond, CAstStatement *body)
  : CAstStatement(t), _cond(cond), _body(body)
{
  assert(cond != NULL);
}

CAstExpression* CAstStatWhile::GetCondition(void) const
{
  return _cond;
}

CAstStatement* CAstStatWhile::GetBody(void) const
{
  return _body;
}

bool CAstStatWhile::TypeCheck(CToken *t, string *msg) const
{
  // Condition of if statement must be bool type, same as if statement.
  // So check the type of condition.
  if (!GetCondition()->GetType()->Match(CTypeManager::Get()->GetBool())) {
    if (t != NULL) *t = GetCondition()->GetToken();
    if (msg != NULL) *msg = "boolean expression expected.";
    return false;
  }
  return true;
}

ostream& CAstStatWhile::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << "while cond" << endl;
  _cond->print(out, indent+2);
  out << ind << "while-body" << endl;
  if (_body != NULL) {
    CAstStatement *s = _body;
    do {
      s->print(out, indent+2);
      s = s->GetNext();
    } while (s != NULL);
  }
  else out << ind << "  empty." << endl;

  return out;
}

string CAstStatWhile::dotAttr(void) const
{
  return " [label=\"while\",shape=box]";
}

void CAstStatWhile::toDot(ostream &out, int indent) const
{
  string ind(indent, ' ');

  CAstNode::toDot(out, indent);

  _cond->toDot(out, indent);
  out << ind << dotID() << "->" << _cond->dotID() << ";" << endl;

  if (_body != NULL) {
    CAstStatement *s = _body;
    if (s != NULL) {
      string prev = dotID();
      do {
        s->toDot(out, indent);
        out << ind << prev << " -> " << s->dotID() << " [style=dotted];"
            << endl;
        prev = s->dotID();
        s = s->GetNext();
      } while (s != NULL);
    }
  }
}

CTacAddr* CAstStatWhile::ToTac(CCodeBlock *cb, CTacLabel *next)
{
  CTacLabel *condLabel = cb->CreateLabel("while_cond");
  CTacLabel *bodyLabel = cb->CreateLabel("while_body");
  CTacLabel *endLabel;
  CTacAddr *leftExprTac, *rightExprTac;
  CAstStatement *s;
  EOperation oper;

  // this is condition part. After body part do what it should do,
  // flow return here and reevaluate the condition.
  // If condition is not satisfied, then exit flow.
  cb->AddInstr(condLabel);
  // This part needs for optimization. If the condition just true or false value,
  // true value just ignore(not being evaluated),
  // and false value goto falseLabel directly.
  if (CAstConstant *boolValue = dynamic_cast<CAstConstant *>(_cond)){
    if (boolValue->GetValue() == 0) {
      cb->AddInstr(new CTacInstr(opGoto, next));
    }
    else {
      _cond->ToTac(cb, bodyLabel, next);
    }
  }
  else {
    _cond->ToTac(cb, bodyLabel, next);
  }

  // this is body part.
  // Each statement must have exit flow point(next parameter),
  // each time when statement is evaluated, make exit flow point.
  cb->AddInstr(bodyLabel);
  s = _body;
  while (s != NULL) {
    endLabel = cb->CreateLabel();
    s->ToTac(cb, endLabel);
    cb->AddInstr(endLabel);
    s = s->GetNext();
  }

  // If body part evaluation is complete,
  // then return to condition part.
  cb->AddInstr(new CTacInstr(opGoto, condLabel));

  return NULL;
}


//------------------------------------------------------------------------------
// CAstExpression
//
CAstExpression::CAstExpression(CToken t)
  : CAstNode(t)
{
}

CTacAddr* CAstExpression::ToTac(CCodeBlock *cb)
{
  // Default behavior of expression is do nothing.
  return NULL;
}

CTacAddr* CAstExpression::ToTac(CCodeBlock *cb,
                                CTacLabel *ltrue, CTacLabel *lfalse)
{
  return NULL;
}


//------------------------------------------------------------------------------
// CAstOperation
//
CAstOperation::CAstOperation(CToken t, EOperation oper)
  : CAstExpression(t), _oper(oper)
{
}

EOperation CAstOperation::GetOperation(void) const
{
  return _oper;
}


//------------------------------------------------------------------------------
// CAstBinaryOp
//
CAstBinaryOp::CAstBinaryOp(CToken t, EOperation oper,
                           CAstExpression *l,CAstExpression *r)
  : CAstOperation(t, oper), _left(l), _right(r)
{
  // these are the only binary operation we support for now
  assert((oper == opAdd)        || (oper == opSub)         ||
         (oper == opMul)        || (oper == opDiv)         ||
         (oper == opAnd)        || (oper == opOr)          ||
         (oper == opEqual)      || (oper == opNotEqual)    ||
         (oper == opLessThan)   || (oper == opLessEqual)   ||
         (oper == opBiggerThan) || (oper == opBiggerEqual)
        );
  assert(l != NULL);
  assert(r != NULL);
}

CAstExpression* CAstBinaryOp::GetLeft(void) const
{
  return _left;
}

CAstExpression* CAstBinaryOp::GetRight(void) const
{
  return _right;
}

bool CAstBinaryOp::TypeCheck(CToken *t, string *msg) const
{
  stringstream ss;
  const CType *lhs, *rhs;
  lhs = GetLeft()->GetType();
  rhs = GetRight()->GetType();
  EOperation oper = GetOperation();

  // First, check whether right and left operand have a right types.
  if (!GetLeft()->TypeCheck(t, msg)) return false;
  if (!GetRight()->TypeCheck(t, msg)) return false;

  // Second, right and left operand must have same type,
  // because we don't support type casting. So check that.
  if (!lhs->Match(rhs)) {
    if (t != NULL) *t = GetToken();
    if (msg != NULL) {
      ss << oper << ": type mismatch." << endl;
      ss << "  left  operand: " << lhs << endl;
      ss << "  right operand: " << rhs;
      *msg = ss.str();
    }
    return false;
  }

  // If operand's types are same,
  // the type of binaryop depends on the operation.
  // The semantics of the different operations for the three types are in the document.
  if(lhs->IsInt() && rhs->IsInt()) {
    if ((oper == opAnd) || (oper == opOr) || (oper == opNot))
      return false;
  }
  if(lhs->IsChar() && rhs->IsChar()) {
    if ((oper == opAdd)        || (oper == opSub)         ||
        (oper == opMul)        || (oper == opDiv)         ||
        (oper == opAnd)        || (oper == opOr)
      ) return false;
  }
  if(lhs->IsBoolean() && rhs->IsBoolean()) {
    if ((oper == opAdd)        || (oper == opSub)         ||
        (oper == opMul)        || (oper == opDiv)         ||
        (oper == opLessThan)   || (oper == opLessEqual)   ||
        (oper == opBiggerThan) || (oper == opBiggerEqual)
        ) return false;
  }

  return true;
}

const CType* CAstBinaryOp::GetType(void) const
{
  CTypeManager *tm = CTypeManager::Get();
  const CType *lhs, *rhs;
  lhs = GetLeft()->GetType();
  rhs = GetRight()->GetType();
  EOperation oper = GetOperation();

  // the type of binaryop depends on the operation.
  // The semantics of the different operations for the three types are in the document.
  // If operand's types are not same, this statement will work incorrectly.
  if(
      ((lhs->IsInt() || lhs->IsChar()) &&
      ((oper == opEqual)      || (oper == opNotEqual)    ||
       (oper == opLessThan)   || (oper == opLessEqual)   ||
       (oper == opBiggerThan) || (oper == opBiggerEqual)))
    ||
    (lhs->IsBoolean() &&
    ((oper == opAnd)   || (oper == opOr)    ||
     (oper == opEqual) || (oper == opNotEqual)))){
    return tm->GetBool();
  }
  else {
    return tm->GetInt();
  }
}

ostream& CAstBinaryOp::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << GetOperation() << " ";

  const CType *t = GetType();
  if (t != NULL) out << t; else out << "<INVALID>";

  out << endl;

  _left->print(out, indent+2);
  _right->print(out, indent+2);

  return out;
}

string CAstBinaryOp::dotAttr(void) const
{
  ostringstream out;
  out << " [label=\"" << GetOperation() << "\",shape=box]";
  return out.str();
}

void CAstBinaryOp::toDot(ostream &out, int indent) const
{
  string ind(indent, ' ');

  CAstNode::toDot(out, indent);

  _left->toDot(out, indent);
  out << ind << dotID() << "->" << _left->dotID() << ";" << endl;
  _right->toDot(out, indent);
  out << ind << dotID() << "->" << _right->dotID() << ";" << endl;
}

CTacAddr* CAstBinaryOp::ToTac(CCodeBlock *cb)
{
  CTacAddr *leftExprTac, *rightExprTac, *result;
  CTacAddr *ofLeftExprTac, *ofRightExprTac;
  CTacLabel *trueLabel, *falseLabel, *returnLabel, *nextLabel;
  EOperation op = GetOperation();

  if (IsRelOp(GetOperation())) {
    // each relOp includes ir operation set.
    // If the flow comes to here, it means this is first time of expression evaluation.
    // Because relop is boolean operation, So It need true and false branch.
    // That case, we call TaTac(cb, true, false).
    // This is first call of expression, so we must prepare true and false branch.
    // Then call ToTac(cb, true, false).
    trueLabel = cb->CreateLabel();
    falseLabel = cb->CreateLabel();
    returnLabel = cb->CreateLabel();

    ToTac(cb, trueLabel, falseLabel);

    result = cb->CreateTemp(CTypeManager::Get()->GetBool());

    // It is evaluated as boolean, so return 1(true) or 0(false).
    cb->AddInstr(trueLabel);
    cb->AddInstr(new CTacInstr(opAssign, result, new CTacConst(1)));
    cb->AddInstr(new CTacInstr(opGoto, returnLabel));

    cb->AddInstr(falseLabel);
    cb->AddInstr(new CTacInstr(opAssign, result, new CTacConst(0)));

    cb->AddInstr(returnLabel);
  }

  // opAnd and opOr needs short circuit code evaluation.
  // So we must implement that, like true and false branch implementation.
  else if (op == opAnd) {
    trueLabel = cb->CreateLabel();
    falseLabel = cb->CreateLabel();
    returnLabel = cb->CreateLabel();

    ToTac(cb, trueLabel, falseLabel);

    result = cb->CreateTemp(CTypeManager::Get()->GetBool());

    cb->AddInstr(trueLabel);
    cb->AddInstr(new CTacInstr(opAssign, result, new CTacConst(1)));
    cb->AddInstr(new CTacInstr(opGoto, returnLabel));

    cb->AddInstr(falseLabel);
    cb->AddInstr(new CTacInstr(opAssign, result, new CTacConst(0)));

    cb->AddInstr(returnLabel);
  }

  else if (op == opOr) {
    trueLabel = cb->CreateLabel();
    falseLabel = cb->CreateLabel();
    returnLabel = cb->CreateLabel();
    nextLabel = cb->CreateLabel();

    leftExprTac = _left->ToTac(cb, trueLabel, nextLabel);
    cb->AddInstr(nextLabel);
    rightExprTac = _right->ToTac(cb, trueLabel, falseLabel);

    result = cb->CreateTemp(CTypeManager::Get()->GetBool());

    cb->AddInstr(trueLabel);
    cb->AddInstr(new CTacInstr(opAssign, result, new CTacConst(1)));
    cb->AddInstr(new CTacInstr(opGoto, returnLabel));

    cb->AddInstr(falseLabel);
    cb->AddInstr(new CTacInstr(opAssign, result, new CTacConst(0)));

    cb->AddInstr(returnLabel);
  }

  // Arithmetic operation just calulate value, and assign value to result.
  // No need true and false branch implementation.
  else {
    leftExprTac = _left->ToTac(cb);
    rightExprTac =_right->ToTac(cb);
    result = cb->CreateTemp(GetType());

    CTacInstr *instruction = new CTacInstr(GetOperation(), result, leftExprTac, rightExprTac);
    cb->AddInstr(instruction);
  }

  return result;
}

CTacAddr* CAstBinaryOp::ToTac(CCodeBlock *cb,
                              CTacLabel *ltrue, CTacLabel *lfalse)
{
  CTacAddr *leftExprTac, *rightExprTac, *result;
  CTacAddr *ofLeftExprTac, *ofRightExprTac;
  CTacLabel *trueLabel, *falseLabel, *nextLabel, *returnLabel;
  EOperation op = GetOperation();

  // This time, we just do boolean operation.
  // If true, go to true label.
  // Else, go to false label.
  // What should do about true and false case already prepare upper function.
  // Just do operation. If it is true, go to true branch.
  // If not, let it flow, then next instruction move the flow to false branch.
  if (IsRelOp(GetOperation())) {
    leftExprTac = _left->ToTac(cb);
    rightExprTac = _right->ToTac(cb);
    cb->CreateLabel();

    cb->AddInstr(new CTacInstr(GetOperation(), ltrue, leftExprTac, rightExprTac));
    cb->AddInstr(new CTacInstr(opGoto, lfalse));
  }

  // Here we need short circuit code implementation.
  // opAnd, if left expression is true, then go to right expression.
  // else, go to false branch.
  else if (op == opAnd) {
    nextLabel = cb->CreateLabel();
    _left->ToTac(cb, nextLabel, lfalse);
    cb->AddInstr(nextLabel);
    _right->ToTac(cb, ltrue, lfalse);
  }

  // opOr, if left expression is false, then go to right expression.
  // else, go to true branch.
  else if (op == opOr) {
    nextLabel = cb->CreateLabel();
    _left->ToTac(cb, ltrue, nextLabel);
    cb->AddInstr(nextLabel);
    _right->ToTac(cb, ltrue, lfalse);
  }

  // Arithmetic operation will process ToTac(cb) function.
  // So we no need to implement here.
  //
  return NULL;
}


//------------------------------------------------------------------------------
// CAstUnaryOp
//
CAstUnaryOp::CAstUnaryOp(CToken t, EOperation oper, CAstExpression *e)
  : CAstOperation(t, oper), _operand(e)
{
  assert((oper == opNeg) || (oper == opPos) || (oper == opNot));
  assert(e != NULL);
}

CAstExpression* CAstUnaryOp::GetOperand(void) const
{
  return _operand;
}

bool CAstUnaryOp::TypeCheck(CToken *t, string *msg) const
{
  const CType *type = GetOperand()->GetType();
  EOperation oper = GetOperation();
  stringstream ss;

  // First, check that operand expression has right type.
  if (!GetOperand()->TypeCheck(t, msg)) return false;

  // If operand type is integer, we allow only two operation,
  // plus and minus.
  // But this case will be processed by parser,
  // as positive, or negitive integer constant.
  else if(type->IsInt()) {
    if ((oper == opPos) || (oper == opNeg)) return true;
  }

  // If operand expression type is boolean,
  // and the operation is Not('!'),
  // boolean type can be changed by opposite type.
  else if(type->IsBoolean()) {
    if ((oper == opNot)) return true;
  }
  
  if (t != NULL) *t = GetToken();
  if (msg != NULL) {
    ss << oper << ": type mismatch." << endl;
    ss << "  operand:       " << type << endl;
    *msg = ss.str();
  }
  return false;
}

const CType* CAstUnaryOp::GetType(void) const
{
  // If operand's type check is false,
  // these statement will work incorrectly.
  if(GetOperation() == opNot) {
    return CTypeManager::Get()->GetBool();
  }
  else {
    return CTypeManager::Get()->GetInt();
  }
}

ostream& CAstUnaryOp::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << GetOperation() << " ";

  const CType *t = GetType();
  if (t != NULL) out << t; else out << "<INVALID>";
  out << endl;

  _operand->print(out, indent+2);

  return out;
}

string CAstUnaryOp::dotAttr(void) const
{
  ostringstream out;
  out << " [label=\"" << GetOperation() << "\",shape=box]";
  return out.str();
}

void CAstUnaryOp::toDot(ostream &out, int indent) const
{
  string ind(indent, ' ');

  CAstNode::toDot(out, indent);

  _operand->toDot(out, indent);
  out << ind << dotID() << "->" << _operand->dotID() << ";" << endl;
}

CTacAddr* CAstUnaryOp::ToTac(CCodeBlock *cb)
{
  // Unary Operation have three operation : pos, neg, not.
  // pos and neg operation is int operation, and It is already
  // processed by parser.
  // So we just handle not(boolean) operation.
  // not operation is a little tricky,
  // if value is 1, return 0,
  // else, return 1.
  
  CTacLabel *trueLabel = cb->CreateLabel();
  CTacLabel *falseLabel = cb->CreateLabel();
  CTacLabel *exitLabel = cb->CreateLabel();

  CAstExpression *operand = _operand;

  operand->ToTac(cb, falseLabel, trueLabel);
  CTacAddr *result = cb->CreateTemp(_operand->GetType());

  cb->AddInstr(trueLabel);
  cb->AddInstr(new CTacInstr(opAssign, result, new CTacConst(1)));
  cb->AddInstr(new CTacInstr(opGoto, exitLabel));

  cb->AddInstr(falseLabel);
  cb->AddInstr(new CTacInstr(opAssign, result, new CTacConst(0)));

  cb->AddInstr(exitLabel);

  return result;
}

CTacAddr* CAstUnaryOp::ToTac(CCodeBlock *cb,
                             CTacLabel *ltrue, CTacLabel *lfalse)
{
  // This part needs for optimization. If the condition just true or false value,
  // true value just ignore(not being evaluated),
  // and false value goto falseLabel directly.
  //if (CAstConstant *boolValue = dynamic_cast<CAstConstant *>(_operand)){
    //if (boolValue->GetValue() == 1) {
      //cb->AddInstr(new CTacInstr(opGoto, lfalse));
    //}
    //else {
    //}
  //}
  if (CAstDesignator *operand = dynamic_cast<CAstDesignator *>(_operand)) {
    cb->AddInstr(new CTacInstr(opEqual, lfalse, operand->ToTac(cb), new CTacConst(1)));
    cb->AddInstr(new CTacInstr(opGoto, ltrue));
    return NULL;
  }
  else {
    return _operand->ToTac(cb, lfalse, ltrue);
  }
}

//------------------------------------------------------------------------------
// CAstSpecialOp
//
CAstSpecialOp::CAstSpecialOp(CToken t, EOperation oper, CAstExpression *e,
                             const CType *type)
  : CAstOperation(t, oper), _operand(e), _type(type)
{
  assert((oper == opAddress) || (oper == opDeref) || (oper = opCast));
  assert(e != NULL);
  assert(((oper != opCast) && (type == NULL)) ||
         ((oper == opCast) && (type != NULL)));
}

CAstExpression* CAstSpecialOp::GetOperand(void) const
{
  return _operand;
}

bool CAstSpecialOp::TypeCheck(CToken *t, string *msg) const
{
  // SpecialOp only work correctly when operand expression type is pointer.
  if (!GetOperand()->GetType()->IsPointer()) {
    return false;
  }
  return true;
}

const CType* CAstSpecialOp::GetType(void) const
{
  // String = Pointer of char array.
  // Array = Pointer of array.
  // operand expression have String of array type,
  // SpecialOp wrap the expression as the pointer.
  if(CAstStringConstant *string = dynamic_cast<CAstStringConstant *>(GetOperand())){
    return CTypeManager::Get()->GetPointer(string->GetType());
  }
  else {
    return CTypeManager::Get()->GetPointer(((CAstArrayDesignator *)GetOperand())->GetType());
  }
}

ostream& CAstSpecialOp::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << GetOperation() << " ";

  const CType *t = GetType();
  if (t != NULL) out << t; else out << "<INVALID>";
  out << endl;

  _operand->print(out, indent+2);

  return out;
}

string CAstSpecialOp::dotAttr(void) const
{
  ostringstream out;
  out << " [label=\"" << GetOperation() << "\",shape=box]";
  return out.str();
}

void CAstSpecialOp::toDot(ostream &out, int indent) const
{
  string ind(indent, ' ');

  CAstNode::toDot(out, indent);

  _operand->toDot(out, indent);
  out << ind << dotID() << "->" << _operand->dotID() << ";" << endl;
}

CTacAddr* CAstSpecialOp::ToTac(CCodeBlock *cb)
{
  if(CAstStringConstant *string = dynamic_cast<CAstStringConstant *>(GetOperand())){
    CTacAddr *derefAddress = cb->CreateTemp(GetType());
    cb->AddInstr(new CTacInstr(opAddress, derefAddress, string->ToTac(cb)));

    return derefAddress;
  }

  else {
    const CSymbol *arraySymbol = ((CAstArrayDesignator *)GetOperand())->GetSymbol();
    const CPointerType *arrayType = CTypeManager::Get()->GetPointer(arraySymbol->GetDataType());
    CTacAddr *operandTac = GetOperand()->ToTac(cb);

    if (CTacReference *ref = dynamic_cast<CTacReference *>(operandTac)) {
      CTacAddr *derefAddress = cb->CreateTemp(GetType());
      cb->AddInstr(new CTacInstr(opAddress, derefAddress, ref));
      return derefAddress;
    }

    return operandTac;
  }
}


//------------------------------------------------------------------------------
// CAstFunctionCall
//
CAstFunctionCall::CAstFunctionCall(CToken t, const CSymProc *symbol)
  : CAstExpression(t), _symbol(symbol)
{
  assert(symbol != NULL);
}

const CSymProc* CAstFunctionCall::GetSymbol(void) const
{
  return _symbol;
}

void CAstFunctionCall::AddArg(CAstExpression *arg)
{
  CAstExpression *actualParam = arg;
  const CType *actualParamType = actualParam->GetType();

  // If param is an array but not an open array, It needs dereferecing.
  // So we must use SpecialOp for dereferecing.
  if(actualParamType->IsArray() && ((CArrayType *)actualParamType)->GetNElem() != -1){
     actualParam = new CAstSpecialOp(actualParam->GetToken(), opAddress, actualParam);
  }
  _arg.push_back(actualParam);
}

int CAstFunctionCall::GetNArgs(void) const
{
  return (int)_arg.size();
}

CAstExpression* CAstFunctionCall::GetArg(int index) const
{
  assert((index >= 0) && (index < _arg.size()));
  return _arg[index];
}

bool CAstFunctionCall::TypeCheck(CToken *t, string *msg) const
{
  stringstream ss;
  const CType *formalParamType, *actualArgumentType;
  const CType *formalParamInnerType, *actualArgumentInnerType;

  // if a number of params is greater than a number of formal params,
  // It is error because a number of params should be equal as formal params.
  if(GetNArgs() < GetSymbol()->GetNParams()) {
    if (t != NULL) *t = GetToken();
    if (msg != NULL) *msg = "not enough arguments.";
    return false;
  }

  // if a number of params is less than a number of formal params,
  // It is error because a number of params should be equal as formal params.
  else if(GetNArgs() > GetSymbol()->GetNParams()) {
    if (t != NULL) *t = GetToken();
    if (msg != NULL) *msg = "too many arguments.";
    return false;
  }

  // Check type of all arguments.
  for(int i = 0; i < GetNArgs(); i++){
    formalParamType = GetSymbol()->GetParam(i)->GetDataType();
    actualArgumentType = GetArg(i)->GetType();
    formalParamInnerType = NULL;
    actualArgumentInnerType = NULL;

    if(!formalParamType->Match(actualArgumentType)) {
    //if(!actualArgumentType->Match(formalParamType)) {
      // Check pointer of Null type case.
      // like DIM(pointer to array; integer) or DOFS(pointer to array),
      // pointer to array can receive an array which is not decided dimension yet.
      // So a type of it should be pointer of NULL.
      // We consider this case.
      if(formalParamType->IsPointer() && actualArgumentType->IsPointer()) {
        formalParamInnerType = ((const CPointerType *)formalParamType)->GetBaseType();
        actualArgumentInnerType = ((const CPointerType *)actualArgumentType)->GetBaseType();

        if(!(formalParamInnerType->IsNull() && actualArgumentInnerType->IsArray())) {
          if (t != NULL) *t = GetArg(i)->GetToken();
          if (msg != NULL) {
            ss << "parameter " << (i + 1) << ": argument type mismatch."<< endl;
            ss << "  expected " << GetSymbol()->GetParam(i)->GetDataType() << endl;
            ss << "  got      " << GetArg(i)->GetType();
            *msg = ss.str();
          }
          return false;
        }
      }

      // If this is not the pointer to array case,
      // then else statement means just formal parameter case is not equal actual argument type.
      // So this is error.
      else {
        if (t != NULL) *t = GetArg(i)->GetToken();
        if (msg != NULL) {
          ss << "parameter " << (i + 1) << ": argument type mismatch."<< endl;
          ss << "  expected " << GetSymbol()->GetParam(i)->GetDataType() << endl;
          ss << "  got      " << GetArg(i)->GetType();
          *msg = ss.str();
        }
        return false;
      }
    }

  }

  return true;
}

const CType* CAstFunctionCall::GetType(void) const
{
  return GetSymbol()->GetDataType();
}

ostream& CAstFunctionCall::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << "call " << _symbol << " ";
  const CType *t = GetType();
  if (t != NULL) out << t; else out << "<INVALID>";
  out << endl;

  for (size_t i=0; i<_arg.size(); i++) {
    _arg[i]->print(out, indent+2);
  }

  return out;
}

string CAstFunctionCall::dotAttr(void) const
{
  ostringstream out;
  out << " [label=\"call " << _symbol->GetName() << "\",shape=box]";
  return out.str();
}

void CAstFunctionCall::toDot(ostream &out, int indent) const
{
  string ind(indent, ' ');

  CAstNode::toDot(out, indent);

  for (size_t i=0; i<_arg.size(); i++) {
    _arg[i]->toDot(out, indent);
    out << ind << dotID() << "->" << _arg[i]->dotID() << ";" << endl;
  }
}

CTacAddr* CAstFunctionCall::ToTac(CCodeBlock *cb)
{
  int numberOfArgs = GetNArgs();
  CTacAddr *argument;

  // First, evaluate argument, then assign parameter.
  // Parameter assignment is reverse order.
  for(int i = (numberOfArgs-1); i >= 0; i--) {
    argument = GetArg(i)->ToTac(cb);
    //if(CTacReference *deref = dynamic_cast<CTacReference *>(argument)) {
      //cout << deref << endl;
      //CTacAddr *temp = cb->CreateTemp(deref->GetSymbol()->GetDataType());
      //cb->AddInstr(new CTacInstr(opAddress, temp, deref));
      //argument = temp;
    //}
    cb->AddInstr(new CTacInstr(opParam, new CTacConst(i), argument));
  }

  // Then call function with return value(temp variable).
  CTacAddr* temp = cb->CreateTemp(GetType());
  cb->AddInstr(new CTacInstr(opCall, temp, new CTacName(GetSymbol())));

  return temp;
}

CTacAddr* CAstFunctionCall::ToTac(CCodeBlock *cb,
                                  CTacLabel *ltrue, CTacLabel *lfalse)
{
  // Just processed branch.
  CTacAddr *temp = ToTac(cb);
  cb->AddInstr(new CTacInstr(opEqual, ltrue, temp, new CTacConst(1)));
  cb->AddInstr(new CTacInstr(opGoto, lfalse));

  return temp;
}



//------------------------------------------------------------------------------
// CAstOperand
//
CAstOperand::CAstOperand(CToken t)
  : CAstExpression(t)
{
}


//------------------------------------------------------------------------------
// CAstDesignator
//
CAstDesignator::CAstDesignator(CToken t, const CSymbol *symbol)
  : CAstOperand(t), _symbol(symbol)
{
  assert(symbol != NULL);
}

const CSymbol* CAstDesignator::GetSymbol(void) const
{
  return _symbol;
}

bool CAstDesignator::TypeCheck(CToken *t, string *msg) const
{
  // Designator should not point to an array.
  if (GetSymbol()->GetDataType()->IsArray()) {
    if (t != NULL) *t = GetToken();
    if (msg != NULL) *msg = "Array needs array designator.";
    return false;
  }
  return true;
}

const CType* CAstDesignator::GetType(void) const
{
  return GetSymbol()->GetDataType();
}

ostream& CAstDesignator::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << _symbol << " ";

  const CType *t = GetType();
  if (t != NULL) out << t; else out << "<INVALID>";

  out << endl;

  return out;
}

string CAstDesignator::dotAttr(void) const
{
  ostringstream out;
  out << " [label=\"" << _symbol->GetName();
  out << "\",shape=ellipse]";
  return out.str();
}

void CAstDesignator::toDot(ostream &out, int indent) const
{
  string ind(indent, ' ');

  CAstNode::toDot(out, indent);
}

CTacAddr* CAstDesignator::ToTac(CCodeBlock *cb)
{
  // just return variable name.
  return new CTacName(GetSymbol());
}

CTacAddr* CAstDesignator::ToTac(CCodeBlock *cb,
                                CTacLabel *ltrue, CTacLabel *lfalse)
{
  CTacAddr *result = new CTacName(GetSymbol());
  cb->AddInstr(new CTacInstr(opEqual, ltrue, result, new CTacConst(1)));
  cb->AddInstr(new CTacInstr(opGoto, lfalse));
  return NULL;
  // just return variable name.
  //return new CTacName(GetSymbol());
}


//------------------------------------------------------------------------------
// CAstArrayDesignator
//
CAstArrayDesignator::CAstArrayDesignator(CToken t, const CSymbol *symbol)
  : CAstDesignator(t, symbol), _done(false), _offset(NULL)
{
}

void CAstArrayDesignator::AddIndex(CAstExpression *idx)
{
  assert(!_done);
  _idx.push_back(idx);
}

void CAstArrayDesignator::IndicesComplete(void)
{
  assert(!_done);
  _done = true;
}

int CAstArrayDesignator::GetNIndices(void) const
{
  return (int)_idx.size();
}

CAstExpression* CAstArrayDesignator::GetIndex(int index) const
{
  assert((index >= 0) && (index < _idx.size()));
  return _idx[index];
}

bool CAstArrayDesignator::TypeCheck(CToken *t, string *msg) const
{
  assert(_done);

  // Check type of all index expression.
  // If a type of index expression is not integer,
  // It is error. Index must be integer.
  for (int i = 0; i < GetNIndices(); i++) {
    if (!GetIndex(i)->TypeCheck(t, msg)) return false;
    if (!GetIndex(i)->GetType()->IsInt()) {
      if (t != NULL) *t = GetIndex(i)->GetToken();
      if (msg != NULL) *msg = "invalid array index expression.";
      return false;
    }
  }

  // ArrayDesignator has two approch.
  // 1. Pointer of Array (formal parameter).
  // 2. Just Array (local variable, global variable).
  // 
  // First case.
  if (GetSymbol()->GetSymbolType() == stParam) {
    const CType *formalParamType = GetSymbol()->GetDataType();

    if (!formalParamType->IsPointer() || 
        !((CPointerType *)formalParamType)->GetBaseType()->IsArray()) {
      if (t != NULL) *t = GetToken();
      if (msg != NULL) *msg = "invalid array expression.";
      return false;
    }
    return true;
  }

  // Second case.
  if (GetSymbol()->GetSymbolType() == stLocal || 
      GetSymbol()->GetSymbolType() == stGlobal) {
    if (!GetSymbol()->GetDataType()->IsArray()) {
      if (t != NULL) *t = GetToken();
      if (msg != NULL) *msg = "invalid array expression.";
      return false;
    }
    return true;
  }

  return true;
}

const CType* CAstArrayDesignator::GetType(void) const
{
  const CSymbol *symbol = GetSymbol();
  const CType *type = GetSymbol()->GetDataType();

  // If ArrayDesignator is pointer (as formal parameter),
  // Its type is a type of which pointer point to.
  if(type->IsPointer()) {
    type = ((CPointerType *)type)->GetBaseType();
  }

  // If not, It means this represent an array,
  // So the type of array is an array finally point to, with index.
  // Like A[0], one dimension array of integer, expressing an integer value.
  for (int i = 0; i < GetNIndices(); i++) {
    if(type->IsArray()) {
      type = ((CArrayType *)type)->GetInnerType();
    }
  }

  return type;
}

ostream& CAstArrayDesignator::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << _symbol << " ";

  const CType *t = GetType();
  if (t != NULL) out << t; else out << "<INVALID>";

  out << endl;

  for (size_t i=0; i<_idx.size(); i++) {
    _idx[i]->print(out, indent+2);
  }

  return out;
}

string CAstArrayDesignator::dotAttr(void) const
{
  ostringstream out;
  out << " [label=\"" << _symbol->GetName() << "[]\",shape=ellipse]";
  return out.str();
}

void CAstArrayDesignator::toDot(ostream &out, int indent) const
{
  string ind(indent, ' ');

  CAstNode::toDot(out, indent);

  for (size_t i=0; i<_idx.size(); i++) {
    _idx[i]->toDot(out, indent);
    out << ind << dotID() << "-> " << _idx[i]->dotID() << ";" << endl;
  }
}

CTacAddr* CAstArrayDesignator::ToTac(CCodeBlock *cb)
{
  // ArrayDesignator return array address value.
  // It is value, so it should be reference type. 
  // So return address as reference.
  int dimensions, dataSize;
  const CPointerType *pointerType;
  const CArrayType *arrayType;
  const CType *innerType;

  // First, calculate dimensions.
  // If ArrayDesignator is parameter,
  // unwrap pointer and get array type.
  // then get a number of dimensions.
  if(GetSymbol()->GetSymbolType() == stParam) {
    pointerType = (const CPointerType *)GetSymbol()->GetDataType();
    arrayType = (const CArrayType *)pointerType->GetBaseType();
    dimensions = arrayType->GetNDim();
  }
  else {
    arrayType = (const CArrayType *)GetSymbol()->GetDataType();
    dimensions = ((CArrayType *)GetSymbol()->GetDataType())->GetNDim();
  }

  // Second, get size of type. int is 4, char and boolean is 1.
  innerType = arrayType;
  while (!innerType->IsScalar()) {
    innerType = ((CArrayType *)innerType)->GetInnerType();
  }
  dataSize = innerType->GetDataSize();

  CTacAddr *arrayOriginAddress, *arrayStartAddress, *arrayAddress, *temp;
  CTacAddr *sizeOfDim, *functionDIM, *nextArrayIndex;
  CTacAddr *higherDimensionArrayIndex, *currentDimensionArrayIndex, *arrayDimIndex;
  CTacAddr *arrayOffset, *arrayOffsetAddress;

  CTacName *array = new CTacName(GetSymbol());

  // Get Array Start Address.
  // If array is parameter, the name of array is address. So just assign it.
  // Else, create temp variable and get an address from the name of array.
  if(GetSymbol()->GetSymbolType() == stParam) {
    arrayOriginAddress = array;
  }
  else {
    arrayOriginAddress = cb->CreateTemp(CTypeManager::Get()->GetPointer(arrayType));
    cb->AddInstr(new CTacInstr(opAddress, arrayOriginAddress, new CTacName(GetSymbol())));
  }

  // If variable have no index, no need to calulate address. just return start address,
  // as reference.
  if (GetNIndices() == 0) {
    //return new CTacReference(((CTacTemp *)arrayOriginAddress)->GetSymbol());
    return arrayOriginAddress;
  }

  // evaluate first index. if dimension is less than 2, calculate address with this.
  nextArrayIndex = GetIndex(0)->ToTac(cb);

  // If dimensions bigger than 2, get address recursively.
  // currentAddress = (higherDimensionArrayIndex * currentDimensionSize) + currentDimensionIndex
  // this fomula repeat every dimensions which bigger than 1.
  if (dimensions > 1) {
    // Array dimension order is right row order.
    // For example, A[i][j][k], j stands for second dimension, k stands for third dimension.
    //
    for (int i = 2; i <= dimensions; i++) {
      // Add dimension size what you want to parameter 1.
      cb->AddInstr(new CTacInstr(opParam, new CTacConst(1), new CTacConst(i)));

      if (GetSymbol()->GetSymbolType() == stParam) {
        arrayStartAddress = array;
      }
      else {
        arrayStartAddress = cb->CreateTemp(CTypeManager::Get()->GetPointer(arrayType));
        cb->AddInstr(new CTacInstr(opAddress, arrayStartAddress, new CTacName(GetSymbol())));
      }

      // Add array start address to parameter 0.
      cb->AddInstr(new CTacInstr(opParam, new CTacConst(0), arrayStartAddress));

      // Set temp variable which is saved actual size of dimension by Calling DIM.
      sizeOfDim = cb->CreateTemp(GetType());
      functionDIM = new CTacName(cb->GetOwner()->GetSymbolTable()->FindSymbol("DIM"));
      cb->AddInstr(new CTacInstr(opCall, sizeOfDim, functionDIM));

      arrayDimIndex = cb->CreateTemp(CTypeManager::Get()->GetInt());

      // if dimension number is bigger than a number of indices,
      // It means index is not given.
      // This part we get index of higher dimension for product.
      // For example, if current dimension is second,
      // We need index of first dimension for product,
      // And index of current dimension for add.
      // remember, GetIndex() save indices reverce order.
      if(GetNIndices() < i) {
        higherDimensionArrayIndex = new CTacConst(0);
      }
      else {
        higherDimensionArrayIndex = GetIndex(i-2)->ToTac(cb);
      }

      //cb->AddInstr(new CTacInstr(opMul, arrayDimIndex, higherDimensionArrayIndex, sizeOfDim));
      cb->AddInstr(new CTacInstr(opMul, arrayDimIndex, nextArrayIndex, sizeOfDim));

      // If current dimension of index is not exist, assign zero.
      if(GetNIndices() < i) {
        currentDimensionArrayIndex = new CTacConst(0);
      }
      else {
        currentDimensionArrayIndex = GetIndex(i-1)->ToTac(cb);
      }
      nextArrayIndex = cb->CreateTemp(CTypeManager::Get()->GetInt());
      cb->AddInstr(new CTacInstr(opAdd, nextArrayIndex, arrayDimIndex, currentDimensionArrayIndex));
    }
  }

  // calculate array address offset.
  // These process implement array address calculation, which is in the documentation.
  arrayOffset = cb->CreateTemp(CTypeManager::Get()->GetInt());
  
  cb->AddInstr(new CTacInstr(opMul, arrayOffset, nextArrayIndex, new CTacConst(dataSize)));

  if (GetSymbol()->GetSymbolType() == stParam) {
    arrayStartAddress = array;
  }
  else {
    arrayStartAddress = cb->CreateTemp(CTypeManager::Get()->GetPointer(arrayType));
    cb->AddInstr(new CTacInstr(opAddress, arrayStartAddress, new CTacName(GetSymbol())));
  }
  CTacAddr *realArrayStartAddress = cb->CreateTemp(CTypeManager::Get()->GetInt());
  CTacAddr *functionDOFS = new CTacName(cb->GetOwner()->GetSymbolTable()->FindSymbol("DOFS"));
  arrayOffsetAddress = cb->CreateTemp(CTypeManager::Get()->GetInt());
  arrayAddress = cb->CreateTemp(CTypeManager::Get()->GetInt());

  cb->AddInstr(new CTacInstr(opParam, new CTacConst(0), arrayStartAddress));
  cb->AddInstr(new CTacInstr(opCall, realArrayStartAddress, functionDOFS));
  cb->AddInstr(new CTacInstr(opAdd, arrayOffsetAddress, arrayOffset, realArrayStartAddress));
  cb->AddInstr(new CTacInstr(opAdd, arrayAddress, arrayOriginAddress, arrayOffsetAddress));

  return new CTacReference(((CTacTemp *)arrayAddress)->GetSymbol(), GetSymbol());
}

CTacAddr* CAstArrayDesignator::ToTac(CCodeBlock *cb,
                                     CTacLabel *ltrue, CTacLabel *lfalse)
{
  CTacAddr *arrayTac = ToTac(cb);
  cb->AddInstr(new CTacInstr(opEqual, ltrue, arrayTac, new CTacConst(1)));
  cb->AddInstr(new CTacInstr(opGoto, lfalse));
  return arrayTac;
}


//------------------------------------------------------------------------------
// CAstConstant
//
CAstConstant::CAstConstant(CToken t, const CType *type, long long value)
  : CAstOperand(t), _type(type), _value(value)
{
}

void CAstConstant::SetValue(long long value)
{
  _value = value;
}

long long CAstConstant::GetValue(void) const
{
  return _value;
}

string CAstConstant::GetValueStr(void) const
{
  ostringstream out;

  if (GetType() == CTypeManager::Get()->GetBool()) {
    out << (_value == 0 ? "false" : "true");
  } else {
    out << dec << _value;
  }

  return out.str();
}

bool CAstConstant::TypeCheck(CToken *t, string *msg) const
{
  // Integer range must between 0 ~ (2^32 - 1).
  if(GetType() == CTypeManager::Get()->GetInt()) {
    if (GetValue() > 2147483647 || GetValue() < -2147483648) {
      if (t != NULL) *t = GetToken();
      if (msg != NULL) *msg = "integer constant outside valid range.";
      return false;
    }
  }

  return true;
}

const CType* CAstConstant::GetType(void) const
{
  return _type;
}

ostream& CAstConstant::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << GetValueStr() << " ";

  const CType *t = GetType();
  if (t != NULL) out << t; else out << "<INVALID>";

  out << endl;

  return out;
}

string CAstConstant::dotAttr(void) const
{
  ostringstream out;
  out << " [label=\"" << GetValueStr() << "\",shape=ellipse]";
  return out.str();
}

CTacAddr* CAstConstant::ToTac(CCodeBlock *cb)
{
  return new CTacConst(GetValue());
}

CTacAddr* CAstConstant::ToTac(CCodeBlock *cb,
                                CTacLabel *ltrue, CTacLabel *lfalse)
{
  CTacAddr *result = new CTacConst(GetValue());
  cb->AddInstr(new CTacInstr(opEqual, ltrue, result, new CTacConst(1)));
  return result;
}


//------------------------------------------------------------------------------
// CAstStringConstant
//
int CAstStringConstant::_idx = 0;

CAstStringConstant::CAstStringConstant(CToken t, const string value,
                                       CAstScope *s)
  : CAstOperand(t)
{
  CTypeManager *tm = CTypeManager::Get();

  _type = tm->GetArray(strlen(CToken::unescape(value).c_str())+1,
                       tm->GetChar());
  _value = new CDataInitString(value);

  ostringstream o;
  o << "_str_" << ++_idx;

  _sym = new CSymGlobal(o.str(), _type);
  _sym->SetData(_value);
  s->GetSymbolTable()->AddSymbol(_sym);
}

const string CAstStringConstant::GetValue(void) const
{
  return _value->GetData();
}

const string CAstStringConstant::GetValueStr(void) const
{
  return GetValue();
}

bool CAstStringConstant::TypeCheck(CToken *t, string *msg) const
{
  // String must return char array type.
  if (!GetType()->IsArray()) return false;
  else if (!((CArrayType *)GetType())->GetInnerType()->IsChar()) {
    return false;
  }
  return true;
}

const CType* CAstStringConstant::GetType(void) const
{
  return _type;
}

ostream& CAstStringConstant::print(ostream &out, int indent) const
{
  string ind(indent, ' ');

  out << ind << '"' << GetValueStr() << '"' << " ";

  const CType *t = GetType();
  if (t != NULL) out << t; else out << "<INVALID>";

  out << endl;

  return out;
}

string CAstStringConstant::dotAttr(void) const
{
  ostringstream out;
  // the string is already escaped, but dot requires double escaping
  out << " [label=\"\\\"" << CToken::escape(GetValueStr())
      << "\\\"\",shape=ellipse]";
  return out.str();
}

CTacAddr* CAstStringConstant::ToTac(CCodeBlock *cb)
{
  return new CTacName(_sym);
}

CTacAddr* CAstStringConstant::ToTac(CCodeBlock *cb,
                                CTacLabel *ltrue, CTacLabel *lfalse)
{
  CTacName *string = new CTacName(_sym);
  cb->AddInstr(new CTacInstr(opEqual, ltrue, string, new CTacConst(1)));
  return NULL;
}


