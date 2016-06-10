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
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t3       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t31      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t32      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t33      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t34      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t35      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t36      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t37      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t38      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t39      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t4       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t40      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t41      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t5       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t6       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t7       <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t8       <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t9       <int> %ebp-172 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 78 of <array 71 of <array 72 of <array 17 of <array 20 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 57 of <array 54 of <array 69 of <array 35 of <array 32 of <char>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $160, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $40, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   3:     goto   5_while_cond
l_f0_8_while_cond:
    jmp     l_f0_8_while_cond       #   5:     goto   8_while_cond
l_f0_11_while_cond:
    jmp     l_f0_11_while_cond      #   7:     goto   11_while_cond
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   9:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  10:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    $34480, %eax            #  11:     mul    t4 <- 34480, t3
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  12:     add    t5 <- t4, 47941
    movl    $47941, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  14:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  15:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -160(%ebp)       
    movl    -156(%ebp), %eax        #  16:     mul    t7 <- t5, t6
    movl    -160(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  17:     add    t8 <- t7, 76483
    movl    $76483, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  19:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  20:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -172(%ebp)       
    movl    -168(%ebp), %eax        #  21:     mul    t10 <- t8, t9
    movl    -172(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     add    t11 <- t10, 33076
    movl    $33076, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  24:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  25:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  26:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t14 <- t13, 55554
    movl    $55554, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    20(%ebp), %eax          #  29:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  30:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    20(%ebp), %eax          #  32:     add    t18 <- v4, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $98, %eax               #  33:     assign @t18 <- 98
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_15_while_cond:
    jmp     l_f0_15_while_cond      #  35:     goto   15_while_cond
    jmp     l_f0_0                  #  36:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $27002, %eax            #  39:     sub    t19 <- 27002, 27335
    movl    $27335, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  40:     add    t20 <- t19, 77316
    movl    $77316, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  41:     add    t21 <- t20, 90081
    movl    $90081, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $2, %eax                #  42:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  43:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  44:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  45:     mul    t23 <- t21, t22
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  46:     add    t24 <- t23, 82422
    movl    $82422, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  47:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  48:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  49:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  50:     mul    t26 <- t24, t25
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  51:     add    t27 <- t26, 79883
    movl    $79883, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  52:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  53:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  54:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  55:     mul    t29 <- t27, t28
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  56:     add    t30 <- t29, 98667
    movl    $98667, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $5, %eax                #  57:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  58:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  59:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  60:     mul    t32 <- t30, t31
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  61:     add    t33 <- t32, 95932
    movl    $95932, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  62:     mul    t34 <- t33, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    20(%ebp), %eax          #  63:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  64:     call   t35 <- DOFS
    addl    $4, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  65:     add    t36 <- t34, t35
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    20(%ebp), %eax          #  66:     add    t37 <- v4, t36
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $97, %eax               #  67:     assign @t37 <- 97
    movl    -132(%ebp), %edi       
    movb    %al, (%edi)            
l_f0_19_while_cond:
    movl    $8812, %eax             #  69:     sub    t38 <- 8812, 20184
    movl    $20184, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  70:     sub    t39 <- t38, 74140
    movl    $74140, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $26068, %eax            #  71:     sub    t40 <- 26068, 28344
    movl    $28344, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  72:     add    t41 <- t40, 27590
    movl    $27590, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    -140(%ebp), %eax        #  73:     if     t39 <= t41 goto 20_while_body
    movl    -152(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jle     l_f0_20_while_body     
    jmp     l_f0_18                 #  74:     goto   18
l_f0_20_while_body:
    jmp     l_f0_19_while_cond      #  76:     goto   19_while_cond
l_f0_18:

l_f0_exit:
    # epilogue
    addl    $160, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 33 of <array 10 of <array 5 of <array 14 of <array 72 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 24 of <array 28 of <array 23 of <array 13 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 34 of <array 88 of <array 46 of <array 41 of <array 43 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #    -17(%ebp)   1  [ $v5       <bool> %ebp-17 ]

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
    movl    $100, %eax              #   0:     if     100 < 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $99, %eax               #   3:     return 99
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    ReadInt                 #   7:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_8_if_false         #   8:     goto   8_if_false
    jmp     l_f1_9                  #   9:     goto   9
l_f1_9:
    movl    $99, %eax               #  11:     if     99 <= 100 goto 13_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  12:     goto   14_if_false
l_f1_13_if_true:
    jmp     l_f1_12                 #  14:     goto   12
l_f1_14_if_false:
l_f1_12:
    movl    $0, %eax                #  17:     assign v5 <- 0
    movb    %al, -17(%ebp)         
    jmp     l_f1_6                  #  18:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 75 of <array 93 of <array 26 of <array 88 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 50 of <array 1 of <array 35 of <array 99 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    movl    $41795, %eax            #   0:     add    t2 <- 41795, 575
    movl    $575, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $75885, %eax            #   1:     if     75885 # t2 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $35216, %eax            #   4:     if     35216 > 91765 goto 5_if_true
    movl    $91765, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $0, %eax                #  10:     if     0 # 1 goto 9_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  11:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  13:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_0                  #  16:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #  19:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #  20:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    movl    $89258, %eax            #   0:     assign v0 <- 89258
    movl    %eax, v0               
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
l_test_5_while_cond:
    jmp     l_test_4                #   3:     goto   4
    jmp     l_test_5_while_cond     #   4:     goto   5_while_cond
l_test_4:
    movl    $79178, %eax            #   6:     assign v0 <- 79178
    movl    %eax, v0               
    jmp     l_test_1                #   7:     goto   1
l_test_3_if_false:
l_test_1:
    call    ReadInt                 #  10:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #  11:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

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
