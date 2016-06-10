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
    #    -65(%ebp)   1  [ $t23      <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t24      <bool> %ebp-66 ]
    #    -67(%ebp)   1  [ $t25      <bool> %ebp-67 ]
    #    -68(%ebp)   1  [ $t4       <char> %ebp-68 ]
    #    -69(%ebp)   1  [ $t5       <char> %ebp-69 ]
    #    -70(%ebp)   1  [ $t6       <bool> %ebp-70 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 54 of <array 19 of <array 28 of <array 31 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 100 of <array 68 of <array 5 of <array 38 of <array 6 of <int>>>>>>> %ebp+16 ]
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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -68(%ebp)         
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movzbl  -68(%ebp), %eax         #   2:     if     t4 >= t5 goto 1
    movzbl  -69(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -70(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -70(%ebp)         
l_f0_3:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $51466, %eax            #  13:     mul    t8 <- 51466, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  14:     add    t9 <- t8, 15471
    movl    $15471, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  18:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t12 <- t11, 15758
    movl    $15758, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  23:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     add    t15 <- t14, 91887
    movl    $91887, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  28:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     add    t18 <- t17, 90362
    movl    $90362, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  33:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  34:     add    t22 <- v1, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -70(%ebp), %eax         #  35:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $79099, %eax            #  36:     if     79099 <= 75061 goto 9_if_true
    movl    $75061, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  37:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  39:     goto   8
l_f0_10_if_false:
l_f0_8:
    movl    $19056, %eax            #  42:     if     19056 >= 24132 goto 13
    movl    $24132, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_13                
    jmp     l_f0_14                 #  43:     goto   14
l_f0_13:
    movl    $1, %eax                #  45:     assign t23 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f0_15                 #  46:     goto   15
l_f0_14:
    movl    $0, %eax                #  48:     assign t23 <- 0
    movb    %al, -65(%ebp)         
l_f0_15:
    movzbl  -65(%ebp), %eax         #  50:     return t23
    jmp     l_f0_exit              
l_f0_18_while_cond:
    jmp     l_f0_17                 #  52:     goto   17
    jmp     l_f0_18_while_cond      #  53:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_5                  #  55:     goto   5
l_f0_5:
    movl    $97, %eax               #  57:     if     97 < 97 goto 21_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_21_if_true        
    jmp     l_f0_22_if_false        #  58:     goto   22_if_false
l_f0_21_if_true:
l_f0_25_while_cond:
    jmp     l_f0_24                 #  61:     goto   24
    jmp     l_f0_25_while_cond      #  62:     goto   25_while_cond
l_f0_24:
    movl    $100, %eax              #  64:     assign v0 <- 100
    movb    %al, 8(%ebp)           
    call    dummyBOOLfunc           #  65:     call   t24 <- dummyBOOLfunc
    movb    %al, -66(%ebp)         
    movl    $98, %eax               #  66:     if     98 # 100 goto 30
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_30                
    jmp     l_f0_31                 #  67:     goto   31
l_f0_30:
    movl    $1, %eax                #  69:     assign t25 <- 1
    movb    %al, -67(%ebp)         
    jmp     l_f0_32                 #  70:     goto   32
l_f0_31:
    movl    $0, %eax                #  72:     assign t25 <- 0
    movb    %al, -67(%ebp)         
l_f0_32:
    movzbl  -67(%ebp), %eax         #  74:     assign v3 <- t25
    movb    %al, -85(%ebp)         
    jmp     l_f0_20                 #  75:     goto   20
l_f0_22_if_false:
l_f0_20:

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
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
    #    -69(%ebp)   1  [ $t4       <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 26 of <array 8 of <array 89 of <array 49 of <array 100 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 25 of <array 20 of <array 9 of <array 76 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -96(%ebp)   4  [ $v3       <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $v4       <bool> %ebp-97 ]

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
    movl    $9333, %eax             #   0:     assign v3 <- 9333
    movl    %eax, -96(%ebp)        
    movl    $99, %eax               #   1:     if     99 <= 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   5:     goto   6_while_cond
    jmp     l_f1_10                 #   6:     goto   10
    movl    $1, %eax                #   7:     assign t4 <- 1
    movb    %al, -69(%ebp)         
    jmp     l_f1_11                 #   8:     goto   11
l_f1_10:
    movl    $0, %eax                #  10:     assign t4 <- 0
    movb    %al, -69(%ebp)         
l_f1_11:
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $32502, %eax            #  15:     mul    t6 <- 32502, t5
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  16:     add    t7 <- t6, 75512
    movl    $75512, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  20:     mul    t9 <- t7, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  21:     add    t10 <- t9, 63257
    movl    $63257, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  25:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     add    t13 <- t12, 65061
    movl    $65061, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  28:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  29:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  30:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t16 <- t15, 95572
    movl    $95572, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  33:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  34:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  35:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  36:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movzbl  -69(%ebp), %eax         #  37:     assign @t20 <- t4
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_1                  #  38:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_14_while_cond:
    movl    $28270, %eax            #  42:     sub    t21 <- 28270, 84871
    movl    $84871, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  43:     sub    t22 <- t21, 46163
    movl    $46163, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  44:     if     t22 > 99009 goto 15_while_body
    movl    $99009, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_15_while_body     
    jmp     l_f1_13                 #  45:     goto   13
l_f1_15_while_body:
    call    dummyINTfunc            #  47:     call   t23 <- dummyINTfunc
    movl    %eax, -68(%ebp)        
    movl    $99, %eax               #  48:     assign v2 <- 99
    movb    %al, 16(%ebp)          
    jmp     l_f1_14_while_cond      #  49:     goto   14_while_cond
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 27 of <array 92 of <array 2 of <array 64 of <array 44 of <char>>>>>>> %ebp+16 ]

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
    movl    $100, %eax              #   1:     if     100 # 99 goto 4_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   2:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_7                  #   4:     goto   7
l_f2_7:
    jmp     l_f2_3                  #   6:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $65499, %eax            #  12:     param  0 <- 65499
    pushl   %eax                   
    call    WriteInt                #  13:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #  14:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #  15:     if     99 # t4 goto 12
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_12                
    jmp     l_f2_13                 #  16:     goto   13
l_f2_12:
    movl    $1, %eax                #  18:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_14                 #  19:     goto   14
l_f2_13:
    movl    $0, %eax                #  21:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_14:
    movzbl  -14(%ebp), %eax         #  23:     return t5
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $76410, %eax            #   1:     assign v0 <- 76410
    movl    %eax, v0               
l_test_6_while_cond:
    jmp     l_test_5                #   3:     goto   5
    leal    _str_1, %eax            #   4:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    movl    $1, %eax                #   7:     if     1 = 0 goto 10
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10              
    jmp     l_test_11               #   8:     goto   11
l_test_10:
    movl    $1, %eax                #  10:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_12               #  11:     goto   12
l_test_11:
    movl    $0, %eax                #  13:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_12:
    movzbl  -21(%ebp), %eax         #  15:     assign v1 <- t2
    movb    %al, v1                
    call    dummyCHARfunc           #  16:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    jmp     l_test_6_while_cond     #  17:     goto   6_while_cond
l_test_5:
    jmp     l_test_2                #  19:     goto   2
l_test_2:
    movl    $99, %eax               #  21:     if     99 < 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_16_if_true      
    jmp     l_test_17_if_false      #  22:     goto   17_if_false
l_test_16_if_true:
    movl    $97, %eax               #  24:     assign v2 <- 97
    movb    %al, v2                
    jmp     l_test_15               #  25:     goto   15
l_test_17_if_false:
l_test_15:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
