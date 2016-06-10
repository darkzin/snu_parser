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
    #    -16(%ebp)   4  [ $t76      <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp+8 ]
    #    -17(%ebp)   1  [ $v1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v2       <char> %ebp-18 ]

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
    movl    $97, %eax               #   0:     if     97 >= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $70646, %eax            #   4:     if     70646 >= 59263 goto 6_while_body
    movl    $59263, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_6_while_body      
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
l_f0_4:
    movl    $1, %eax                #   9:     assign v1 <- 1
    movb    %al, -17(%ebp)         
    movl    $1, %eax                #  10:     assign v1 <- 1
    movb    %al, -17(%ebp)         
l_f0_11_while_cond:
    movl    $97, %eax               #  12:     if     97 = 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_12_while_body     
    jmp     l_f0_10                 #  13:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  15:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_0                  #  17:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $0, %eax                #  20:     if     0 # 0 goto 15_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  21:     goto   16_if_false
l_f0_15_if_true:
    movl    $100, %eax              #  23:     assign v2 <- 100
    movb    %al, -18(%ebp)         
    movl    $98, %eax               #  24:     if     98 = 100 goto 20_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_20_if_true        
    jmp     l_f0_21_if_false        #  25:     goto   21_if_false
l_f0_20_if_true:
    movl    $93238, %eax            #  27:     if     93238 >= 79632 goto 24_if_true
    movl    $79632, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_24_if_true        
    jmp     l_f0_25_if_false        #  28:     goto   25_if_false
l_f0_24_if_true:
    jmp     l_f0_23                 #  30:     goto   23
l_f0_25_if_false:
l_f0_23:
    jmp     l_f0_19                 #  33:     goto   19
l_f0_21_if_false:
l_f0_19:
    jmp     l_f0_14                 #  36:     goto   14
l_f0_16_if_false:
l_f0_14:
    call    dummyINTfunc            #  39:     call   t76 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -13(%ebp)   1  [ $t76      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t77      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t78      <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 8 of <array 10 of <array 7 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #   -10416(%ebp)  10392  [ $v1       <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>> %ebp-10416 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $10404, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2601, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-10416(%ebp)         # local array 'v1': 5 dimensions
    movl    $9,-10412(%ebp)         #   dimension 1: 9 elements
    movl    $8,-10408(%ebp)         #   dimension 2: 8 elements
    movl    $6,-10404(%ebp)         #   dimension 3: 6 elements
    movl    $2,-10400(%ebp)         #   dimension 4: 2 elements
    movl    $3,-10396(%ebp)         #   dimension 5: 3 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t76 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t76
    jmp     l_f1_exit              
    call    dummyProcedure          #   2:     call   dummyProcedure
    leal    -10416(%ebp), %eax      #   3:     &()    t77 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t77
    pushl   %eax                   
    call    f0                      #   5:     call   t78 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $10404, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t76      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t77      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t78      <ptr(4) to <array 5 of <array 8 of <array 10 of <array 7 of <array 8 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t79      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t80      <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 7 of <array 5 of <array 9 of <array 9 of <char>>>>>>> %ebp+8 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v2       <bool> %ebp-37 ]
    #   -22464(%ebp)  22424  [ $v3       <array 5 of <array 8 of <array 10 of <array 7 of <array 8 of <bool>>>>>> %ebp-22464 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $22452, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5613, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-22464(%ebp)         # local array 'v3': 5 dimensions
    movl    $5,-22460(%ebp)         #   dimension 1: 5 elements
    movl    $8,-22456(%ebp)         #   dimension 2: 8 elements
    movl    $10,-22452(%ebp)        #   dimension 3: 10 elements
    movl    $7,-22448(%ebp)         #   dimension 4: 7 elements
    movl    $8,-22444(%ebp)         #   dimension 5: 8 elements

    # function body
    movl    $21603, %eax            #   0:     mul    t76 <- 21603, 10923
    movl    $10923, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v1 <- t76
    movl    %eax, -36(%ebp)        
    movl    $5573, %eax             #   2:     if     5573 > 38204 goto 2
    movl    $38204, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_2                 
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t77 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t77 <- 0
    movb    %al, -17(%ebp)         
l_f2_4:
    movzbl  -17(%ebp), %eax         #  10:     assign v2 <- t77
    movb    %al, -37(%ebp)         
    movl    $22662, %eax            #  11:     if     22662 < 91710 goto 7_if_true
    movl    $91710, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  12:     goto   8_if_false
l_f2_7_if_true:
l_f2_11_while_cond:
    movl    $20483, %eax            #  15:     if     20483 > 40865 goto 12_while_body
    movl    $40865, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_12_while_body     
    jmp     l_f2_10                 #  16:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  18:     goto   11_while_cond
l_f2_10:
    leal    -22464(%ebp), %eax      #  20:     &()    t78 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     param  0 <- t78
    pushl   %eax                   
    call    f1                      #  22:     call   t79 <- f1
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    call    ReadInt                 #  23:     call   t80 <- ReadInt
    movl    %eax, -32(%ebp)        
    jmp     l_f2_6                  #  24:     goto   6
l_f2_8_if_false:
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $22452, %esp            # remove locals
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
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t32      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t33      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t34      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t35      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t36      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t37      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-140 ]
    #   -144(%ebp)   4  [ $t38      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t39      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t4       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t40      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t41      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-160 ]
    #   -164(%ebp)   4  [ $t42      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t43      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t44      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t45      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-176 ]
    #   -180(%ebp)   4  [ $t46      <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t47      <int> %ebp-184 ]
    #   -188(%ebp)   4  [ $t48      <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t49      <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t5       <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t50      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-200 ]
    #   -204(%ebp)   4  [ $t51      <int> %ebp-204 ]
    #   -208(%ebp)   4  [ $t52      <int> %ebp-208 ]
    #   -212(%ebp)   4  [ $t53      <int> %ebp-212 ]
    #   -216(%ebp)   4  [ $t54      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-216 ]
    #   -220(%ebp)   4  [ $t55      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-220 ]
    #   -224(%ebp)   4  [ $t56      <int> %ebp-224 ]
    #   -228(%ebp)   4  [ $t57      <int> %ebp-228 ]
    #   -232(%ebp)   4  [ $t58      <int> %ebp-232 ]
    #   -236(%ebp)   4  [ $t59      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-236 ]
    #   -240(%ebp)   4  [ $t6       <int> %ebp-240 ]
    #   -244(%ebp)   4  [ $t60      <int> %ebp-244 ]
    #   -248(%ebp)   4  [ $t61      <int> %ebp-248 ]
    #   -252(%ebp)   4  [ $t62      <int> %ebp-252 ]
    #   -256(%ebp)   4  [ $t63      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-256 ]
    #   -260(%ebp)   4  [ $t64      <int> %ebp-260 ]
    #   -264(%ebp)   4  [ $t65      <int> %ebp-264 ]
    #   -268(%ebp)   4  [ $t66      <int> %ebp-268 ]
    #   -272(%ebp)   4  [ $t67      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-272 ]
    #   -276(%ebp)   4  [ $t68      <int> %ebp-276 ]
    #   -280(%ebp)   4  [ $t69      <int> %ebp-280 ]
    #   -284(%ebp)   4  [ $t7       <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-284 ]
    #   -288(%ebp)   4  [ $t70      <int> %ebp-288 ]
    #   -292(%ebp)   4  [ $t71      <int> %ebp-292 ]
    #   -296(%ebp)   4  [ $t72      <ptr(4) to <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>> %ebp-296 ]
    #   -300(%ebp)   4  [ $t73      <int> %ebp-300 ]
    #   -304(%ebp)   4  [ $t74      <int> %ebp-304 ]
    #   -308(%ebp)   4  [ $t75      <int> %ebp-308 ]
    #   -309(%ebp)   1  [ $t8       <char> %ebp-309 ]
    #   -310(%ebp)   1  [ $t9       <bool> %ebp-310 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $300, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $75, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 68141
    movl    $68141, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 72008
    movl    $72008, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   3:     add    t3 <- t2, 30446
    movl    $30446, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   4:     add    t4 <- t3, 81914
    movl    $81914, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #   5:     add    t5 <- t4, 454
    movl    $454, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -196(%ebp)       
    movl    $34674, %eax            #   6:     if     34674 < t5 goto 1_if_true
    movl    -196(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   7:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
l_test_5_while_cond:
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #  14:     goto   8_while_cond
    call    ReadInt                 #  15:     call   t6 <- ReadInt
    movl    %eax, -240(%ebp)       
    leal    v0, %eax                #  16:     &()    t7 <- v0
    movl    %eax, -284(%ebp)       
    movl    -284(%ebp), %eax        #  17:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  18:     call   t8 <- f0
    addl    $4, %esp               
    movb    %al, -309(%ebp)        
    jmp     l_test_5_while_cond     #  19:     goto   5_while_cond
l_test_13_while_cond:
    call    dummyBOOLfunc           #  21:     call   t9 <- dummyBOOLfunc
    movb    %al, -310(%ebp)        
    movzbl  -310(%ebp), %eax        #  22:     if     t9 = 1 goto 14_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_14_while_body   
    jmp     l_test_12               #  23:     goto   12
l_test_14_while_body:
    leal    v0, %eax                #  25:     &()    t10 <- v0
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  26:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  27:     &()    t11 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  29:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $49232, %eax            #  30:     mul    t13 <- 49232, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t14 <- t13, 91110
    movl    $91110, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  32:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  33:     &()    t15 <- v0
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  34:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  35:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  36:     mul    t17 <- t14, t16
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  37:     add    t18 <- t17, 26805
    movl    $26805, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  38:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  39:     &()    t19 <- v0
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  40:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  41:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  42:     mul    t21 <- t18, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  43:     add    t22 <- t21, 50553
    movl    $50553, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  44:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  45:     &()    t23 <- v0
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  46:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  47:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  48:     mul    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  49:     add    t26 <- t25, 95144
    movl    $95144, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  50:     mul    t27 <- t26, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    leal    v0, %eax                #  51:     &()    t28 <- v0
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  52:     param  0 <- t28
    pushl   %eax                   
    call    DOFS                    #  53:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    -96(%ebp), %eax         #  54:     add    t30 <- t27, t29
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -24(%ebp), %eax         #  55:     add    t31 <- t10, t30
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $61308, %eax            #  56:     assign @t31 <- 61308
    movl    -116(%ebp), %edi       
    movl    %eax, (%edi)           
    leal    v0, %eax                #  57:     &()    t32 <- v0
    movl    %eax, -120(%ebp)       
    movl    $2, %eax                #  58:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  59:     &()    t33 <- v0
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  60:     param  0 <- t33
    pushl   %eax                   
    call    DIM                     #  61:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    $24289, %eax            #  62:     mul    t35 <- 24289, t34
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  63:     add    t36 <- t35, 36323
    movl    $36323, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $3, %eax                #  64:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  65:     &()    t37 <- v0
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  66:     param  0 <- t37
    pushl   %eax                   
    call    DIM                     #  67:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -136(%ebp), %eax        #  68:     mul    t39 <- t36, t38
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  69:     add    t40 <- t39, 49138
    movl    $49138, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $4, %eax                #  70:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  71:     &()    t41 <- v0
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  72:     param  0 <- t41
    pushl   %eax                   
    call    DIM                     #  73:     call   t42 <- DIM
    addl    $8, %esp               
    movl    %eax, -164(%ebp)       
    movl    -156(%ebp), %eax        #  74:     mul    t43 <- t40, t42
    movl    -164(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #  75:     add    t44 <- t43, 77953
    movl    $77953, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    $5, %eax                #  76:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  77:     &()    t45 <- v0
    movl    %eax, -176(%ebp)       
    movl    -176(%ebp), %eax        #  78:     param  0 <- t45
    pushl   %eax                   
    call    DIM                     #  79:     call   t46 <- DIM
    addl    $8, %esp               
    movl    %eax, -180(%ebp)       
    movl    -172(%ebp), %eax        #  80:     mul    t47 <- t44, t46
    movl    -180(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -184(%ebp)       
    movl    -184(%ebp), %eax        #  81:     add    t48 <- t47, 48027
    movl    $48027, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -188(%ebp)       
    movl    -188(%ebp), %eax        #  82:     mul    t49 <- t48, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -192(%ebp)       
    leal    v0, %eax                #  83:     &()    t50 <- v0
    movl    %eax, -200(%ebp)       
    movl    -200(%ebp), %eax        #  84:     param  0 <- t50
    pushl   %eax                   
    call    DOFS                    #  85:     call   t51 <- DOFS
    addl    $4, %esp               
    movl    %eax, -204(%ebp)       
    movl    -192(%ebp), %eax        #  86:     add    t52 <- t49, t51
    movl    -204(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -208(%ebp)       
    movl    -120(%ebp), %eax        #  87:     add    t53 <- t32, t52
    movl    -208(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -212(%ebp)       
    movl    $59608, %eax            #  88:     assign @t53 <- 59608
    movl    -212(%ebp), %edi       
    movl    %eax, (%edi)           
    call    WriteLn                 #  89:     call   WriteLn
    leal    v0, %eax                #  90:     &()    t54 <- v0
    movl    %eax, -216(%ebp)       
    movl    $2, %eax                #  91:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  92:     &()    t55 <- v0
    movl    %eax, -220(%ebp)       
    movl    -220(%ebp), %eax        #  93:     param  0 <- t55
    pushl   %eax                   
    call    DIM                     #  94:     call   t56 <- DIM
    addl    $8, %esp               
    movl    %eax, -224(%ebp)       
    movl    $62824, %eax            #  95:     mul    t57 <- 62824, t56
    movl    -224(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -228(%ebp)       
    movl    -228(%ebp), %eax        #  96:     add    t58 <- t57, 32627
    movl    $32627, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -232(%ebp)       
    movl    $3, %eax                #  97:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  98:     &()    t59 <- v0
    movl    %eax, -236(%ebp)       
    movl    -236(%ebp), %eax        #  99:     param  0 <- t59
    pushl   %eax                   
    call    DIM                     # 100:     call   t60 <- DIM
    addl    $8, %esp               
    movl    %eax, -244(%ebp)       
    movl    -232(%ebp), %eax        # 101:     mul    t61 <- t58, t60
    movl    -244(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -248(%ebp)       
    movl    -248(%ebp), %eax        # 102:     add    t62 <- t61, 68182
    movl    $68182, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -252(%ebp)       
    movl    $4, %eax                # 103:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                # 104:     &()    t63 <- v0
    movl    %eax, -256(%ebp)       
    movl    -256(%ebp), %eax        # 105:     param  0 <- t63
    pushl   %eax                   
    call    DIM                     # 106:     call   t64 <- DIM
    addl    $8, %esp               
    movl    %eax, -260(%ebp)       
    movl    -252(%ebp), %eax        # 107:     mul    t65 <- t62, t64
    movl    -260(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -264(%ebp)       
    movl    -264(%ebp), %eax        # 108:     add    t66 <- t65, 52021
    movl    $52021, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -268(%ebp)       
    movl    $5, %eax                # 109:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                # 110:     &()    t67 <- v0
    movl    %eax, -272(%ebp)       
    movl    -272(%ebp), %eax        # 111:     param  0 <- t67
    pushl   %eax                   
    call    DIM                     # 112:     call   t68 <- DIM
    addl    $8, %esp               
    movl    %eax, -276(%ebp)       
    movl    -268(%ebp), %eax        # 113:     mul    t69 <- t66, t68
    movl    -276(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -280(%ebp)       
    movl    -280(%ebp), %eax        # 114:     add    t70 <- t69, 84854
    movl    $84854, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -288(%ebp)       
    movl    -288(%ebp), %eax        # 115:     mul    t71 <- t70, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -292(%ebp)       
    leal    v0, %eax                # 116:     &()    t72 <- v0
    movl    %eax, -296(%ebp)       
    movl    -296(%ebp), %eax        # 117:     param  0 <- t72
    pushl   %eax                   
    call    DOFS                    # 118:     call   t73 <- DOFS
    addl    $4, %esp               
    movl    %eax, -300(%ebp)       
    movl    -292(%ebp), %eax        # 119:     add    t74 <- t71, t73
    movl    -300(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -304(%ebp)       
    movl    -216(%ebp), %eax        # 120:     add    t75 <- t54, t74
    movl    -304(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -308(%ebp)       
    movl    $86710, %eax            # 121:     assign @t75 <- 86710
    movl    -308(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_test_21_if_false      # 122:     goto   21_if_false
    jmp     l_test_19               # 123:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_exit            
    movl    $97, %eax               # 127:     assign v2 <- 97
    movb    %al, v2                
    jmp     l_test_13_while_cond    # 128:     goto   13_while_cond
l_test_12:

l_test_exit:
    # epilogue
    addl    $300, %esp              # remove locals
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
v0:                                 # <array 9 of <array 8 of <array 6 of <array 2 of <array 3 of <int>>>>>>
    .long    5
    .long    9
    .long    8
    .long    6
    .long    2
    .long    3
    .skip 10368
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
