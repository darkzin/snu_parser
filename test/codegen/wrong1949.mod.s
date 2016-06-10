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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $v2       <bool> %ebp-18 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   1:     assign v1 <- 97
    movb    %al, -17(%ebp)         
l_f0_3_while_cond:
    jmp     l_f0_2                  #   3:     goto   2
l_f0_6_while_cond:
    jmp     l_f0_5                  #   5:     goto   5
    movl    $99, %eax               #   6:     return 99
    jmp     l_f0_exit              
    movl    $1, %eax                #   7:     assign v2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_6_while_cond       #   8:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_3_while_cond       #  10:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t6       <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 31 of <array 71 of <array 64 of <array 90 of <array 46 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 85 of <array 82 of <array 79 of <array 78 of <array 77 of <char>>>>>>> %ebp+12 ]
    #   -100(%ebp)   4  [ $v3       <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $v4       <bool> %ebp-101 ]
    #   -102(%ebp)   1  [ $v5       <char> %ebp-102 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $9675, %eax             #   0:     mul    t3 <- 9675, 58938
    movl    $58938, %ebx           
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   1:     add    t4 <- t3, 88287
    movl    $88287, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   2:     add    t5 <- t4, 43391
    movl    $43391, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   3:     assign v3 <- t5
    movl    %eax, -100(%ebp)       
    movl    $98, %eax               #   4:     if     98 = 100 goto 2
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_2                 
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $1, %eax                #   7:     assign t6 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f1_4                  #   8:     goto   4
l_f1_3:
    movl    $0, %eax                #  10:     assign t6 <- 0
    movb    %al, -81(%ebp)         
l_f1_4:
    movzbl  -81(%ebp), %eax         #  12:     assign v4 <- t6
    movb    %al, -101(%ebp)        
    movl    $14544, %eax            #  13:     add    t7 <- 14544, 37793
    movl    $37793, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $67996, %eax            #  14:     if     67996 < t7 goto 7_if_true
    movl    -88(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  15:     goto   8_if_false
l_f1_7_if_true:
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $55082, %eax            #  20:     mul    t9 <- 55082, t8
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  21:     add    t10 <- t9, 36660
    movl    $36660, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  24:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  25:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     add    t13 <- t12, 53162
    movl    $53162, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  28:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  29:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  30:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t16 <- t15, 25447
    movl    $25447, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  33:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  34:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  35:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  36:     add    t19 <- t18, 86386
    movl    $86386, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  37:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  38:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  39:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  40:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  41:     add    t23 <- v2, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $97, %eax               #  42:     assign @t23 <- 97
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_12_while_cond:
    movl    $99, %eax               #  44:     if     99 >= 98 goto 13_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_13_while_body     
    jmp     l_f1_11                 #  45:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  47:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_6                  #  49:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $92, %esp               # remove locals
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
    #    -57(%ebp)   1  [ $t21      <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t3       <bool> %ebp-93 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t36      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t37      <int> %ebp-128 ]
    #   -129(%ebp)   1  [ $t38      <bool> %ebp-129 ]
    #   -130(%ebp)   1  [ $t39      <bool> %ebp-130 ]
    #   -131(%ebp)   1  [ $t4       <bool> %ebp-131 ]
    #   -132(%ebp)   1  [ $t40      <bool> %ebp-132 ]
    #   -136(%ebp)   4  [ $t41      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t42      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t43      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t44      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t45      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t46      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t47      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t48      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t49      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t5       <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t50      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t51      <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t52      <int> %ebp-184 ]
    #   -188(%ebp)   4  [ $t53      <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t54      <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t55      <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t56      <int> %ebp-200 ]
    #   -204(%ebp)   4  [ $t6       <int> %ebp-204 ]
    #   -208(%ebp)   4  [ $t7       <int> %ebp-208 ]
    #   -212(%ebp)   4  [ $t8       <int> %ebp-212 ]
    #   -216(%ebp)   4  [ $t9       <int> %ebp-216 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 99 of <array 64 of <array 93 of <array 35 of <array 57 of <int>>>>>>> %ebp+8 ]
    #   -220(%ebp)   4  [ $v2       <int> %ebp-220 ]
    #   -221(%ebp)   1  [ $v3       <bool> %ebp-221 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $212, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $53, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97153, %eax            #   0:     if     97153 > 86896 goto 1_if_true
    movl    $86896, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $100, %eax              #   3:     if     100 > 99 goto 5
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -93(%ebp)         
    jmp     l_f2_7                  #   7:     goto   7
l_f2_6:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -93(%ebp)         
l_f2_7:
    movzbl  -93(%ebp), %eax         #  11:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #  15:     call   t4 <- dummyBOOLfunc
    movb    %al, -131(%ebp)        
    movl    $1555, %eax             #  16:     param  0 <- 1555
    pushl   %eax                   
    call    WriteInt                #  17:     call   WriteInt
    addl    $4, %esp               
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -172(%ebp)       
    movl    $74116, %eax            #  21:     mul    t6 <- 74116, t5
    movl    -172(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -204(%ebp)       
    movl    -204(%ebp), %eax        #  22:     add    t7 <- t6, 23027
    movl    $23027, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -208(%ebp)       
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -212(%ebp)       
    movl    -208(%ebp), %eax        #  26:     mul    t9 <- t7, t8
    movl    -212(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -216(%ebp)       
    movl    -216(%ebp), %eax        #  27:     add    t10 <- t9, 90962
    movl    $90962, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  31:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     add    t13 <- t12, 77637
    movl    $77637, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  36:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  37:     add    t16 <- t15, 54860
    movl    $54860, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  38:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  39:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  40:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  41:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  42:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $91093, %eax            #  43:     assign @t20 <- 91093
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_15                 #  44:     goto   15
l_f2_15:
    movl    $89819, %eax            #  46:     if     89819 <= 96558 goto 19
    movl    $96558, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_19                
    jmp     l_f2_20                 #  47:     goto   20
l_f2_19:
    movl    $1, %eax                #  49:     assign t21 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f2_21                 #  50:     goto   21
l_f2_20:
    movl    $0, %eax                #  52:     assign t21 <- 0
    movb    %al, -57(%ebp)         
l_f2_21:
    movzbl  -57(%ebp), %eax         #  54:     return t21
    jmp     l_f2_exit              
l_f2_24_while_cond:
    jmp     l_f2_24_while_cond      #  56:     goto   24_while_cond
l_f2_27_while_cond:
    movl    $97, %eax               #  58:     if     97 # 99 goto 28_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_28_while_body     
    jmp     l_f2_26                 #  59:     goto   26
l_f2_28_while_body:
    jmp     l_f2_27_while_cond      #  61:     goto   27_while_cond
l_f2_26:
    movl    $2, %eax                #  63:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  64:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  65:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $37191, %eax            #  66:     mul    t23 <- 37191, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  67:     add    t24 <- t23, 50778
    movl    $50778, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  68:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  69:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  70:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  71:     mul    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  72:     add    t27 <- t26, 29188
    movl    $29188, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  73:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  74:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  75:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  76:     mul    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  77:     add    t30 <- t29, 73461
    movl    $73461, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $5, %eax                #  78:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  79:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  80:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  81:     mul    t32 <- t30, t31
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  82:     add    t33 <- t32, 11936
    movl    $11936, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  83:     mul    t34 <- t33, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    8(%ebp), %eax           #  84:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  85:     call   t35 <- DOFS
    addl    $4, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  86:     add    t36 <- t34, t35
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    8(%ebp), %eax           #  87:     add    t37 <- v1, t36
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $2909, %eax             #  88:     assign @t37 <- 2909
    movl    -128(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $47956, %eax            #  89:     if     47956 <= 6757 goto 32
    movl    $6757, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_32                
    jmp     l_f2_33                 #  90:     goto   33
l_f2_32:
    movl    $1, %eax                #  92:     assign t38 <- 1
    movb    %al, -129(%ebp)        
    jmp     l_f2_34                 #  93:     goto   34
l_f2_33:
    movl    $0, %eax                #  95:     assign t38 <- 0
    movb    %al, -129(%ebp)        
l_f2_34:
    movzbl  -129(%ebp), %eax        #  97:     return t38
    jmp     l_f2_exit              
    jmp     l_f2_36                 #  98:     goto   36
l_f2_36:
    movl    $100, %eax              # 100:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               # 101:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_9                  # 102:     goto   9
l_f2_9:
l_f2_41_while_cond:
    movl    $1, %eax                # 105:     assign t39 <- 1
    movb    %al, -130(%ebp)        
    jmp     l_f2_46                 # 106:     goto   46
    movl    $0, %eax                # 107:     assign t39 <- 0
    movb    %al, -130(%ebp)        
l_f2_46:
    movl    $1, %eax                # 109:     if     1 # t39 goto 42_while_body
    movzbl  -130(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jne     l_f2_42_while_body     
    jmp     l_f2_40                 # 110:     goto   40
l_f2_42_while_body:
    movl    $96460, %eax            # 112:     if     96460 <= 57782 goto 50
    movl    $57782, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_50                
    jmp     l_f2_51                 # 113:     goto   51
l_f2_50:
    movl    $1, %eax                # 115:     assign t40 <- 1
    movb    %al, -132(%ebp)        
    jmp     l_f2_52                 # 116:     goto   52
l_f2_51:
    movl    $0, %eax                # 118:     assign t40 <- 0
    movb    %al, -132(%ebp)        
l_f2_52:
    movzbl  -132(%ebp), %eax        # 120:     assign v3 <- t40
    movb    %al, -221(%ebp)        
    movl    $2, %eax                # 121:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           # 122:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     # 123:     call   t41 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    $70118, %eax            # 124:     mul    t42 <- 70118, t41
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        # 125:     add    t43 <- t42, 49410
    movl    $49410, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $3, %eax                # 126:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           # 127:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     # 128:     call   t44 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        # 129:     mul    t45 <- t43, t44
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        # 130:     add    t46 <- t45, 67715
    movl    $67715, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $4, %eax                # 131:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           # 132:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     # 133:     call   t47 <- DIM
    addl    $8, %esp               
    movl    %eax, -160(%ebp)       
    movl    -156(%ebp), %eax        # 134:     mul    t48 <- t46, t47
    movl    -160(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        # 135:     add    t49 <- t48, 23169
    movl    $23169, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    $5, %eax                # 136:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           # 137:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     # 138:     call   t50 <- DIM
    addl    $8, %esp               
    movl    %eax, -176(%ebp)       
    movl    -168(%ebp), %eax        # 139:     mul    t51 <- t49, t50
    movl    -176(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        # 140:     add    t52 <- t51, 37390
    movl    $37390, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -184(%ebp)       
    movl    -184(%ebp), %eax        # 141:     mul    t53 <- t52, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -188(%ebp)       
    movl    8(%ebp), %eax           # 142:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    # 143:     call   t54 <- DOFS
    addl    $4, %esp               
    movl    %eax, -192(%ebp)       
    movl    -188(%ebp), %eax        # 144:     add    t55 <- t53, t54
    movl    -192(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -196(%ebp)       
    movl    8(%ebp), %eax           # 145:     add    t56 <- v1, t55
    movl    -196(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -200(%ebp)       
    movl    $423, %eax              # 146:     assign @t56 <- 423
    movl    -200(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_f2_41_while_cond      # 147:     goto   41_while_cond
l_f2_40:

l_f2_exit:
    # epilogue
    addl    $212, %esp              # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_3_if_true        #   2:     goto   3_if_true
    jmp     l_test_3_if_true        #   3:     goto   3_if_true
    jmp     l_test_3_if_true        #   4:     goto   3_if_true
l_test_3_if_true:
    jmp     l_test_2                #   6:     goto   2
l_test_2:
    movl    $99905, %eax            #   8:     if     99905 < 12234 goto 11_if_true
    movl    $12234, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #   9:     goto   12_if_false
l_test_11_if_true:
    call    dummyINTfunc            #  11:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_10               #  12:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $38704, %eax            #  15:     if     38704 = 14916 goto 16
    movl    $14916, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_16              
    jmp     l_test_17               #  16:     goto   17
l_test_16:
    movl    $1, %eax                #  18:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_18               #  19:     goto   18
l_test_17:
    movl    $0, %eax                #  21:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_18:
    movzbl  -21(%ebp), %eax         #  23:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_exit            
l_test_25_while_cond:
    jmp     l_test_24               #  26:     goto   24
    jmp     l_test_25_while_cond    #  27:     goto   25_while_cond
l_test_24:
    jmp     l_test_20               #  29:     goto   20
l_test_20:

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
