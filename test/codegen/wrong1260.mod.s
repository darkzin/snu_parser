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
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t17      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t18      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t19      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v1       <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $v2       <bool> %ebp-38 ]
    #    -44(%ebp)   4  [ $v3       <int> %ebp-44 ]

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
l_f0_1_while_cond:
    movl    $40325, %eax            #   1:     mul    t14 <- 40325, 78373
    movl    $78373, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t15 <- t14, 8668
    movl    $8668, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t15 = 85682 goto 2_while_body
    movl    $85682, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    movl    $98, %eax               #   6:     assign v1 <- 98
    movb    %al, -37(%ebp)         
    movl    $0, %eax                #   7:     assign v2 <- 0
    movb    %al, -38(%ebp)         
    call    ReadInt                 #   8:     call   t16 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $2504, %eax             #   9:     assign v3 <- 2504
    movl    %eax, -44(%ebp)        
    jmp     l_f0_10_if_false        #  10:     goto   10_if_false
    jmp     l_f0_8                  #  11:     goto   8
l_f0_10_if_false:
l_f0_8:
    call    dummyBOOLfunc           #  14:     call   t17 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_f0_1_while_cond       #  15:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_exit              
    call    dummyINTfunc            #  18:     call   t18 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    jmp     l_f0_12                 #  19:     goto   12
l_f0_12:
    call    ReadInt                 #  21:     call   t19 <- ReadInt
    movl    %eax, -36(%ebp)        

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t14      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t17      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t18      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t19      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t20      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t21      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t22      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t23      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t24      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t25      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t26      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t27      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t28      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t29      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t30      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t31      <char> %ebp-81 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 12 of <array 64 of <array 40 of <array 71 of <array 49 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 58 of <array 44 of <array 40 of <array 54 of <array 98 of <int>>>>>>> %ebp+20 ]

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
    movl    $100, %eax              #   0:     if     100 # 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   4:     goto   4
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_8_while_cond:
    call    dummyCHARfunc           #  11:     call   t14 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #  12:     if     97 >= t14 goto 9_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_9_while_body      
    jmp     l_f1_7                  #  13:     goto   7
l_f1_9_while_body:
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  16:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  17:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $18897, %eax            #  18:     mul    t16 <- 18897, t15
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t17 <- t16, 62145
    movl    $62145, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  21:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  22:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  23:     mul    t19 <- t17, t18
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t20 <- t19, 79832
    movl    $79832, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  26:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  27:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t22 <- t20, t21
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     add    t23 <- t22, 57331
    movl    $57331, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  31:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  32:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  33:     mul    t25 <- t23, t24
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  34:     add    t26 <- t25, 87449
    movl    $87449, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  35:     mul    t27 <- t26, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    20(%ebp), %eax          #  36:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  37:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  38:     add    t29 <- t27, t28
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    20(%ebp), %eax          #  39:     add    t30 <- v4, t29
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $26928, %eax            #  40:     assign @t30 <- 26928
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $100, %eax              #  41:     if     100 = 100 goto 13_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  42:     goto   14_if_false
l_f1_13_if_true:
    jmp     l_f1_12                 #  44:     goto   12
l_f1_14_if_false:
l_f1_12:
    movl    $100, %eax              #  47:     if     100 >= 99 goto 17_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  48:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  50:     goto   16
l_f1_18_if_false:
l_f1_16:
l_f1_21_while_cond:
    jmp     l_f1_20                 #  54:     goto   20
    jmp     l_f1_21_while_cond      #  55:     goto   21_while_cond
l_f1_20:
    movl    $98, %eax               #  57:     return 98
    jmp     l_f1_exit              
l_f1_25_while_cond:
    jmp     l_f1_24                 #  59:     goto   24
    jmp     l_f1_25_while_cond      #  60:     goto   25_while_cond
l_f1_24:
    jmp     l_f1_29_if_false        #  62:     goto   29_if_false
    jmp     l_f1_27                 #  63:     goto   27
l_f1_29_if_false:
l_f1_27:
    jmp     l_f1_8_while_cond       #  66:     goto   8_while_cond
l_f1_7:
    call    dummyCHARfunc           #  68:     call   t31 <- dummyCHARfunc
    movb    %al, -81(%ebp)         
    movzbl  -81(%ebp), %eax         #  69:     return t31
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t17      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t18      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t19      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t20      <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t21      <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t22      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t23      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t24      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t25      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t26      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t27      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t28      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t29      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t30      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t31      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t32      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t33      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t34      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t35      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t36      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t37      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t38      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t39      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t40      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t41      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t42      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t43      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t44      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t45      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t46      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t47      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t48      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t49      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t50      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t51      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t52      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t53      <int> %ebp-172 ]
    #   -173(%ebp)   1  [ $t54      <bool> %ebp-173 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 54 of <array 27 of <array 36 of <array 91 of <array 14 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 11 of <array 47 of <array 64 of <array 16 of <array 14 of <bool>>>>>>> %ebp+12 ]
    #   -174(%ebp)   1  [ $v3       <bool> %ebp-174 ]
    #   -180(%ebp)   4  [ $v4       <int> %ebp-180 ]

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
    movl    $215, %eax              #   0:     sub    t14 <- 215, 51770
    movl    $51770, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t15 <- t14, 96715
    movl    $96715, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t16 <- t15, 13599
    movl    $13599, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t17 <- t16, 12555
    movl    $12555, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t18 <- t17, 99956
    movl    $99956, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t19 <- t18, 18408
    movl    $18408, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     sub    t20 <- t19, 91990
    movl    $91990, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     return t20
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $26078, %eax            #   9:     if     26078 >= 15610 goto 3_while_body
    movl    $15610, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #  10:     goto   1
l_f2_3_while_body:
    movl    $95543, %eax            #  12:     if     95543 >= 74606 goto 6
    movl    $74606, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_6                 
    jmp     l_f2_7                  #  13:     goto   7
l_f2_6:
    movl    $1, %eax                #  15:     assign t21 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f2_8                  #  16:     goto   8
l_f2_7:
    movl    $0, %eax                #  18:     assign t21 <- 0
    movb    %al, -41(%ebp)         
l_f2_8:
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    $4869, %eax             #  23:     mul    t23 <- 4869, t22
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  24:     add    t24 <- t23, 52353
    movl    $52353, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  28:     mul    t26 <- t24, t25
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  29:     add    t27 <- t26, 56414
    movl    $56414, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  31:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  32:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  33:     mul    t29 <- t27, t28
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  34:     add    t30 <- t29, 84241
    movl    $84241, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  38:     mul    t32 <- t30, t31
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  39:     add    t33 <- t32, 80888
    movl    $80888, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  40:     mul    t34 <- t33, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    12(%ebp), %eax          #  41:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  42:     call   t35 <- DOFS
    addl    $4, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  43:     add    t36 <- t34, t35
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    12(%ebp), %eax          #  44:     add    t37 <- v2, t36
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movzbl  -41(%ebp), %eax         #  45:     assign @t37 <- t21
    movl    -108(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $2, %eax                #  46:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  47:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  48:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    $76302, %eax            #  49:     mul    t39 <- 76302, t38
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  50:     add    t40 <- t39, 1501
    movl    $1501, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $3, %eax                #  51:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  52:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  53:     call   t41 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  54:     mul    t42 <- t40, t41
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  55:     add    t43 <- t42, 78740
    movl    $78740, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $4, %eax                #  56:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  57:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  58:     call   t44 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  59:     mul    t45 <- t43, t44
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  60:     add    t46 <- t45, 87246
    movl    $87246, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $5, %eax                #  61:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  62:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  63:     call   t47 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  64:     mul    t48 <- t46, t47
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  65:     add    t49 <- t48, 72527
    movl    $72527, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  66:     mul    t50 <- t49, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -160(%ebp)       
    movl    8(%ebp), %eax           #  67:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  68:     call   t51 <- DOFS
    addl    $4, %esp               
    movl    %eax, -164(%ebp)       
    movl    -160(%ebp), %eax        #  69:     add    t52 <- t50, t51
    movl    -164(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    8(%ebp), %eax           #  70:     add    t53 <- v1, t52
    movl    -168(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    $95809, %eax            #  71:     assign @t53 <- 95809
    movl    -172(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_f2_2_while_cond       #  72:     goto   2_while_cond
l_f2_1:
    call    dummyBOOLfunc           #  74:     call   t54 <- dummyBOOLfunc
    movb    %al, -173(%ebp)        

l_f2_exit:
    # epilogue
    addl    $168, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 58 of <array 44 of <array 40 of <array 54 of <array 98 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 12 of <array 64 of <array 40 of <array 71 of <array 49 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 12 of <array 64 of <array 40 of <array 71 of <array 49 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t13      <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t2       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t3       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t4       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t5       <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t6       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t7       <ptr(4) to <array 58 of <array 44 of <array 40 of <array 54 of <array 98 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t8       <ptr(4) to <array 12 of <array 64 of <array 40 of <array 71 of <array 49 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t9       <ptr(4) to <array 58 of <array 44 of <array 40 of <array 54 of <array 98 of <int>>>>>>> %ebp-68 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $56, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    leal    v2, %eax                #   1:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  3 <- t0
    pushl   %eax                   
    leal    v1, %eax                #   3:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  2 <- t1
    pushl   %eax                   
    movl    $97, %eax               #   5:     param  1 <- 97
    pushl   %eax                   
    movl    $14616, %eax            #   6:     div    t2 <- 14616, 66897
    movl    $66897, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     mul    t3 <- t2, 26323
    movl    $26323, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     div    t4 <- t3, 6481
    movl    $6481, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   9:     sub    t5 <- t4, 39382
    movl    $39382, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  10:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  11:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -53(%ebp)         
    movl    $97, %eax               #  12:     if     97 > t6 goto 2_if_true
    movzbl  -53(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #  13:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_1                #  15:     goto   1
l_test_3_if_false:
l_test_1:
    leal    v2, %eax                #  18:     &()    t7 <- v2
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  19:     param  3 <- t7
    pushl   %eax                   
    leal    v1, %eax                #  20:     &()    t8 <- v1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  21:     param  2 <- t8
    pushl   %eax                   
    leal    v2, %eax                #  22:     &()    t9 <- v2
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  23:     param  3 <- t9
    pushl   %eax                   
    leal    v1, %eax                #  24:     &()    t10 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     param  2 <- t10
    pushl   %eax                   
    movl    $99, %eax               #  26:     param  1 <- 99
    pushl   %eax                   
    movl    $7762, %eax             #  27:     param  0 <- 7762
    pushl   %eax                   
    call    f1                      #  28:     call   t11 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  29:     param  1 <- t11
    pushl   %eax                   
    movl    $44817, %eax            #  30:     sub    t12 <- 44817, 50398
    movl    $50398, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     param  0 <- t12
    pushl   %eax                   
    call    f1                      #  32:     call   t13 <- f1
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  33:     assign v0 <- t13
    movb    %al, v0                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $56, %esp               # remove locals
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
v1:                                 # <array 12 of <array 64 of <array 40 of <array 71 of <array 49 of <char>>>>>>
    .long    5
    .long   12
    .long   64
    .long   40
    .long   71
    .long   49
    .skip 106874880
v2:                                 # <array 58 of <array 44 of <array 40 of <array 54 of <array 98 of <int>>>>>>
    .long    5
    .long   58
    .long   44
    .long   40
    .long   54
    .long   98
    .skip -2134137856








    # end of global data section
    #-----------------------------------------

    .end
##################################################
