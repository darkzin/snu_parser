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
    #    -77(%ebp)   1  [ $t6       <char> %ebp-77 ]
    #    -78(%ebp)   1  [ $t7       <bool> %ebp-78 ]
    #    -79(%ebp)   1  [ $t8       <char> %ebp-79 ]
    #    -80(%ebp)   1  [ $t9       <bool> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 67 of <array 44 of <array 70 of <array 59 of <array 99 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 14 of <array 83 of <array 73 of <array 48 of <array 67 of <int>>>>>>> %ebp+16 ]
    #    -81(%ebp)   1  [ $v3       <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $v4       <char> %ebp-82 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #   1:     if     t6 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_5_while_cond:
    call    dummyBOOLfunc           #   8:     call   t7 <- dummyBOOLfunc
    movb    %al, -78(%ebp)         
    call    dummyCHARfunc           #   9:     call   t8 <- dummyCHARfunc
    movb    %al, -79(%ebp)         
    movl    $99, %eax               #  10:     if     99 = t8 goto 9
    movzbl  -79(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_10                 #  11:     goto   10
l_f0_9:
    movl    $1, %eax                #  13:     assign t9 <- 1
    movb    %al, -80(%ebp)         
    jmp     l_f0_11                 #  14:     goto   11
l_f0_10:
    movl    $0, %eax                #  16:     assign t9 <- 0
    movb    %al, -80(%ebp)         
l_f0_11:
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $35856, %eax            #  21:     mul    t11 <- 35856, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     add    t12 <- t11, 82835
    movl    $82835, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  26:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     add    t15 <- t14, 77367
    movl    $77367, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  31:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  32:     add    t18 <- t17, 20782
    movl    $20782, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  36:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  37:     add    t21 <- t20, 33945
    movl    $33945, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  38:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  39:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  40:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  41:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  42:     add    t25 <- v1, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -80(%ebp), %eax         #  43:     assign @t25 <- t9
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_5_while_cond       #  44:     goto   5_while_cond
    movl    $98, %eax               #  45:     assign v4 <- 98
    movb    %al, -82(%ebp)         

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 25 of <array 50 of <array 10 of <array 36 of <array 85 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 < t6 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $100, %eax              #   7:     if     100 < 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   8:     goto   6_if_false
l_f1_5_if_true:
l_f1_9_while_cond:
    jmp     l_f1_9_while_cond       #  11:     goto   9_while_cond
    movl    $33968, %eax            #  12:     param  0 <- 33968
    pushl   %eax                   
    call    WriteInt                #  13:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_4                  #  14:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $97, %eax               #  17:     assign v2 <- 97
    movb    %al, -14(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <ptr(4) to <array 67 of <array 44 of <array 70 of <array 59 of <array 99 of <bool>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <ptr(4) to <array 67 of <array 44 of <array 70 of <array 59 of <array 99 of <bool>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t36      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t37      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t38      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t39      <ptr(4) to <array 67 of <array 44 of <array 70 of <array 59 of <array 99 of <bool>>>>>>> %ebp-132 ]
    #   -136(%ebp)   4  [ $t40      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t41      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t42      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t43      <ptr(4) to <array 67 of <array 44 of <array 70 of <array 59 of <array 99 of <bool>>>>>>> %ebp-148 ]
    #   -152(%ebp)   4  [ $t44      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t45      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t46      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t47      <ptr(4) to <array 67 of <array 44 of <array 70 of <array 59 of <array 99 of <bool>>>>>>> %ebp-164 ]
    #   -168(%ebp)   4  [ $t48      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t49      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t50      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t51      <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t52      <ptr(4) to <array 67 of <array 44 of <array 70 of <array 59 of <array 99 of <bool>>>>>>> %ebp-184 ]
    #   -188(%ebp)   4  [ $t53      <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t54      <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t55      <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t56      <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-200 ]
    #   -204(%ebp)   4  [ $t57      <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-204 ]
    #   -208(%ebp)   4  [ $t58      <int> %ebp-208 ]
    #   -212(%ebp)   4  [ $t59      <int> %ebp-212 ]
    #   -213(%ebp)   1  [ $t6       <bool> %ebp-213 ]
    #   -220(%ebp)   4  [ $t60      <int> %ebp-220 ]
    #   -224(%ebp)   4  [ $t61      <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-224 ]
    #   -228(%ebp)   4  [ $t62      <int> %ebp-228 ]
    #   -232(%ebp)   4  [ $t63      <int> %ebp-232 ]
    #   -236(%ebp)   4  [ $t64      <int> %ebp-236 ]
    #   -240(%ebp)   4  [ $t65      <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-240 ]
    #   -244(%ebp)   4  [ $t66      <int> %ebp-244 ]
    #   -248(%ebp)   4  [ $t67      <int> %ebp-248 ]
    #   -252(%ebp)   4  [ $t68      <int> %ebp-252 ]
    #   -256(%ebp)   4  [ $t69      <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-256 ]
    #   -260(%ebp)   4  [ $t7       <ptr(4) to <array 14 of <array 83 of <array 73 of <array 48 of <array 67 of <int>>>>>>> %ebp-260 ]
    #   -264(%ebp)   4  [ $t70      <int> %ebp-264 ]
    #   -268(%ebp)   4  [ $t71      <int> %ebp-268 ]
    #   -272(%ebp)   4  [ $t72      <int> %ebp-272 ]
    #   -276(%ebp)   4  [ $t73      <int> %ebp-276 ]
    #   -280(%ebp)   4  [ $t74      <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-280 ]
    #   -284(%ebp)   4  [ $t75      <int> %ebp-284 ]
    #   -288(%ebp)   4  [ $t76      <int> %ebp-288 ]
    #   -292(%ebp)   4  [ $t77      <int> %ebp-292 ]
    #   -293(%ebp)   1  [ $t78      <bool> %ebp-293 ]
    #   -300(%ebp)   4  [ $t8       <ptr(4) to <array 67 of <array 44 of <array 70 of <array 59 of <array 99 of <bool>>>>>>> %ebp-300 ]
    #   -304(%ebp)   4  [ $t9       <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-304 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 98 of <array 3 of <array 99 of <array 34 of <array 42 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #   -324849160(%ebp)  324848856  [ $v2       <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>> %ebp-324849160 ]
    #   -1530197944(%ebp)  1205348784  [ $v3       <array 67 of <array 44 of <array 70 of <array 59 of <array 99 of <bool>>>>>> %ebp-1530197944 ]
    #   1673567664(%ebp)  1091201688  [ $v4       <array 14 of <array 83 of <array 73 of <array 48 of <array 67 of <int>>>>>> %ebp+1673567664 ]
    #   1673567663(%ebp)   1  [ $v5       <bool> %ebp+1673567663 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1673567672, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $655349906, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-324849160(%ebp)     # local array 'v2': 5 dimensions
    movl    $43,-324849156(%ebp)    #   dimension 1: 43 elements
    movl    $77,-324849152(%ebp)    #   dimension 2: 77 elements
    movl    $24,-324849148(%ebp)    #   dimension 3: 24 elements
    movl    $56,-324849144(%ebp)    #   dimension 4: 56 elements
    movl    $73,-324849140(%ebp)    #   dimension 5: 73 elements
    movl    $5,-1530197944(%ebp)    # local array 'v3': 5 dimensions
    movl    $67,-1530197940(%ebp)   #   dimension 1: 67 elements
    movl    $44,-1530197936(%ebp)   #   dimension 2: 44 elements
    movl    $70,-1530197932(%ebp)   #   dimension 3: 70 elements
    movl    $59,-1530197928(%ebp)   #   dimension 4: 59 elements
    movl    $99,-1530197924(%ebp)   #   dimension 5: 99 elements
    movl    $5,1673567664(%ebp)     # local array 'v4': 5 dimensions
    movl    $14,1673567668(%ebp)    #   dimension 1: 14 elements
    movl    $83,1673567672(%ebp)    #   dimension 2: 83 elements
    movl    $73,1673567676(%ebp)    #   dimension 3: 73 elements
    movl    $48,1673567680(%ebp)    #   dimension 4: 48 elements
    movl    $67,1673567684(%ebp)    #   dimension 5: 67 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t6 <- dummyBOOLfunc
    movb    %al, -213(%ebp)        
    leal    1673567664(%ebp), %eax  #   1:     &()    t7 <- v4
    movl    %eax, -260(%ebp)       
    movl    -260(%ebp), %eax        #   2:     param  2 <- t7
    pushl   %eax                   
    leal    -1530197944(%ebp), %eax #   3:     &()    t8 <- v3
    movl    %eax, -300(%ebp)       
    movl    -300(%ebp), %eax        #   4:     param  1 <- t8
    pushl   %eax                   
    leal    -324849160(%ebp), %eax  #   5:     &()    t9 <- v2
    movl    %eax, -304(%ebp)       
    movl    -304(%ebp), %eax        #   6:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #   7:     call   t10 <- f0
    addl    $12, %esp              
    movl    %eax, -16(%ebp)        
    jmp     l_f2_4_if_false         #   8:     goto   4_if_false
    call    ReadInt                 #   9:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    leal    -324849160(%ebp), %eax  #  10:     &()    t12 <- v2
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    leal    -324849160(%ebp), %eax  #  12:     &()    t13 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     param  0 <- t13
    pushl   %eax                   
    call    DIM                     #  14:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $37258, %eax            #  15:     mul    t15 <- 37258, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     add    t16 <- t15, 58658
    movl    $58658, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    leal    -324849160(%ebp), %eax  #  18:     &()    t17 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  19:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  20:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  21:     mul    t19 <- t16, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t20 <- t19, 21683
    movl    $21683, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    leal    -324849160(%ebp), %eax  #  24:     &()    t21 <- v2
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  25:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  26:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  27:     mul    t23 <- t20, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  28:     add    t24 <- t23, 16879
    movl    $16879, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    leal    -324849160(%ebp), %eax  #  30:     &()    t25 <- v2
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  31:     param  0 <- t25
    pushl   %eax                   
    call    DIM                     #  32:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  33:     mul    t27 <- t24, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  34:     add    t28 <- t27, 96428
    movl    $96428, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  35:     mul    t29 <- t28, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    leal    -324849160(%ebp), %eax  #  36:     &()    t30 <- v2
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  37:     param  0 <- t30
    pushl   %eax                   
    call    DOFS                    #  38:     call   t31 <- DOFS
    addl    $4, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  39:     add    t32 <- t29, t31
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -24(%ebp), %eax         #  40:     add    t33 <- t12, t32
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $98, %eax               #  41:     assign @t33 <- 98
    movl    -108(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $99, %eax               #  42:     if     99 <= 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  43:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  45:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $55527, %eax            #  48:     if     55527 = 81774 goto 13_if_true
    movl    $81774, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  49:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_12                 #  51:     goto   12
l_f2_14_if_false:
l_f2_12:
l_f2_17_while_cond:
    movl    $100, %eax              #  55:     if     100 > 100 goto 18_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_18_while_body     
    jmp     l_f2_16                 #  56:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  58:     goto   17_while_cond
l_f2_16:
    leal    -1530197944(%ebp), %eax #  60:     &()    t34 <- v3
    movl    %eax, -112(%ebp)       
    movl    $2, %eax                #  61:     param  1 <- 2
    pushl   %eax                   
    leal    -1530197944(%ebp), %eax #  62:     &()    t35 <- v3
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  63:     param  0 <- t35
    pushl   %eax                   
    call    DIM                     #  64:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    $91702, %eax            #  65:     mul    t37 <- 91702, t36
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  66:     add    t38 <- t37, 71143
    movl    $71143, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $3, %eax                #  67:     param  1 <- 3
    pushl   %eax                   
    leal    -1530197944(%ebp), %eax #  68:     &()    t39 <- v3
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  69:     param  0 <- t39
    pushl   %eax                   
    call    DIM                     #  70:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    -128(%ebp), %eax        #  71:     mul    t41 <- t38, t40
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  72:     add    t42 <- t41, 54703
    movl    $54703, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $4, %eax                #  73:     param  1 <- 4
    pushl   %eax                   
    leal    -1530197944(%ebp), %eax #  74:     &()    t43 <- v3
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  75:     param  0 <- t43
    pushl   %eax                   
    call    DIM                     #  76:     call   t44 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -144(%ebp), %eax        #  77:     mul    t45 <- t42, t44
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  78:     add    t46 <- t45, 46733
    movl    $46733, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    $5, %eax                #  79:     param  1 <- 5
    pushl   %eax                   
    leal    -1530197944(%ebp), %eax #  80:     &()    t47 <- v3
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  81:     param  0 <- t47
    pushl   %eax                   
    call    DIM                     #  82:     call   t48 <- DIM
    addl    $8, %esp               
    movl    %eax, -168(%ebp)       
    movl    -160(%ebp), %eax        #  83:     mul    t49 <- t46, t48
    movl    -168(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #  84:     add    t50 <- t49, 53124
    movl    $53124, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -176(%ebp)       
    movl    -176(%ebp), %eax        #  85:     mul    t51 <- t50, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -180(%ebp)       
    leal    -1530197944(%ebp), %eax #  86:     &()    t52 <- v3
    movl    %eax, -184(%ebp)       
    movl    -184(%ebp), %eax        #  87:     param  0 <- t52
    pushl   %eax                   
    call    DOFS                    #  88:     call   t53 <- DOFS
    addl    $4, %esp               
    movl    %eax, -188(%ebp)       
    movl    -180(%ebp), %eax        #  89:     add    t54 <- t51, t53
    movl    -188(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -192(%ebp)       
    movl    -112(%ebp), %eax        #  90:     add    t55 <- t34, t54
    movl    -192(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -196(%ebp)       
    movl    $1, %eax                #  91:     assign @t55 <- 1
    movl    -196(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f2_23_if_false        #  92:     goto   23_if_false
    jmp     l_f2_21                 #  93:     goto   21
l_f2_23_if_false:
l_f2_21:
    movl    $97, %eax               #  96:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  97:     call   WriteChar
    addl    $4, %esp               
    leal    -324849160(%ebp), %eax  #  98:     &()    t56 <- v2
    movl    %eax, -200(%ebp)       
    movl    $2, %eax                #  99:     param  1 <- 2
    pushl   %eax                   
    leal    -324849160(%ebp), %eax  # 100:     &()    t57 <- v2
    movl    %eax, -204(%ebp)       
    movl    -204(%ebp), %eax        # 101:     param  0 <- t57
    pushl   %eax                   
    call    DIM                     # 102:     call   t58 <- DIM
    addl    $8, %esp               
    movl    %eax, -208(%ebp)       
    movl    $26590, %eax            # 103:     mul    t59 <- 26590, t58
    movl    -208(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -212(%ebp)       
    movl    -212(%ebp), %eax        # 104:     add    t60 <- t59, 77103
    movl    $77103, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -220(%ebp)       
    movl    $3, %eax                # 105:     param  1 <- 3
    pushl   %eax                   
    leal    -324849160(%ebp), %eax  # 106:     &()    t61 <- v2
    movl    %eax, -224(%ebp)       
    movl    -224(%ebp), %eax        # 107:     param  0 <- t61
    pushl   %eax                   
    call    DIM                     # 108:     call   t62 <- DIM
    addl    $8, %esp               
    movl    %eax, -228(%ebp)       
    movl    -220(%ebp), %eax        # 109:     mul    t63 <- t60, t62
    movl    -228(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -232(%ebp)       
    movl    -232(%ebp), %eax        # 110:     add    t64 <- t63, 52423
    movl    $52423, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -236(%ebp)       
    movl    $4, %eax                # 111:     param  1 <- 4
    pushl   %eax                   
    leal    -324849160(%ebp), %eax  # 112:     &()    t65 <- v2
    movl    %eax, -240(%ebp)       
    movl    -240(%ebp), %eax        # 113:     param  0 <- t65
    pushl   %eax                   
    call    DIM                     # 114:     call   t66 <- DIM
    addl    $8, %esp               
    movl    %eax, -244(%ebp)       
    movl    -236(%ebp), %eax        # 115:     mul    t67 <- t64, t66
    movl    -244(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -248(%ebp)       
    movl    -248(%ebp), %eax        # 116:     add    t68 <- t67, 35729
    movl    $35729, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -252(%ebp)       
    movl    $5, %eax                # 117:     param  1 <- 5
    pushl   %eax                   
    leal    -324849160(%ebp), %eax  # 118:     &()    t69 <- v2
    movl    %eax, -256(%ebp)       
    movl    -256(%ebp), %eax        # 119:     param  0 <- t69
    pushl   %eax                   
    call    DIM                     # 120:     call   t70 <- DIM
    addl    $8, %esp               
    movl    %eax, -264(%ebp)       
    movl    -252(%ebp), %eax        # 121:     mul    t71 <- t68, t70
    movl    -264(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -268(%ebp)       
    movl    -268(%ebp), %eax        # 122:     add    t72 <- t71, 17123
    movl    $17123, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -272(%ebp)       
    movl    -272(%ebp), %eax        # 123:     mul    t73 <- t72, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -276(%ebp)       
    leal    -324849160(%ebp), %eax  # 124:     &()    t74 <- v2
    movl    %eax, -280(%ebp)       
    movl    -280(%ebp), %eax        # 125:     param  0 <- t74
    pushl   %eax                   
    call    DOFS                    # 126:     call   t75 <- DOFS
    addl    $4, %esp               
    movl    %eax, -284(%ebp)       
    movl    -276(%ebp), %eax        # 127:     add    t76 <- t73, t75
    movl    -284(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -288(%ebp)       
    movl    -200(%ebp), %eax        # 128:     add    t77 <- t56, t76
    movl    -288(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -292(%ebp)       
    movl    $100, %eax              # 129:     assign @t77 <- 100
    movl    -292(%ebp), %edi       
    movb    %al, (%edi)            
    call    dummyBOOLfunc           # 130:     call   t78 <- dummyBOOLfunc
    movb    %al, -293(%ebp)        
    movl    $100, %eax              # 131:     assign v1 <- 100
    movb    %al, 12(%ebp)          
    jmp     l_f2_2                  # 132:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $-1673567672, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 14 of <array 83 of <array 73 of <array 48 of <array 67 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 67 of <array 44 of <array 70 of <array 59 of <array 99 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $27116, %eax            #   2:     if     27116 >= 30923 goto 3_while_body
    movl    $30923, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    movl    $14791, %eax            #   5:     if     14791 < 79834 goto 6_if_true
    movl    $79834, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #   6:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   8:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_2_while_cond     #  11:     goto   2_while_cond
l_test_1:
l_test_10_while_cond:
l_test_13_while_cond:
    jmp     l_test_12               #  15:     goto   12
    jmp     l_test_13_while_cond    #  16:     goto   13_while_cond
l_test_12:
    jmp     l_test_15               #  18:     goto   15
l_test_15:
    call    ReadInt                 #  20:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_20_while_cond:
    jmp     l_test_19               #  22:     goto   19
    jmp     l_test_20_while_cond    #  23:     goto   20_while_cond
l_test_19:
    jmp     l_test_10_while_cond    #  25:     goto   10_while_cond
l_test_23_while_cond:
    jmp     l_test_22               #  27:     goto   22
    jmp     l_test_27_if_false      #  28:     goto   27_if_false
    jmp     l_test_28               #  29:     goto   28
l_test_28:
    leal    v2, %eax                #  31:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  32:     param  2 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  33:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     param  1 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  35:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  36:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  37:     call   t4 <- f0
    addl    $12, %esp              
    movl    %eax, -32(%ebp)        
l_test_33_while_cond:
    jmp     l_test_32               #  39:     goto   32
    jmp     l_test_33_while_cond    #  40:     goto   33_while_cond
l_test_32:
    call    ReadInt                 #  42:     call   t5 <- ReadInt
    movl    %eax, -36(%ebp)        
    jmp     l_test_25               #  43:     goto   25
l_test_27_if_false:
l_test_25:
    jmp     l_test_23_while_cond    #  46:     goto   23_while_cond
l_test_22:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <array 43 of <array 77 of <array 24 of <array 56 of <array 73 of <char>>>>>>
    .long    5
    .long   43
    .long   77
    .long   24
    .long   56
    .long   73
    .skip 324848832
v1:                                 # <array 67 of <array 44 of <array 70 of <array 59 of <array 99 of <bool>>>>>>
    .long    5
    .long   67
    .long   44
    .long   70
    .long   59
    .long   99
    .skip 1205348760
v2:                                 # <array 14 of <array 83 of <array 73 of <array 48 of <array 67 of <int>>>>>>
    .long    5
    .long   14
    .long   83
    .long   73
    .long   48
    .long   67
    .skip 1091201664








    # end of global data section
    #-----------------------------------------

    .end
##################################################
