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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <char> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v1 <- t7
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #   2:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_4_if_false         #   4:     goto   4_if_false
    movl    $16579, %eax            #   5:     sub    t8 <- 16579, 61626
    movl    $61626, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     return t8
    jmp     l_f0_exit              
    jmp     l_f0_2                  #   7:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 34 of <array 9 of <array 7 of <array 64 of <array 97 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 25 of <array 93 of <array 38 of <array 2 of <array 53 of <bool>>>>>>> %ebp+12 ]
    #    -16(%ebp)   4  [ $v3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v4       <char> %ebp-17 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $99, %eax               #   0:     if     99 <= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_5_while_cond:
    movl    $98, %eax               #   7:     if     98 = 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_6_while_body      
    jmp     l_f1_4                  #   8:     goto   4
l_f1_6_while_body:
    movl    $80204, %eax            #  10:     assign v3 <- 80204
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #  11:     assign v4 <- 100
    movb    %al, -17(%ebp)         
    jmp     l_f1_5_while_cond       #  12:     goto   5_while_cond
l_f1_4:
    movl    $85427, %eax            #  14:     param  0 <- 85427
    pushl   %eax                   
    call    WriteInt                #  15:     call   WriteInt
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $76456, %eax            #   1:     if     76456 >= 57684 goto 4_if_true
    movl    $57684, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   2:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   4:     goto   3
l_f2_5_if_false:
l_f2_3:
    movl    $28240, %eax            #   7:     return 28240
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_10_if_false        #  11:     goto   10_if_false
    movl    $72974, %eax            #  12:     return 72974
    jmp     l_f2_exit              
    movl    $50612, %eax            #  13:     return 50612
    jmp     l_f2_exit              
    movl    $92160, %eax            #  14:     return 92160
    jmp     l_f2_exit              
    jmp     l_f2_8                  #  15:     goto   8
l_f2_10_if_false:
l_f2_8:
    leal    _str_1, %eax            #  18:     &()    t7 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #  20:     call   WriteStr
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $t6       <bool> %ebp-31 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $27490, %eax            #   0:     div    t0 <- 27490, 40712
    movl    $40712, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 49379
    movl    $49379, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 83574
    movl    $83574, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t3 <- t2, 37395
    movl    $37395, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v0 <- t3
    movl    %eax, v0               
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   6:     call   t4 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movl    $27362, %eax            #   7:     assign v0 <- 27362
    movl    %eax, v0               
l_test_5_while_cond:
    jmp     l_test_4                #   9:     goto   4
    call    dummyBOOLfunc           #  10:     call   t5 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         
    call    dummyBOOLfunc           #  11:     call   t6 <- dummyBOOLfunc
    movb    %al, -31(%ebp)         
    movl    $99, %eax               #  12:     assign v1 <- 99
    movb    %al, v1                
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  14:     goto   11_while_cond
    jmp     l_test_15_if_false      #  15:     goto   15_if_false
    jmp     l_test_13               #  16:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_5_while_cond     #  19:     goto   5_while_cond
l_test_4:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
