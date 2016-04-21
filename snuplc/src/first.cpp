#include "first.h"

namespace First {
  bool Module(EToken type){
    return (type == tModule);
  }
  bool Qualident(EToken type){
    return (type == tIdent);
  }
  bool Factor(EToken type){
    return (type == tIdent) ||
           (type == tNumber) ||
           (type == tBoolConst) ||
           (type == tCharConst) ||
           (type == tString) ||
           (type == tLParens) ||
           (type == tNot);
  }
  bool Term(EToken type){
    return Factor(type);
  }
  bool Simpleexpr(EToken type){
    return (type == tPlusMinus || Term(type));
  }
  bool Expression(EToken type){
    return Simpleexpr(type);
  }
  bool Assignment(EToken type){
    return Qualident(type);
  }
  bool SubroutineCall(EToken type){
    return (type == tIdent);
  }
  bool IfStatement(EToken type){
    return (type == tIf);
  }
  bool WhileStatement(EToken type){
    return (type == tWhile);
  }
  bool ReturnStatement(EToken type){
    return (type == tReturn);
  }
  bool Statement(EToken type){
    return Assignment(type) ||
           SubroutineCall(type) ||
           IfStatement(type) ||
           WhileStatement(type) ||
           ReturnStatement(type);
  }
  bool StatSequence(EToken type){
    return Statement(type);
  }
  bool VarDeclaration(EToken type){
    return (type == tVarDecl);
  }
  bool VarDecl(EToken type){
    return (type == tIdent);
  }
  bool VarDeclSequence(EToken type){
    return VarDecl(type);
  }
  bool ProcedureDecl(EToken type){
    return (type == tProcedure);
  }
  bool FunctionDecl(EToken type){
    return (type == tFunction);
  }
  bool SubroutineDecl(EToken type){
    return ProcedureDecl(type) || FunctionDecl(type);
  }
  bool FormalParam(EToken type){
    return (type == tLParens);
  }
  bool SubroutineBody(EToken type){
    return VarDeclaration(type);
  }
}
