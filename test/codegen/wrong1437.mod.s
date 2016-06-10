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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $v0       <char> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    movl    $57457, %eax            #   1:     div    t1 <- 57457, 44760
    movl    $44760, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t2 <- t1, 76783
    movl    $76783, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t3 <- t2, 74034
    movl    $74034, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t3 >= 65097 goto 2_while_body
    movl    $65097, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    movl    $98, %eax               #   9:     assign v0 <- 98
    movb    %al, -26(%ebp)         
    call    dummyCHARfunc           #  10:     call   t4 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  11:     return t4
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 68 of <array 83 of <array 53 of <array 88 of <array 64 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 49 of <array 81 of <array 16 of <array 71 of <array 45 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_5                  #   2:     goto   5
    jmp     l_f1_5                  #   3:     goto   5
    jmp     l_f1_3_while_body       #   4:     goto   3_while_body
l_f1_5:
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
l_f1_1:
l_f1_9_while_cond:
    movl    $100, %eax              #  11:     if     100 >= 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_10_while_body     
    jmp     l_f1_8                  #  12:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  14:     goto   9_while_cond
l_f1_8:

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]

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
    movl    $68303, %eax            #   0:     if     68303 >= 41097 goto 1_if_true
    movl    $41097, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $40731, %eax            #   4:     if     40731 > 4777 goto 6_while_body
    movl    $4777, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    call    ReadInt                 #   9:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #  10:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f2_11_while_cond:
    movl    $96551, %eax            #  12:     if     96551 < 81956 goto 12_while_body
    movl    $81956, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_12_while_body     
    jmp     l_f2_10                 #  13:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  15:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_14                 #  17:     goto   14
l_f2_14:
    call    dummyBOOLfunc           #  19:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f2_18                 #  20:     goto   18
l_f2_18:
    jmp     l_f2_0                  #  22:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    _str_1, %eax            #  25:     &()    t4 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  27:     call   WriteStr
    addl    $4, %esp               
    movl    $415, %eax              #  28:     div    t5 <- 415, 73130
    movl    $73130, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t6 <- t5, 93379
    movl    $93379, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     add    t7 <- t6, 19509
    movl    $19509, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     return t7
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
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
l_test_1_while_cond:
    movl    $15106, %eax            #   1:     assign v0 <- 15106
    movl    %eax, v0               
    jmp     l_test_6_if_false       #   2:     goto   6_if_false
    jmp     l_test_4                #   3:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $0, %eax                #   6:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
    call    dummyCHARfunc           #   8:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_10_while_cond:
    movl    $89927, %eax            #  10:     if     89927 = 76537 goto 11_while_body
    movl    $76537, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  11:     goto   9
l_test_11_while_body:
    jmp     l_test_exit            
    jmp     l_test_10_while_cond    #  14:     goto   10_while_cond
l_test_9:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
