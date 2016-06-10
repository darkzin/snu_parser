##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v0       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v2       <char> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $14994, %eax            #   0:     if     14994 >= 17938 goto 1_if_true
    movl    $17938, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_6                  #   3:     goto   6
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t0
    movb    %al, -29(%ebp)         
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $65196, %eax            #  13:     div    t1 <- 65196, 10709
    movl    $10709, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     div    t2 <- t1, 80440
    movl    $80440, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t3 <- t2, 1881
    movl    $1881, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     assign v1 <- t3
    movl    %eax, -36(%ebp)        
l_f0_11_while_cond:
    movl    $100, %eax              #  18:     if     100 > 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_12_while_body     
    jmp     l_f0_10                 #  19:     goto   10
l_f0_12_while_body:
    movl    $99, %eax               #  21:     assign v2 <- 99
    movb    %al, -37(%ebp)         
    jmp     l_f0_11_while_cond      #  22:     goto   11_while_cond
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t0
    jmp     l_f1_exit              
    jmp     l_f1_2_if_true          #   2:     goto   2_if_true
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    movl    $98, %eax               #   5:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $99, %eax               #   9:     if     99 # 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  10:     goto   8_if_false
l_f1_7_if_true:
l_f1_11_while_cond:
    movl    $97, %eax               #  13:     if     97 >= 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_12_while_body     
    jmp     l_f1_10                 #  14:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  16:     goto   11_while_cond
l_f1_10:
    movl    $100, %eax              #  18:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_6                  #  19:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 6 of <array 8 of <array 8 of <array 4 of <int>>>>>>> %ebp+8 ]
    #    -13(%ebp)   1  [ $v1       <char> %ebp-13 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    movl    $97, %eax               #   0:     assign v1 <- 97
    movb    %al, -13(%ebp)         
    call    dummyProcedure          #   1:     call   dummyProcedure
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
