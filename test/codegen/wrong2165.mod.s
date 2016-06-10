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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 88 of <array 37 of <array 34 of <array 1 of <array 11 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 38 of <array 73 of <array 41 of <array 38 of <array 74 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
l_f0_1_if_true:
    movl    $63026, %eax            #   2:     assign v4 <- 63026
    movl    %eax, -24(%ebp)        
    call    dummyBOOLfunc           #   3:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   4:     goto   0
l_f0_0:
    movl    $38247, %eax            #   6:     if     38247 >= 40438 goto 10_if_true
    movl    $40438, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #   7:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #   9:     goto   9
l_f0_11_if_false:
l_f0_9:
l_f0_14_while_cond:
    movl    $29729, %eax            #  13:     if     29729 = 3954 goto 15_while_body
    movl    $3954, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_15_while_body     
    jmp     l_f0_13                 #  14:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  16:     goto   14_while_cond
l_f0_13:
l_f0_18_while_cond:
    movl    $100, %eax              #  19:     if     100 > 97 goto 19_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_19_while_body     
    jmp     l_f0_17                 #  20:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  22:     goto   18_while_cond
l_f0_17:
    movl    $19874, %eax            #  24:     return 19874
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  25:     goto   6
l_f0_6:
l_f0_23_while_cond:
    call    ReadInt                 #  28:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $53788, %eax            #  29:     if     53788 > t7 goto 24_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_24_while_body     
    jmp     l_f0_22                 #  30:     goto   22
l_f0_24_while_body:
    jmp     l_f0_23_while_cond      #  32:     goto   23_while_cond
l_f0_22:

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
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 44 of <array 72 of <array 30 of <array 59 of <array 65 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -84(%ebp)   4  [ $v3       <int> %ebp-84 ]

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
    movl    $49631, %eax            #   0:     if     49631 <= 71955 goto 1_if_true
    movl    $71955, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   4:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   5:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $29344, %eax            #   6:     mul    t7 <- 29344, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   7:     add    t8 <- t7, 40333
    movl    $40333, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  11:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     add    t11 <- t10, 72730
    movl    $72730, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  16:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     add    t14 <- t13, 82879
    movl    $82879, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     add    t17 <- t16, 64877
    movl    $64877, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  25:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  26:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  27:     add    t21 <- v1, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $62146, %eax            #  28:     assign @t21 <- 62146
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
l_f1_6_while_cond:
    movl    $98363, %eax            #  30:     if     98363 < 21984 goto 7_while_body
    movl    $21984, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7_while_body      
    jmp     l_f1_5                  #  31:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  33:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_0                  #  35:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_10_if_true         #  38:     goto   10_if_true
    jmp     l_f1_11_if_false        #  39:     goto   11_if_false
l_f1_10_if_true:
    call    dummyProcedure          #  41:     call   dummyProcedure
    movl    $97, %eax               #  42:     if     97 < 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  43:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  45:     goto   14
l_f1_16_if_false:
l_f1_14:
    jmp     l_f1_9                  #  48:     goto   9
l_f1_11_if_false:
l_f1_9:
l_f1_19_while_cond:
    movl    $0, %eax                #  52:     if     0 = 1 goto 20_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_20_while_body     
    jmp     l_f1_18                 #  53:     goto   18
l_f1_20_while_body:
    movl    $39314, %eax            #  55:     sub    t22 <- 39314, 49376
    movl    $49376, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  56:     return t22
    jmp     l_f1_exit              
    jmp     l_f1_19_while_cond      #  57:     goto   19_while_cond
l_f1_18:

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
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
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
    #   -129(%ebp)   1  [ $t39      <bool> %ebp-129 ]
    #   -130(%ebp)   1  [ $t40      <char> %ebp-130 ]
    #   -136(%ebp)   4  [ $t6       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 76 of <array 41 of <array 75 of <array 78 of <array 89 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #   -152(%ebp)   4  [ $v2       <int> %ebp-152 ]
    #   -153(%ebp)   1  [ $v3       <bool> %ebp-153 ]

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
    jmp     l_f2_3                  #   0:     goto   3
l_f2_3:
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   4:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    $95858, %eax            #   5:     mul    t7 <- 95858, t6
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #   6:     add    t8 <- t7, 87302
    movl    $87302, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   9:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  10:     mul    t10 <- t8, t9
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t11 <- t10, 36536
    movl    $36536, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  15:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     add    t14 <- t13, 72118
    movl    $72118, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  20:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     add    t17 <- t16, 10971
    movl    $10971, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  22:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  24:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  25:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  26:     add    t21 <- v0, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $88971, %eax            #  27:     assign @t21 <- 88971
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
l_f2_8_while_cond:
    jmp     l_f2_8_while_cond       #  29:     goto   8_while_cond
    movl    $99, %eax               #  30:     if     99 <= 98 goto 11
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_11                
    jmp     l_f2_12                 #  31:     goto   12
l_f2_11:
    movl    $1, %eax                #  33:     assign t22 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_f2_13                 #  34:     goto   13
l_f2_12:
    movl    $0, %eax                #  36:     assign t22 <- 0
    movb    %al, -61(%ebp)         
l_f2_13:
    movzbl  -61(%ebp), %eax         #  38:     assign v3 <- t22
    movb    %al, -153(%ebp)        
l_f2_16_while_cond:
    jmp     l_f2_15                 #  40:     goto   15
    jmp     l_f2_16_while_cond      #  41:     goto   16_while_cond
l_f2_15:
    movl    $2, %eax                #  43:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  45:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $61286, %eax            #  46:     mul    t24 <- 61286, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  47:     add    t25 <- t24, 5163
    movl    $5163, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  48:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  49:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  50:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  51:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  52:     add    t28 <- t27, 5108
    movl    $5108, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  53:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  54:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  55:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  56:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  57:     add    t31 <- t30, 62368
    movl    $62368, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $5, %eax                #  58:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  59:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  60:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  61:     mul    t33 <- t31, t32
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  62:     add    t34 <- t33, 68838
    movl    $68838, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  63:     mul    t35 <- t34, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    8(%ebp), %eax           #  64:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  65:     call   t36 <- DOFS
    addl    $4, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  66:     add    t37 <- t35, t36
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    8(%ebp), %eax           #  67:     add    t38 <- v0, t37
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $405, %eax              #  68:     assign @t38 <- 405
    movl    -128(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_f2_0                  #  69:     goto   0
l_f2_0:
l_f2_20_while_cond:
    jmp     l_f2_21_while_body      #  72:     goto   21_while_body
    jmp     l_f2_21_while_body      #  73:     goto   21_while_body
    jmp     l_f2_19                 #  74:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  76:     goto   20_while_cond
l_f2_19:
    jmp     l_f2_26_if_false        #  78:     goto   26_if_false
l_f2_28_while_cond:
    movl    $98538, %eax            #  80:     if     98538 <= 89337 goto 29_while_body
    movl    $89337, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_29_while_body     
    jmp     l_f2_27                 #  81:     goto   27
l_f2_29_while_body:
    jmp     l_f2_28_while_cond      #  83:     goto   28_while_cond
l_f2_27:
    movl    $39933, %eax            #  85:     if     39933 = 5526 goto 32
    movl    $5526, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_32                
    jmp     l_f2_33                 #  86:     goto   33
l_f2_32:
    movl    $1, %eax                #  88:     assign t39 <- 1
    movb    %al, -129(%ebp)        
    jmp     l_f2_34                 #  89:     goto   34
l_f2_33:
    movl    $0, %eax                #  91:     assign t39 <- 0
    movb    %al, -129(%ebp)        
l_f2_34:
    movzbl  -129(%ebp), %eax        #  93:     return t39
    jmp     l_f2_exit              
    movl    $60873, %eax            #  94:     if     60873 < 87809 goto 37_if_true
    movl    $87809, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_37_if_true        
    jmp     l_f2_38_if_false        #  95:     goto   38_if_false
l_f2_37_if_true:
    jmp     l_f2_36                 #  97:     goto   36
l_f2_38_if_false:
l_f2_36:
    call    dummyCHARfunc           # 100:     call   t40 <- dummyCHARfunc
    movb    %al, -130(%ebp)        
    movl    $0, %eax                # 101:     assign v3 <- 0
    movb    %al, -153(%ebp)        
    jmp     l_f2_24                 # 102:     goto   24
l_f2_26_if_false:
l_f2_24:

l_f2_exit:
    # epilogue
    addl    $144, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 38 of <array 73 of <array 41 of <array 38 of <array 74 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 88 of <array 37 of <array 34 of <array 1 of <array 11 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_2_while_cond     #   3:     goto   2_while_cond
l_test_1:
l_test_6_while_cond:
    call    dummyCHARfunc           #   6:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   7:     if     97 # t0 goto 7_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_7_while_body    
    jmp     l_test_5                #   8:     goto   5
l_test_7_while_body:
    movl    $98, %eax               #  10:     if     98 # 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_10_if_true      
    jmp     l_test_11_if_false      #  11:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  13:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $100, %eax              #  16:     if     100 # 99 goto 14_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_14_if_true      
    jmp     l_test_15_if_false      #  17:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  19:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_exit            
    jmp     l_test_18               #  23:     goto   18
l_test_18:
    jmp     l_test_6_while_cond     #  25:     goto   6_while_cond
l_test_5:
    movl    $98, %eax               #  27:     assign v0 <- 98
    movb    %al, v0                
    call    dummyCHARfunc           #  28:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_22               #  30:     goto   22
l_test_22:
    movl    $99903, %eax            #  32:     if     99903 <= 7817 goto 28_if_true
    movl    $7817, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_28_if_true      
    jmp     l_test_29_if_false      #  33:     goto   29_if_false
l_test_28_if_true:
    movl    $100, %eax              #  35:     if     100 = 100 goto 32
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_32              
    jmp     l_test_33               #  36:     goto   33
l_test_32:
    movl    $1, %eax                #  38:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_34               #  39:     goto   34
l_test_33:
    movl    $0, %eax                #  41:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_34:
    movzbl  -15(%ebp), %eax         #  43:     assign v1 <- t2
    movb    %al, v1                
    movl    $1, %eax                #  44:     if     1 = 1 goto 37_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_37_if_true      
    jmp     l_test_38_if_false      #  45:     goto   38_if_false
l_test_37_if_true:
    jmp     l_test_36               #  47:     goto   36
l_test_38_if_false:
l_test_36:
    movl    $0, %eax                #  50:     param  3 <- 0
    pushl   %eax                   
    leal    v3, %eax                #  51:     &()    t3 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  52:     param  2 <- t3
    pushl   %eax                   
    movl    $100, %eax              #  53:     param  1 <- 100
    pushl   %eax                   
    leal    v2, %eax                #  54:     &()    t4 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  55:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  56:     call   t5 <- f0
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    jmp     l_test_27               #  57:     goto   27
l_test_29_if_false:
l_test_27:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 88 of <array 37 of <array 34 of <array 1 of <array 11 of <bool>>>>>>
    .long    5
    .long   88
    .long   37
    .long   34
    .long    1
    .long   11
    .skip 1217744
v3:                                 # <array 38 of <array 73 of <array 41 of <array 38 of <array 74 of <char>>>>>>
    .long    5
    .long   38
    .long   73
    .long   41
    .long   38
    .long   74
    .skip 319820008








    # end of global data section
    #-----------------------------------------

    .end
##################################################
