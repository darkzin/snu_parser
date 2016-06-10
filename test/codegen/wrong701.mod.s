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
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t36      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t37      <int> %ebp-124 ]
    #   -125(%ebp)   1  [ $t6       <bool> %ebp-125 ]
    #   -132(%ebp)   4  [ $t7       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t8       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t9       <int> %ebp-140 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 3 of <array 9 of <array 4 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #   -141(%ebp)   1  [ $v3       <bool> %ebp-141 ]
    #   -148(%ebp)   4  [ $v4       <int> %ebp-148 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $136, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $34, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $9184, %eax             #   0:     if     9184 < 77733 goto 1
    movl    $77733, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -125(%ebp)        
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t6 <- 0
    movb    %al, -125(%ebp)        
l_f0_3:
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    $68689, %eax            #  11:     mul    t8 <- 68689, t7
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    $67548, %eax            #  12:     sub    t9 <- 67548, 85787
    movl    $85787, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  13:     add    t10 <- t9, 26033
    movl    $26033, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     sub    t11 <- t10, 54076
    movl    $54076, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t12 <- t11, 58905
    movl    $58905, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     sub    t13 <- t12, 35950
    movl    $35950, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     sub    t14 <- t13, 73447
    movl    $73447, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -136(%ebp), %eax        #  18:     add    t15 <- t8, t14
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  22:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     add    t18 <- t17, 78866
    movl    $78866, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  27:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  28:     add    t21 <- t20, 98174
    movl    $98174, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  31:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  32:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  33:     add    t24 <- t23, 40272
    movl    $40272, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  34:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  35:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  36:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  37:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  38:     add    t28 <- v1, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movzbl  -125(%ebp), %eax        #  39:     assign @t28 <- t6
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $2677, %eax             #  40:     div    t29 <- 2677, 54395
    movl    $54395, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  41:     div    t30 <- t29, 22748
    movl    $22748, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  42:     div    t31 <- t30, 5027
    movl    $5027, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  43:     div    t32 <- t31, 79334
    movl    $79334, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  44:     div    t33 <- t32, 71463
    movl    $71463, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  45:     sub    t34 <- t33, 94950
    movl    $94950, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  46:     sub    t35 <- t34, 66416
    movl    $66416, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  47:     assign v4 <- t35
    movl    %eax, -148(%ebp)       
    call    dummyINTfunc            #  48:     call   t36 <- dummyINTfunc
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  49:     add    t37 <- t36, 81562
    movl    $81562, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  50:     return t37
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $136, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 2 of <array 1 of <array 1 of <array 4 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 10 of <array 3 of <array 4 of <array 10 of <bool>>>>>>> %ebp+20 ]
    #    -36(%ebp)   4  [ $v5       <int> %ebp-36 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     if     t6 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $18428, %eax            #   7:     div    t7 <- 18428, 17341
    movl    $17341, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     div    t8 <- t7, 23733
    movl    $23733, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     mul    t9 <- t8, 34588
    movl    $34588, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     mul    t10 <- t9, 35652
    movl    $35652, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     assign v5 <- t10
    movl    %eax, -36(%ebp)        
    call    dummyProcedure          #  12:     call   dummyProcedure

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t23      <bool> %ebp-65 ]
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
    #   -137(%ebp)   1  [ $t41      <bool> %ebp-137 ]
    #   -144(%ebp)   4  [ $t42      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t43      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t44      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t45      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t46      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t47      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t48      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t49      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t50      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t51      <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t52      <int> %ebp-184 ]
    #   -188(%ebp)   4  [ $t53      <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t54      <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t55      <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t56      <int> %ebp-200 ]
    #   -204(%ebp)   4  [ $t57      <int> %ebp-204 ]
    #   -208(%ebp)   4  [ $t58      <int> %ebp-208 ]
    #   -212(%ebp)   4  [ $t59      <int> %ebp-212 ]
    #   -216(%ebp)   4  [ $t6       <int> %ebp-216 ]
    #   -220(%ebp)   4  [ $t60      <int> %ebp-220 ]
    #   -224(%ebp)   4  [ $t61      <int> %ebp-224 ]
    #   -228(%ebp)   4  [ $t62      <int> %ebp-228 ]
    #   -232(%ebp)   4  [ $t63      <int> %ebp-232 ]
    #   -236(%ebp)   4  [ $t64      <int> %ebp-236 ]
    #   -240(%ebp)   4  [ $t7       <int> %ebp-240 ]
    #   -244(%ebp)   4  [ $t8       <int> %ebp-244 ]
    #   -248(%ebp)   4  [ $t9       <int> %ebp-248 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 3 of <array 1 of <array 4 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 6 of <array 6 of <array 10 of <array 8 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 3 of <array 2 of <array 8 of <array 7 of <array 5 of <bool>>>>>>> %ebp+20 ]
    #   -252(%ebp)   4  [ $v5       <int> %ebp-252 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $240, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $60, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $36262, %eax            #   0:     add    t6 <- 36262, 35832
    movl    $35832, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -216(%ebp)       
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   2:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   3:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -240(%ebp)       
    movl    $38414, %eax            #   4:     mul    t8 <- 38414, t7
    movl    -240(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -244(%ebp)       
    movl    -244(%ebp), %eax        #   5:     add    t9 <- t8, 45883
    movl    $45883, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -248(%ebp)       
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   7:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   8:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -248(%ebp), %eax        #   9:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t12 <- t11, 74718
    movl    $74718, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  13:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  14:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     add    t15 <- t14, 60738
    movl    $60738, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  18:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  19:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     add    t18 <- t17, 83325
    movl    $83325, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  23:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  24:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  25:     add    t22 <- v3, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -216(%ebp), %eax        #  26:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_3                  #  27:     goto   3
    jmp     l_f2_3                  #  28:     goto   3
    movl    $1, %eax                #  29:     assign t23 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f2_4                  #  30:     goto   4
l_f2_3:
    movl    $0, %eax                #  32:     assign t23 <- 0
    movb    %al, -65(%ebp)         
l_f2_4:
    movl    $60860, %eax            #  34:     add    t24 <- 60860, 62070
    movl    $62070, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #  35:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  36:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  37:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  38:     mul    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  39:     add    t27 <- t26, 48837
    movl    $48837, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  40:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  41:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  42:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  43:     mul    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  44:     add    t30 <- t29, 26336
    movl    $26336, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $4, %eax                #  45:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  46:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  47:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  48:     mul    t32 <- t30, t31
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  49:     add    t33 <- t32, 99953
    movl    $99953, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $5, %eax                #  50:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  51:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  52:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  53:     mul    t35 <- t33, t34
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  54:     add    t36 <- t35, 827
    movl    $827, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  55:     mul    t37 <- t36, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    20(%ebp), %eax          #  56:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  57:     call   t38 <- DOFS
    addl    $4, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  58:     add    t39 <- t37, t38
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    20(%ebp), %eax          #  59:     add    t40 <- v4, t39
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movzbl  -65(%ebp), %eax         #  60:     assign @t40 <- t23
    movl    -136(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $100, %eax              #  61:     if     100 < 98 goto 8
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_8                 
    jmp     l_f2_9                  #  62:     goto   9
l_f2_8:
    movl    $1, %eax                #  64:     assign t41 <- 1
    movb    %al, -137(%ebp)        
    jmp     l_f2_10                 #  65:     goto   10
l_f2_9:
    movl    $0, %eax                #  67:     assign t41 <- 0
    movb    %al, -137(%ebp)        
l_f2_10:
    movl    $13323, %eax            #  69:     div    t42 <- 13323, 96797
    movl    $96797, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  70:     mul    t43 <- t42, 50080
    movl    $50080, %ebx           
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  71:     div    t44 <- t43, 33526
    movl    $33526, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  72:     div    t45 <- t44, 71410
    movl    $71410, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  73:     div    t46 <- t45, 165
    movl    $165, %ebx             
    cdq                            
    idivl   %ebx                   
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  74:     mul    t47 <- t46, 22801
    movl    $22801, %ebx           
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  75:     sub    t48 <- t47, 29787
    movl    $29787, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    $2, %eax                #  76:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  77:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  78:     call   t49 <- DIM
    addl    $8, %esp               
    movl    %eax, -172(%ebp)       
    movl    -168(%ebp), %eax        #  79:     mul    t50 <- t48, t49
    movl    -172(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -176(%ebp)       
    movl    -176(%ebp), %eax        #  80:     add    t51 <- t50, 82175
    movl    $82175, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -180(%ebp)       
    movl    $3, %eax                #  81:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  82:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  83:     call   t52 <- DIM
    addl    $8, %esp               
    movl    %eax, -184(%ebp)       
    movl    -180(%ebp), %eax        #  84:     mul    t53 <- t51, t52
    movl    -184(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -188(%ebp)       
    movl    -188(%ebp), %eax        #  85:     add    t54 <- t53, 76322
    movl    $76322, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -192(%ebp)       
    movl    $4, %eax                #  86:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  87:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  88:     call   t55 <- DIM
    addl    $8, %esp               
    movl    %eax, -196(%ebp)       
    movl    -192(%ebp), %eax        #  89:     mul    t56 <- t54, t55
    movl    -196(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -200(%ebp)       
    movl    -200(%ebp), %eax        #  90:     add    t57 <- t56, 75859
    movl    $75859, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -204(%ebp)       
    movl    $5, %eax                #  91:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  92:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  93:     call   t58 <- DIM
    addl    $8, %esp               
    movl    %eax, -208(%ebp)       
    movl    -204(%ebp), %eax        #  94:     mul    t59 <- t57, t58
    movl    -208(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -212(%ebp)       
    movl    -212(%ebp), %eax        #  95:     add    t60 <- t59, 71083
    movl    $71083, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -220(%ebp)       
    movl    -220(%ebp), %eax        #  96:     mul    t61 <- t60, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -224(%ebp)       
    movl    20(%ebp), %eax          #  97:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  98:     call   t62 <- DOFS
    addl    $4, %esp               
    movl    %eax, -228(%ebp)       
    movl    -224(%ebp), %eax        #  99:     add    t63 <- t61, t62
    movl    -228(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -232(%ebp)       
    movl    20(%ebp), %eax          # 100:     add    t64 <- v4, t63
    movl    -232(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -236(%ebp)       
    movzbl  -137(%ebp), %eax        # 101:     assign @t64 <- t41
    movl    -236(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $240, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 6 of <array 10 of <array 3 of <array 4 of <array 10 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 2 of <array 1 of <array 1 of <array 4 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <char> %ebp-26 ]

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    movl    $67967, %eax            #   1:     if     67967 >= 29324 goto 2
    movl    $29324, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2               
    jmp     l_test_3                #   2:     goto   3
l_test_2:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   5:     goto   4
l_test_3:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_8_if_false       #  10:     goto   8_if_false
    jmp     l_test_8_if_false       #  11:     goto   8_if_false
    movl    $91498, %eax            #  12:     if     91498 = 91029 goto 14
    movl    $91029, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_14              
    jmp     l_test_15               #  13:     goto   15
l_test_14:
    movl    $1, %eax                #  15:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_16               #  16:     goto   16
l_test_15:
    movl    $0, %eax                #  18:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_16:
    movzbl  -14(%ebp), %eax         #  20:     assign v1 <- t1
    movb    %al, v1                
    leal    v3, %eax                #  21:     &()    t2 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  3 <- t2
    pushl   %eax                   
    movl    $100, %eax              #  23:     param  2 <- 100
    pushl   %eax                   
    leal    v2, %eax                #  24:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     param  1 <- t3
    pushl   %eax                   
    movl    $98, %eax               #  26:     if     98 > 99 goto 19
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_19              
    jmp     l_test_20               #  27:     goto   20
l_test_19:
    movl    $1, %eax                #  29:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_21               #  30:     goto   21
l_test_20:
    movl    $0, %eax                #  32:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_test_21:
    movzbl  -25(%ebp), %eax         #  34:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  35:     call   t5 <- f1
    addl    $16, %esp              
    movb    %al, -26(%ebp)         
l_test_24_while_cond:
    movl    $0, %eax                #  37:     if     0 # 0 goto 25_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_25_while_body   
    jmp     l_test_23               #  38:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  40:     goto   24_while_cond
l_test_23:
    movl    $99, %eax               #  42:     if     99 > 100 goto 28_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_28_if_true      
    jmp     l_test_29_if_false      #  43:     goto   29_if_false
l_test_28_if_true:
    jmp     l_test_27               #  45:     goto   27
l_test_29_if_false:
l_test_27:
    jmp     l_test_6                #  48:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $99, %eax               #  51:     assign v0 <- 99
    movb    %al, v0                

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
v2:                                 # <array 8 of <array 2 of <array 1 of <array 1 of <array 4 of <int>>>>>>
    .long    5
    .long    8
    .long    2
    .long    1
    .long    1
    .long    4
    .skip  256
v3:                                 # <array 6 of <array 10 of <array 3 of <array 4 of <array 10 of <bool>>>>>>
    .long    5
    .long    6
    .long   10
    .long    3
    .long    4
    .long   10
    .skip 7200








    # end of global data section
    #-----------------------------------------

    .end
##################################################
