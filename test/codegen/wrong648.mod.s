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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v0       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

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
    movl    $97, %eax               #   0:     if     97 # 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_4                  #   3:     goto   4
l_f0_4:
    call    dummyCHARfunc           #   5:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_9_while_cond:
    movl    $99, %eax               #  10:     if     99 >= 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_10_while_body     
    jmp     l_f0_8                  #  11:     goto   8
l_f0_10_while_body:
    call    dummyBOOLfunc           #  13:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    ReadInt                 #  14:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_exit              
    jmp     l_f0_9_while_cond       #  16:     goto   9_while_cond
l_f0_8:
    movl    $40457, %eax            #  18:     if     40457 <= 19039 goto 16_if_true
    movl    $19039, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  19:     goto   17_if_false
l_f0_16_if_true:
    movl    $1, %eax                #  21:     if     1 = 1 goto 20_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_20_if_true        
    jmp     l_f0_21_if_false        #  22:     goto   21_if_false
l_f0_20_if_true:
    jmp     l_f0_19                 #  24:     goto   19
l_f0_21_if_false:
l_f0_19:
    movl    $1, %eax                #  27:     assign v0 <- 1
    movb    %al, -25(%ebp)         
    movl    $38917, %eax            #  28:     assign v1 <- 38917
    movl    %eax, -32(%ebp)        
    movl    $93498, %eax            #  29:     mul    t7 <- 93498, 96527
    movl    $96527, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #  31:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_15                 #  32:     goto   15
l_f0_17_if_false:
l_f0_15:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $v0       <char> %ebp-45 ]
    #    -52(%ebp)   4  [ $v1       <int> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   1:     assign v0 <- t4
    movb    %al, -45(%ebp)         
    movl    $10562, %eax            #   2:     sub    t5 <- 10562, 54721
    movl    $54721, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     sub    t6 <- t5, 78499
    movl    $78499, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     add    t7 <- t6, 92239
    movl    $92239, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     assign v1 <- t7
    movl    %eax, -52(%ebp)        
    movl    $29049, %eax            #   6:     sub    t8 <- 29049, 92268
    movl    $92268, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     add    t9 <- t8, 63243
    movl    $63243, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     sub    t10 <- t9, 45073
    movl    $45073, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     add    t11 <- t10, 45629
    movl    $45629, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     if     t11 < 83253 goto 3_if_true
    movl    $83253, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #  11:     goto   4_if_false
l_f1_3_if_true:
    jmp     l_f1_2                  #  13:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t21      <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 7 of <array 4 of <array 2 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 6 of <array 2 of <array 1 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 5 of <array 9 of <array 2 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #    -88(%ebp)   4  [ $v3       <int> %ebp-88 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $65945, %eax            #   0:     if     65945 <= 98408 goto 4_if_true
    movl    $98408, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   1:     goto   5_if_false
l_f2_4_if_true:
    movl    $1, %eax                #   3:     return 1
    jmp     l_f2_exit              
    jmp     l_f2_3                  #   4:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_0                  #   7:     goto   0
l_f2_0:
    movl    $46391, %eax            #   9:     mul    t4 <- 46391, 31753
    movl    $31753, %ebx           
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $11990, %eax            #  13:     mul    t6 <- 11990, t5
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  14:     add    t7 <- t6, 38949
    movl    $38949, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  18:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  19:     add    t10 <- t9, 52199
    movl    $52199, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  23:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t13 <- t12, 27425
    movl    $27425, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t16 <- t15, 95328
    movl    $95328, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  33:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  34:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -64(%ebp), %eax         #  35:     assign @t20 <- t4
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
l_f2_10_while_cond:
    movl    $97, %eax               #  37:     if     97 > 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_11_while_body     
    jmp     l_f2_9                  #  38:     goto   9
l_f2_11_while_body:
    call    dummyBOOLfunc           #  40:     call   t21 <- dummyBOOLfunc
    movb    %al, -57(%ebp)         
    movl    $0, %eax                #  41:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_10_while_cond      #  42:     goto   10_while_cond
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]

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
l_test_1_while_cond:
    movl    $40047, %eax            #   1:     add    t0 <- 40047, 30856
    movl    $30856, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t1 <- t0, 73876
    movl    $73876, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $98168, %eax            #   3:     if     98168 > t1 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    call    dummyBOOLfunc           #   8:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
l_test_6_while_cond:
    jmp     l_test_5                #  10:     goto   5
    call    dummyCHARfunc           #  11:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    jmp     l_test_6_while_cond     #  12:     goto   6_while_cond
l_test_5:
    movl    $22144, %eax            #  14:     if     22144 >= 9903 goto 12_if_true
    movl    $9903, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_12_if_true      
    jmp     l_test_13_if_false      #  15:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_exit            
l_test_17_while_cond:
    jmp     l_test_17_while_cond    #  19:     goto   17_while_cond
    jmp     l_test_exit            
    jmp     l_test_11               #  21:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $56050, %eax            #  24:     assign v0 <- 56050
    movl    %eax, v0               
    movl    $97, %eax               #  25:     if     97 = 98 goto 25_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_25_if_true      
    jmp     l_test_26_if_false      #  26:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  28:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_20               #  31:     goto   20
l_test_20:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
