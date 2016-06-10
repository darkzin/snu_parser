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
    #    -13(%ebp)   1  [ $t14      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t15      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 5 of <array 10 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t14 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t15 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_4_if_false         #   2:     goto   4_if_false
    movl    $32719, %eax            #   3:     assign v2 <- 32719
    movl    %eax, -20(%ebp)        
    movl    $68433, %eax            #   4:     return 68433
    jmp     l_f0_exit              
    movl    $4224, %eax             #   5:     return 4224
    jmp     l_f0_exit              
    jmp     l_f0_2                  #   6:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t17      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t18      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t19      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t20      <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t21      <char> %ebp-41 ]
    #    -42(%ebp)   1  [ $t22      <bool> %ebp-42 ]
    #    -43(%ebp)   1  [ $t23      <bool> %ebp-43 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 1 of <array 7 of <array 10 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 5 of <array 8 of <array 6 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 3 of <array 7 of <array 10 of <array 5 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $46527, %eax            #   0:     sub    t14 <- 46527, 89430
    movl    $89430, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $85849, %eax            #   1:     if     85849 > t14 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
    call    ReadInt                 #   6:     call   t15 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $449, %eax              #   7:     sub    t16 <- 449, 28924
    movl    $28924, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     sub    t17 <- t16, 20872
    movl    $20872, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     add    t18 <- t17, 36760
    movl    $36760, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     add    t19 <- t18, 27251
    movl    $27251, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     param  0 <- t19
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_0                  #  13:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    ReadInt                 #  16:     call   t20 <- ReadInt
    movl    %eax, -40(%ebp)        
    movl    $74428, %eax            #  17:     if     74428 >= 13153 goto 11_if_true
    movl    $13153, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  18:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  21:     call   t21 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    movl    $98, %eax               #  22:     if     98 # 99 goto 17_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  23:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  25:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  29:     call   t22 <- dummyBOOLfunc
    movb    %al, -42(%ebp)         
    call    dummyBOOLfunc           #  30:     call   t23 <- dummyBOOLfunc
    movb    %al, -43(%ebp)         
    jmp     l_f1_10                 #  31:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t15      <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 5 of <array 6 of <array 9 of <array 8 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    jmp     l_f2_0                  #   3:     goto   0
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_9_if_false         #   6:     goto   9_if_false
    movl    $1, %eax                #   7:     return 1
    jmp     l_f2_exit              
    jmp     l_f2_7                  #   8:     goto   7
l_f2_9_if_false:
l_f2_7:
    movl    $88457, %eax            #  11:     add    t14 <- 88457, 59926
    movl    $59926, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     if     t14 = 7617 goto 12
    movl    $7617, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_12                
    jmp     l_f2_13                 #  13:     goto   13
l_f2_12:
    movl    $1, %eax                #  15:     assign t15 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_14                 #  16:     goto   14
l_f2_13:
    movl    $0, %eax                #  18:     assign t15 <- 0
    movb    %al, -17(%ebp)         
l_f2_14:
    movzbl  -17(%ebp), %eax         #  20:     return t15
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t11      <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t12      <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $t13      <char> %ebp-24 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t9       <bool> %ebp-53 ]

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
    movl    $37156, %eax            #   0:     div    t0 <- 37156, 68475
    movl    $68475, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 94166
    movl    $94166, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 44556
    movl    $44556, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     div    t3 <- t2, 40053
    movl    $40053, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     div    t4 <- t3, 45954
    movl    $45954, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     mul    t5 <- t4, 67393
    movl    $67393, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     mul    t6 <- t5, 76278
    movl    $76278, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    $62400, %eax            #   7:     mul    t7 <- 62400, 10681
    movl    $10681, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   8:     div    t8 <- t7, 74360
    movl    $74360, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #   9:     if     t6 > t8 goto 1
    movl    -52(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_1               
    jmp     l_test_2                #  10:     goto   2
l_test_1:
    movl    $1, %eax                #  12:     assign t9 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_test_3                #  13:     goto   3
l_test_2:
    movl    $0, %eax                #  15:     assign t9 <- 0
    movb    %al, -53(%ebp)         
l_test_3:
    movzbl  -53(%ebp), %eax         #  17:     assign v0 <- t9
    movb    %al, v0                
    movl    $100, %eax              #  18:     if     100 = 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_6               
    jmp     l_test_7                #  19:     goto   7
l_test_6:
    movl    $1, %eax                #  21:     assign t10 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_8                #  22:     goto   8
l_test_7:
    movl    $0, %eax                #  24:     assign t10 <- 0
    movb    %al, -21(%ebp)         
l_test_8:
    movzbl  -21(%ebp), %eax         #  26:     assign v0 <- t10
    movb    %al, v0                
    jmp     l_test_exit            
l_test_12_while_cond:
    call    dummyCHARfunc           #  29:     call   t11 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    call    dummyCHARfunc           #  30:     call   t12 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movzbl  -22(%ebp), %eax         #  31:     if     t11 > t12 goto 13_while_body
    movzbl  -23(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_13_while_body   
    jmp     l_test_11               #  32:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  34:     goto   12_while_cond
l_test_11:
    call    dummyCHARfunc           #  36:     call   t13 <- dummyCHARfunc
    movb    %al, -24(%ebp)         

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
