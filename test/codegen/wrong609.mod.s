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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 4 of <array 3 of <array 7 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
    jmp     l_f0_5_if_false         #   0:     goto   5_if_false
    jmp     l_f0_3                  #   1:     goto   3
l_f0_5_if_false:
l_f0_3:
    movl    $99, %eax               #   4:     if     99 = 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   5:     goto   8_if_false
l_f0_7_if_true:
    call    dummyCHARfunc           #   7:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $15450, %eax            #   8:     assign v3 <- 15450
    movl    %eax, 16(%ebp)         
l_f0_13_while_cond:
    movl    $89782, %eax            #  10:     if     89782 < 722 goto 14_while_body
    movl    $722, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_14_while_body     
    jmp     l_f0_12                 #  11:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  13:     goto   13_while_cond
l_f0_12:
    movl    $97, %eax               #  15:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  16:     call   WriteChar
    addl    $4, %esp               
l_f0_18_while_cond:
    movl    $92627, %eax            #  18:     if     92627 > 24547 goto 19_while_body
    movl    $24547, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_19_while_body     
    jmp     l_f0_17                 #  19:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  21:     goto   18_while_cond
l_f0_17:
    call    dummyCHARfunc           #  23:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_6                  #  24:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_0                  #  27:     goto   0
l_f0_0:
    call    dummyCHARfunc           #  29:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  30:     return t7
    jmp     l_f0_exit              
l_f0_24_while_cond:
    movl    $47377, %eax            #  32:     add    t8 <- 47377, 26872
    movl    $26872, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     if     t8 >= 16024 goto 25_while_body
    movl    $16024, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_25_while_body     
    jmp     l_f0_23                 #  34:     goto   23
l_f0_25_while_body:
l_f0_28_while_cond:
    movl    $40363, %eax            #  37:     if     40363 > 43417 goto 29_while_body
    movl    $43417, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_29_while_body     
    jmp     l_f0_27                 #  38:     goto   27
l_f0_29_while_body:
    jmp     l_f0_28_while_cond      #  40:     goto   28_while_cond
l_f0_27:
    jmp     l_f0_24_while_cond      #  42:     goto   24_while_cond
l_f0_23:

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
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t7       <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 8 of <array 7 of <array 1 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #    -89(%ebp)   1  [ $v2       <bool> %ebp-89 ]

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
l_f1_1_while_cond:
    movl    $24270, %eax            #   1:     add    t5 <- 24270, 97696
    movl    $97696, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $76969, %eax            #   2:     if     76969 = t5 goto 2_while_body
    movl    -72(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    movl    $99, %eax               #   8:     if     99 < 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #   9:     goto   4
l_f1_6_while_body:
    call    ReadInt                 #  11:     call   t6 <- ReadInt
    movl    %eax, -76(%ebp)        
    jmp     l_f1_5_while_cond       #  12:     goto   5_while_cond
l_f1_4:
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f1_12                 #  15:     goto   12
    movl    $0, %eax                #  16:     assign t7 <- 0
    movb    %al, -77(%ebp)         
l_f1_12:
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $47715, %eax            #  21:     mul    t9 <- 47715, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  22:     add    t10 <- t9, 23181
    movl    $23181, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  26:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     add    t13 <- t12, 9079
    movl    $9079, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  31:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     add    t16 <- t15, 14335
    movl    $14335, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  36:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  37:     add    t19 <- t18, 48957
    movl    $48957, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  38:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  39:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  40:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  41:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  42:     add    t23 <- v1, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -77(%ebp), %eax         #  43:     assign @t23 <- t7
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 9 of <array 9 of <array 9 of <array 9 of <int>>>>>>> %ebp+8 ]
    #    -93(%ebp)   1  [ $v2       <bool> %ebp-93 ]
    #   -100(%ebp)   4  [ $v3       <int> %ebp-100 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    movl    $80000, %eax            #   1:     sub    t5 <- 80000, 15386
    movl    $15386, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   2:     add    t6 <- t5, 393
    movl    $393, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   3:     add    t7 <- t6, 69023
    movl    $69023, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   4:     if     t7 < 21252 goto 2_while_body
    movl    $21252, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_while_body:
    movl    $100, %eax              #   7:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
l_f2_6_while_cond:
    movl    $99, %eax               #  11:     if     99 # 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #  12:     goto   5
l_f2_7_while_body:
l_f2_10_while_cond:
    jmp     l_f2_10_while_cond      #  15:     goto   10_while_cond
    movl    $0, %eax                #  16:     assign v2 <- 0
    movb    %al, -93(%ebp)         
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $79814, %eax            #  20:     mul    t9 <- 79814, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  21:     add    t10 <- t9, 39263
    movl    $39263, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  25:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     add    t13 <- t12, 41197
    movl    $41197, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  29:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  30:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t16 <- t15, 87875
    movl    $87875, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  33:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  34:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  35:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  36:     add    t19 <- t18, 81600
    movl    $81600, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  37:     mul    t20 <- t19, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  38:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  39:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  40:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  41:     add    t23 <- v1, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $9788, %eax             #  42:     assign @t23 <- 9788
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_6_while_cond       #  43:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_16                 #  45:     goto   16
    jmp     l_f2_16                 #  46:     goto   16
    jmp     l_f2_16                 #  47:     goto   16
    movl    $1, %eax                #  48:     assign t24 <- 1
    movb    %al, -69(%ebp)         
    jmp     l_f2_17                 #  49:     goto   17
l_f2_16:
    movl    $0, %eax                #  51:     assign t24 <- 0
    movb    %al, -69(%ebp)         
l_f2_17:
    movzbl  -69(%ebp), %eax         #  53:     assign v2 <- t24
    movb    %al, -93(%ebp)         

l_f2_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <bool> %ebp-20 ]

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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 > 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    call    dummyINTfunc            #   4:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   8:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   9:     if     t1 > 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_7_if_true       
    jmp     l_test_8_if_false       #  10:     goto   8_if_false
l_test_7_if_true:
    movl    $100, %eax              #  12:     if     100 >= 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_11_if_true      
    jmp     l_test_12_if_false      #  13:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  15:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_exit            
    movl    $97, %eax               #  19:     if     97 # 98 goto 16
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_16              
    jmp     l_test_17               #  20:     goto   17
l_test_16:
    movl    $1, %eax                #  22:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_18               #  23:     goto   18
l_test_17:
    movl    $0, %eax                #  25:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_18:
    movzbl  -18(%ebp), %eax         #  27:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_6                #  28:     goto   6
l_test_8_if_false:
l_test_6:
    call    dummyBOOLfunc           #  31:     call   t3 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
l_test_22_while_cond:
    movl    $1, %eax                #  33:     if     1 = 1 goto 23_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_23_while_body   
    jmp     l_test_21               #  34:     goto   21
l_test_23_while_body:
    movl    $97, %eax               #  36:     assign v1 <- 97
    movb    %al, v1                
l_test_27_while_cond:
    jmp     l_test_27_while_cond    #  38:     goto   27_while_cond
    jmp     l_test_22_while_cond    #  39:     goto   22_while_cond
l_test_21:
    movl    $98, %eax               #  41:     if     98 # 97 goto 31
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_31              
    jmp     l_test_32               #  42:     goto   32
l_test_31:
    movl    $1, %eax                #  44:     assign t4 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_test_33               #  45:     goto   33
l_test_32:
    movl    $0, %eax                #  47:     assign t4 <- 0
    movb    %al, -20(%ebp)         
l_test_33:
    movzbl  -20(%ebp), %eax         #  49:     assign v0 <- t4
    movb    %al, v0                
l_test_39_while_cond:
    jmp     l_test_38               #  51:     goto   38
    jmp     l_test_39_while_cond    #  52:     goto   39_while_cond
l_test_38:
    movl    $98, %eax               #  54:     if     98 <= 100 goto 42_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_42_if_true      
    jmp     l_test_43_if_false      #  55:     goto   43_if_false
l_test_42_if_true:
    jmp     l_test_41               #  57:     goto   41
l_test_43_if_false:
l_test_41:
    jmp     l_test_47_if_false      #  60:     goto   47_if_false
    jmp     l_test_45               #  61:     goto   45
l_test_47_if_false:
l_test_45:
    jmp     l_test_35               #  64:     goto   35
l_test_35:

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
