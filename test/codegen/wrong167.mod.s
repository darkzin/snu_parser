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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v0       <bool> %ebp-29 ]

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
l_f0_1_while_cond:
    movl    $31504, %eax            #   1:     if     31504 = 84191 goto 2_while_body
    movl    $84191, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    call    dummyProcedure          #   4:     call   dummyProcedure
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $54770, %eax            #   7:     if     54770 < 64082 goto 6_if_true
    movl    $64082, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   8:     goto   7_if_false
l_f0_6_if_true:
l_f0_10_while_cond:
    movl    $1, %eax                #  11:     if     1 # 0 goto 11_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_11_while_body     
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  14:     goto   10_while_cond
l_f0_9:
    movl    $42115, %eax            #  16:     if     42115 >= 9809 goto 14
    movl    $9809, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f0_14                
    jmp     l_f0_15                 #  17:     goto   15
l_f0_14:
    movl    $1, %eax                #  19:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_16                 #  20:     goto   16
l_f0_15:
    movl    $0, %eax                #  22:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_16:
    movzbl  -13(%ebp), %eax         #  24:     assign v0 <- t1
    movb    %al, -29(%ebp)         
    jmp     l_f0_5                  #  25:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $66185, %eax            #  28:     sub    t2 <- 66185, 14032
    movl    $14032, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $8111, %eax             #  29:     sub    t3 <- 8111, 34385
    movl    $34385, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     sub    t4 <- t3, 53599
    movl    $53599, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #  31:     if     t2 < t4 goto 19_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  32:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  34:     goto   18
l_f0_20_if_false:
l_f0_18:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 10 of <array 9 of <array 6 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 1 of <array 3 of <array 10 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 7 of <array 5 of <array 7 of <array 1 of <int>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    jmp     l_f1_exit              
    call    f0                      #   1:     call   t1 <- f0
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   2:     assign v3 <- 98
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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t2       <char> %ebp-57 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t31      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t32      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t33      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t34      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t35      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t36      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t37      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t38      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t39      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t4       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t40      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t41      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t42      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t43      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t44      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t45      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t46      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t47      <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t48      <int> %ebp-184 ]
    #   -188(%ebp)   4  [ $t49      <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t5       <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t50      <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t51      <int> %ebp-200 ]
    #   -204(%ebp)   4  [ $t52      <int> %ebp-204 ]
    #   -208(%ebp)   4  [ $t53      <int> %ebp-208 ]
    #   -212(%ebp)   4  [ $t54      <int> %ebp-212 ]
    #   -216(%ebp)   4  [ $t55      <int> %ebp-216 ]
    #   -220(%ebp)   4  [ $t56      <int> %ebp-220 ]
    #   -224(%ebp)   4  [ $t57      <int> %ebp-224 ]
    #   -228(%ebp)   4  [ $t58      <int> %ebp-228 ]
    #   -232(%ebp)   4  [ $t59      <int> %ebp-232 ]
    #   -236(%ebp)   4  [ $t6       <int> %ebp-236 ]
    #   -240(%ebp)   4  [ $t60      <int> %ebp-240 ]
    #   -244(%ebp)   4  [ $t61      <int> %ebp-244 ]
    #   -248(%ebp)   4  [ $t62      <int> %ebp-248 ]
    #   -252(%ebp)   4  [ $t63      <int> %ebp-252 ]
    #   -256(%ebp)   4  [ $t64      <int> %ebp-256 ]
    #   -260(%ebp)   4  [ $t65      <int> %ebp-260 ]
    #   -264(%ebp)   4  [ $t66      <int> %ebp-264 ]
    #   -268(%ebp)   4  [ $t67      <int> %ebp-268 ]
    #   -272(%ebp)   4  [ $t68      <int> %ebp-272 ]
    #   -276(%ebp)   4  [ $t7       <int> %ebp-276 ]
    #   -280(%ebp)   4  [ $t8       <int> %ebp-280 ]
    #   -284(%ebp)   4  [ $t9       <int> %ebp-284 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 6 of <array 10 of <array 6 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 6 of <array 3 of <array 2 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $272, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $68, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $1, %eax                #   0:     if     1 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   4:     call   t2 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    $37624, %eax            #  11:     mul    t4 <- 37624, t3
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  12:     add    t5 <- t4, 71568
    movl    $71568, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -192(%ebp)       
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -236(%ebp)       
    movl    -192(%ebp), %eax        #  16:     mul    t7 <- t5, t6
    movl    -236(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -276(%ebp)       
    movl    $10115, %eax            #  17:     sub    t8 <- 10115, 8793
    movl    $8793, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -280(%ebp)       
    movl    -276(%ebp), %eax        #  18:     add    t9 <- t7, t8
    movl    -280(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -284(%ebp)       
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -284(%ebp), %eax        #  22:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t12 <- t11, 52682
    movl    $52682, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  27:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $91581, %eax            #  28:     sub    t15 <- 91581, 10086
    movl    $10086, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  30:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  33:     add    t19 <- t17, t18
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  34:     add    t20 <- v1, t19
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $98, %eax               #  35:     assign @t20 <- 98
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $2, %eax                #  36:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  38:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $85469, %eax            #  39:     mul    t22 <- 85469, t21
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  40:     add    t23 <- t22, 40080
    movl    $40080, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  41:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  42:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  43:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  44:     mul    t25 <- t23, t24
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  45:     add    t26 <- t25, 29365
    movl    $29365, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  46:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  47:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  48:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  49:     mul    t28 <- t26, t27
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  50:     add    t29 <- t28, 99041
    movl    $99041, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $5, %eax                #  51:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  52:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  53:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -100(%ebp), %eax        #  54:     mul    t31 <- t29, t30
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  55:     add    t32 <- t31, 72214
    movl    $72214, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  56:     mul    t33 <- t32, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    16(%ebp), %eax          #  57:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  58:     call   t34 <- DOFS
    addl    $4, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  59:     add    t35 <- t33, t34
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    16(%ebp), %eax          #  60:     add    t36 <- v2, t35
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $0, %eax                #  61:     assign @t36 <- 0
    movl    -132(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $2, %eax                #  62:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  63:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  64:     call   t37 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    $45285, %eax            #  65:     mul    t38 <- 45285, t37
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  66:     add    t39 <- t38, 28901
    movl    $28901, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $3, %eax                #  67:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  68:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  69:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -144(%ebp), %eax        #  70:     mul    t41 <- t39, t40
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  71:     add    t42 <- t41, 2264
    movl    $2264, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    $4, %eax                #  72:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  73:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  74:     call   t43 <- DIM
    addl    $8, %esp               
    movl    %eax, -164(%ebp)       
    movl    -160(%ebp), %eax        #  75:     mul    t44 <- t42, t43
    movl    -164(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #  76:     add    t45 <- t44, 67020
    movl    $67020, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    $5, %eax                #  77:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  78:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  79:     call   t46 <- DIM
    addl    $8, %esp               
    movl    %eax, -176(%ebp)       
    movl    -172(%ebp), %eax        #  80:     mul    t47 <- t45, t46
    movl    -176(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        #  81:     add    t48 <- t47, 37632
    movl    $37632, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -184(%ebp)       
    movl    -184(%ebp), %eax        #  82:     mul    t49 <- t48, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -188(%ebp)       
    movl    16(%ebp), %eax          #  83:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  84:     call   t50 <- DOFS
    addl    $4, %esp               
    movl    %eax, -196(%ebp)       
    movl    -188(%ebp), %eax        #  85:     add    t51 <- t49, t50
    movl    -196(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -200(%ebp)       
    movl    16(%ebp), %eax          #  86:     add    t52 <- v2, t51
    movl    -200(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -204(%ebp)       
    movl    $0, %eax                #  87:     assign @t52 <- 0
    movl    -204(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $2, %eax                #  88:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  89:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  90:     call   t53 <- DIM
    addl    $8, %esp               
    movl    %eax, -208(%ebp)       
    movl    $90403, %eax            #  91:     mul    t54 <- 90403, t53
    movl    -208(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -212(%ebp)       
    movl    -212(%ebp), %eax        #  92:     add    t55 <- t54, 57380
    movl    $57380, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -216(%ebp)       
    movl    $3, %eax                #  93:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  94:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  95:     call   t56 <- DIM
    addl    $8, %esp               
    movl    %eax, -220(%ebp)       
    movl    -216(%ebp), %eax        #  96:     mul    t57 <- t55, t56
    movl    -220(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -224(%ebp)       
    movl    -224(%ebp), %eax        #  97:     add    t58 <- t57, 72067
    movl    $72067, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -228(%ebp)       
    movl    $4, %eax                #  98:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  99:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     # 100:     call   t59 <- DIM
    addl    $8, %esp               
    movl    %eax, -232(%ebp)       
    movl    -228(%ebp), %eax        # 101:     mul    t60 <- t58, t59
    movl    -232(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -240(%ebp)       
    movl    -240(%ebp), %eax        # 102:     add    t61 <- t60, 1046
    movl    $1046, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -244(%ebp)       
    movl    $5, %eax                # 103:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          # 104:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     # 105:     call   t62 <- DIM
    addl    $8, %esp               
    movl    %eax, -248(%ebp)       
    movl    -244(%ebp), %eax        # 106:     mul    t63 <- t61, t62
    movl    -248(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -252(%ebp)       
    movl    -252(%ebp), %eax        # 107:     add    t64 <- t63, 34956
    movl    $34956, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -256(%ebp)       
    movl    -256(%ebp), %eax        # 108:     mul    t65 <- t64, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -260(%ebp)       
    movl    16(%ebp), %eax          # 109:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    # 110:     call   t66 <- DOFS
    addl    $4, %esp               
    movl    %eax, -264(%ebp)       
    movl    -260(%ebp), %eax        # 111:     add    t67 <- t65, t66
    movl    -264(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -268(%ebp)       
    movl    16(%ebp), %eax          # 112:     add    t68 <- v2, t67
    movl    -268(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -272(%ebp)       
    movl    $0, %eax                # 113:     assign @t68 <- 0
    movl    -272(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $97, %eax               # 114:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    movl    $100, %eax              # 115:     if     100 <= 100 goto 15_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_15_if_true        
    jmp     l_f2_16_if_false        # 116:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 # 118:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_7                  # 121:     goto   7
l_f2_7:

l_f2_exit:
    # epilogue
    addl    $272, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    jmp     l_test_exit            
    call    f0                      #   1:     call   t0 <- f0
    movb    %al, -13(%ebp)         
l_test_3_while_cond:
    jmp     l_test_2                #   3:     goto   2
    jmp     l_test_exit            
l_test_12_while_cond:
    movl    $86194, %eax            #   6:     if     86194 # 78075 goto 13_while_body
    movl    $78075, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_13_while_body   
    jmp     l_test_11               #   7:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #   9:     goto   12_while_cond
l_test_11:
    movl    $8035, %eax             #  11:     assign v0 <- 8035
    movl    %eax, v0               
    jmp     l_test_3_while_cond     #  12:     goto   3_while_cond
l_test_2:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
