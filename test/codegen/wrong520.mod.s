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
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 6 of <array 10 of <array 8 of <array 7 of <int>>>>>>> %ebp+8 ]
    #    -85(%ebp)   1  [ $v2       <char> %ebp-85 ]
    #    -92(%ebp)   4  [ $v3       <int> %ebp-92 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     assign v2 <- 97
    movb    %al, -85(%ebp)         
    movl    $28364, %eax            #   1:     sub    t9 <- 28364, 34381
    movl    $34381, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   2:     add    t10 <- t9, 42357
    movl    $42357, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     return t10
    jmp     l_f0_exit              
    movl    $99, %eax               #   4:     if     99 >= 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   5:     goto   4_if_false
l_f0_3_if_true:
l_f0_7_while_cond:
    jmp     l_f0_7_while_cond       #   8:     goto   7_while_cond
l_f0_10_while_cond:
    movl    $60146, %eax            #  10:     if     60146 # 22388 goto 11_while_body
    movl    $22388, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_11_while_body     
    jmp     l_f0_9                  #  11:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  13:     goto   10_while_cond
l_f0_9:
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $86727, %eax            #  18:     mul    t12 <- 86727, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t13 <- t12, 99042
    movl    $99042, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  23:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t16 <- t15, 21233
    movl    $21233, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     add    t19 <- t18, 44308
    movl    $44308, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  33:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  34:     add    t22 <- t21, 94966
    movl    $94966, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  35:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  36:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  37:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  38:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  39:     add    t26 <- v1, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $95847, %eax            #  40:     assign @t26 <- 95847
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_2                  #  41:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t9       <char> %ebp-27 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 7 of <array 10 of <array 7 of <array 1 of <int>>>>>>> %ebp+8 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]

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
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #   1:     if     t9 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $2350, %eax             #   5:     if     2350 >= 49757 goto 6_while_body
    movl    $49757, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
    movl    $59822, %eax            #  10:     assign v2 <- 59822
    movl    %eax, -32(%ebp)        
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $40623, %eax            #  14:     mul    t10 <- 40623, 40176
    movl    $40176, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     div    t11 <- t10, 12228
    movl    $12228, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     mul    t12 <- t11, 20210
    movl    $20210, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     if     t12 # 10025 goto 10_if_true
    movl    $10025, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  18:     goto   11_if_false
l_f1_10_if_true:
    movl    $1, %eax                #  20:     return 1
    jmp     l_f1_exit              
l_f1_15_while_cond:
    jmp     l_f1_15_while_cond      #  22:     goto   15_while_cond
    movl    $100, %eax              #  23:     if     100 <= 97 goto 18_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  24:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  26:     goto   17
l_f1_19_if_false:
l_f1_17:
    call    dummyBOOLfunc           #  29:     call   t13 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_f1_9                  #  30:     goto   9
l_f1_11_if_false:
l_f1_9:
    call    dummyBOOLfunc           #  33:     call   t14 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  34:     if     t14 = 1 goto 28
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_28                
    jmp     l_f1_24_if_false        #  35:     goto   24_if_false
l_f1_28:
    jmp     l_f1_24_if_false        #  37:     goto   24_if_false
    jmp     l_f1_24_if_false        #  38:     goto   24_if_false
    jmp     l_f1_24_if_false        #  39:     goto   24_if_false
    jmp     l_f1_22                 #  40:     goto   22
l_f1_24_if_false:
l_f1_22:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v1       <bool> %ebp-29 ]

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
    movl    $23313, %eax            #   0:     div    t9 <- 23313, 33939
    movl    $33939, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $24852, %eax            #   1:     if     24852 <= t9 goto 1
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t10
    movb    %al, -29(%ebp)         
    movl    $17283, %eax            #  10:     div    t11 <- 17283, 43730
    movl    $43730, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     div    t12 <- t11, 86137
    movl    $86137, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     return t12
    jmp     l_f2_exit              
    jmp     l_f2_8_if_false         #  13:     goto   8_if_false
    movl    $0, %eax                #  14:     assign v1 <- 0
    movb    %al, -29(%ebp)         
    jmp     l_f2_6                  #  15:     goto   6
l_f2_8_if_false:
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <char> %ebp-38 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    movl    $21555, %eax            #   2:     sub    t1 <- 21555, 17061
    movl    $17061, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t2 <- t1, 67403
    movl    $67403, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t3 <- t2, 65867
    movl    $65867, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     sub    t4 <- t3, 67012
    movl    $67012, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     sub    t5 <- t4, 27691
    movl    $27691, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $1602, %eax             #   7:     if     1602 > t5 goto 3_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_3_while_body    
    jmp     l_test_1                #   8:     goto   1
l_test_3_while_body:
    movl    $9723, %eax             #  10:     if     9723 < 26108 goto 6
    movl    $26108, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6               
    jmp     l_test_7                #  11:     goto   7
l_test_6:
    movl    $1, %eax                #  13:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_8                #  14:     goto   8
l_test_7:
    movl    $0, %eax                #  16:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_test_8:
    movzbl  -37(%ebp), %eax         #  18:     assign v0 <- t6
    movb    %al, v0                
    jmp     l_test_2_while_cond     #  19:     goto   2_while_cond
l_test_1:
l_test_11_while_cond:
    call    dummyCHARfunc           #  22:     call   t7 <- dummyCHARfunc
    movb    %al, -38(%ebp)         
    movl    $98, %eax               #  23:     if     98 >= t7 goto 12_while_body
    movzbl  -38(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_12_while_body   
    jmp     l_test_10               #  24:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  26:     goto   11_while_cond
l_test_10:
    jmp     l_test_16_if_false      #  28:     goto   16_if_false
    jmp     l_test_exit            
l_test_19_while_cond:
    jmp     l_test_18               #  31:     goto   18
    jmp     l_test_19_while_cond    #  32:     goto   19_while_cond
l_test_18:
    jmp     l_test_14               #  34:     goto   14
l_test_16_if_false:
l_test_14:
l_test_22_while_cond:
    movl    $97, %eax               #  38:     if     97 < 99 goto 23_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_23_while_body   
    jmp     l_test_21               #  39:     goto   21
l_test_23_while_body:
    jmp     l_test_exit            
    jmp     l_test_22_while_cond    #  42:     goto   22_while_cond
l_test_21:
    movl    $91842, %eax            #  44:     sub    t8 <- 91842, 69223
    movl    $69223, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  45:     assign v1 <- t8
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
