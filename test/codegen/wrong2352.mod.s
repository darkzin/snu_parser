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
    #    -13(%ebp)   1  [ $t30      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t31      <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t30 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t30 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    call    WriteLn                 #   8:     call   WriteLn
    call    dummyCHARfunc           #   9:     call   t31 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     return t31
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t30      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t31      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t32      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t33      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t34      <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 30 of <array 29 of <array 54 of <array 70 of <array 7 of <int>>>>>>> %ebp+8 ]
    #    -30(%ebp)   1  [ $v3       <bool> %ebp-30 ]

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
l_f1_1_while_cond:
    movl    $97, %eax               #   1:     if     97 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_8                  #   8:     goto   8
    jmp     l_f1_8                  #   9:     goto   8
    jmp     l_f1_8                  #  10:     goto   8
l_f1_8:
    movl    $1, %eax                #  12:     assign t30 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_10                 #  13:     goto   10
    movl    $0, %eax                #  14:     assign t30 <- 0
    movb    %al, -13(%ebp)         
l_f1_10:
    movzbl  -13(%ebp), %eax         #  16:     assign v3 <- t30
    movb    %al, -30(%ebp)         
    movl    $90596, %eax            #  17:     div    t31 <- 90596, 16180
    movl    $16180, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     mul    t32 <- t31, 177
    movl    $177, %ebx             
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     div    t33 <- t32, 66784
    movl    $66784, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     param  1 <- t33
    pushl   %eax                   
    movl    $91128, %eax            #  21:     param  0 <- 91128
    pushl   %eax                   
    call    f0                      #  22:     call   t34 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         

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
    #    -13(%ebp)   1  [ $t30      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t31      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 43 of <array 76 of <array 80 of <array 82 of <array 99 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 5 of <array 87 of <array 20 of <array 75 of <array 76 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <int> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t30 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_exit              
l_f2_3_while_cond:
    movl    $63672, %eax            #   3:     if     63672 > 65580 goto 4_while_body
    movl    $65580, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_4_while_body      
    jmp     l_f2_2                  #   4:     goto   2
l_f2_4_while_body:
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   7:     call   t31 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_3_while_cond       #   8:     goto   3_while_cond
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <ptr(4) to <array 43 of <array 76 of <array 80 of <array 82 of <array 99 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <ptr(4) to <array 43 of <array 76 of <array 80 of <array 82 of <array 99 of <int>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <ptr(4) to <array 43 of <array 76 of <array 80 of <array 82 of <array 99 of <int>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <ptr(4) to <array 43 of <array 76 of <array 80 of <array 82 of <array 99 of <int>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <array 87 of <array 20 of <array 75 of <array 76 of <char>>>>>>> %ebp-112 ]
    #   -113(%ebp)   1  [ $t5       <bool> %ebp-113 ]
    #   -120(%ebp)   4  [ $t6       <ptr(4) to <array 43 of <array 76 of <array 80 of <array 82 of <array 99 of <int>>>>>>> %ebp-120 ]
    #   -121(%ebp)   1  [ $t7       <char> %ebp-121 ]
    #   -128(%ebp)   4  [ $t8       <ptr(4) to <array 43 of <array 76 of <array 80 of <array 82 of <array 99 of <int>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t9       <ptr(4) to <array 43 of <array 76 of <array 80 of <array 82 of <array 99 of <int>>>>>>> %ebp-132 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $120, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $30, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $88645, %eax            #   0:     if     88645 <= 20962 goto 1_if_true
    movl    $20962, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyCHARfunc           #   3:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
l_test_6_while_cond:
    jmp     l_test_8                #   9:     goto   8
    jmp     l_test_7_while_body     #  10:     goto   7_while_body
l_test_8:
    jmp     l_test_5                #  12:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  14:     goto   6_while_cond
l_test_5:
    movl    $92051, %eax            #  16:     mul    t1 <- 92051, 45444
    movl    $45444, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t2 <- t1, 65161
    movl    $65161, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  18:     assign v1 <- t2
    movl    %eax, v1               
l_test_12_while_cond:
    call    dummyINTfunc            #  20:     call   t3 <- dummyINTfunc
    movl    %eax, -108(%ebp)       
    movl    $76488, %eax            #  21:     if     76488 >= t3 goto 13_while_body
    movl    -108(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jge     l_test_13_while_body   
    jmp     l_test_11               #  22:     goto   11
l_test_13_while_body:
    movl    $40246, %eax            #  24:     param  3 <- 40246
    pushl   %eax                   
    leal    v3, %eax                #  25:     &()    t4 <- v3
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  26:     param  2 <- t4
    pushl   %eax                   
    movl    $37705, %eax            #  27:     if     37705 > 90795 goto 16
    movl    $90795, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_16              
    jmp     l_test_17               #  28:     goto   17
l_test_16:
    movl    $1, %eax                #  30:     assign t5 <- 1
    movb    %al, -113(%ebp)        
    jmp     l_test_18               #  31:     goto   18
l_test_17:
    movl    $0, %eax                #  33:     assign t5 <- 0
    movb    %al, -113(%ebp)        
l_test_18:
    movzbl  -113(%ebp), %eax        #  35:     param  1 <- t5
    pushl   %eax                   
    leal    v2, %eax                #  36:     &()    t6 <- v2
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  37:     param  0 <- t6
    pushl   %eax                   
    call    f2                      #  38:     call   f2
    addl    $16, %esp              
l_test_21_while_cond:
    jmp     l_test_20               #  40:     goto   20
    jmp     l_test_21_while_cond    #  41:     goto   21_while_cond
l_test_20:
    jmp     l_test_23               #  43:     goto   23
l_test_23:
    jmp     l_test_12_while_cond    #  45:     goto   12_while_cond
l_test_11:
    movl    $98, %eax               #  47:     assign v0 <- 98
    movb    %al, v0                
l_test_28_while_cond:
    movl    $99, %eax               #  49:     if     99 > 99 goto 29_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_29_while_body   
    jmp     l_test_27               #  50:     goto   27
l_test_29_while_body:
    jmp     l_test_exit            
    movl    $45762, %eax            #  53:     param  1 <- 45762
    pushl   %eax                   
    movl    $1619, %eax             #  54:     param  0 <- 1619
    pushl   %eax                   
    call    f0                      #  55:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -121(%ebp)        
    movl    $64736, %eax            #  56:     assign v1 <- 64736
    movl    %eax, v1               
    movl    $100, %eax              #  57:     if     100 = 98 goto 35_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_35_if_true      
    jmp     l_test_36_if_false      #  58:     goto   36_if_false
l_test_35_if_true:
    jmp     l_test_34               #  60:     goto   34
l_test_36_if_false:
l_test_34:
    leal    v2, %eax                #  63:     &()    t8 <- v2
    movl    %eax, -128(%ebp)       
    movl    $2, %eax                #  64:     param  1 <- 2
    pushl   %eax                   
    leal    v2, %eax                #  65:     &()    t9 <- v2
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  66:     param  0 <- t9
    pushl   %eax                   
    call    DIM                     #  67:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $51155, %eax            #  68:     mul    t11 <- 51155, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  69:     add    t12 <- t11, 78356
    movl    $78356, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  70:     param  1 <- 3
    pushl   %eax                   
    leal    v2, %eax                #  71:     &()    t13 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  72:     param  0 <- t13
    pushl   %eax                   
    call    DIM                     #  73:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  74:     mul    t15 <- t12, t14
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  75:     add    t16 <- t15, 85883
    movl    $85883, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  76:     param  1 <- 4
    pushl   %eax                   
    leal    v2, %eax                #  77:     &()    t17 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  78:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  79:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  80:     mul    t19 <- t16, t18
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  81:     add    t20 <- t19, 87701
    movl    $87701, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  82:     param  1 <- 5
    pushl   %eax                   
    leal    v2, %eax                #  83:     &()    t21 <- v2
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  84:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  85:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  86:     mul    t23 <- t20, t22
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  87:     add    t24 <- t23, 27669
    movl    $27669, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  88:     mul    t25 <- t24, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    leal    v2, %eax                #  89:     &()    t26 <- v2
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  90:     param  0 <- t26
    pushl   %eax                   
    call    DOFS                    #  91:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  92:     add    t28 <- t25, t27
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -128(%ebp), %eax        #  93:     add    t29 <- t8, t28
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $83835, %eax            #  94:     assign @t29 <- 83835
    movl    -104(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_test_28_while_cond    #  95:     goto   28_while_cond
l_test_27:

l_test_exit:
    # epilogue
    addl    $120, %esp              # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 43 of <array 76 of <array 80 of <array 82 of <array 99 of <int>>>>>>
    .long    5
    .long   43
    .long   76
    .long   80
    .long   82
    .long   99
    .skip -100454912
v3:                                 # <array 5 of <array 87 of <array 20 of <array 75 of <array 76 of <char>>>>>>
    .long    5
    .long    5
    .long   87
    .long   20
    .long   75
    .long   76
    .skip 49590000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
