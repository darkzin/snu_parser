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
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -121(%ebp)   1  [ $t36      <bool> %ebp-121 ]
    #   -122(%ebp)   1  [ $t37      <bool> %ebp-122 ]
    #   -128(%ebp)   4  [ $t4       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t5       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t6       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 1 of <array 6 of <array 10 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 10 of <array 10 of <array 10 of <array 1 of <char>>>>>>> %ebp+16 ]
    #   -152(%ebp)   4  [ $v4       <int> %ebp-152 ]
    #   -153(%ebp)   1  [ $v5       <bool> %ebp-153 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $144, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $36, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     return 99
    jmp     l_f0_exit              
    movl    $73659, %eax            #   1:     if     73659 > 73874 goto 5_if_true
    movl    $73874, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   2:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $0, %eax                #   7:     if     0 = 0 goto 9_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #   8:     goto   10_if_false
l_f0_9_if_true:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $387, %eax              #  13:     mul    t4 <- 387, t3
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  14:     add    t5 <- t4, 7382
    movl    $7382, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  18:     mul    t7 <- t5, t6
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  19:     add    t8 <- t7, 12502
    movl    $12502, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  23:     mul    t10 <- t8, t9
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  24:     add    t11 <- t10, 9915
    movl    $9915, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  28:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     add    t14 <- t13, 80302
    movl    $80302, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  33:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  34:     add    t18 <- v1, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $82595, %eax            #  35:     assign @t18 <- 82595
    movl    -48(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $2, %eax                #  36:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  37:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  38:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $84392, %eax            #  39:     mul    t20 <- 84392, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  40:     add    t21 <- t20, 75071
    movl    $75071, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #  41:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  42:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  43:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  44:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  45:     add    t24 <- t23, 18231
    movl    $18231, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4, %eax                #  46:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  47:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  48:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  49:     mul    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  50:     add    t27 <- t26, 71184
    movl    $71184, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $5, %eax                #  51:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  52:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  53:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  54:     mul    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  55:     add    t30 <- t29, 67934
    movl    $67934, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  56:     mul    t31 <- t30, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    8(%ebp), %eax           #  57:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  58:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  59:     add    t33 <- t31, t32
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    8(%ebp), %eax           #  60:     add    t34 <- v1, t33
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $57585, %eax            #  61:     assign @t34 <- 57585
    movl    -116(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $99, %eax               #  62:     return 99
    jmp     l_f0_exit              
    movl    $12121, %eax            #  63:     assign v4 <- 12121
    movl    %eax, -152(%ebp)       
    movl    $0, %eax                #  64:     assign v5 <- 0
    movb    %al, -153(%ebp)        
l_f0_18_while_cond:
    jmp     l_f0_17                 #  66:     goto   17
    jmp     l_f0_18_while_cond      #  67:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_8                  #  69:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_0                  #  72:     goto   0
l_f0_0:
    movl    $52613, %eax            #  74:     if     52613 < 16850 goto 21_if_true
    movl    $16850, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_21_if_true        
    jmp     l_f0_22_if_false        #  75:     goto   22_if_false
l_f0_21_if_true:
    call    dummyINTfunc            #  77:     call   t35 <- dummyINTfunc
    movl    %eax, -120(%ebp)       
    call    dummyBOOLfunc           #  78:     call   t36 <- dummyBOOLfunc
    movb    %al, -121(%ebp)        
    jmp     l_f0_20                 #  79:     goto   20
l_f0_22_if_false:
l_f0_20:
    movl    $100, %eax              #  82:     if     100 <= 98 goto 27
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_27                
    jmp     l_f0_28                 #  83:     goto   28
l_f0_27:
    movl    $1, %eax                #  85:     assign t37 <- 1
    movb    %al, -122(%ebp)        
    jmp     l_f0_29                 #  86:     goto   29
l_f0_28:
    movl    $0, %eax                #  88:     assign t37 <- 0
    movb    %al, -122(%ebp)        
l_f0_29:
    movzbl  -122(%ebp), %eax        #  90:     assign v5 <- t37
    movb    %al, -153(%ebp)        

l_f0_exit:
    # epilogue
    addl    $144, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 9 of <array 10 of <array 10 of <array 10 of <array 1 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 1 of <array 6 of <array 10 of <array 2 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 3 of <array 1 of <array 9 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 2 of <array 10 of <array 7 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -3408(%ebp)  3384  [ $v5       <array 7 of <array 1 of <array 6 of <array 10 of <array 2 of <int>>>>>> %ebp-3408 ]
    #   -12432(%ebp)  9024  [ $v6       <array 9 of <array 10 of <array 10 of <array 10 of <array 1 of <char>>>>>> %ebp-12432 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12420, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3105, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3408(%ebp)          # local array 'v5': 5 dimensions
    movl    $7,-3404(%ebp)          #   dimension 1: 7 elements
    movl    $1,-3400(%ebp)          #   dimension 2: 1 elements
    movl    $6,-3396(%ebp)          #   dimension 3: 6 elements
    movl    $10,-3392(%ebp)         #   dimension 4: 10 elements
    movl    $2,-3388(%ebp)          #   dimension 5: 2 elements
    movl    $5,-12432(%ebp)         # local array 'v6': 5 dimensions
    movl    $9,-12428(%ebp)         #   dimension 1: 9 elements
    movl    $10,-12424(%ebp)        #   dimension 2: 10 elements
    movl    $10,-12420(%ebp)        #   dimension 3: 10 elements
    movl    $10,-12416(%ebp)        #   dimension 4: 10 elements
    movl    $1,-12412(%ebp)         #   dimension 5: 1 elements

    # function body
    leal    -12432(%ebp), %eax      #   0:     &()    t3 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t3
    pushl   %eax                   
    movl    $97, %eax               #   2:     param  1 <- 97
    pushl   %eax                   
    leal    -3408(%ebp), %eax       #   3:     &()    t4 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   5:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_1                  #   7:     goto   1
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_7_if_true          #  10:     goto   7_if_true
    jmp     l_f1_7_if_true          #  11:     goto   7_if_true
    jmp     l_f1_8_if_false         #  12:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  14:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $12420, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 9 of <array 2 of <array 10 of <array 7 of <array 3 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 3 of <array 1 of <array 9 of <array 8 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 7 of <array 2 of <array 1 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #   -480(%ebp)  456  [ $v3       <array 2 of <array 3 of <array 1 of <array 9 of <array 8 of <char>>>>>> %ebp-480 ]
    #   -4284(%ebp)  3804  [ $v4       <array 9 of <array 2 of <array 10 of <array 7 of <array 3 of <bool>>>>>> %ebp-4284 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4272, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1068, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-480(%ebp)           # local array 'v3': 5 dimensions
    movl    $2,-476(%ebp)           #   dimension 1: 2 elements
    movl    $3,-472(%ebp)           #   dimension 2: 3 elements
    movl    $1,-468(%ebp)           #   dimension 3: 1 elements
    movl    $9,-464(%ebp)           #   dimension 4: 9 elements
    movl    $8,-460(%ebp)           #   dimension 5: 8 elements
    movl    $5,-4284(%ebp)          # local array 'v4': 5 dimensions
    movl    $9,-4280(%ebp)          #   dimension 1: 9 elements
    movl    $2,-4276(%ebp)          #   dimension 2: 2 elements
    movl    $10,-4272(%ebp)         #   dimension 3: 10 elements
    movl    $7,-4268(%ebp)          #   dimension 4: 7 elements
    movl    $3,-4264(%ebp)          #   dimension 5: 3 elements

    # function body
    movl    $61358, %eax            #   0:     param  3 <- 61358
    pushl   %eax                   
    leal    -4284(%ebp), %eax       #   1:     &()    t3 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t3
    pushl   %eax                   
    movl    $0, %eax                #   3:     param  1 <- 0
    pushl   %eax                   
    leal    -480(%ebp), %eax        #   4:     &()    t4 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #   6:     call   t5 <- f1
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
l_f2_2_while_cond:
    jmp     l_f2_4                  #   8:     goto   4
l_f2_4:
    jmp     l_f2_2_while_cond       #  10:     goto   2_while_cond
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_6                  #  14:     goto   6
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $4272, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
    movl    $60918, %eax            #   0:     add    t0 <- 60918, 65371
    movl    $65371, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t0 = 94932 goto 1
    movl    $94932, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_8_if_false       #  11:     goto   8_if_false
    jmp     l_test_11_if_false      #  12:     goto   11_if_false
    jmp     l_test_9                #  13:     goto   9
l_test_11_if_false:
l_test_9:
l_test_13_while_cond:
    jmp     l_test_13_while_cond    #  17:     goto   13_while_cond
l_test_16_while_cond:
    movl    $22919, %eax            #  19:     if     22919 <= 50233 goto 17_while_body
    movl    $50233, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_17_while_body   
    jmp     l_test_15               #  20:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  22:     goto   16_while_cond
l_test_15:
    jmp     l_test_6                #  24:     goto   6
l_test_8_if_false:
l_test_6:
    call    dummyBOOLfunc           #  27:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
