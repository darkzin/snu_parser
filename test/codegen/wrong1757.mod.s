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
    #    -65(%ebp)   1  [ $t4       <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t5       <char> %ebp-66 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 17 of <array 18 of <array 59 of <array 19 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 49 of <array 40 of <array 32 of <array 6 of <array 60 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 48 of <array 12 of <array 39 of <array 42 of <array 43 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $1, %eax                #   0:     assign t4 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f0_6                  #   1:     goto   6
    movl    $0, %eax                #   2:     assign t4 <- 0
    movb    %al, -65(%ebp)         
l_f0_6:
    movzbl  -65(%ebp), %eax         #   4:     if     t4 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   5:     goto   2_if_false
l_f0_1_if_true:
l_f0_9_while_cond:
    jmp     l_f0_8                  #   8:     goto   8
    jmp     l_f0_9_while_cond       #   9:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_12_while_cond:
    call    dummyCHARfunc           #  15:     call   t5 <- dummyCHARfunc
    movb    %al, -66(%ebp)         
    movzbl  -66(%ebp), %eax         #  16:     if     t5 > 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_13_while_body     
    jmp     l_f0_11                 #  17:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  19:     goto   12_while_cond
l_f0_11:
    movl    $97, %eax               #  21:     if     97 # 99 goto 16_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  22:     goto   17_if_false
l_f0_16_if_true:
    movl    $9864, %eax             #  24:     add    t6 <- 9864, 19485
    movl    $19485, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #  25:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  28:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  29:     add    t9 <- t8, 88273
    movl    $88273, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  30:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  31:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  32:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  33:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  34:     add    t12 <- t11, 68650
    movl    $68650, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  38:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  39:     add    t15 <- t14, 92248
    movl    $92248, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  41:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  42:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  43:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  44:     add    t18 <- t17, 43069
    movl    $43069, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  45:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  46:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  47:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  48:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  49:     add    t22 <- v2, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $97, %eax               #  50:     assign @t22 <- 97
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_15                 #  51:     goto   15
l_f0_17_if_false:
l_f0_15:

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
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
    #    -65(%ebp)   1  [ $t4       <char> %ebp-65 ]
    #    -66(%ebp)   1  [ $t5       <bool> %ebp-66 ]
    #    -67(%ebp)   1  [ $t6       <bool> %ebp-67 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 13 of <array 67 of <array 39 of <array 33 of <array 88 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 83 of <array 86 of <array 96 of <array 70 of <array 83 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -84(%ebp)   4  [ $v4       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $v5       <bool> %ebp-85 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    movl    $97, %eax               #   1:     if     97 >= t4 goto 1
    movzbl  -65(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -66(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -66(%ebp)         
l_f1_3:
    movzbl  -66(%ebp), %eax         #   9:     return t5
    jmp     l_f1_exit              
    movl    $28659, %eax            #  10:     assign v4 <- 28659
    movl    %eax, -84(%ebp)        
    jmp     l_f1_7                  #  11:     goto   7
l_f1_7:
    movl    $1, %eax                #  13:     assign t6 <- 1
    movb    %al, -67(%ebp)         
    jmp     l_f1_9                  #  14:     goto   9
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -67(%ebp)         
l_f1_9:
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $7529, %eax             #  20:     mul    t8 <- 7529, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  21:     add    t9 <- t8, 52133
    movl    $52133, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  25:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     add    t12 <- t11, 10351
    movl    $10351, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  29:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  30:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     add    t15 <- t14, 65283
    movl    $65283, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  33:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  34:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  35:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  36:     add    t18 <- t17, 12218
    movl    $12218, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  37:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  38:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  39:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  40:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  41:     add    t22 <- v1, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -67(%ebp), %eax         #  42:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   1:     goto   5_while_cond
    jmp     l_f2_0                  #   2:     goto   0
l_f2_0:
    movl    $9888, %eax             #   4:     div    t4 <- 9888, 73915
    movl    $73915, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $85811, %eax            #   5:     sub    t5 <- 85811, t4
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     return t5
    jmp     l_f2_exit              
    movl    $85643, %eax            #   7:     sub    t6 <- 85643, 60910
    movl    $60910, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     add    t7 <- t6, 56382
    movl    $56382, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     sub    t8 <- t7, 22589
    movl    $22589, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     sub    t9 <- t8, 19181
    movl    $19181, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     return t9
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $90205, %eax            #   1:     assign v0 <- 90205
    movl    %eax, v0               
    jmp     l_test_0                #   2:     goto   0
l_test_2_if_false:
l_test_0:
l_test_7_while_cond:
    movl    $98, %eax               #   6:     if     98 <= 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_8_while_body    
    jmp     l_test_6                #   7:     goto   6
l_test_8_while_body:
    movl    $97, %eax               #   9:     if     97 >= 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_11_if_true      
    jmp     l_test_12_if_false      #  10:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  12:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_14               #  15:     goto   14
l_test_14:
l_test_18_while_cond:
    jmp     l_test_18_while_cond    #  18:     goto   18_while_cond
l_test_21_while_cond:
    movl    $1, %eax                #  20:     if     1 = 1 goto 22_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_22_while_body   
    jmp     l_test_20               #  21:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  23:     goto   21_while_cond
l_test_20:
    jmp     l_test_26_if_false      #  25:     goto   26_if_false
    jmp     l_test_24               #  26:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_7_while_cond     #  29:     goto   7_while_cond
l_test_6:
    leal    _str_1, %eax            #  31:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  32:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #  33:     call   WriteStr
    addl    $4, %esp               
l_test_32_while_cond:
    movl    $45389, %eax            #  35:     if     45389 > 14284 goto 33_while_body
    movl    $14284, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_33_while_body   
    jmp     l_test_31               #  36:     goto   31
l_test_33_while_body:
    jmp     l_test_32_while_cond    #  38:     goto   32_while_cond
l_test_31:
    call    dummyCHARfunc           #  40:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #  41:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_28               #  42:     goto   28
l_test_28:
    call    dummyCHARfunc           #  44:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  45:     if     t2 < 97 goto 38
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_38              
    jmp     l_test_39               #  46:     goto   39
l_test_38:
    movl    $1, %eax                #  48:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_test_40               #  49:     goto   40
l_test_39:
    movl    $0, %eax                #  51:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_test_40:
    movzbl  -19(%ebp), %eax         #  53:     assign v2 <- t3
    movb    %al, v2                

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
