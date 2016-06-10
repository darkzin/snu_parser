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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t8       <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $t9       <char> %ebp-28 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]

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
    movl    $39177, %eax            #   0:     if     39177 = 69931 goto 1
    movl    $69931, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t7 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t7 <- 0
    movb    %al, -26(%ebp)         
l_f0_3:
    movzbl  -26(%ebp), %eax         #   8:     assign v2 <- t7
    movb    %al, 8(%ebp)           
    call    dummyBOOLfunc           #   9:     call   t8 <- dummyBOOLfunc
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #  10:     if     t8 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  11:     goto   7_if_false
l_f0_6_if_true:
    call    dummyCHARfunc           #  13:     call   t9 <- dummyCHARfunc
    movb    %al, -28(%ebp)         
    movzbl  -28(%ebp), %eax         #  14:     param  0 <- t9
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_5                  #  16:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_10_while_cond:
    movl    $97, %eax               #  20:     if     97 # 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_11_while_body     
    jmp     l_f0_9                  #  21:     goto   9
l_f0_11_while_body:
    movl    $97, %eax               #  23:     if     97 <= 99 goto 14
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_14                
    jmp     l_f0_15                 #  24:     goto   15
l_f0_14:
    movl    $1, %eax                #  26:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_16                 #  27:     goto   16
l_f0_15:
    movl    $0, %eax                #  29:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_16:
    movzbl  -13(%ebp), %eax         #  31:     assign v2 <- t10
    movb    %al, 8(%ebp)           
    movl    $18020, %eax            #  32:     mul    t11 <- 18020, 15232
    movl    $15232, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     div    t12 <- t11, 66829
    movl    $66829, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $22873, %eax            #  34:     if     22873 > t12 goto 19
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_19                
    jmp     l_f0_20                 #  35:     goto   20
l_f0_19:
    movl    $1, %eax                #  37:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_21                 #  38:     goto   21
l_f0_20:
    movl    $0, %eax                #  40:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f0_21:
    movzbl  -25(%ebp), %eax         #  42:     return t13
    jmp     l_f0_exit              
    jmp     l_f0_10_while_cond      #  43:     goto   10_while_cond
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t7       <ptr(4) to <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <bool> %ebp-33 ]
    #   -18492(%ebp)  18456  [ $v2       <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>> %ebp-18492 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $18480, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4620, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-18492(%ebp)         # local array 'v2': 5 dimensions
    movl    $8,-18488(%ebp)         #   dimension 1: 8 elements
    movl    $6,-18484(%ebp)         #   dimension 2: 6 elements
    movl    $3,-18480(%ebp)         #   dimension 3: 3 elements
    movl    $4,-18476(%ebp)         #   dimension 4: 4 elements
    movl    $8,-18472(%ebp)         #   dimension 5: 8 elements

    # function body
    movl    $97, %eax               #   0:     param  3 <- 97
    pushl   %eax                   
    movl    $99, %eax               #   1:     param  2 <- 99
    pushl   %eax                   
    leal    -18492(%ebp), %eax      #   2:     &()    t7 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     param  1 <- t7
    pushl   %eax                   
    movl    $69575, %eax            #   4:     add    t8 <- 69575, 89960
    movl    $89960, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $95068, %eax            #   5:     if     95068 > t8 goto 4
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_4                 
    jmp     l_f1_5                  #   6:     goto   5
l_f1_4:
    movl    $1, %eax                #   8:     assign t9 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_6                  #   9:     goto   6
l_f1_5:
    movl    $0, %eax                #  11:     assign t9 <- 0
    movb    %al, -33(%ebp)         
l_f1_6:
    movzbl  -33(%ebp), %eax         #  13:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  14:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #  15:     param  3 <- 99
    pushl   %eax                   
    movl    $99, %eax               #  16:     param  2 <- 99
    pushl   %eax                   
    leal    -18492(%ebp), %eax      #  17:     &()    t11 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     param  1 <- t11
    pushl   %eax                   
    movl    $99, %eax               #  19:     if     99 < 100 goto 9
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_9                 
    jmp     l_f1_10                 #  20:     goto   10
l_f1_9:
    movl    $1, %eax                #  22:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_11                 #  23:     goto   11
l_f1_10:
    movl    $0, %eax                #  25:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f1_11:
    movzbl  -21(%ebp), %eax         #  27:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  28:     call   t13 <- f0
    addl    $16, %esp              
    movb    %al, -22(%ebp)         
    jmp     l_f1_0                  #  29:     goto   0
l_f1_0:
    movl    $97, %eax               #  31:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  32:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_16_if_false        #  33:     goto   16_if_false
    jmp     l_f1_16_if_false        #  34:     goto   16_if_false
    jmp     l_f1_16_if_false        #  35:     goto   16_if_false
    jmp     l_f1_14                 #  36:     goto   14
l_f1_16_if_false:
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $18480, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <ptr(4) to <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <ptr(4) to <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <ptr(4) to <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <ptr(4) to <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t29      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t30      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t31      <ptr(4) to <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t32      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t33      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t34      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t35      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t36      <ptr(4) to <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t37      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t38      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t39      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t7       <ptr(4) to <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t8       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t9       <int> %ebp-136 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 7 of <array 4 of <array 10 of <array 8 of <char>>>>>>> %ebp+12 ]
    #   -18592(%ebp)  18456  [ $v4       <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>> %ebp-18592 ]
    #   -18596(%ebp)   4  [ $v5       <int> %ebp-18596 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $18584, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4646, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-18592(%ebp)         # local array 'v4': 5 dimensions
    movl    $8,-18588(%ebp)         #   dimension 1: 8 elements
    movl    $6,-18584(%ebp)         #   dimension 2: 6 elements
    movl    $3,-18580(%ebp)         #   dimension 3: 3 elements
    movl    $4,-18576(%ebp)         #   dimension 4: 4 elements
    movl    $8,-18572(%ebp)         #   dimension 5: 8 elements

    # function body
    movl    $97, %eax               #   0:     param  3 <- 97
    pushl   %eax                   
    movl    $97, %eax               #   1:     param  2 <- 97
    pushl   %eax                   
    leal    -18592(%ebp), %eax      #   2:     &()    t7 <- v4
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #   3:     param  1 <- t7
    pushl   %eax                   
    movl    $44842, %eax            #   4:     mul    t8 <- 44842, 75915
    movl    $75915, %ebx           
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    $91273, %eax            #   5:     add    t9 <- 91273, t8
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #   6:     if     t9 # 78316 goto 1
    movl    $78316, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   7:     goto   2
l_f2_1:
    movl    $1, %eax                #   9:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #  10:     goto   3
l_f2_2:
    movl    $0, %eax                #  12:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #  14:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  15:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -14(%ebp)         
l_f2_6_while_cond:
    jmp     l_f2_9                  #  17:     goto   9
    jmp     l_f2_10                 #  18:     goto   10
l_f2_9:
    movl    $1, %eax                #  20:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_11                 #  21:     goto   11
l_f2_10:
    movl    $0, %eax                #  23:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f2_11:
    movzbl  -15(%ebp), %eax         #  25:     if     t12 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  26:     goto   5
l_f2_7_while_body:
    movl    $100, %eax              #  28:     return 100
    jmp     l_f2_exit              
    call    ReadInt                 #  29:     call   t13 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #  30:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_6_while_cond       #  31:     goto   6_while_cond
l_f2_5:
    movl    $89710, %eax            #  33:     add    t14 <- 89710, 69907
    movl    $69907, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     add    t15 <- t14, 71896
    movl    $71896, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    leal    -18592(%ebp), %eax      #  35:     &()    t16 <- v4
    movl    %eax, -32(%ebp)        
    movl    $2, %eax                #  36:     param  1 <- 2
    pushl   %eax                   
    leal    -18592(%ebp), %eax      #  37:     &()    t17 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  38:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  39:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    $6963, %eax             #  40:     mul    t19 <- 6963, t18
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    $53564, %eax            #  41:     div    t20 <- 53564, 47967
    movl    $47967, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  42:     div    t21 <- t20, 84223
    movl    $84223, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  43:     add    t22 <- t19, t21
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $3, %eax                #  44:     param  1 <- 3
    pushl   %eax                   
    leal    -18592(%ebp), %eax      #  45:     &()    t23 <- v4
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  46:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  47:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  48:     mul    t25 <- t22, t24
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  49:     add    t26 <- t25, 14846
    movl    $14846, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4, %eax                #  50:     param  1 <- 4
    pushl   %eax                   
    leal    -18592(%ebp), %eax      #  51:     &()    t27 <- v4
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  52:     param  0 <- t27
    pushl   %eax                   
    call    DIM                     #  53:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  54:     mul    t29 <- t26, t28
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  55:     add    t30 <- t29, 60609
    movl    $60609, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  56:     param  1 <- 5
    pushl   %eax                   
    leal    -18592(%ebp), %eax      #  57:     &()    t31 <- v4
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  58:     param  0 <- t31
    pushl   %eax                   
    call    DIM                     #  59:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  60:     mul    t33 <- t30, t32
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  61:     add    t34 <- t33, 47399
    movl    $47399, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  62:     mul    t35 <- t34, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    leal    -18592(%ebp), %eax      #  63:     &()    t36 <- v4
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  64:     param  0 <- t36
    pushl   %eax                   
    call    DOFS                    #  65:     call   t37 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -108(%ebp), %eax        #  66:     add    t38 <- t35, t37
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -32(%ebp), %eax         #  67:     add    t39 <- t16, t38
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -28(%ebp), %eax         #  68:     assign @t39 <- t15
    movl    -124(%ebp), %edi       
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $18584, %esp            # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <bool> %ebp-30 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 > 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $87495, %eax            #   4:     assign v0 <- 87495
    movl    %eax, v0               
    jmp     l_test_5                #   5:     goto   5
l_test_5:
    movl    $26320, %eax            #   7:     assign v0 <- 26320
    movl    %eax, v0               
    call    dummyBOOLfunc           #   8:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #  11:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  12:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_exit            
l_test_13_while_cond:
    jmp     l_test_14_while_body    #  15:     goto   14_while_body
    jmp     l_test_12               #  16:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  18:     goto   13_while_cond
l_test_12:
l_test_17_while_cond:
    movl    $18069, %eax            #  21:     if     18069 # 77620 goto 18_while_body
    movl    $77620, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_18_while_body   
    jmp     l_test_16               #  22:     goto   16
l_test_18_while_body:
    call    dummyINTfunc            #  24:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  25:     param  3 <- 98
    pushl   %eax                   
    call    f1                      #  26:     call   t3 <- f1
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  27:     param  2 <- t3
    pushl   %eax                   
    leal    v2, %eax                #  28:     &()    t4 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     param  1 <- t4
    pushl   %eax                   
    movl    $37526, %eax            #  30:     if     37526 >= 37862 goto 22
    movl    $37862, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_22              
    jmp     l_test_23               #  31:     goto   23
l_test_22:
    movl    $1, %eax                #  33:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_24               #  34:     goto   24
l_test_23:
    movl    $0, %eax                #  36:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_test_24:
    movzbl  -29(%ebp), %eax         #  38:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  39:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -30(%ebp)         
    jmp     l_test_17_while_cond    #  40:     goto   17_while_cond
l_test_16:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 8 of <array 6 of <array 3 of <array 4 of <array 8 of <int>>>>>>
    .long    5
    .long    8
    .long    6
    .long    3
    .long    4
    .long    8
    .skip 18432








    # end of global data section
    #-----------------------------------------

    .end
##################################################
