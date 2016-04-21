#ifndef __SnuPL_FIRST_H__
#define __SnuPL_FIRST_H__

#include "scanner.h"

namespace First {
  bool Module(EToken type);
  bool Qualident(EToken type);
  bool Factor(EToken type);
  bool Term(EToken type);
  bool Simpleexpr(EToken type);
  bool Expression(EToken type);
  bool Assignment(EToken type);
  bool SubroutineCall(EToken type);
  bool IfStatement(EToken type);
  bool WhileStatement(EToken type);
  bool ReturnStatement(EToken type);
  bool Statement(EToken type);
  bool VarDeclaration(EToken type);
  bool VarDeclSequence(EToken type);
  bool VarDecl(EToken type);
  bool SubroutineDecl(EToken type);
  bool ProcedureDecl(EToken type);
  bool FunctionDecl(EToken type);
  bool FormalParam(EToken type);
  bool SubroutineBody(EToken type);
}
