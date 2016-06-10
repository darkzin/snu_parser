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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 4 of <array 9 of <array 6 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -84(%ebp)   4  [ $v2       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $v3       <bool> %ebp-85 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #   1:     if     t3 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_4_while_cond:
    jmp     l_f0_3                  #   8:     goto   3
    jmp     l_f0_3                  #   9:     goto   3
l_f0_8_while_cond:
    jmp     l_f0_8_while_cond       #  11:     goto   8_while_cond
l_f0_11_while_cond:
    jmp     l_f0_10                 #  13:     goto   10
    jmp     l_f0_11_while_cond      #  14:     goto   11_while_cond
l_f0_10:
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $61142, %eax            #  19:     mul    t5 <- 61142, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  20:     add    t6 <- t5, 62889
    movl    $62889, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  21:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  23:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  24:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  25:     add    t9 <- t8, 98256
    movl    $98256, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  26:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  28:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  29:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     add    t12 <- t11, 36025
    movl    $36025, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  31:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  32:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  33:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  34:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  35:     add    t15 <- t14, 98424
    movl    $98424, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  36:     mul    t16 <- t15, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  37:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  38:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  39:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  40:     add    t19 <- v0, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $24030, %eax            #  41:     assign @t19 <- 24030
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_4_while_cond       #  42:     goto   4_while_cond
l_f0_3:
    movl    $98, %eax               #  44:     if     98 = 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  45:     goto   16_if_false
l_f0_15_if_true:
    movl    $0, %eax                #  47:     return 0
    jmp     l_f0_exit              
    movl    $1, %eax                #  48:     assign v3 <- 1
    movb    %al, -85(%ebp)         
    movl    $1, %eax                #  49:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_21                 #  50:     goto   21
l_f0_21:
l_f0_25_while_cond:
    movl    $100, %eax              #  53:     if     100 < 100 goto 26_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_26_while_body     
    jmp     l_f0_24                 #  54:     goto   24
l_f0_26_while_body:
    jmp     l_f0_25_while_cond      #  56:     goto   25_while_cond
l_f0_24:
    movl    $86064, %eax            #  58:     assign v2 <- 86064
    movl    %eax, -84(%ebp)        
    jmp     l_f0_14                 #  59:     goto   14
l_f0_16_if_false:
l_f0_14:

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
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 10 of <array 6 of <array 2 of <array 5 of <int>>>>>>> %ebp+12 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_1_while_cond       #   2:     goto   1_while_cond
l_f1_0:
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   5:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   6:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $4775, %eax             #   7:     mul    t4 <- 4775, t3
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    $35275, %eax            #   8:     sub    t5 <- 35275, 69605
    movl    $69605, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #   9:     add    t6 <- t4, t5
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  13:     mul    t8 <- t6, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    $59313, %eax            #  14:     sub    t9 <- 59313, 18048
    movl    $18048, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  15:     add    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  19:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     add    t13 <- t12, 24592
    movl    $24592, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  24:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     add    t16 <- t15, 67892
    movl    $67892, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  28:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  29:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  30:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $3067, %eax             #  31:     assign @t20 <- 3067
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyINTfunc            #  32:     call   t21 <- dummyINTfunc
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  33:     return t21
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 8 of <array 10 of <array 6 of <array 2 of <array 5 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 8 of <array 10 of <array 6 of <array 2 of <array 5 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 8 of <array 10 of <array 6 of <array 2 of <array 5 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 8 of <array 10 of <array 6 of <array 2 of <array 5 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 8 of <array 10 of <array 6 of <array 2 of <array 5 of <int>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 10 of <array 6 of <array 2 of <array 5 of <int>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $t31      <bool> %ebp-101 ]
    #   -108(%ebp)   4  [ $t4       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t5       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t6       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t7       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t8       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t9       <ptr(4) to <array 8 of <array 10 of <array 6 of <array 2 of <array 5 of <int>>>>>>> %ebp-128 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 9 of <array 4 of <array 8 of <array 4 of <char>>>>>>> %ebp+8 ]
    #   -19352(%ebp)  19224  [ $v1       <array 8 of <array 10 of <array 6 of <array 2 of <array 5 of <int>>>>>> %ebp-19352 ]
    #   -19356(%ebp)   4  [ $v2       <int> %ebp-19356 ]
    #   -19357(%ebp)   1  [ $v3       <bool> %ebp-19357 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $19348, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4837, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-19352(%ebp)         # local array 'v1': 5 dimensions
    movl    $8,-19348(%ebp)         #   dimension 1: 8 elements
    movl    $10,-19344(%ebp)        #   dimension 2: 10 elements
    movl    $6,-19340(%ebp)         #   dimension 3: 6 elements
    movl    $2,-19336(%ebp)         #   dimension 4: 2 elements
    movl    $5,-19332(%ebp)         #   dimension 5: 5 elements

    # function body
    leal    -19352(%ebp), %eax      #   0:     &()    t3 <- v1
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   1:     param  1 <- t3
    pushl   %eax                   
    movl    $24015, %eax            #   2:     add    t4 <- 24015, 76323
    movl    $76323, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   3:     add    t5 <- t4, 27812
    movl    $27812, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   4:     add    t6 <- t5, 99134
    movl    $99134, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #   5:     sub    t7 <- t6, 36027
    movl    $36027, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #   6:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #   7:     call   t8 <- f1
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    jmp     l_f2_2_if_true          #   8:     goto   2_if_true
l_f2_2_if_true:
    leal    -19352(%ebp), %eax      #  10:     &()    t9 <- v1
    movl    %eax, -128(%ebp)       
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    leal    -19352(%ebp), %eax      #  12:     &()    t10 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  14:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $62542, %eax            #  15:     mul    t12 <- 62542, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     add    t13 <- t12, 90106
    movl    $90106, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    leal    -19352(%ebp), %eax      #  18:     &()    t14 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  20:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  21:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     add    t17 <- t16, 5174
    movl    $5174, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    leal    -19352(%ebp), %eax      #  24:     &()    t18 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  26:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  27:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  28:     add    t21 <- t20, 26629
    movl    $26629, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    leal    -19352(%ebp), %eax      #  30:     &()    t22 <- v1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  31:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  32:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  33:     mul    t24 <- t21, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  34:     add    t25 <- t24, 825
    movl    $825, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  35:     mul    t26 <- t25, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    -19352(%ebp), %eax      #  36:     &()    t27 <- v1
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  37:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  38:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  39:     add    t29 <- t26, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -128(%ebp), %eax        #  40:     add    t30 <- t9, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $49568, %eax            #  41:     assign @t30 <- 49568
    movl    -100(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $33916, %eax            #  42:     if     33916 >= 66086 goto 7
    movl    $66086, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_7                 
    jmp     l_f2_8                  #  43:     goto   8
l_f2_7:
    movl    $1, %eax                #  45:     assign t31 <- 1
    movb    %al, -101(%ebp)        
    jmp     l_f2_9                  #  46:     goto   9
l_f2_8:
    movl    $0, %eax                #  48:     assign t31 <- 0
    movb    %al, -101(%ebp)        
l_f2_9:
    movzbl  -101(%ebp), %eax        #  50:     assign v3 <- t31
    movb    %al, -19357(%ebp)      
    jmp     l_f2_1                  #  51:     goto   1
l_f2_1:
l_f2_12_while_cond:
    jmp     l_f2_12_while_cond      #  54:     goto   12_while_cond

l_f2_exit:
    # epilogue
    addl    $19348, %esp            # remove locals
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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
l_test_5_while_cond:
    movl    $64593, %eax            #   4:     if     64593 < 17632 goto 6_while_body
    movl    $17632, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
l_test_9_while_cond:
    jmp     l_test_8                #  10:     goto   8
    jmp     l_test_9_while_cond     #  11:     goto   9_while_cond
l_test_8:
    jmp     l_test_2_while_cond     #  13:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
l_test_13_while_cond:
    call    dummyBOOLfunc           #  17:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  18:     if     t0 = 1 goto 14_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_14_while_body   
    jmp     l_test_12               #  19:     goto   12
l_test_14_while_body:
    movl    $6692, %eax             #  21:     assign v0 <- 6692
    movl    %eax, v0               
    jmp     l_test_18_if_false      #  22:     goto   18_if_false
    jmp     l_test_16               #  23:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_13_while_cond    #  26:     goto   13_while_cond
l_test_12:
    jmp     l_test_exit            
    movl    $91380, %eax            #  29:     sub    t1 <- 91380, 54086
    movl    $54086, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     sub    t2 <- t1, 47312
    movl    $47312, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     assign v0 <- t2
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
