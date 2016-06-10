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
    #    -77(%ebp)   1  [ $t26      <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t36      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t37      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t38      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t39      <int> %ebp-132 ]
    #   -133(%ebp)   1  [ $t4       <bool> %ebp-133 ]
    #   -140(%ebp)   4  [ $t40      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t41      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t42      <int> %ebp-148 ]
    #   -149(%ebp)   1  [ $t43      <bool> %ebp-149 ]
    #   -156(%ebp)   4  [ $t5       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t6       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t7       <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t8       <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t9       <int> %ebp-172 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 6 of <array 3 of <array 5 of <array 5 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 2 of <array 4 of <array 6 of <array 2 of <bool>>>>>>> %ebp+16 ]
    #   -176(%ebp)   4  [ $v4       <int> %ebp-176 ]

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
    movl    $100, %eax              #   0:     if     100 > 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -133(%ebp)        
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -133(%ebp)        
l_f0_3:
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -156(%ebp)       
    movl    $56769, %eax            #  11:     mul    t6 <- 56769, t5
    movl    -156(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -160(%ebp)       
    movl    $75246, %eax            #  12:     mul    t7 <- 75246, 78210
    movl    $78210, %ebx           
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  13:     div    t8 <- t7, 94576
    movl    $94576, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    -160(%ebp), %eax        #  14:     add    t9 <- t6, t8
    movl    -168(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  16:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  17:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -172(%ebp), %eax        #  18:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $29094, %eax            #  19:     add    t12 <- 29094, 68423
    movl    $68423, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  20:     add    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  23:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  24:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     add    t16 <- t15, 82528
    movl    $82528, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  27:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  28:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  29:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     add    t19 <- t18, 28481
    movl    $28481, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  31:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  32:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  33:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  34:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  35:     add    t23 <- v3, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -133(%ebp), %eax        #  36:     assign @t23 <- t4
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyProcedure          #  37:     call   dummyProcedure
    movl    $91990, %eax            #  38:     mul    t24 <- 91990, 64240
    movl    $64240, %ebx           
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     if     t24 <= 9379 goto 7_if_true
    movl    $9379, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  40:     goto   8_if_false
l_f0_7_if_true:
    call    dummyINTfunc            #  42:     call   t25 <- dummyINTfunc
    movl    %eax, -76(%ebp)        
    movl    $27803, %eax            #  43:     assign v4 <- 27803
    movl    %eax, -176(%ebp)       
    movl    $0, %eax                #  44:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_15_if_false        #  45:     goto   15_if_false
    jmp     l_f0_13                 #  46:     goto   13
l_f0_15_if_false:
l_f0_13:
    movl    $100, %eax              #  49:     if     100 <= 99 goto 17
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_17                
    jmp     l_f0_18                 #  50:     goto   18
l_f0_17:
    movl    $1, %eax                #  52:     assign t26 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f0_19                 #  53:     goto   19
l_f0_18:
    movl    $0, %eax                #  55:     assign t26 <- 0
    movb    %al, -77(%ebp)         
l_f0_19:
    movl    $2, %eax                #  57:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  58:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  59:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $33744, %eax            #  60:     mul    t28 <- 33744, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  61:     add    t29 <- t28, 97938
    movl    $97938, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  62:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  63:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  64:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  65:     mul    t31 <- t29, t30
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  66:     add    t32 <- t31, 61476
    movl    $61476, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $4, %eax                #  67:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  68:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  69:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  70:     mul    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  71:     add    t35 <- t34, 30302
    movl    $30302, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $5, %eax                #  72:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  73:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  74:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  75:     mul    t37 <- t35, t36
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  76:     add    t38 <- t37, 84149
    movl    $84149, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  77:     mul    t39 <- t38, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    16(%ebp), %eax          #  78:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  79:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -140(%ebp)       
    movl    -132(%ebp), %eax        #  80:     add    t41 <- t39, t40
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    16(%ebp), %eax          #  81:     add    t42 <- v3, t41
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movzbl  -77(%ebp), %eax         #  82:     assign @t42 <- t26
    movl    -148(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $97, %eax               #  83:     if     97 # 98 goto 22
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_22                
    jmp     l_f0_23                 #  84:     goto   23
l_f0_22:
    movl    $1, %eax                #  86:     assign t43 <- 1
    movb    %al, -149(%ebp)        
    jmp     l_f0_24                 #  87:     goto   24
l_f0_23:
    movl    $0, %eax                #  89:     assign t43 <- 0
    movb    %al, -149(%ebp)        
l_f0_24:
    movzbl  -149(%ebp), %eax        #  91:     return t43
    jmp     l_f0_exit              
    movl    $1, %eax                #  92:     assign v1 <- 1
    movb    %al, 8(%ebp)           
    jmp     l_f0_29_if_false        #  93:     goto   29_if_false
    jmp     l_f0_27                 #  94:     goto   27
l_f0_29_if_false:
l_f0_27:
l_f0_31_while_cond:
    jmp     l_f0_30                 #  98:     goto   30
    jmp     l_f0_31_while_cond      #  99:     goto   31_while_cond
l_f0_30:
    jmp     l_f0_6                  # 101:     goto   6
l_f0_8_if_false:
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $164, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 3 of <array 6 of <array 2 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 5 of <array 2 of <array 9 of <array 8 of <char>>>>>>> %ebp+12 ]

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
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $1, %eax                #   2:     if     1 # 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_5                 
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movl    $1, %eax                #  10:     if     1 = t4 goto 3_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #  11:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #  13:     goto   2_while_cond
l_f1_1:
l_f1_11_while_cond:
    movl    $97, %eax               #  16:     if     97 # 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_12_while_body     
    jmp     l_f1_10                 #  17:     goto   10
l_f1_12_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_11_while_cond      #  20:     goto   11_while_cond
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -22(%ebp)   1  [ $v2       <bool> %ebp-22 ]

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
    movl    $99, %eax               #   0:     if     99 < 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t4
    movb    %al, -22(%ebp)         
    leal    _str_1, %eax            #   9:     &()    t5 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #  11:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  13:     return t6
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <array 2 of <array 4 of <array 6 of <array 2 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 6 of <array 3 of <array 5 of <array 5 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #   1:     assign v0 <- 100
    movb    %al, v0                
    movl    $7491, %eax             #   2:     if     7491 <= 22482 goto 3_if_true
    movl    $22482, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_7                #   7:     goto   7
l_test_7:
    jmp     l_test_2                #   9:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $98, %eax               #  12:     assign v0 <- 98
    movb    %al, v0                
    leal    v2, %eax                #  13:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  2 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  15:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  1 <- t2
    pushl   %eax                   
    movl    $0, %eax                #  17:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  18:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_test_15_if_false      #  19:     goto   15_if_false
l_test_17_while_cond:
    jmp     l_test_17_while_cond    #  21:     goto   17_while_cond
    jmp     l_test_21_if_false      #  22:     goto   21_if_false
l_test_23_while_cond:
    movl    $99, %eax               #  24:     if     99 > 97 goto 24_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_24_while_body   
    jmp     l_test_22               #  25:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  27:     goto   23_while_cond
l_test_22:
    movl    $48247, %eax            #  29:     assign v3 <- 48247
    movl    %eax, v3               
    jmp     l_test_19               #  30:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_13               #  33:     goto   13
l_test_15_if_false:
l_test_13:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 4 of <array 6 of <array 3 of <array 5 of <array 5 of <char>>>>>>
    .long    5
    .long    4
    .long    6
    .long    3
    .long    5
    .long    5
    .skip 1800
v2:                                 # <array 7 of <array 2 of <array 4 of <array 6 of <array 2 of <bool>>>>>>
    .long    5
    .long    7
    .long    2
    .long    4
    .long    6
    .long    2
    .skip  672
v3:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
