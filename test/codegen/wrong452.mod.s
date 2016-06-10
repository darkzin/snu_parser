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
    #    -25(%ebp)   1  [ $t13      <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
    movl    $27139, %eax            #   0:     add    t8 <- 27139, 60227
    movl    $60227, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     sub    t9 <- t8, 60122
    movl    $60122, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     add    t10 <- t9, 58759
    movl    $58759, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t11 <- t10, 77608
    movl    $77608, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t12 <- t11, 16753
    movl    $16753, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     assign v3 <- t12
    movl    %eax, 16(%ebp)         
    call    dummyCHARfunc           #   6:     call   t13 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
l_f0_3_while_cond:
    call    dummyCHARfunc           #   8:     call   t14 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movl    $97, %eax               #   9:     if     97 > t14 goto 4_while_body
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_4_while_body      
    jmp     l_f0_2                  #  10:     goto   2
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #  12:     goto   3_while_cond
l_f0_2:

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
    #   -144(%ebp)   4  [ $t42      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t43      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t44      <int> %ebp-152 ]
    #   -153(%ebp)   1  [ $t45      <char> %ebp-153 ]
    #   -160(%ebp)   4  [ $t46      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t47      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t8       <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t9       <int> %ebp-172 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 3 of <array 1 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 8 of <array 9 of <array 3 of <array 1 of <int>>>>>>> %ebp+12 ]
    #   -176(%ebp)   4  [ $v3       <int> %ebp-176 ]
    #   -177(%ebp)   1  [ $v4       <char> %ebp-177 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $168, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $42, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $58838, %eax            #   0:     add    t8 <- 58838, 57448
    movl    $57448, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #   1:     sub    t9 <- t8, 71002
    movl    $71002, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #   2:     add    t10 <- t9, 20241
    movl    $20241, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     sub    t11 <- t10, 41764
    movl    $41764, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t12 <- t11, 62833
    movl    $62833, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $89246, %eax            #   5:     if     89246 > t12 goto 1_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   6:     goto   2_if_false
l_f1_1_if_true:
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $96343, %eax            #  11:     mul    t14 <- 96343, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     add    t15 <- t14, 79493
    movl    $79493, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  16:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  17:     add    t18 <- t17, 24150
    movl    $24150, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  21:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  22:     add    t21 <- t20, 53822
    movl    $53822, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  26:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  27:     add    t24 <- t23, 58980
    movl    $58980, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  28:     mul    t25 <- t24, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  29:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  30:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  31:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  32:     add    t28 <- v1, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $84384, %eax            #  33:     assign @t28 <- 84384
    movl    -88(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $2, %eax                #  34:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  36:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $5391, %eax             #  37:     mul    t30 <- 5391, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  38:     add    t31 <- t30, 86217
    movl    $86217, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $3, %eax                #  39:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  40:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  41:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  42:     mul    t33 <- t31, t32
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  43:     add    t34 <- t33, 35866
    movl    $35866, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $4, %eax                #  44:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  45:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  46:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  47:     mul    t36 <- t34, t35
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  48:     add    t37 <- t36, 89499
    movl    $89499, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $5, %eax                #  49:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  50:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  51:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  52:     mul    t39 <- t37, t38
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  53:     add    t40 <- t39, 2221
    movl    $2221, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  54:     mul    t41 <- t40, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    8(%ebp), %eax           #  55:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  56:     call   t42 <- DOFS
    addl    $4, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  57:     add    t43 <- t41, t42
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    8(%ebp), %eax           #  58:     add    t44 <- v1, t43
    movl    -148(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    $22346, %eax            #  59:     assign @t44 <- 22346
    movl    -152(%ebp), %edi       
    movl    %eax, (%edi)           
l_f1_7_while_cond:
    movl    $97, %eax               #  61:     if     97 > 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_8_while_body      
    jmp     l_f1_6                  #  62:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  64:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_0                  #  66:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  69:     call   t45 <- dummyCHARfunc
    movb    %al, -153(%ebp)        
    movzbl  -153(%ebp), %eax        #  70:     assign v4 <- t45
    movb    %al, -177(%ebp)        
    movl    $27311, %eax            #  71:     div    t46 <- 27311, 10069
    movl    $10069, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  72:     mul    t47 <- t46, 93541
    movl    $93541, %ebx           
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  73:     assign v3 <- t47
    movl    %eax, -176(%ebp)       

l_f1_exit:
    # epilogue
    addl    $168, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $v1       <int> %ebp-44 ]

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
    movl    $84392, %eax            #   0:     param  2 <- 84392
    pushl   %eax                   
    movl    $65734, %eax            #   1:     if     65734 <= 98210 goto 3
    movl    $98210, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_3                 
    jmp     l_f2_4                  #   2:     goto   4
l_f2_3:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_5                  #   5:     goto   5
l_f2_4:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f2_5:
    movzbl  -33(%ebp), %eax         #   9:     param  1 <- t8
    pushl   %eax                   
    movl    $2909, %eax             #  10:     div    t9 <- 2909, 94145
    movl    $94145, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  12:     call   t10 <- f0
    addl    $12, %esp              
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     if     t10 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #  14:     goto   2_if_false
l_f2_1_if_true:
    movl    $62371, %eax            #  16:     assign v1 <- 62371
    movl    %eax, -44(%ebp)        
    jmp     l_f2_exit              
    leal    _str_1, %eax            #  18:     &()    t11 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     param  0 <- t11
    pushl   %eax                   
    call    WriteStr                #  20:     call   WriteStr
    addl    $4, %esp               
l_f2_11_while_cond:
    movl    $0, %eax                #  22:     if     0 = 0 goto 12_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_12_while_body     
    jmp     l_f2_10                 #  23:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  25:     goto   11_while_cond
l_f2_10:
    movl    $98, %eax               #  27:     if     98 < 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  28:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 #  30:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  34:     call   t12 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f2_0                  #  35:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $67321, %eax            #  38:     if     67321 < 5861 goto 21_if_true
    movl    $5861, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_21_if_true        
    jmp     l_f2_22_if_false        #  39:     goto   22_if_false
l_f2_21_if_true:
    movl    $58807, %eax            #  41:     assign v1 <- 58807
    movl    %eax, -44(%ebp)        
    movl    $99, %eax               #  42:     if     99 # 100 goto 26_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_26_if_true        
    jmp     l_f2_27_if_false        #  43:     goto   27_if_false
l_f2_26_if_true:
    jmp     l_f2_25                 #  45:     goto   25
l_f2_27_if_false:
l_f2_25:
    jmp     l_f2_31_if_false        #  48:     goto   31_if_false
    jmp     l_f2_29                 #  49:     goto   29
l_f2_31_if_false:
l_f2_29:
    call    dummyINTfunc            #  52:     call   t13 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f2_20                 #  53:     goto   20
l_f2_22_if_false:
l_f2_20:
    call    ReadInt                 #  56:     call   t14 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  57:     assign v1 <- t14
    movl    %eax, -44(%ebp)        

l_f2_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-44 ]

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
    jmp     l_test_2                #   0:     goto   2
    jmp     l_test_2                #   1:     goto   2
    jmp     l_test_2                #   2:     goto   2
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
    call    ReadInt                 #  10:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    movl    $6636, %eax             #  12:     param  2 <- 6636
    pushl   %eax                   
    movl    $1, %eax                #  13:     param  1 <- 1
    pushl   %eax                   
    movl    $33006, %eax            #  14:     sub    t2 <- 33006, 71266
    movl    $71266, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     add    t3 <- t2, 91311
    movl    $91311, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     sub    t4 <- t3, 96451
    movl    $96451, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     add    t5 <- t4, 96758
    movl    $96758, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  19:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -37(%ebp)         
l_test_12_while_cond:
    jmp     l_test_11               #  21:     goto   11
    leal    _str_2, %eax            #  22:     &()    t7 <- _str_2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #  24:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_12_while_cond    #  26:     goto   12_while_cond
l_test_11:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
_str_2:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
