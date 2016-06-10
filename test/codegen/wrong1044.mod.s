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
    #    -53(%ebp)   1  [ $t3       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 71 of <array 1 of <array 29 of <array 5 of <array 50 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 89 of <array 91 of <array 91 of <array 13 of <char>>>>>>> %ebp+12 ]
    #    -81(%ebp)   1  [ $v2       <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $v3       <char> %ebp-82 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $97, %eax               #   2:     if     97 <= 100 goto 4
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_4                 
    jmp     l_f0_5                  #   3:     goto   5
l_f0_4:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f0_6                  #   6:     goto   6
l_f0_5:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -53(%ebp)         
l_f0_6:
    movzbl  -53(%ebp), %eax         #  10:     assign v2 <- t3
    movb    %al, -81(%ebp)         
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #  12:     goto   9_while_cond
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_12_if_true         #  15:     goto   12_if_true
    jmp     l_f0_12_if_true         #  16:     goto   12_if_true
    jmp     l_f0_13_if_false        #  17:     goto   13_if_false
l_f0_12_if_true:
l_f0_18_while_cond:
    jmp     l_f0_18_while_cond      #  20:     goto   18_while_cond
l_f0_21_while_cond:
    jmp     l_f0_20                 #  22:     goto   20
    jmp     l_f0_21_while_cond      #  23:     goto   21_while_cond
l_f0_20:
    jmp     l_f0_11                 #  25:     goto   11
l_f0_13_if_false:
l_f0_11:
    movl    $100, %eax              #  28:     if     100 < 98 goto 24_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_24_if_true        
    jmp     l_f0_25_if_false        #  29:     goto   25_if_false
l_f0_24_if_true:
    jmp     l_f0_exit              
    movl    $2, %eax                #  32:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  33:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  34:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $30077, %eax            #  35:     mul    t5 <- 30077, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  36:     add    t6 <- t5, 21684
    movl    $21684, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  37:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  38:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  39:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  40:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  41:     add    t9 <- t8, 95303
    movl    $95303, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  42:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  43:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  44:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  45:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  46:     add    t12 <- t11, 32242
    movl    $32242, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  47:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  48:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  49:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  50:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  51:     add    t15 <- t14, 98837
    movl    $98837, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  52:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  53:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  54:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  55:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  56:     add    t19 <- v1, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $100, %eax              #  57:     assign @t19 <- 100
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_23                 #  58:     goto   23
l_f0_25_if_false:
l_f0_23:

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
    #    -53(%ebp)   1  [ $t20      <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t36      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t37      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t38      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t39      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t4       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t40      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t41      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t5       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t6       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t7       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t8       <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t9       <int> %ebp-168 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 58 of <array 2 of <array 20 of <array 48 of <array 81 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 76 of <array 52 of <array 31 of <array 100 of <bool>>>>>>> %ebp+12 ]
    #   -172(%ebp)   4  [ $v2       <int> %ebp-172 ]
    #   -173(%ebp)   1  [ $v3       <bool> %ebp-173 ]

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
    movl    $29212, %eax            #   0:     sub    t3 <- 29212, 4716
    movl    $4716, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   2:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   3:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    $40328, %eax            #   4:     mul    t5 <- 40328, t4
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #   5:     add    t6 <- t5, 82105
    movl    $82105, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   8:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -160(%ebp)       
    movl    -156(%ebp), %eax        #   9:     mul    t8 <- t6, t7
    movl    -160(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  10:     add    t9 <- t8, 88349
    movl    $88349, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  13:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -168(%ebp), %eax        #  14:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t12 <- t11, 2592
    movl    $2592, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  19:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     add    t15 <- t14, 91347
    movl    $91347, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     mul    t16 <- t15, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  23:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  24:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  25:     add    t19 <- v0, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -96(%ebp), %eax         #  26:     assign @t19 <- t3
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $3558, %eax             #  27:     if     3558 # 20284 goto 2
    movl    $20284, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_2                 
    jmp     l_f1_3                  #  28:     goto   3
l_f1_2:
    movl    $1, %eax                #  30:     assign t20 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f1_4                  #  31:     goto   4
l_f1_3:
    movl    $0, %eax                #  33:     assign t20 <- 0
    movb    %al, -53(%ebp)         
l_f1_4:
    call    dummyINTfunc            #  35:     call   t21 <- dummyINTfunc
    movl    %eax, -60(%ebp)        
    movl    $2, %eax                #  36:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  37:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  38:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  39:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  40:     add    t24 <- t23, 12879
    movl    $12879, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  41:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  42:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  43:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  44:     mul    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    $40704, %eax            #  45:     mul    t27 <- 40704, 27529
    movl    $27529, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  46:     add    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  47:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  48:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  49:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  50:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  51:     add    t31 <- t30, 90157
    movl    $90157, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $5, %eax                #  52:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  53:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  54:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  55:     mul    t33 <- t31, t32
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  56:     add    t34 <- t33, 58482
    movl    $58482, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  57:     mul    t35 <- t34, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    12(%ebp), %eax          #  58:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  59:     call   t36 <- DOFS
    addl    $4, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  60:     add    t37 <- t35, t36
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    12(%ebp), %eax          #  61:     add    t38 <- v1, t37
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movzbl  -53(%ebp), %eax         #  62:     assign @t38 <- t20
    movl    -132(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $74343, %eax            #  63:     mul    t39 <- 74343, 65076
    movl    $65076, %ebx           
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  64:     add    t40 <- t39, 44670
    movl    $44670, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  65:     add    t41 <- t40, 2570
    movl    $2570, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  66:     return t41
    jmp     l_f1_exit              

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
    jmp     l_f2_4_if_false         #   2:     goto   4_if_false
    jmp     l_f2_exit              
    jmp     l_f2_2                  #   4:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   2:     if     98 > t1 goto 2_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
    movl    $85859, %eax            #   9:     assign v0 <- 85859
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  12:     goto   11_while_cond
    leal    _str_1, %eax            #  13:     &()    t2 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  15:     call   WriteStr
    addl    $4, %esp               
    movl    $99, %eax               #  16:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_exit            
l_test_17_while_cond:
    jmp     l_test_16               #  19:     goto   16
    jmp     l_test_17_while_cond    #  20:     goto   17_while_cond
l_test_16:
    movl    $0, %eax                #  22:     assign v2 <- 0
    movb    %al, v2                
    call    dummyProcedure          #  23:     call   dummyProcedure
l_test_22_while_cond:
    jmp     l_test_21               #  25:     goto   21
    jmp     l_test_22_while_cond    #  26:     goto   22_while_cond
l_test_21:
    jmp     l_test_exit            
    movl    $96901, %eax            #  29:     assign v0 <- 96901
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_28_while_cond:
    movl    $45462, %eax            #  32:     if     45462 >= 42551 goto 29_while_body
    movl    $42551, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_29_while_body   
    jmp     l_test_27               #  33:     goto   27
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  35:     goto   28_while_cond
l_test_27:
    jmp     l_test_exit            
l_test_33_while_cond:
    movl    $0, %eax                #  39:     if     0 = 0 goto 34_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_34_while_body   
    jmp     l_test_32               #  40:     goto   32
l_test_34_while_body:
    jmp     l_test_33_while_cond    #  42:     goto   33_while_cond
l_test_32:
    jmp     l_test_5                #  44:     goto   5
l_test_7_if_false:
l_test_5:
l_test_37_while_cond:
    jmp     l_test_36               #  48:     goto   36
    jmp     l_test_36               #  49:     goto   36
    jmp     l_test_37_while_cond    #  50:     goto   37_while_cond
l_test_36:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
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
