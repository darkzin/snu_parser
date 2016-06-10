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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <ptr(4) to <array 7 of <char>>> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 75 of <array 32 of <array 6 of <array 45 of <array 56 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 89 of <array 36 of <array 8 of <array 58 of <array 5 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 19 of <array 83 of <array 11 of <array 65 of <array 77 of <char>>>>>>> %ebp+20 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    call    dummyINTfunc            #   0:     call   t7 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t8 <- t7, 98743
    movl    $98743, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t8
    jmp     l_f0_exit              
    movl    $0, %eax                #   3:     if     0 # 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   4:     goto   3_if_false
l_f0_2_if_true:
    movl    $61024, %eax            #   6:     assign v4 <- 61024
    movl    %eax, -28(%ebp)        
    movl    $27484, %eax            #   7:     return 27484
    jmp     l_f0_exit              
    movl    $7842, %eax             #   8:     assign v4 <- 7842
    movl    %eax, -28(%ebp)        
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_if_false:
l_f0_1:
    leal    _str_1, %eax            #  12:     &()    t9 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #  14:     call   WriteStr
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]

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
    movl    $97, %eax               #   0:     return 97
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t7
    jmp     l_f1_exit              
    movl    $98, %eax               #   3:     return 98
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $19789, %eax            #   0:     mul    t7 <- 19789, 79775
    movl    $79775, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   1:     mul    t8 <- t7, 95572
    movl    $95572, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   2:     return t8
    jmp     l_f2_exit              
    movl    $87316, %eax            #   3:     div    t9 <- 87316, 17459
    movl    $17459, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   4:     mul    t10 <- t9, 75062
    movl    $75062, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     mul    t11 <- t10, 96202
    movl    $96202, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     mul    t12 <- t11, 20895
    movl    $20895, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     mul    t13 <- t12, 1877
    movl    $1877, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     mul    t14 <- t13, 40582
    movl    $40582, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     add    t15 <- t14, 98320
    movl    $98320, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     add    t16 <- t15, 3731
    movl    $3731, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     add    t17 <- t16, 14741
    movl    $14741, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  12:     return t17
    jmp     l_f2_exit              
    movl    $100, %eax              #  13:     if     100 > 100 goto 3_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #  14:     goto   4_if_false
l_f2_3_if_true:
    movl    $29059, %eax            #  16:     return 29059
    jmp     l_f2_exit              
    movl    $39088, %eax            #  17:     return 39088
    jmp     l_f2_exit              
    movl    $94536, %eax            #  18:     return 94536
    jmp     l_f2_exit              
    jmp     l_f2_2                  #  19:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]

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
    movl    $82234, %eax            #   0:     mul    t0 <- 82234, 24055
    movl    $24055, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $50035, %eax            #   1:     add    t1 <- 50035, 50987
    movl    $50987, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 65242
    movl    $65242, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t3 <- t2, 61263
    movl    $61263, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t4 <- t3, 2940
    movl    $2940, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     add    t5 <- t4, 28264
    movl    $28264, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -16(%ebp), %eax         #   6:     if     t0 >= t5 goto 1_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   7:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  13:     if     t6 <= 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_5_if_true       
    jmp     l_test_6_if_false       #  14:     goto   6_if_false
l_test_5_if_true:
    movl    $98, %eax               #  16:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  17:     call   WriteChar
    addl    $4, %esp               
l_test_10_while_cond:
    jmp     l_test_9                #  19:     goto   9
    jmp     l_test_10_while_cond    #  20:     goto   10_while_cond
l_test_9:
    jmp     l_test_4                #  22:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_exit            
l_test_14_while_cond:
    jmp     l_test_15_while_body    #  27:     goto   15_while_body
l_test_15_while_body:
    jmp     l_test_exit            
l_test_20_while_cond:
    movl    $100, %eax              #  31:     if     100 > 99 goto 21_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_21_while_body   
    jmp     l_test_19               #  32:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  34:     goto   20_while_cond
l_test_19:
    jmp     l_test_14_while_cond    #  36:     goto   14_while_cond

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
