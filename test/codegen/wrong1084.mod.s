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
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 48 of <array 39 of <array 52 of <array 14 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    movl    $70757, %eax            #   0:     add    t8 <- 70757, 39882
    movl    $39882, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     add    t9 <- t8, 58298
    movl    $58298, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     return t9
    jmp     l_f0_exit              
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
    movl    $19791, %eax            #   4:     mul    t10 <- 19791, 66319
    movl    $66319, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     assign v1 <- t10
    movl    %eax, 12(%ebp)         
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_9_while_cond:
    jmp     l_f0_8                  #  10:     goto   8
l_f0_12_while_cond:
    jmp     l_f0_12_while_cond      #  12:     goto   12_while_cond
    jmp     l_f0_9_while_cond       #  13:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_5                  #  15:     goto   5
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -73(%ebp)   1  [ $t25      <bool> %ebp-73 ]
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
    #   -136(%ebp)   4  [ $t40      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t41      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 87 of <array 45 of <array 58 of <array 89 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #   -149(%ebp)   1  [ $v3       <char> %ebp-149 ]

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
    call    dummyINTfunc            #   0:     call   t8 <- dummyINTfunc
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #   1:     assign v2 <- t8
    movl    %eax, 16(%ebp)         
    movl    $97, %eax               #   2:     if     97 < 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   6:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   7:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    $67264, %eax            #   8:     mul    t10 <- 67264, t9
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     add    t11 <- t10, 51599
    movl    $51599, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  12:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  13:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     add    t14 <- t13, 24363
    movl    $24363, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  18:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  19:     add    t17 <- t16, 24831
    movl    $24831, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  23:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  24:     add    t20 <- t19, 21284
    movl    $21284, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  25:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  27:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  28:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  29:     add    t24 <- v0, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $0, %eax                #  30:     assign @t24 <- 0
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_1                  #  31:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_7_while_cond:
    movl    $98, %eax               #  35:     if     98 >= 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #  36:     goto   6
l_f1_8_while_body:
    movl    $19487, %eax            #  38:     if     19487 # 22623 goto 11_if_true
    movl    $22623, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  39:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  41:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $99, %eax               #  44:     assign v3 <- 99
    movb    %al, -149(%ebp)        
    movl    $100, %eax              #  45:     return 100
    jmp     l_f1_exit              
    movl    $25600, %eax            #  46:     if     25600 < 25746 goto 17
    movl    $25746, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_17                
    jmp     l_f1_18                 #  47:     goto   18
l_f1_17:
    movl    $1, %eax                #  49:     assign t25 <- 1
    movb    %al, -73(%ebp)         
    jmp     l_f1_19                 #  50:     goto   19
l_f1_18:
    movl    $0, %eax                #  52:     assign t25 <- 0
    movb    %al, -73(%ebp)         
l_f1_19:
    movl    $2, %eax                #  54:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  55:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  56:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $59880, %eax            #  57:     mul    t27 <- 59880, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  58:     add    t28 <- t27, 34115
    movl    $34115, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  59:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  60:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  61:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  62:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  63:     add    t31 <- t30, 67763
    movl    $67763, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $4, %eax                #  64:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  65:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  66:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  67:     mul    t33 <- t31, t32
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  68:     add    t34 <- t33, 93042
    movl    $93042, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $5, %eax                #  69:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  70:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  71:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  72:     mul    t36 <- t34, t35
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  73:     add    t37 <- t36, 12186
    movl    $12186, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  74:     mul    t38 <- t37, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    8(%ebp), %eax           #  75:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  76:     call   t39 <- DOFS
    addl    $4, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  77:     add    t40 <- t38, t39
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    8(%ebp), %eax           #  78:     add    t41 <- v0, t40
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movzbl  -73(%ebp), %eax         #  79:     assign @t41 <- t25
    movl    -140(%ebp), %edi       
    movb    %al, (%edi)            
l_f1_22_while_cond:
    jmp     l_f1_21                 #  81:     goto   21
    jmp     l_f1_22_while_cond      #  82:     goto   22_while_cond
l_f1_21:
    movl    $99, %eax               #  84:     return 99
    jmp     l_f1_exit              
l_f1_26_while_cond:
    jmp     l_f1_26_while_cond      #  86:     goto   26_while_cond
    movl    $100, %eax              #  87:     assign v3 <- 100
    movb    %al, -149(%ebp)        
l_f1_30_while_cond:
    movl    $48323, %eax            #  89:     if     48323 >= 78966 goto 31_while_body
    movl    $78966, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_31_while_body     
    jmp     l_f1_29                 #  90:     goto   29
l_f1_31_while_body:
    jmp     l_f1_30_while_cond      #  92:     goto   30_while_cond
l_f1_29:
    movl    $98, %eax               #  94:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_7_while_cond       #  95:     goto   7_while_cond
l_f1_6:

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
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 4 of <array 87 of <array 45 of <array 58 of <array 89 of <bool>>>>>>> %ebp-84 ]
    #    -85(%ebp)   1  [ $t28      <char> %ebp-85 ]
    #    -86(%ebp)   1  [ $t29      <bool> %ebp-86 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 76 of <array 8 of <array 69 of <array 76 of <array 73 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 57 of <array 49 of <array 77 of <array 62 of <array 19 of <int>>>>>>> %ebp+12 ]
    #    -97(%ebp)   1  [ $v2       <char> %ebp-97 ]
    #   -104(%ebp)   4  [ $v3       <int> %ebp-104 ]
    #   -80837048(%ebp)  80836944  [ $v4       <array 4 of <array 87 of <array 45 of <array 58 of <array 89 of <bool>>>>>> %ebp-80837048 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80837036, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20209259, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-80837048(%ebp)      # local array 'v4': 5 dimensions
    movl    $4,-80837044(%ebp)      #   dimension 1: 4 elements
    movl    $87,-80837040(%ebp)     #   dimension 2: 87 elements
    movl    $45,-80837036(%ebp)     #   dimension 3: 45 elements
    movl    $58,-80837032(%ebp)     #   dimension 4: 58 elements
    movl    $89,-80837028(%ebp)     #   dimension 5: 89 elements

    # function body
    movl    $100, %eax              #   0:     assign v2 <- 100
    movb    %al, -97(%ebp)         
    movl    $9516, %eax             #   1:     add    t8 <- 9516, 3162
    movl    $3162, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $78841, %eax            #   2:     sub    t9 <- 78841, 60476
    movl    $60476, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   4:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   5:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -96(%ebp), %eax         #   6:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     add    t12 <- t11, 25
    movl    $25, %ebx              
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  11:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     add    t15 <- t14, 93364
    movl    $93364, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  16:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  17:     add    t18 <- t17, 54893
    movl    $54893, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  21:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  22:     add    t21 <- t20, 73397
    movl    $73397, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  23:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  25:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  26:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  27:     add    t25 <- v1, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -92(%ebp), %eax         #  28:     assign @t25 <- t8
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $74802, %eax            #  29:     param  2 <- 74802
    pushl   %eax                   
    jmp     l_f2_8                  #  30:     goto   8
    jmp     l_f2_8                  #  31:     goto   8
    jmp     l_f2_8                  #  32:     goto   8
    jmp     l_f2_8                  #  33:     goto   8
    movl    $1, %eax                #  34:     assign t26 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f2_9                  #  35:     goto   9
l_f2_8:
    movl    $0, %eax                #  37:     assign t26 <- 0
    movb    %al, -77(%ebp)         
l_f2_9:
    movzbl  -77(%ebp), %eax         #  39:     param  1 <- t26
    pushl   %eax                   
    leal    -80837048(%ebp), %eax   #  40:     &()    t27 <- v4
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  41:     param  0 <- t27
    pushl   %eax                   
    call    f1                      #  42:     call   t28 <- f1
    addl    $12, %esp              
    movb    %al, -85(%ebp)         
    movl    $99, %eax               #  43:     if     99 >= t28 goto 3
    movzbl  -85(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_3                 
    jmp     l_f2_4                  #  44:     goto   4
l_f2_3:
    movl    $1, %eax                #  46:     assign t29 <- 1
    movb    %al, -86(%ebp)         
    jmp     l_f2_5                  #  47:     goto   5
l_f2_4:
    movl    $0, %eax                #  49:     assign t29 <- 0
    movb    %al, -86(%ebp)         
l_f2_5:
    movzbl  -86(%ebp), %eax         #  51:     return t29
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $80837036, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 57 of <array 49 of <array 77 of <array 62 of <array 19 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 76 of <array 8 of <array 69 of <array 76 of <array 73 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 87 of <array 45 of <array 58 of <array 89 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <char> %ebp-30 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]

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
    jmp     l_test_exit            
    movl    $73267, %eax            #   1:     param  2 <- 73267
    pushl   %eax                   
    movl    $1, %eax                #   2:     if     1 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2               
    leal    v2, %eax                #   3:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  1 <- t0
    pushl   %eax                   
    leal    v1, %eax                #   5:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #   7:     call   t2 <- f2
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   8:     if     t2 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2               
    jmp     l_test_3                #   9:     goto   3
l_test_2:
    movl    $1, %eax                #  11:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_4                #  12:     goto   4
l_test_3:
    movl    $0, %eax                #  14:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_4:
    movzbl  -22(%ebp), %eax         #  16:     param  1 <- t3
    pushl   %eax                   
    leal    v0, %eax                #  17:     &()    t4 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  19:     call   t5 <- f1
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    call    dummyCHARfunc           #  20:     call   t6 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    call    ReadInt                 #  21:     call   t7 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     assign v3 <- t7
    movl    %eax, v3               

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
v0:                                 # <array 4 of <array 87 of <array 45 of <array 58 of <array 89 of <bool>>>>>>
    .long    5
    .long    4
    .long   87
    .long   45
    .long   58
    .long   89
    .skip 80836920
v1:                                 # <array 76 of <array 8 of <array 69 of <array 76 of <array 73 of <int>>>>>>
    .long    5
    .long   76
    .long    8
    .long   69
    .long   76
    .long   73
    .skip 930998784
v2:                                 # <array 57 of <array 49 of <array 77 of <array 62 of <array 19 of <int>>>>>>
    .long    5
    .long   57
    .long   49
    .long   77
    .long   62
    .long   19
    .skip 1013367432
v3:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
