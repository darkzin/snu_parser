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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t7 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $84529, %eax            #   1:     add    t8 <- 84529, 711
    movl    $711, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     if     t8 = 83712 goto 2
    movl    $83712, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_2                 
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $1, %eax                #   5:     assign t9 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t9 <- 0
    movb    %al, -25(%ebp)         
l_f0_4:
    movzbl  -25(%ebp), %eax         #  10:     return t9
    jmp     l_f0_exit              
    movl    $99, %eax               #  11:     if     99 # 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  12:     goto   8_if_false
l_f0_7_if_true:
    leal    _str_1, %eax            #  14:     &()    t10 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     param  0 <- t10
    pushl   %eax                   
    call    WriteStr                #  16:     call   WriteStr
    addl    $4, %esp               
    movl    $100, %eax              #  17:     if     100 < 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  18:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  20:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_6                  #  23:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -92(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-92 ]
    #    -93(%ebp)   1  [ $t8       <char> %ebp-93 ]
    #    -94(%ebp)   1  [ $t9       <bool> %ebp-94 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 4 of <array 4 of <array 1 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 7 of <array 6 of <array 6 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #    -95(%ebp)   1  [ $v2       <bool> %ebp-95 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    leal    _str_2, %eax            #   0:     &()    t7 <- _str_2
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   1:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_f1_2_while_cond:
    call    dummyCHARfunc           #   4:     call   t8 <- dummyCHARfunc
    movb    %al, -93(%ebp)         
    movzbl  -93(%ebp), %eax         #   5:     if     t8 < 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_3_while_body      
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
l_f1_1:
    movl    $99, %eax               #  10:     if     99 > 100 goto 6
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_6                 
    jmp     l_f1_7                  #  11:     goto   7
l_f1_6:
    movl    $1, %eax                #  13:     assign t9 <- 1
    movb    %al, -94(%ebp)         
    jmp     l_f1_8                  #  14:     goto   8
l_f1_7:
    movl    $0, %eax                #  16:     assign t9 <- 0
    movb    %al, -94(%ebp)         
l_f1_8:
    movl    $60657, %eax            #  18:     mul    t10 <- 60657, 5391
    movl    $5391, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     mul    t11 <- t10, 86556
    movl    $86556, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     mul    t12 <- t11, 27599
    movl    $27599, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  23:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  24:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  25:     add    t15 <- t14, 75685
    movl    $75685, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  26:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  28:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  29:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  30:     add    t18 <- t17, 74367
    movl    $74367, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  32:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  33:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  34:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  35:     add    t21 <- t20, 63227
    movl    $63227, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  37:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  38:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  39:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  40:     add    t24 <- t23, 17075
    movl    $17075, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  41:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  42:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  43:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  44:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  45:     add    t28 <- v0, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movzbl  -94(%ebp), %eax         #  46:     assign @t28 <- t9
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
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
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t24      <bool> %ebp-69 ]
    #    -70(%ebp)   1  [ $t25      <bool> %ebp-70 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 5 of <array 10 of <array 3 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 1 of <array 1 of <array 4 of <array 4 of <char>>>>>>> %ebp+16 ]
    #    -85(%ebp)   1  [ $v3       <bool> %ebp-85 ]

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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   1:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   2:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $77500, %eax            #   3:     mul    t8 <- 77500, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   4:     add    t9 <- t8, 84019
    movl    $84019, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   6:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   7:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #   8:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $61303, %eax            #   9:     sub    t12 <- 61303, 36035
    movl    $36035, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  14:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     add    t16 <- t15, 63684
    movl    $63684, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  19:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  20:     add    t19 <- t18, 67616
    movl    $67616, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  21:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  23:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  24:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  25:     add    t23 <- v2, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $100, %eax              #  26:     assign @t23 <- 100
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $97, %eax               #  27:     if     97 >= 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #  28:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #  30:     goto   4
l_f2_6_if_false:
l_f2_4:
l_f2_9_while_cond:
    jmp     l_f2_8                  #  34:     goto   8
    jmp     l_f2_9_while_cond       #  35:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_13_if_false        #  37:     goto   13_if_false
    jmp     l_f2_11                 #  38:     goto   11
l_f2_13_if_false:
l_f2_11:
    jmp     l_f2_16_if_false        #  41:     goto   16_if_false
    jmp     l_f2_14                 #  42:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_19_if_false        #  45:     goto   19_if_false
    jmp     l_f2_17                 #  46:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_exit              
    movl    $60188, %eax            #  50:     if     60188 > 8356 goto 22
    movl    $8356, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_22                
    jmp     l_f2_23                 #  51:     goto   23
l_f2_22:
    movl    $1, %eax                #  53:     assign t24 <- 1
    movb    %al, -69(%ebp)         
    jmp     l_f2_24                 #  54:     goto   24
l_f2_23:
    movl    $0, %eax                #  56:     assign t24 <- 0
    movb    %al, -69(%ebp)         
l_f2_24:
    movzbl  -69(%ebp), %eax         #  58:     assign v3 <- t24
    movb    %al, -85(%ebp)         
    movl    $98, %eax               #  59:     if     98 <= 100 goto 27_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_27_if_true        
    jmp     l_f2_28_if_false        #  60:     goto   28_if_false
l_f2_27_if_true:
    jmp     l_f2_26                 #  62:     goto   26
l_f2_28_if_false:
l_f2_26:
    jmp     l_f2_1                  #  65:     goto   1
l_f2_1:
l_f2_31_while_cond:
    call    dummyBOOLfunc           #  68:     call   t25 <- dummyBOOLfunc
    movb    %al, -70(%ebp)         
    movzbl  -70(%ebp), %eax         #  69:     if     t25 = 1 goto 33
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_33                
    jmp     l_f2_30                 #  70:     goto   30
l_f2_33:
    jmp     l_f2_30                 #  72:     goto   30
    jmp     l_f2_31_while_cond      #  73:     goto   31_while_cond
l_f2_30:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <array 7 of <array 6 of <array 6 of <array 2 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <array 4 of <array 4 of <array 1 of <array 5 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 1 of <array 1 of <array 4 of <array 4 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 10 of <array 5 of <array 10 of <array 3 of <array 5 of <int>>>>>>> %ebp-40 ]

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
    leal    v1, %eax                #   0:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t0
    pushl   %eax                   
    leal    v0, %eax                #   2:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #   4:     call   t2 <- f1
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $36001, %eax            #   5:     mul    t3 <- 36001, 24504
    movl    $24504, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     div    t4 <- t3, 38693
    movl    $38693, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     assign v2 <- t4
    movl    %eax, v2               
    jmp     l_test_3_if_true        #   8:     goto   3_if_true
    jmp     l_test_3_if_true        #   9:     goto   3_if_true
l_test_3_if_true:
    leal    v4, %eax                #  11:     &()    t5 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     param  2 <- t5
    pushl   %eax                   
    leal    v3, %eax                #  13:     &()    t6 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  14:     param  1 <- t6
    pushl   %eax                   
    movl    $97, %eax               #  15:     param  0 <- 97
    pushl   %eax                   
    call    f2                      #  16:     call   f2
    addl    $12, %esp              
    jmp     l_test_exit            
l_test_10_while_cond:
    movl    $99, %eax               #  19:     if     99 > 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #  20:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  22:     goto   10_while_cond
l_test_9:
    jmp     l_test_exit            
    movl    $5454, %eax             #  25:     if     5454 <= 87536 goto 15_if_true
    movl    $87536, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_15_if_true      
    jmp     l_test_16_if_false      #  26:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  28:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_2                #  31:     goto   2
l_test_2:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
_str_2:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <array 5 of <array 4 of <array 4 of <array 1 of <array 5 of <bool>>>>>>
    .long    5
    .long    5
    .long    4
    .long    4
    .long    1
    .long    5
    .skip  400
v1:                                 # <array 5 of <array 7 of <array 6 of <array 6 of <array 2 of <bool>>>>>>
    .long    5
    .long    5
    .long    7
    .long    6
    .long    6
    .long    2
    .skip 2520
v2:                                 # <int>
    .skip    4
v3:                                 # <array 10 of <array 5 of <array 10 of <array 3 of <array 5 of <int>>>>>>
    .long    5
    .long   10
    .long    5
    .long   10
    .long    3
    .long    5
    .skip 30000
v4:                                 # <array 8 of <array 1 of <array 1 of <array 4 of <array 4 of <char>>>>>>
    .long    5
    .long    8
    .long    1
    .long    1
    .long    4
    .long    4
    .skip  128








    # end of global data section
    #-----------------------------------------

    .end
##################################################
