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
    #    -73(%ebp)   1  [ $t7       <bool> %ebp-73 ]
    #    -74(%ebp)   1  [ $t8       <bool> %ebp-74 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 94 of <array 82 of <array 97 of <array 93 of <array 74 of <int>>>>>>> %ebp+8 ]
    #    -81(%ebp)   1  [ $v2       <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $v3       <int> %ebp-88 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     if     99 > 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t7 <- 1
    movb    %al, -73(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t7 <- 0
    movb    %al, -73(%ebp)         
l_f0_3:
    movzbl  -73(%ebp), %eax         #   8:     assign v2 <- t7
    movb    %al, -81(%ebp)         
    movl    $99, %eax               #   9:     if     99 < 100 goto 6
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_6                 
    jmp     l_f0_7                  #  10:     goto   7
l_f0_6:
    movl    $1, %eax                #  12:     assign t8 <- 1
    movb    %al, -74(%ebp)         
    jmp     l_f0_8                  #  13:     goto   8
l_f0_7:
    movl    $0, %eax                #  15:     assign t8 <- 0
    movb    %al, -74(%ebp)         
l_f0_8:
    movzbl  -74(%ebp), %eax         #  17:     assign v2 <- t8
    movb    %al, -81(%ebp)         
    jmp     l_f0_11_if_true         #  18:     goto   11_if_true
l_f0_11_if_true:
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $94053, %eax            #  23:     mul    t10 <- 94053, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  24:     add    t11 <- t10, 70764
    movl    $70764, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
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
    movl    -28(%ebp), %eax         #  29:     add    t14 <- t13, 61435
    movl    $61435, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  33:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     add    t17 <- t16, 47024
    movl    $47024, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  37:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  38:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  39:     add    t20 <- t19, 93898
    movl    $93898, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  40:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  41:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  42:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  43:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  44:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $73796, %eax            #  45:     assign @t24 <- 73796
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $71271, %eax            #  46:     assign v3 <- 71271
    movl    %eax, -88(%ebp)        
    movl    $40139, %eax            #  47:     param  0 <- 40139
    pushl   %eax                   
    call    WriteInt                #  48:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_10                 #  49:     goto   10
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t13      <ptr(4) to <array 94 of <array 82 of <array 97 of <array 93 of <array 74 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <ptr(4) to <array 94 of <array 82 of <array 97 of <array 93 of <array 74 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <ptr(4) to <array 94 of <array 82 of <array 97 of <array 93 of <array 74 of <int>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t29      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t30      <ptr(4) to <array 94 of <array 82 of <array 97 of <array 93 of <array 74 of <int>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t31      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t32      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t33      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t34      <ptr(4) to <array 94 of <array 82 of <array 97 of <array 93 of <array 74 of <int>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t35      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t36      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t37      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t38      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t39      <ptr(4) to <array 94 of <array 82 of <array 97 of <array 93 of <array 74 of <int>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t40      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t41      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t42      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <ptr(4) to <array 94 of <array 82 of <array 97 of <array 93 of <array 74 of <int>>>>>>> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #   892811380(%ebp)  -892811528  [ $v1       <array 94 of <array 82 of <array 97 of <array 93 of <array 74 of <int>>>>>> %ebp+892811380 ]
    #   892811376(%ebp)   4  [ $v2       <int> %ebp+892811376 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-892811388, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-223202847, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,892811380(%ebp)      # local array 'v1': 5 dimensions
    movl    $94,892811384(%ebp)     #   dimension 1: 94 elements
    movl    $82,892811388(%ebp)     #   dimension 2: 82 elements
    movl    $97,892811392(%ebp)     #   dimension 3: 97 elements
    movl    $93,892811396(%ebp)     #   dimension 4: 93 elements
    movl    $74,892811400(%ebp)     #   dimension 5: 74 elements

    # function body
    movl    $13520, %eax            #   0:     if     13520 >= 26187 goto 1_if_true
    movl    $26187, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    leal    892811380(%ebp), %eax   #   3:     &()    t7 <- v1
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #   4:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #   5:     call   t8 <- f0
    addl    $4, %esp               
    movl    %eax, -144(%ebp)       
l_f1_6_while_cond:
    movl    $59770, %eax            #   7:     if     59770 >= 67382 goto 7_while_body
    movl    $67382, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7_while_body      
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  10:     goto   6_while_cond
l_f1_5:
    movl    $36286, %eax            #  12:     if     36286 < 18217 goto 10_if_true
    movl    $18217, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  13:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  15:     goto   9
l_f1_11_if_false:
l_f1_9:
    call    ReadInt                 #  18:     call   t9 <- ReadInt
    movl    %eax, -148(%ebp)       
    call    dummyCHARfunc           #  19:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  20:     return 98
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  21:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #  22:     if     97 > 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  23:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  25:     goto   17
l_f1_19_if_false:
l_f1_17:
    movl    $99, %eax               #  28:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  29:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_0                  #  30:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $100, %eax              #  33:     if     100 # 99 goto 23_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  34:     goto   24_if_false
l_f1_23_if_true:
    call    dummyBOOLfunc           #  36:     call   t12 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
l_f1_28_while_cond:
    movl    $1460, %eax             #  38:     if     1460 >= 16000 goto 29_while_body
    movl    $16000, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_29_while_body     
    jmp     l_f1_27                 #  39:     goto   27
l_f1_29_while_body:
    jmp     l_f1_28_while_cond      #  41:     goto   28_while_cond
l_f1_27:
    jmp     l_f1_22                 #  43:     goto   22
l_f1_24_if_false:
l_f1_22:
    leal    892811380(%ebp), %eax   #  46:     &()    t13 <- v1
    movl    %eax, -20(%ebp)        
    movl    $13521, %eax            #  47:     mul    t14 <- 13521, 89130
    movl    $89130, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  48:     param  1 <- 2
    pushl   %eax                   
    leal    892811380(%ebp), %eax   #  49:     &()    t15 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  50:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  51:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  52:     mul    t17 <- t14, t16
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $97806, %eax            #  53:     add    t18 <- 97806, 47942
    movl    $47942, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  54:     sub    t19 <- t18, 4300
    movl    $4300, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  55:     add    t20 <- t19, 89642
    movl    $89642, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  56:     sub    t21 <- t20, 23825
    movl    $23825, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  57:     add    t22 <- t21, 32392
    movl    $32392, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  58:     sub    t23 <- t22, 18388
    movl    $18388, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  59:     sub    t24 <- t23, 58682
    movl    $58682, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -36(%ebp), %eax         #  60:     add    t25 <- t17, t24
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  61:     param  1 <- 3
    pushl   %eax                   
    leal    892811380(%ebp), %eax   #  62:     &()    t26 <- v1
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  63:     param  0 <- t26
    pushl   %eax                   
    call    DIM                     #  64:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  65:     mul    t28 <- t25, t27
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  66:     add    t29 <- t28, 14849
    movl    $14849, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  67:     param  1 <- 4
    pushl   %eax                   
    leal    892811380(%ebp), %eax   #  68:     &()    t30 <- v1
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  69:     param  0 <- t30
    pushl   %eax                   
    call    DIM                     #  70:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  71:     mul    t32 <- t29, t31
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  72:     add    t33 <- t32, 60982
    movl    $60982, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $5, %eax                #  73:     param  1 <- 5
    pushl   %eax                   
    leal    892811380(%ebp), %eax   #  74:     &()    t34 <- v1
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  75:     param  0 <- t34
    pushl   %eax                   
    call    DIM                     #  76:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -100(%ebp), %eax        #  77:     mul    t36 <- t33, t35
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  78:     add    t37 <- t36, 54864
    movl    $54864, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  79:     mul    t38 <- t37, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    leal    892811380(%ebp), %eax   #  80:     &()    t39 <- v1
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  81:     param  0 <- t39
    pushl   %eax                   
    call    DOFS                    #  82:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -128(%ebp)       
    movl    -120(%ebp), %eax        #  83:     add    t41 <- t38, t40
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -20(%ebp), %eax         #  84:     add    t42 <- t13, t41
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $35441, %eax            #  85:     assign @t42 <- 35441
    movl    -136(%ebp), %edi       
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $-892811388, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 94 of <array 82 of <array 97 of <array 93 of <array 74 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 99 of <array 37 of <array 61 of <array 62 of <array 44 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 11 of <array 14 of <array 37 of <array 30 of <array 96 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #   892811500(%ebp)  -892811528  [ $v5       <array 94 of <array 82 of <array 97 of <array 93 of <array 74 of <int>>>>>> %ebp+892811500 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-892811512, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-223202878, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,892811500(%ebp)      # local array 'v5': 5 dimensions
    movl    $94,892811504(%ebp)     #   dimension 1: 94 elements
    movl    $82,892811508(%ebp)     #   dimension 2: 82 elements
    movl    $97,892811512(%ebp)     #   dimension 3: 97 elements
    movl    $93,892811516(%ebp)     #   dimension 4: 93 elements
    movl    $74,892811520(%ebp)     #   dimension 5: 74 elements

    # function body
    movl    $13129, %eax            #   0:     if     13129 <= 37254 goto 1_if_true
    movl    $37254, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    leal    892811500(%ebp), %eax   #   3:     &()    t7 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #   5:     call   t8 <- f0
    addl    $4, %esp               
    movl    %eax, -24(%ebp)        
    movl    $70366, %eax            #   6:     if     70366 < 31969 goto 6_if_true
    movl    $31969, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   7:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    f1                      #  15:     call   t9 <- f1
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  16:     return t9
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  17:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

l_f2_exit:
    # epilogue
    addl    $-892811512, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $17159, %eax            #   2:     add    t0 <- 17159, 89509
    movl    $89509, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     sub    t1 <- t0, 15217
    movl    $15217, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t2 <- t1, 32840
    movl    $32840, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     sub    t3 <- t2, 80423
    movl    $80423, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t4 <- t3, 47707
    movl    $47707, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     if     t4 # 34544 goto 3_while_body
    movl    $34544, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   8:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #  11:     goto   6_while_cond
    movl    $0, %eax                #  12:     if     0 = 0 goto 9_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #  13:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  15:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $100, %eax              #  18:     assign v0 <- 100
    movb    %al, v0                
l_test_14_while_cond:
    movl    $97, %eax               #  20:     if     97 < 98 goto 15_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  21:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  23:     goto   14_while_cond
l_test_13:
    jmp     l_test_2_while_cond     #  25:     goto   2_while_cond
l_test_1:
    movl    $31948, %eax            #  27:     assign v1 <- 31948
    movl    %eax, v1               
l_test_19_while_cond:
    movl    $82407, %eax            #  29:     add    t5 <- 82407, 5563
    movl    $5563, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3303, %eax             #  30:     if     3303 > t5 goto 20_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_20_while_body   
    jmp     l_test_18               #  31:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  33:     goto   19_while_cond
l_test_18:
l_test_23_while_cond:
    call    f1                      #  36:     call   t6 <- f1
    movb    %al, -37(%ebp)         
    movl    $97, %eax               #  37:     if     97 < t6 goto 24_while_body
    movzbl  -37(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_24_while_body   
    jmp     l_test_22               #  38:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  40:     goto   23_while_cond
l_test_22:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
