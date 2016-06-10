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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t15      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t16      <char> %ebp-26 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 2 of <array 2 of <array 2 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 1 of <array 2 of <array 7 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #    -27(%ebp)   1  [ $v4       <char> %ebp-27 ]

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
    jmp     l_f0_5                  #   0:     goto   5
l_f0_5:
    movl    $1, %eax                #   2:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   3:     goto   7
    movl    $0, %eax                #   4:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    call    dummyBOOLfunc           #   6:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   7:     if     t10 = t11 goto 1
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   8:     goto   2
l_f0_1:
    movl    $1, %eax                #  10:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_3                  #  11:     goto   3
l_f0_2:
    movl    $0, %eax                #  13:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f0_3:
    movzbl  -15(%ebp), %eax         #  15:     return t12
    jmp     l_f0_exit              
    call    dummyINTfunc            #  16:     call   t13 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t14 <- t13, 96912
    movl    $96912, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $7111, %eax             #  18:     if     7111 # t14 goto 10
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_10                
    jmp     l_f0_11                 #  19:     goto   11
l_f0_10:
    movl    $1, %eax                #  21:     assign t15 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_12                 #  22:     goto   12
l_f0_11:
    movl    $0, %eax                #  24:     assign t15 <- 0
    movb    %al, -25(%ebp)         
l_f0_12:
    movzbl  -25(%ebp), %eax         #  26:     return t15
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  27:     call   t16 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  28:     assign v4 <- t16
    movb    %al, -27(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t15      <char> %ebp-33 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $63820, %eax            #   1:     mul    t10 <- 63820, 725
    movl    $725, %ebx             
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t11 <- t10, 15025
    movl    $15025, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t12 <- t11, 99070
    movl    $99070, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     mul    t13 <- t12, 8439
    movl    $8439, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $27056, %eax            #   5:     sub    t14 <- 27056, t13
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     return t14
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   7:     call   t15 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #   8:     if     t15 >= 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   9:     goto   4_if_false
l_f1_3_if_true:
    jmp     l_f1_2                  #  11:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 5 of <array 8 of <array 8 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 1 of <array 9 of <array 7 of <array 6 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f2_1                  #   0:     goto   1
    jmp     l_f2_1                  #   1:     goto   1
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movl    $31885, %eax            #   9:     add    t11 <- 31885, 92160
    movl    $92160, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     sub    t12 <- t11, 58637
    movl    $58637, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  13:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  14:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     add    t15 <- t14, 21203
    movl    $21203, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  18:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  19:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     add    t18 <- t17, 97301
    movl    $97301, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  23:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  24:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  25:     add    t21 <- t20, 45034
    movl    $45034, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  27:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  28:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  29:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  30:     add    t24 <- t23, 34052
    movl    $34052, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  31:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    16(%ebp), %eax          #  32:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  33:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  34:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    16(%ebp), %eax          #  35:     add    t28 <- v3, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movzbl  -13(%ebp), %eax         #  36:     assign @t28 <- t10
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_9_while_cond:
    jmp     l_f2_8                  #  38:     goto   8
l_f2_12_while_cond:
    movl    $58578, %eax            #  40:     if     58578 <= 64491 goto 13_while_body
    movl    $64491, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_13_while_body     
    jmp     l_f2_11                 #  41:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  43:     goto   12_while_cond
l_f2_11:
    jmp     l_f2_9_while_cond       #  45:     goto   9_while_cond
l_f2_8:
l_f2_16_while_cond:
    jmp     l_f2_15                 #  48:     goto   15
    jmp     l_f2_15                 #  49:     goto   15
    movl    $98, %eax               #  50:     if     98 < 98 goto 20_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  51:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  53:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_16_while_cond      #  56:     goto   16_while_cond
l_f2_15:

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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 1 of <array 1 of <array 2 of <array 7 of <array 9 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 2 of <array 2 of <array 2 of <array 2 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t8       <bool> %ebp-42 ]
    #    -43(%ebp)   1  [ $t9       <char> %ebp-43 ]

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
    jmp     l_test_exit            
    movl    $59222, %eax            #   1:     assign v0 <- 59222
    movl    %eax, v0               
    movl    $11975, %eax            #   2:     mul    t0 <- 11975, 17873
    movl    $17873, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     mul    t1 <- t0, 22261
    movl    $22261, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $19237, %eax            #   4:     sub    t2 <- 19237, t1
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $66483, %eax            #   5:     if     66483 > t2 goto 3_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_3_if_true       
    jmp     l_test_4_if_false       #   6:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_2                #   8:     goto   2
l_test_4_if_false:
l_test_2:
    leal    v2, %eax                #  11:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  2 <- t3
    pushl   %eax                   
    leal    v1, %eax                #  13:     &()    t4 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     param  1 <- t4
    pushl   %eax                   
    movl    $93498, %eax            #  15:     if     93498 # 8750 goto 11
    movl    $8750, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_11              
    jmp     l_test_12               #  16:     goto   12
l_test_11:
    movl    $1, %eax                #  18:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_13               #  19:     goto   13
l_test_12:
    movl    $0, %eax                #  21:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_13:
    movzbl  -33(%ebp), %eax         #  23:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  24:     call   t6 <- f1
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  25:     if     t6 >= 47102 goto 7
    movl    $47102, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_7               
    jmp     l_test_8                #  26:     goto   8
l_test_7:
    movl    $1, %eax                #  28:     assign t7 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_test_9                #  29:     goto   9
l_test_8:
    movl    $0, %eax                #  31:     assign t7 <- 0
    movb    %al, -41(%ebp)         
l_test_9:
    movzbl  -41(%ebp), %eax         #  33:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  34:     call   t8 <- f0
    addl    $12, %esp              
    movb    %al, -42(%ebp)         
    call    dummyCHARfunc           #  35:     call   t9 <- dummyCHARfunc
    movb    %al, -43(%ebp)         
    movl    $100, %eax              #  36:     if     100 >= t9 goto 16_if_true
    movzbl  -43(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_16_if_true      
    jmp     l_test_17_if_false      #  37:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_exit            
    jmp     l_test_15               #  40:     goto   15
l_test_17_if_false:
l_test_15:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 4 of <array 2 of <array 2 of <array 2 of <array 2 of <int>>>>>>
    .long    5
    .long    4
    .long    2
    .long    2
    .long    2
    .long    2
    .skip  256
v2:                                 # <array 1 of <array 1 of <array 2 of <array 7 of <array 9 of <bool>>>>>>
    .long    5
    .long    1
    .long    1
    .long    2
    .long    7
    .long    9
    .skip  126








    # end of global data section
    #-----------------------------------------

    .end
##################################################
