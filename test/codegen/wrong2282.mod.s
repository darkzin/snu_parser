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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 35 of <array 2 of <array 76 of <array 18 of <array 15 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    movl    $95729, %eax            #   0:     div    t5 <- 95729, 78829
    movl    $78829, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     add    t6 <- t5, 14474
    movl    $14474, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     return t6
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   3:     call   t7 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   4:     if     t7 >= 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   5:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    movl    $77601, %eax            #   8:     if     77601 <= 59745 goto 7_while_body
    movl    $59745, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_7_while_body      
    jmp     l_f0_5                  #   9:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  11:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_1                  #  13:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_10_while_cond:
    movl    $79375, %eax            #  17:     sub    t8 <- 79375, 45084
    movl    $45084, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     add    t9 <- t8, 14914
    movl    $14914, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     add    t10 <- t9, 79295
    movl    $79295, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $12267, %eax            #  20:     if     12267 > t10 goto 11_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_11_while_body     
    jmp     l_f0_9                  #  21:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  23:     goto   10_while_cond
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t30      <bool> %ebp-93 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t36      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t37      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t38      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t39      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t40      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t41      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t42      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t43      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t44      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t45      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t46      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t5       <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t6       <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t7       <int> %ebp-172 ]
    #   -173(%ebp)   1  [ $t8       <bool> %ebp-173 ]
    #   -174(%ebp)   1  [ $t9       <bool> %ebp-174 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 82 of <array 75 of <array 14 of <array 83 of <array 53 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 85 of <array 5 of <array 61 of <array 49 of <array 38 of <bool>>>>>>> %ebp+12 ]
    #   -175(%ebp)   1  [ $v2       <bool> %ebp-175 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $164, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $41, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $38299, %eax            #   0:     sub    t5 <- 38299, 34410
    movl    $34410, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #   1:     sub    t6 <- t5, 31245
    movl    $31245, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #   2:     sub    t7 <- t6, 78449
    movl    $78449, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    $74207, %eax            #   3:     if     74207 >= t7 goto 1_if_true
    movl    -172(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   4:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_4                  #   6:     goto   4
l_f1_4:
l_f1_8_while_cond:
    jmp     l_f1_8_while_cond       #   9:     goto   8_while_cond
l_f1_11_while_cond:
    jmp     l_f1_11_while_cond      #  11:     goto   11_while_cond
    jmp     l_f1_0                  #  12:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_18                 #  15:     goto   18
    jmp     l_f1_18                 #  16:     goto   18
l_f1_18:
    movl    $1, %eax                #  18:     assign t8 <- 1
    movb    %al, -173(%ebp)        
    jmp     l_f1_20                 #  19:     goto   20
    movl    $0, %eax                #  20:     assign t8 <- 0
    movb    %al, -173(%ebp)        
l_f1_20:
    movl    $0, %eax                #  22:     if     0 = t8 goto 14
    movzbl  -173(%ebp), %ebx       
    cmpl    %ebx, %eax             
    je      l_f1_14                
    jmp     l_f1_15                 #  23:     goto   15
l_f1_14:
    movl    $1, %eax                #  25:     assign t9 <- 1
    movb    %al, -174(%ebp)        
    jmp     l_f1_16                 #  26:     goto   16
l_f1_15:
    movl    $0, %eax                #  28:     assign t9 <- 0
    movb    %al, -174(%ebp)        
l_f1_16:
    movl    $2, %eax                #  30:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $84380, %eax            #  33:     mul    t11 <- 84380, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $54863, %eax            #  34:     div    t12 <- 54863, 91442
    movl    $91442, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  35:     mul    t13 <- t12, 75647
    movl    $75647, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  36:     mul    t14 <- t13, 36268
    movl    $36268, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  37:     mul    t15 <- t14, 67936
    movl    $67936, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -20(%ebp), %eax         #  38:     add    t16 <- t11, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  39:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  40:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  41:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  42:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  43:     add    t19 <- t18, 3968
    movl    $3968, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  44:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  45:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  46:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  47:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  48:     add    t22 <- t21, 13101
    movl    $13101, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  49:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  50:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  51:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  52:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  53:     add    t25 <- t24, 88961
    movl    $88961, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  54:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  55:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  56:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  57:     add    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    12(%ebp), %eax          #  58:     add    t29 <- v1, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movzbl  -174(%ebp), %eax        #  59:     assign @t29 <- t9
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_29                 #  60:     goto   29
    jmp     l_f1_30                 #  61:     goto   30
l_f1_29:
    movl    $1, %eax                #  63:     assign t30 <- 1
    movb    %al, -93(%ebp)         
    jmp     l_f1_31                 #  64:     goto   31
l_f1_30:
    movl    $0, %eax                #  66:     assign t30 <- 0
    movb    %al, -93(%ebp)         
l_f1_31:
    movl    $2, %eax                #  68:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  69:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  70:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    $21107, %eax            #  71:     mul    t32 <- 21107, t31
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  72:     add    t33 <- t32, 74036
    movl    $74036, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $3, %eax                #  73:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  74:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  75:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  76:     mul    t35 <- t33, t34
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  77:     add    t36 <- t35, 13228
    movl    $13228, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $4, %eax                #  78:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  79:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  80:     call   t37 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  81:     mul    t38 <- t36, t37
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  82:     add    t39 <- t38, 50831
    movl    $50831, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $5, %eax                #  83:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  84:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  85:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  86:     mul    t41 <- t39, t40
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  87:     add    t42 <- t41, 34438
    movl    $34438, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  88:     mul    t43 <- t42, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    12(%ebp), %eax          #  89:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  90:     call   t44 <- DOFS
    addl    $4, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #  91:     add    t45 <- t43, t44
    movl    -152(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    12(%ebp), %eax          #  92:     add    t46 <- v1, t45
    movl    -156(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movzbl  -93(%ebp), %eax         #  93:     assign @t46 <- t30
    movl    -160(%ebp), %edi       
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $164, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_exit              
    jmp     l_f2_exit              
l_f2_3_while_cond:
    jmp     l_f2_4_while_body       #   3:     goto   4_while_body
    jmp     l_f2_4_while_body       #   4:     goto   4_while_body
l_f2_4_while_body:
    jmp     l_f2_7                  #   6:     goto   7
l_f2_7:
l_f2_11_while_cond:
    jmp     l_f2_11_while_cond      #   9:     goto   11_while_cond
    jmp     l_f2_exit              
    jmp     l_f2_3_while_cond       #  11:     goto   3_while_cond

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]

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
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 < t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   8:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   9:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               
    movl    $75808, %eax            #  11:     assign v0 <- 75808
    movl    %eax, v0               
l_test_8_while_cond:
    jmp     l_test_7                #  13:     goto   7
    call    f2                      #  14:     call   f2
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  16:     goto   12_while_cond
    movl    $33340, %eax            #  17:     if     33340 > 54952 goto 15_if_true
    movl    $54952, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_15_if_true      
    jmp     l_test_16_if_false      #  18:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  20:     goto   14
l_test_16_if_false:
l_test_14:
    call    dummyCHARfunc           #  23:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
l_test_20_while_cond:
    jmp     l_test_19               #  25:     goto   19
    jmp     l_test_20_while_cond    #  26:     goto   20_while_cond
l_test_19:
    jmp     l_test_8_while_cond     #  28:     goto   8_while_cond
l_test_7:
l_test_23_while_cond:
    jmp     l_test_24_while_body    #  31:     goto   24_while_body
    call    dummyBOOLfunc           #  32:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  33:     if     t4 = 1 goto 24_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_24_while_body   
    jmp     l_test_22               #  34:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  36:     goto   23_while_cond
l_test_22:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
