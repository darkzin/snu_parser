//------------------------------------------------------------------------------
/// @brief SnuPL backend
/// @author Bernhard Egger <bernhard@csap.snu.ac.kr>
/// @section changelog Change Log
/// 2012/11/28 Bernhard Egger created
/// 2013/06/09 Bernhard Egger adapted to SnuPL/0
/// 2016/04/04 Bernhard Egger adapted to SnuPL/1
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

#include <fstream>
#include <sstream>
#include <iomanip>
#include <cassert>

#include "backend.h"
using namespace std;


//------------------------------------------------------------------------------
// CBackend
//
CBackend::CBackend(ostream &out)
  : _out(out)
{
}

CBackend::~CBackend(void)
{
}

bool CBackend::Emit(CModule *m)
{
  assert(m != NULL);
  _m = m;

  if (!_out.good()) return false;

  bool res = true;

  try {
    EmitHeader();
    EmitCode();
    EmitData();
    EmitFooter();

    res = _out.good();
  } catch (...) {
    res = false;
  }

  return res;
}

void CBackend::EmitHeader(void)
{
}

void CBackend::EmitCode(void)
{
}

void CBackend::EmitData(void)
{
}

void CBackend::EmitFooter(void)
{
}


//------------------------------------------------------------------------------
// CBackendx86
//
CBackendx86::CBackendx86(ostream &out)
  : CBackend(out), _curr_scope(NULL)
{
  _ind = string(4, ' ');
}

CBackendx86::~CBackendx86(void)
{
}

void CBackendx86::EmitHeader(void)
{
  _out << "##################################################" << endl
       << "# " << _m->GetName() << endl
       << "#" << endl
       << endl;
}

void CBackendx86::EmitCode(void)
{
  _out << _ind << "#-----------------------------------------" << endl
       << _ind << "# text section" << endl
       << _ind << "#" << endl
       << _ind << ".text" << endl
       << _ind << ".align 4" << endl
       << endl
       << _ind << "# entry point and pre-defined functions" << endl
       << _ind << ".global main" << endl
       << _ind << ".extern DIM" << endl
       << _ind << ".extern DOFS" << endl
       << _ind << ".extern ReadInt" << endl
       << _ind << ".extern WriteInt" << endl
       << _ind << ".extern WriteStr" << endl
       << _ind << ".extern WriteChar" << endl
       << _ind << ".extern WriteLn" << endl
       << endl;

  // TODO
  // forall s in subscopes do
  //   EmitScope(s)
  // EmitScope(program)

  // emit globals in subscopes (necessary if we support static local variables)
  //
  // forall s in subscopes do
  //   EmitScope(s)
  vector<CScope*>::const_iterator sit = _m->GetSubscopes().begin();
  while (sit != _m->GetSubscopes().end()) {
    EmitScope(*sit++);
  }
  EmitScope(_m);

  _out << _ind << "# end of text section" << endl
       << _ind << "#-----------------------------------------" << endl
       << endl;
}

void CBackendx86::EmitData(void)
{
  _out << _ind << "#-----------------------------------------" << endl
       << _ind << "# global data section" << endl
       << _ind << "#" << endl
       << _ind << ".data" << endl
       << _ind << ".align 4" << endl
       << endl;

  EmitGlobalData(_m);

  _out << _ind << "# end of global data section" << endl
       << _ind << "#-----------------------------------------" << endl
       << endl;
}

void CBackendx86::EmitFooter(void)
{
  _out << _ind << ".end" << endl
       << "##################################################" << endl;
}

void CBackendx86::SetScope(CScope *scope)
{
  _curr_scope = scope;
}

CScope* CBackendx86::GetScope(void) const
{
  return _curr_scope;
}

void CBackendx86::EmitScope(CScope *scope)
{
  assert(scope != NULL);
  // Store previous scope to restore after all works are done.
  CScope *oldScope = GetScope();

  // Set scope to current one.
  SetScope(scope);

  string label;

  if (scope->GetParent() == NULL) label = "main";
  else label = scope->GetName();

  // label
  _out << _ind << "# scope " << scope->GetName() << endl
       << label << ":" << endl;

  // TODO
  // ComputeStackOffsets(scope)
  //
  // emit function prologue
  //
  // forall i in instructions do
  //   EmitInstruction(i)
  //
  // emit function epilogue
  //
  // ComputeStackOffsets(scope)
  // local offset 12 means : esi, edi, ebx
  // param offset 8 means : return, ebp
  size_t stackSize = ComputeStackOffsets(scope->GetSymbolTable(), 8, -12);
  size_t absStackSize = ( stackSize >= 0 ? stackSize : stackSize * -1 );

  // print prologue instruction. this process is the same to every scope.
  // save caller's register information to stack.
  _out << _ind << "# prologue" << endl;
  EmitInstruction("pushl", "%ebp");
  EmitInstruction("movl", "%esp, %ebp");
  EmitInstruction("pushl", "%ebx", "save callee saved registers");
  EmitInstruction("pushl", "%esi");
  EmitInstruction("pushl", "%edi");
  EmitInstruction("subl", Imm(stackSize) + ", %esp", "make room for locals");
  _out << endl;

  // clear local stack area.
  // If stackSize smaller than 20, Use this method.
  // This method use simple operation, so faster than next method.
  if (absStackSize > 0 && absStackSize < 20) {
    int wordsCount = stackSize / 4;
    stringstream localAddress;

    if (stackSize % 4 != 0) {
      if (stackSize < 0) {
        wordsCount--;
      }
      else {
        wordsCount++;
      }
    }

    // clear eax register to zero.
    EmitInstruction("xorl", "%eax, %eax", "memset local stack area to 0");

    // clear each of local variable area to zero.
    for (int i = wordsCount; i > 0; i--) {
      localAddress << "%eax, " << (i - 1) * 4 << "(%esp)";
      EmitInstruction("movl", localAddress.str());
      localAddress.str("");
    }
  }

  else if (absStackSize >= 20) {
    int wordsCount = stackSize / 4;

    if (stackSize % 4 != 0) {
      if (stackSize < 0) {
        wordsCount--;
      }
      else {
        wordsCount++;
      }
    }

    // clear local stack area.
    EmitInstruction("cld", "", "memset local stack area to 0");
    // clear eax register.
    EmitInstruction("xorl", "%eax, %eax");
    // save a number of words to ecx register to be used by rep opcode.
    EmitInstruction("movl", Imm(wordsCount) + ", %ecx");
    // copy esp to edi.
    EmitInstruction("mov", "%esp, %edi");
    // On the rep stosl :
    //
    // rep is a repeat prefix that will repeat the following instruction
    // (out of a limited set) %ecx times.
    // stosl stores the value of %eax at the address pointed to by %edi,
    // and increases %edi by the size of %eax.
    EmitInstruction("rep", "stosl");
  }

  // if this scope is not main, emit local data instruction.
  if (scope->GetParent() != NULL) {
    EmitLocalData(GetScope());
  }

  if (stackSize != 0) {
    _out << endl;
  }

  // Emit function instruction.
  _out << _ind << "# function body" << endl;
  EmitCodeBlock(scope->GetCodeBlock());
  _out << endl;

  // label
  //_out << Label(label) << "_exit :" << endl;
  _out << Label("exit") << ":" << endl;

  // restore caller's stack information to register.
  _out << _ind << "# epilogue" << endl;
  EmitInstruction("addl", Imm(stackSize) + ", %esp", "remove locals");
  EmitInstruction("popl", "%edi");
  EmitInstruction("popl", "%esi");
  EmitInstruction("popl", "%ebx");
  EmitInstruction("popl", "%ebp");
  EmitInstruction("ret");

  _out << endl;

  // restore previous scope.
  SetScope(oldScope);
}

void CBackendx86::EmitGlobalData(CScope *scope)
{
  assert(scope != NULL);

  // emit the globals for the current scope
  CSymtab *st = scope->GetSymbolTable();
  assert(st != NULL);

  bool header = false;

  vector<CSymbol*> slist = st->GetSymbols();

  _out << dec;

  size_t size = 0;

  for (size_t i=0; i<slist.size(); i++) {
    CSymbol *s = slist[i];
    const CType *t = s->GetDataType();

    if (s->GetSymbolType() == stGlobal) {
      if (!header) {
        _out << _ind << "# scope: " << scope->GetName() << endl;
        header = true;
      }

      // insert alignment only when necessary
      if ((t->GetAlign() > 1) && (size % t->GetAlign() != 0)) {
        size += t->GetAlign() - size % t->GetAlign();
        _out << setw(4) << " " << ".align "
             << right << setw(3) << t->GetAlign() << endl;
      }

      _out << left << setw(36) << s->GetName() + ":" << "# " << t << endl;

      if (t->IsArray()) {
        const CArrayType *a = dynamic_cast<const CArrayType*>(t);
        assert(a != NULL);
        int dim = a->GetNDim();

        _out << setw(4) << " "
          << ".long " << right << setw(4) << dim << endl;

        for (int d=0; d<dim; d++) {
          assert(a != NULL);

          _out << setw(4) << " "
            << ".long " << right << setw(4) << a->GetNElem() << endl;

          a = dynamic_cast<const CArrayType*>(a->GetInnerType());
        }
      }

      const CDataInitializer *di = s->GetData();
      if (di != NULL) {
        const CDataInitString *sdi = dynamic_cast<const CDataInitString*>(di);
        assert(sdi != NULL);  // only support string data initializers for now

        _out << left << setw(4) << " "
          << ".asciz " << '"' << sdi->GetData() << '"' << endl;
      } else {
        _out  << left << setw(4) << " "
          << ".skip " << dec << right << setw(4) << t->GetDataSize()
          << endl;
      }

      size += t->GetSize();
    }
  }

  _out << endl;

  // emit globals in subscopes (necessary if we support static local variables)
  vector<CScope*>::const_iterator sit = scope->GetSubscopes().begin();
  while (sit != scope->GetSubscopes().end()) EmitGlobalData(*sit++);
}

void CBackendx86::EmitLocalData(CScope *scope)
{
  assert(scope != NULL);

  // TODO TODO!
  CSymtab *symbolTable = scope->GetSymbolTable();
  vector<CSymbol*> slist = symbolTable->GetSymbols();

  // each loop of symbol represents local variable.
  // If variable is array, we need to do special operation to remember array information.
  // We should write each dimension of element size.
  for(int i = 0; i < slist.size(); i++) {
    const CSymbol *symbol = slist[i];

    // If variable is array, we should investigate array information.
    if (const CArrayType *arrayType = dynamic_cast<const CArrayType *>(symbol->GetDataType())) {
      int dimensions = arrayType->GetNDim();
      stringstream target, cmt;

      // write how many dimension is exist.
      target << Imm(dimensions) << "," << symbol->GetOffset()
             << "(" << symbol->GetBaseRegister() << ")";
      cmt << "local array '" << symbol->GetName() << "': "
          << dimensions << " dimensions";
      EmitInstruction("movl", target.str(), cmt.str());
      

      // write how many element is exist in each dimension.
      for (int j = 0; j < dimensions; j++) {
        target.str("");
        cmt.str("");

        target << Imm(arrayType->GetNElem()) << "," << symbol->GetOffset() + 4 * (j + 1)
               << "(" << symbol->GetBaseRegister() << ")";
        cmt << "  dimension " << j + 1 << ": " << arrayType->GetNElem() << " elements";
        
        EmitInstruction("movl", target.str(), cmt.str());

        // If j is less than dimensions, we should go to next dimention.
        arrayType = dynamic_cast<const CArrayType *>(arrayType->GetInnerType());
      }
    }
  }
}

void CBackendx86::EmitCodeBlock(CCodeBlock *cb)
{
  assert(cb != NULL);

  const list<CTacInstr*> &instr = cb->GetInstr();
  list<CTacInstr*>::const_iterator it = instr.begin();

  // Emit instructions which code block owned.
  while (it != instr.end()) {
    EmitInstruction(*it++);
  }
}

void CBackendx86::EmitInstruction(CTacInstr *i)
{
  assert(i != NULL);

  ostringstream cmt;
  string mnm;
  cmt << i;

  EOperation op = i->GetOperation();
  string oper = "", target = "";
  int alignSize = 4;

  // Every operation do the same as reference 
  // using utility functions already made.
  switch (op) {
    // binary operators
    // dst = src1 op src2
    // TODO
    // opAdd, opSub, opMul, opDiv have similar instruction.
  case opAdd:
    oper = "addl";
  case opSub:
    if (oper == "") oper = "subl";
    target = "%ebx, %eax";
  case opMul:
    if (oper == "") oper = "imull";
  case opDiv:
    if (oper == "") oper = "idivl";
    if (target == "") target = "%ebx";

    Load(i->GetSrc(1), "%eax", cmt.str());
    Load(i->GetSrc(2), "%ebx");
    if (op == opDiv) { EmitInstruction("cdq", ""); }
    EmitInstruction(oper, target);
    Store(i->GetDest(), 'a');
    break;
  // unary operators
  // dst = op src1
  // TODO
  case opNeg:
    Load(i->GetSrc(1), "%eax", cmt.str());
    EmitInstruction("negl", "%eax");
    Store(i->GetDest(), 'a');
    break;

  // memory operations
  // dst = src1
  // TODO
  case opAssign:
    Load(i->GetSrc(1), "%eax", cmt.str());
    Store(i->GetDest(), 'a');
    break;
  // pointer operations
  // dst = &src1
  // TODO
  // dst = *src1
  case opAddress:
    EmitInstruction("leal", Operand(i->GetSrc(1)) + ", %eax", cmt.str());
    Store(i->GetDest(), 'a');
    break;
  case opDeref:
    // opDeref not generated for now
    EmitInstruction("# opDeref", "not implemented", cmt.str());
    break;


  // unconditional branching
  // goto dst
  // TODO
  case opGoto:
    EmitInstruction("jmp", Label((CTacLabel *)i->GetDest()), cmt.str());
    break;

  // conditional branching
  // if src1 relOp src2 then goto dst
  // TODO
  case opEqual:
  case opNotEqual:
  case opBiggerThan:
  case opBiggerEqual:
  case opLessThan:
  case opLessEqual:

    Load(i->GetSrc(1), "%eax", cmt.str());
    Load(i->GetSrc(2), "%ebx");
    EmitInstruction("cmpl", "%ebx, %eax");
    EmitInstruction("j" + Condition(op), Label((CTacLabel *)i->GetDest()));
    break;

  // function call-related operations
  // TODO
  case opCall:
    const CSymProc *functionSymbol;
    functionSymbol = (CSymProc *)(((CTacName *)i->GetSrc(1))->GetSymbol());
    oper = functionSymbol->GetName();

    EmitInstruction("call", oper, cmt.str());

    // After call procedure, we should add all of parameter size to esp.
    if (functionSymbol->GetNParams() > 0) {
      //int size = 0;
      //int totalParamBytes = 0;

      //for (int i = 0; i < functionSymbol->GetNParams(); i++) {
        //const CSymParam *paramSymbol = functionSymbol->GetParam(i);
        //const CType *paramType = paramSymbol->GetDataType();
        //size += paramType->GetDataSize();
      //}

      //totalParamBytes = (size / alignSize) * alignSize;

      //if (size%4 != 0) {
        //totalParamBytes += alignSize;
      //}

      //EmitInstruction("addl", Imm(totalParamBytes) + ", %esp");
      EmitInstruction("addl", Imm(functionSymbol->GetNParams() * 4) + ", %esp");
    }

    if (i->GetDest() != NULL) {
      Store(i->GetDest(), 'a');
    }

    break;

  case opParam:
    Load(i->GetSrc(1), "%eax", cmt.str());
    EmitInstruction("pushl", "%eax");
    break;

  case opReturn:
    if (i->GetSrc(1) != NULL) {
      Load(i->GetSrc(1), "%eax", cmt.str());
    }
    //EmitInstruction("jmp", Label(GetScope()->GetName()));
    EmitInstruction("jmp", Label("exit"));
    break;

  // special
  case opLabel:
    _out << Label(dynamic_cast<CTacLabel*>(i)) << ":" << endl;
    break;

  case opNop:
    EmitInstruction("nop", "", cmt.str());
    break;


    default:
      EmitInstruction("# ???", "not implemented", cmt.str());
  }
}

void CBackendx86::EmitInstruction(string mnemonic, string args, string comment)
{
  _out << left
       << _ind
       << setw(7) << mnemonic << " "
       << setw(23) << args;
  if (comment != "") _out << " # " << comment;
  _out << endl;
}

void CBackendx86::Load(CTacAddr *src, string dst, string comment)
{
  assert(src != NULL);

  string mnm = "mov";
  string mod = "l";

  // set operator modifier based on the operand size
  switch (OperandSize(src)) {
    case 1: mod = "zbl"; break;
    case 2: mod = "zwl"; break;
    case 4: mod = "l"; break;
  }

  // emit the load instruction
  EmitInstruction(mnm + mod, Operand(src) + ", " + dst, comment);
}

void CBackendx86::Store(CTac *dst, char src_base, string comment)
{
  assert(dst != NULL);

  string mnm = "mov";
  string mod = "l";
  string src = "%";

  // compose the source register name based on the operand size
  switch (OperandSize(dst)) {
    case 1: mod = "b"; src += string(1, src_base) + "l"; break;
    case 2: mod = "w"; src += string(1, src_base) + "x"; break;
    case 4: mod = "l"; src += "e" + string(1, src_base) + "x"; break;
  }

  // emit the store instruction
  EmitInstruction(mnm + mod, src + ", " + Operand(dst), comment);
}

string CBackendx86::Operand(const CTac *op)
{
  //string operand;
  stringstream operand;

  // TODO
  // return a string representing op
  // hint: take special care of references (op of type CTacReference)
  // Operand have four type : temp, reference, just name, and const.

  // If operand is temp, just get offset of base register.
  if (const CTacTemp *tempTac = dynamic_cast<const CTacTemp *>(op)) {
    const CSymbol *tempSymbol = tempTac->GetSymbol();
    operand << tempSymbol->GetOffset()
            << "(" << tempSymbol->GetBaseRegister() << ")";
  }
  
  // If operand is reference, we need to strip reference away.
  // To do that, copy address of reference to edi register.
  // Then return operand as edi register.
  else if (const CTacReference *refTac = dynamic_cast<const CTacReference *>(op)) {
    const CSymbol *refSymbol = refTac->GetSymbol();
    operand << refSymbol->GetOffset()
            << "(" << refSymbol->GetBaseRegister() << "), %edi";
    EmitInstruction("movl", operand.str());

    operand.str("");
    operand << "(%edi)";
  }

  // If operand is name, we consider if It is global or not.
  // If global, name act as address, so just return name.
  // If not, process same as temp case.
  else if (const CTacName *nameTac = dynamic_cast<const CTacName *>(op)) {
    const CSymbol *nameSymbol = nameTac->GetSymbol();

    if (nameSymbol->GetSymbolType() == stGlobal) {
      operand << nameSymbol->GetName();
    }
    else {
    operand << nameSymbol->GetOffset()
            << "(" << nameSymbol->GetBaseRegister() << ")";
    }
  }

  // If operand is const, just return immediate value.
  else if (const CTacConst *constTac = dynamic_cast<const CTacConst *>(op)) {
    operand << Imm(constTac->GetValue());
  }

  return operand.str();
}

string CBackendx86::Imm(int value) const
{
  ostringstream o;
  o << "$" << dec << value;
  return o.str();
}

string CBackendx86::Label(const CTacLabel* label) const
{
  CScope *cs = GetScope();
  assert(cs != NULL);

  ostringstream o;
  o << "l_" << cs->GetName() << "_" << label->GetLabel();
  return o.str();
  return "l_" + cs->GetName() + "_" + label->GetLabel();
}

string CBackendx86::Label(string label) const
{
  CScope *cs = GetScope();
  assert(cs != NULL);

  return "l_" + cs->GetName() + "_" + label;
}

string CBackendx86::Condition(EOperation cond) const
{
  switch (cond) {
    case opEqual:       return "e";
    case opNotEqual:    return "ne";
    case opLessThan:    return "l";
    case opLessEqual:   return "le";
    case opBiggerThan:  return "g";
    case opBiggerEqual: return "ge";
    default:            assert(false); break;
  }
}

int CBackendx86::OperandSize(CTac *t) const
{
  int size = 4;
  const CSymbol *symbol;
  const CType *symbolType;

  // TODO
  // compute the size for operand t of type CTacName
  // Hint: you need to take special care of references (incl. references to pointers!)
  //       and arrays. Compare your output to that of the reference implementation
  //       if you are not sure.

  // If operand is reference, we find out what is the scalar type of this reference.
  // This means we follow pointer and array until we find bool or char or int type.
  if (CTacReference *refTac = dynamic_cast<CTacReference *>(t)) {
    const CSymbol *symbol = refTac->GetDerefSymbol();
    symbolType = symbol->GetDataType();
    
    while(symbolType->IsArray() || symbolType->IsPointer()) {
      if (symbolType->IsPointer()) {
        symbolType = ((CPointerType *)symbolType)->GetBaseType();
      }
      else if (symbolType->IsArray()) {
        symbolType = ((CArrayType *)symbolType)->GetBaseType();
      }
    }

    // After find scalar type (not pointer), get size of that type.
    size = symbolType->GetDataSize();
  }

  // If not, just get size of type(of name).
  else if (CTacName *tacName = dynamic_cast<CTacName *>(t)) {
    symbol = tacName->GetSymbol();
    symbolType = symbol->GetDataType();
    size = symbolType->GetDataSize();
  }
  
  return size;
}

size_t CBackendx86::ComputeStackOffsets(CSymtab *symtab,
                                        int param_ofs,int local_ofs)
{
  assert(symtab != NULL);

  vector<CSymbol*> slist = symtab->GetSymbols();
  int currentLocalOffset = local_ofs;
  int currentParamOffset = param_ofs;
  size_t stackSize = 0;
  int alignSize = 4;

  // TODO
  // foreach local symbol l in slist do
  //   compute aligned offset on stack and store in symbol l
  //   set base register to %ebp
  //
  // foreach parameter p in slist do
  //   compute offset on stack and store in symbol p
  //   set base register to %ebp
  //
  // align size
  //
  // dump stack frame to assembly file

  //
  _out << _ind << "# stack offsets:" << endl;

  for (size_t i=0; i<slist.size(); i++) {
    CSymbol *s = slist[i];
    const CType *t = s->GetDataType();
    int dataSize = t->GetSize();
    int paddingForAlign = 0;

    // foreach local symbol l in slist do
    //   compute aligned offset on stack and store in symbol l
    //   set base register to %ebp
    if (s->GetSymbolType() == stLocal) {
      stackSize += dataSize;
      currentLocalOffset -= dataSize;

      // Give padding to offset to align data.
      if (t->IsInt() || t->IsArray() || t->IsPointer()) {
        if ((stackSize % alignSize) != 0) {
          int padding = stackSize % alignSize;
          if ( padding < 0 ) {
            paddingForAlign = padding * -1;
          }
          else {
            //padding = ( padding < 0 ? padding * -1 : padding );
            paddingForAlign = alignSize - padding;
          }
          stackSize += paddingForAlign;
          currentLocalOffset -= paddingForAlign;
        }
      }

      // set the offset and register.
      s->SetOffset(currentLocalOffset);
      s->SetBaseRegister("%ebp");
    }

    // foreach parameter p in slist do
    //   compute offset on stack and store in symbol p
    //   set base register to %ebp
    else if (s->GetSymbolType() == stParam) {
      CSymParam *paramSymbol = (CSymParam *)s;

      s->SetOffset(currentParamOffset + alignSize * paramSymbol->GetIndex());
      s->SetBaseRegister("%ebp");
    }

    // Emit stack offsets.
    if (s->GetSymbolType() == stLocal || s->GetSymbolType() == stParam) {
      _out << _ind << "#   " << right << setw(4) << s->GetOffset()
           << "(" << s->GetBaseRegister() << ")  "
           << right << setw(2) << dataSize
           << right << setw(2) << s
           << endl;
    }
  }

  _out << endl;

  // If stack size not align, give padding to stack size to align.
  if ((stackSize % alignSize) != 0) {
    int padding = (stackSize % alignSize);

    if ( padding < 0 ) {
      stackSize -= padding;
    }
    else {
      stackSize += alignSize - padding;
    }
  }

  return stackSize;
}
