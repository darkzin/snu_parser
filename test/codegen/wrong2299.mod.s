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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, -14(%ebp)         
    movl    $41058, %eax            #   1:     if     41058 <= 91756 goto 2_if_true
    movl    $91756, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    call    dummyBOOLfunc           #   5:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     if     t2 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   9:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_1                  #  11:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_9_while_cond:
    movl    $57399, %eax            #  15:     if     57399 > 23 goto 10_while_body
    movl    $23, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_10_while_body     
    jmp     l_f0_8                  #  16:     goto   8
l_f0_10_while_body:
    movl    $2757, %eax             #  18:     if     2757 < 90984 goto 13_if_true
    movl    $90984, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  19:     goto   14_if_false
l_f0_13_if_true:
    movl    $1, %eax                #  21:     assign v1 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_12                 #  22:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_9_while_cond       #  25:     goto   9_while_cond
l_f0_8:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 43 of <array 88 of <array 74 of <array 17 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 25 of <array 24 of <array 99 of <array 63 of <array 89 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -17(%ebp)   1  [ $v4       <char> %ebp-17 ]

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
    leal    _str_1, %eax            #   0:     &()    t2 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $97, %eax               #   3:     assign v4 <- 97
    movb    %al, -17(%ebp)         
l_f1_3_while_cond:
    jmp     l_f1_2                  #   5:     goto   2
    jmp     l_f1_3_while_cond       #   6:     goto   3_while_cond
l_f1_2:

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
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <ptr(4) to <array 25 of <array 24 of <array 99 of <array 63 of <array 89 of <char>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <ptr(4) to <array 80 of <array 43 of <array 88 of <array 74 of <array 17 of <int>>>>>>> %ebp-80 ]
    #    -81(%ebp)   1  [ $t26      <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $t27      <bool> %ebp-82 ]
    #    -88(%ebp)   4  [ $t28      <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <ptr(4) to <array 25 of <array 24 of <array 99 of <array 63 of <array 89 of <char>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t36      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t37      <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t38      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t39      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t4       <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-140 ]
    #   -144(%ebp)   4  [ $t40      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t41      <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-148 ]
    #   -152(%ebp)   4  [ $t42      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t43      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t44      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t45      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t46      <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-168 ]
    #   -172(%ebp)   4  [ $t47      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t48      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t49      <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t5       <ptr(4) to <array 80 of <array 43 of <array 88 of <array 74 of <array 17 of <int>>>>>>> %ebp-184 ]
    #   -188(%ebp)   4  [ $t50      <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-188 ]
    #   -192(%ebp)   4  [ $t51      <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t52      <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t53      <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-200 ]
    #   -204(%ebp)   4  [ $t54      <int> %ebp-204 ]
    #   -208(%ebp)   4  [ $t55      <int> %ebp-208 ]
    #   -212(%ebp)   4  [ $t56      <int> %ebp-212 ]
    #   -216(%ebp)   4  [ $t57      <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-216 ]
    #   -220(%ebp)   4  [ $t58      <int> %ebp-220 ]
    #   -224(%ebp)   4  [ $t59      <int> %ebp-224 ]
    #   -225(%ebp)   1  [ $t6       <char> %ebp-225 ]
    #   -232(%ebp)   4  [ $t60      <int> %ebp-232 ]
    #   -236(%ebp)   4  [ $t61      <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-236 ]
    #   -240(%ebp)   4  [ $t62      <int> %ebp-240 ]
    #   -244(%ebp)   4  [ $t63      <int> %ebp-244 ]
    #   -248(%ebp)   4  [ $t64      <int> %ebp-248 ]
    #   -252(%ebp)   4  [ $t65      <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-252 ]
    #   -256(%ebp)   4  [ $t66      <int> %ebp-256 ]
    #   -260(%ebp)   4  [ $t67      <int> %ebp-260 ]
    #   -264(%ebp)   4  [ $t68      <int> %ebp-264 ]
    #   -268(%ebp)   4  [ $t69      <int> %ebp-268 ]
    #   -272(%ebp)   4  [ $t7       <int> %ebp-272 ]
    #   -276(%ebp)   4  [ $t70      <ptr(4) to <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>>> %ebp-276 ]
    #   -280(%ebp)   4  [ $t71      <int> %ebp-280 ]
    #   -284(%ebp)   4  [ $t72      <int> %ebp-284 ]
    #   -288(%ebp)   4  [ $t73      <int> %ebp-288 ]
    #   -292(%ebp)   4  [ $t8       <int> %ebp-292 ]
    #   -296(%ebp)   4  [ $t9       <int> %ebp-296 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 96 of <array 52 of <array 6 of <array 70 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 18 of <array 72 of <array 48 of <array 49 of <array 43 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 84 of <array 72 of <array 54 of <array 90 of <array 53 of <int>>>>>>> %ebp+16 ]
    #   -297(%ebp)   1  [ $v3       <char> %ebp-297 ]
    #   -1523287364(%ebp)  1523287064  [ $v4       <array 80 of <array 43 of <array 88 of <array 74 of <array 17 of <int>>>>>> %ebp-1523287364 ]
    #   -1539892988(%ebp)  16605624  [ $v5       <array 40 of <array 6 of <array 74 of <array 85 of <array 11 of <bool>>>>>> %ebp-1539892988 ]
    #   -1872948812(%ebp)  333055824  [ $v6       <array 25 of <array 24 of <array 99 of <array 63 of <array 89 of <char>>>>>> %ebp-1872948812 ]
    #   -1872948813(%ebp)   1  [ $v7       <bool> %ebp-1872948813 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1872948804, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $468237201, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1523287364(%ebp)    # local array 'v4': 5 dimensions
    movl    $80,-1523287360(%ebp)   #   dimension 1: 80 elements
    movl    $43,-1523287356(%ebp)   #   dimension 2: 43 elements
    movl    $88,-1523287352(%ebp)   #   dimension 3: 88 elements
    movl    $74,-1523287348(%ebp)   #   dimension 4: 74 elements
    movl    $17,-1523287344(%ebp)   #   dimension 5: 17 elements
    movl    $5,-1539892988(%ebp)    # local array 'v5': 5 dimensions
    movl    $40,-1539892984(%ebp)   #   dimension 1: 40 elements
    movl    $6,-1539892980(%ebp)    #   dimension 2: 6 elements
    movl    $74,-1539892976(%ebp)   #   dimension 3: 74 elements
    movl    $85,-1539892972(%ebp)   #   dimension 4: 85 elements
    movl    $11,-1539892968(%ebp)   #   dimension 5: 11 elements
    movl    $5,-1872948812(%ebp)    # local array 'v6': 5 dimensions
    movl    $25,-1872948808(%ebp)   #   dimension 1: 25 elements
    movl    $24,-1872948804(%ebp)   #   dimension 2: 24 elements
    movl    $99,-1872948800(%ebp)   #   dimension 3: 99 elements
    movl    $63,-1872948796(%ebp)   #   dimension 4: 63 elements
    movl    $89,-1872948792(%ebp)   #   dimension 5: 89 elements

    # function body
    movl    $98, %eax               #   0:     if     98 <= 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f2_3:
    movzbl  -53(%ebp), %eax         #   8:     param  3 <- t2
    pushl   %eax                   
    leal    -1872948812(%ebp), %eax #   9:     &()    t3 <- v6
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  10:     param  2 <- t3
    pushl   %eax                   
    leal    -1539892988(%ebp), %eax #  11:     &()    t4 <- v5
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  12:     param  1 <- t4
    pushl   %eax                   
    leal    -1523287364(%ebp), %eax #  13:     &()    t5 <- v4
    movl    %eax, -184(%ebp)       
    movl    -184(%ebp), %eax        #  14:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  15:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -225(%ebp)        
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -272(%ebp)       
    movl    $48108, %eax            #  19:     mul    t8 <- 48108, t7
    movl    -272(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -292(%ebp)       
    movl    -292(%ebp), %eax        #  20:     add    t9 <- t8, 70018
    movl    $70018, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -296(%ebp)       
    movl    $3, %eax                #  21:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -296(%ebp), %eax        #  24:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     add    t12 <- t11, 62442
    movl    $62442, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  26:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  29:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     add    t15 <- t14, 72963
    movl    $72963, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  31:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  32:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  33:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  34:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  35:     add    t18 <- t17, 76844
    movl    $76844, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  36:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  37:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  38:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  39:     add    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  40:     add    t22 <- v1, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -225(%ebp), %eax        #  41:     assign @t22 <- t6
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $10413, %eax            #  42:     if     10413 >= 33940 goto 6_if_true
    movl    $33940, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  43:     goto   7_if_false
l_f2_6_if_true:
    movl    $11870, %eax            #  45:     if     11870 # 66919 goto 10_if_true
    movl    $66919, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  46:     goto   11_if_false
l_f2_10_if_true:
    movl    $0, %eax                #  48:     param  3 <- 0
    pushl   %eax                   
    leal    -1872948812(%ebp), %eax #  49:     &()    t23 <- v6
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  50:     param  2 <- t23
    pushl   %eax                   
    leal    -1539892988(%ebp), %eax #  51:     &()    t24 <- v5
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  52:     param  1 <- t24
    pushl   %eax                   
    leal    -1523287364(%ebp), %eax #  53:     &()    t25 <- v4
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  54:     param  0 <- t25
    pushl   %eax                   
    call    f1                      #  55:     call   t26 <- f1
    addl    $16, %esp              
    movb    %al, -81(%ebp)         
    movl    $100, %eax              #  56:     if     100 >= 97 goto 15
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_15                
    jmp     l_f2_16                 #  57:     goto   16
l_f2_15:
    movl    $1, %eax                #  59:     assign t27 <- 1
    movb    %al, -82(%ebp)         
    jmp     l_f2_17                 #  60:     goto   17
l_f2_16:
    movl    $0, %eax                #  62:     assign t27 <- 0
    movb    %al, -82(%ebp)         
l_f2_17:
    leal    -1539892988(%ebp), %eax #  64:     &()    t28 <- v5
    movl    %eax, -88(%ebp)        
    movl    $2, %eax                #  65:     param  1 <- 2
    pushl   %eax                   
    leal    -1539892988(%ebp), %eax #  66:     &()    t29 <- v5
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  67:     param  0 <- t29
    pushl   %eax                   
    call    DIM                     #  68:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    $77481, %eax            #  69:     mul    t31 <- 77481, t30
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  70:     add    t32 <- t31, 50997
    movl    $50997, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $3, %eax                #  71:     param  1 <- 3
    pushl   %eax                   
    leal    -1539892988(%ebp), %eax #  72:     &()    t33 <- v5
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  73:     param  0 <- t33
    pushl   %eax                   
    call    DIM                     #  74:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -108(%ebp), %eax        #  75:     mul    t35 <- t32, t34
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  76:     add    t36 <- t35, 41666
    movl    $41666, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $4, %eax                #  77:     param  1 <- 4
    pushl   %eax                   
    leal    -1539892988(%ebp), %eax #  78:     &()    t37 <- v5
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  79:     param  0 <- t37
    pushl   %eax                   
    call    DIM                     #  80:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    -124(%ebp), %eax        #  81:     mul    t39 <- t36, t38
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  82:     add    t40 <- t39, 66103
    movl    $66103, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $5, %eax                #  83:     param  1 <- 5
    pushl   %eax                   
    leal    -1539892988(%ebp), %eax #  84:     &()    t41 <- v5
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  85:     param  0 <- t41
    pushl   %eax                   
    call    DIM                     #  86:     call   t42 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -144(%ebp), %eax        #  87:     mul    t43 <- t40, t42
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  88:     add    t44 <- t43, 24199
    movl    $24199, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  89:     mul    t45 <- t44, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    leal    -1539892988(%ebp), %eax #  90:     &()    t46 <- v5
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #  91:     param  0 <- t46
    pushl   %eax                   
    call    DOFS                    #  92:     call   t47 <- DOFS
    addl    $4, %esp               
    movl    %eax, -172(%ebp)       
    movl    -164(%ebp), %eax        #  93:     add    t48 <- t45, t47
    movl    -172(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -176(%ebp)       
    movl    -88(%ebp), %eax         #  94:     add    t49 <- t28, t48
    movl    -176(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -180(%ebp)       
    movzbl  -82(%ebp), %eax         #  95:     assign @t49 <- t27
    movl    -180(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f2_9                  #  96:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_5                  #  99:     goto   5
l_f2_7_if_false:
l_f2_5:
    leal    -1539892988(%ebp), %eax # 102:     &()    t50 <- v5
    movl    %eax, -188(%ebp)       
    movl    $56611, %eax            # 103:     div    t51 <- 56611, 41828
    movl    $41828, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -192(%ebp)       
    movl    -192(%ebp), %eax        # 104:     div    t52 <- t51, 51976
    movl    $51976, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -196(%ebp)       
    movl    $2, %eax                # 105:     param  1 <- 2
    pushl   %eax                   
    leal    -1539892988(%ebp), %eax # 106:     &()    t53 <- v5
    movl    %eax, -200(%ebp)       
    movl    -200(%ebp), %eax        # 107:     param  0 <- t53
    pushl   %eax                   
    call    DIM                     # 108:     call   t54 <- DIM
    addl    $8, %esp               
    movl    %eax, -204(%ebp)       
    movl    -196(%ebp), %eax        # 109:     mul    t55 <- t52, t54
    movl    -204(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -208(%ebp)       
    movl    -208(%ebp), %eax        # 110:     add    t56 <- t55, 2019
    movl    $2019, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -212(%ebp)       
    movl    $3, %eax                # 111:     param  1 <- 3
    pushl   %eax                   
    leal    -1539892988(%ebp), %eax # 112:     &()    t57 <- v5
    movl    %eax, -216(%ebp)       
    movl    -216(%ebp), %eax        # 113:     param  0 <- t57
    pushl   %eax                   
    call    DIM                     # 114:     call   t58 <- DIM
    addl    $8, %esp               
    movl    %eax, -220(%ebp)       
    movl    -212(%ebp), %eax        # 115:     mul    t59 <- t56, t58
    movl    -220(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -224(%ebp)       
    movl    -224(%ebp), %eax        # 116:     add    t60 <- t59, 94784
    movl    $94784, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -232(%ebp)       
    movl    $4, %eax                # 117:     param  1 <- 4
    pushl   %eax                   
    leal    -1539892988(%ebp), %eax # 118:     &()    t61 <- v5
    movl    %eax, -236(%ebp)       
    movl    -236(%ebp), %eax        # 119:     param  0 <- t61
    pushl   %eax                   
    call    DIM                     # 120:     call   t62 <- DIM
    addl    $8, %esp               
    movl    %eax, -240(%ebp)       
    movl    -232(%ebp), %eax        # 121:     mul    t63 <- t60, t62
    movl    -240(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -244(%ebp)       
    movl    -244(%ebp), %eax        # 122:     add    t64 <- t63, 24508
    movl    $24508, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -248(%ebp)       
    movl    $5, %eax                # 123:     param  1 <- 5
    pushl   %eax                   
    leal    -1539892988(%ebp), %eax # 124:     &()    t65 <- v5
    movl    %eax, -252(%ebp)       
    movl    -252(%ebp), %eax        # 125:     param  0 <- t65
    pushl   %eax                   
    call    DIM                     # 126:     call   t66 <- DIM
    addl    $8, %esp               
    movl    %eax, -256(%ebp)       
    movl    -248(%ebp), %eax        # 127:     mul    t67 <- t64, t66
    movl    -256(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -260(%ebp)       
    movl    -260(%ebp), %eax        # 128:     add    t68 <- t67, 31741
    movl    $31741, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -264(%ebp)       
    movl    -264(%ebp), %eax        # 129:     mul    t69 <- t68, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -268(%ebp)       
    leal    -1539892988(%ebp), %eax # 130:     &()    t70 <- v5
    movl    %eax, -276(%ebp)       
    movl    -276(%ebp), %eax        # 131:     param  0 <- t70
    pushl   %eax                   
    call    DOFS                    # 132:     call   t71 <- DOFS
    addl    $4, %esp               
    movl    %eax, -280(%ebp)       
    movl    -268(%ebp), %eax        # 133:     add    t72 <- t69, t71
    movl    -280(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -284(%ebp)       
    movl    -188(%ebp), %eax        # 134:     add    t73 <- t50, t72
    movl    -284(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -288(%ebp)       
    movl    $0, %eax                # 135:     assign @t73 <- 0
    movl    -288(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $1872948804, %esp       # remove locals
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
    movl    $99, %eax               #   0:     if     99 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $99, %eax               #   3:     assign v0 <- 99
    movb    %al, v0                
    call    dummyBOOLfunc           #   4:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_9_if_false       #   9:     goto   9_if_false
    jmp     l_test_exit            
    movl    $98, %eax               #  11:     assign v0 <- 98
    movb    %al, v0                
l_test_13_while_cond:
    jmp     l_test_13_while_cond    #  13:     goto   13_while_cond
    call    dummyINTfunc            #  14:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $58268, %eax            #  15:     assign v1 <- 58268
    movl    %eax, v1               
    jmp     l_test_7                #  16:     goto   7
l_test_9_if_false:
l_test_7:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
