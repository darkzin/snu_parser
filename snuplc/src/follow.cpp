#include "follow.h"

namespace Follow {
  bool Module(EToken type){
    return true;
  }
  bool StatSequence(EToken type){
    return (type == tEnd) ||
           (type == tElse);
  }
  bool Statement(EToken type){
    return StatSequence(type) ||
           (type == tSemicolon);
  }
  bool IfStatement(EToken type){
    return Statement(type);
  }
  bool WhileStatement(EToken type){
    return Statement(type);
  }
  bool ReturnStatement(EToken type){
    return Statement(type);
  }
  bool Assignment(EToken type){
    return Statement(type);
  }
  bool Expression(EToken type){
    return Assignment(type) ||
           ReturnStatement(type) ||
           (type == tRBrak) ||
           (type == tRParens) ||
           (type == tComma);
  }
  bool Simpleexpr(EToken type){
    return Expression(type) || (type == tRelOp);
  }
  bool Term(EToken type){
    return Simpleexpr(type) ||
           (type == tPlusMinus) ||
           (type == tOr);
  }
  bool Factor(EToken type){
    return Term(type) ||
           (type == tMulDiv) ||
           (type == tAnd);
  }
  bool Qualident(EToken type){
    return Factor(type) || (type == tAssign);
  }
  bool SubroutineCall(EToken type){
    return Factor(type) || Statement(type);
  }
  bool VarDeclaration(EToken type){
    return (type == tBegin) ||
           (type == tProcedure) ||
           (type == tFunction);
  }
  bool VarDeclSequence(EToken type){
    return (type == tSemicolon) ||
           (type == tRParens);
  }
  bool VarDecl(EToken type){
    return VarDeclSequence(type) ||
           (type == tSemicolon);
  }
  bool SubroutineDecl(EToken type){
    return (type == tBegin);
  }
  bool ProcedureDecl(EToken type){
    return (type == tBegin) ||
           (type == tVarDecl);
  }
  bool FunctionDecl(EToken type){
    return (type == tBegin) ||
           (type == tVarDecl);
  }
  bool FormalParam(EToken type){
    return (type == tSemicolon) ||
           (type == tColon);
  }
  bool SubroutineBody(EToken type){
    return (type == tIdent);
  }
}
