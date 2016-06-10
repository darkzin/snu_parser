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
    #   -125(%ebp)   1  [ $t38      <bool> %ebp-125 ]
    #   -132(%ebp)   4  [ $t6       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t7       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t8       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t9       <int> %ebp-144 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 53 of <array 71 of <array 79 of <array 96 of <array 15 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #   -145(%ebp)   1  [ $v2       <bool> %ebp-145 ]
    #   -152(%ebp)   4  [ $v3       <int> %ebp-152 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $140, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $35, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $1091, %eax             #   0:     if     1091 = 70835 goto 1_if_true
    movl    $70835, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyProcedure          #   3:     call   dummyProcedure
    movl    $0, %eax                #   4:     return 0
    jmp     l_f0_exit              
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   6:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   7:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    $96234, %eax            #   8:     mul    t7 <- 96234, t6
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #   9:     add    t8 <- t7, 26953
    movl    $26953, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  12:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  13:     mul    t10 <- t8, t9
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     add    t11 <- t10, 79413
    movl    $79413, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  18:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     add    t14 <- t13, 39990
    movl    $39990, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  23:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     add    t17 <- t16, 49899
    movl    $49899, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  27:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  28:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  29:     add    t21 <- v0, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $1, %eax                #  30:     assign @t21 <- 1
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_0                  #  31:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_11_while_cond:
    movl    $97, %eax               #  35:     if     97 <= 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_12_while_body     
    jmp     l_f0_10                 #  36:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  38:     goto   11_while_cond
l_f0_10:
    movl    $2, %eax                #  40:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  41:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  42:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $62173, %eax            #  43:     mul    t23 <- 62173, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  44:     add    t24 <- t23, 36540
    movl    $36540, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  45:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  46:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  47:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  48:     mul    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  49:     add    t27 <- t26, 74049
    movl    $74049, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  50:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  51:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  52:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  53:     mul    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  54:     add    t30 <- t29, 64533
    movl    $64533, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $5, %eax                #  55:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  56:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  57:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  58:     mul    t32 <- t30, t31
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  59:     add    t33 <- t32, 62653
    movl    $62653, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  60:     mul    t34 <- t33, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    8(%ebp), %eax           #  61:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  62:     call   t35 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  63:     add    t36 <- t34, t35
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    8(%ebp), %eax           #  64:     add    t37 <- v0, t36
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $0, %eax                #  65:     assign @t37 <- 0
    movl    -124(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $1, %eax                #  66:     if     1 # 1 goto 16
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_16                
    jmp     l_f0_17                 #  67:     goto   17
l_f0_16:
    movl    $1, %eax                #  69:     assign t38 <- 1
    movb    %al, -125(%ebp)        
    jmp     l_f0_18                 #  70:     goto   18
l_f0_17:
    movl    $0, %eax                #  72:     assign t38 <- 0
    movb    %al, -125(%ebp)        
l_f0_18:
    movzbl  -125(%ebp), %eax        #  74:     return t38
    jmp     l_f0_exit              
    movl    $0, %eax                #  75:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_7                  #  76:     goto   7
l_f0_7:
    movl    $84194, %eax            #  78:     assign v3 <- 84194
    movl    %eax, -152(%ebp)       

l_f0_exit:
    # epilogue
    addl    $140, %esp              # remove locals
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
    #   -133(%ebp)   1  [ $t6       <bool> %ebp-133 ]
    #   -140(%ebp)   4  [ $t7       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 19 of <array 6 of <array 12 of <array 33 of <array 99 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 11 of <array 63 of <array 11 of <array 90 of <array 34 of <bool>>>>>>> %ebp+20 ]
    #   -149(%ebp)   1  [ $v4       <bool> %ebp-149 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $140, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $35, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    jmp     l_f1_5_if_false         #   1:     goto   5_if_false
    jmp     l_f1_3                  #   2:     goto   3
l_f1_5_if_false:
l_f1_3:
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #   6:     goto   7_while_cond
    movl    $0, %eax                #   7:     if     0 = 0 goto 10
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_11                 #   8:     goto   11
l_f1_10:
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -133(%ebp)        
    jmp     l_f1_12                 #  11:     goto   12
l_f1_11:
    movl    $0, %eax                #  13:     assign t6 <- 0
    movb    %al, -133(%ebp)        
l_f1_12:
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  16:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  17:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    $27478, %eax            #  18:     mul    t8 <- 27478, t7
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  19:     add    t9 <- t8, 22997
    movl    $22997, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  22:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -148(%ebp), %eax        #  23:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     add    t12 <- t11, 68242
    movl    $68242, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  26:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  27:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  28:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     add    t15 <- t14, 75175
    movl    $75175, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  31:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  32:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  33:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  34:     add    t18 <- t17, 44359
    movl    $44359, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  35:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  36:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  37:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  38:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  39:     add    t22 <- v3, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -133(%ebp), %eax        #  40:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_1_while_cond       #  41:     goto   1_while_cond
    movl    $2, %eax                #  42:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  43:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  44:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $88420, %eax            #  45:     mul    t24 <- 88420, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  46:     add    t25 <- t24, 7395
    movl    $7395, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  47:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  48:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  49:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  50:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    $65176, %eax            #  51:     sub    t28 <- 65176, 91108
    movl    $91108, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  52:     add    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  53:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  54:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  55:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  56:     mul    t31 <- t29, t30
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  57:     add    t32 <- t31, 38438
    movl    $38438, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $5, %eax                #  58:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  59:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  60:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  61:     mul    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  62:     add    t35 <- t34, 41757
    movl    $41757, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  63:     mul    t36 <- t35, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    8(%ebp), %eax           #  64:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  65:     call   t37 <- DOFS
    addl    $4, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  66:     add    t38 <- t36, t37
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    8(%ebp), %eax           #  67:     add    t39 <- v0, t38
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $9397, %eax             #  68:     assign @t39 <- 9397
    movl    -132(%ebp), %edi       
    movl    %eax, (%edi)           
    call    dummyProcedure          #  69:     call   dummyProcedure

l_f1_exit:
    # epilogue
    addl    $140, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 47 of <array 44 of <array 25 of <array 57 of <array 98 of <char>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t7 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
    jmp     l_f2_exit              
l_f2_10_while_cond:
    movl    $99, %eax               #  10:     if     99 # 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_11_while_body     
    jmp     l_f2_9                  #  11:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  13:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_5                  #  15:     goto   5
l_f2_5:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 11 of <array 63 of <array 11 of <array 90 of <array 34 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 19 of <array 6 of <array 12 of <array 33 of <array 99 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]

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
    leal    v1, %eax                #   0:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t0
    pushl   %eax                   
    movl    $98, %eax               #   2:     param  2 <- 98
    pushl   %eax                   
    movl    $50522, %eax            #   3:     add    t1 <- 50522, 89430
    movl    $89430, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t2 <- t1, 29178
    movl    $29178, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  1 <- t2
    pushl   %eax                   
    leal    v0, %eax                #   6:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #   8:     call   t4 <- f1
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        
l_test_2_while_cond:
    movl    $97, %eax               #  10:     if     97 <= 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_3_while_body    
    jmp     l_test_1                #  11:     goto   1
l_test_3_while_body:
    movl    $5557, %eax             #  13:     assign v2 <- 5557
    movl    %eax, v2               
    movl    $98, %eax               #  14:     assign v3 <- 98
    movb    %al, v3                
    movl    $99, %eax               #  15:     assign v3 <- 99
    movb    %al, v3                
    jmp     l_test_2_while_cond     #  16:     goto   2_while_cond
l_test_1:
l_test_9_while_cond:
    call    dummyCHARfunc           #  19:     call   t5 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movl    $99, %eax               #  20:     if     99 >= t5 goto 10_while_body
    movzbl  -33(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_10_while_body   
    jmp     l_test_8                #  21:     goto   8
l_test_10_while_body:
    movl    $372, %eax              #  23:     if     372 <= 24499 goto 13_if_true
    movl    $24499, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_13_if_true      
    jmp     l_test_14_if_false      #  24:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  26:     goto   12
l_test_14_if_false:
l_test_12:
l_test_17_while_cond:
    jmp     l_test_16               #  30:     goto   16
    jmp     l_test_17_while_cond    #  31:     goto   17_while_cond
l_test_16:
    jmp     l_test_9_while_cond     #  33:     goto   9_while_cond
l_test_8:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <array 19 of <array 6 of <array 12 of <array 33 of <array 99 of <int>>>>>>
    .long    5
    .long   19
    .long    6
    .long   12
    .long   33
    .long   99
    .skip 17877024
v1:                                 # <array 11 of <array 63 of <array 11 of <array 90 of <array 34 of <bool>>>>>>
    .long    5
    .long   11
    .long   63
    .long   11
    .long   90
    .long   34
    .skip 23326380
v2:                                 # <int>
    .skip    4
v3:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
