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
    #    -13(%ebp)   1  [ $t50      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t51      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t52      <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <char> %ebp-16 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_3                  #   1:     goto   3
l_f0_3:
    movl    $99, %eax               #   3:     assign v0 <- 99
    movb    %al, -16(%ebp)         
    movl    $97, %eax               #   4:     return 97
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   5:     call   t50 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_11_if_false        #   9:     goto   11_if_false
    call    dummyCHARfunc           #  10:     call   t51 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     return t51
    jmp     l_f0_exit              
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_if_false:
l_f0_9:
l_f0_14_while_cond:
    jmp     l_f0_13                 #  16:     goto   13
    call    dummyCHARfunc           #  17:     call   t52 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  18:     return t52
    jmp     l_f0_exit              
    jmp     l_f0_14_while_cond      #  19:     goto   14_while_cond
l_f0_13:

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
    #    -16(%ebp)   4  [ $t50      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t51      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t52      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t53      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t54      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t55      <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 56 of <array 18 of <array 88 of <array 32 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    movl    $79919, %eax            #   0:     add    t50 <- 79919, 8547
    movl    $8547, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t51 <- t50, 73108
    movl    $73108, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t51
    movl    %eax, 12(%ebp)         
    call    dummyProcedure          #   3:     call   dummyProcedure
l_f1_3_while_cond:
    movl    $25568, %eax            #   5:     add    t52 <- 25568, 41298
    movl    $41298, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     sub    t53 <- t52, 92580
    movl    $92580, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     add    t54 <- t53, 93784
    movl    $93784, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     add    t55 <- t54, 94423
    movl    $94423, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $72316, %eax            #   9:     if     72316 >= t55 goto 4_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_4_while_body      
    jmp     l_f1_2                  #  10:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #  12:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t50      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t51      <ptr(4) to <array 6 of <array 56 of <array 18 of <array 88 of <array 32 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t52      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t53      <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 17 of <array 85 of <array 78 of <array 92 of <array 60 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 42 of <array 36 of <array 82 of <array 77 of <array 82 of <bool>>>>>>> %ebp+20 ]
    #   -17031216(%ebp)  17031192  [ $v4       <array 6 of <array 56 of <array 18 of <array 88 of <array 32 of <char>>>>>> %ebp-17031216 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $17031204, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4257801, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-17031216(%ebp)      # local array 'v4': 5 dimensions
    movl    $6,-17031212(%ebp)      #   dimension 1: 6 elements
    movl    $56,-17031208(%ebp)     #   dimension 2: 56 elements
    movl    $18,-17031204(%ebp)     #   dimension 3: 18 elements
    movl    $88,-17031200(%ebp)     #   dimension 4: 88 elements
    movl    $32,-17031196(%ebp)     #   dimension 5: 32 elements

    # function body
    movl    $81722, %eax            #   0:     param  0 <- 81722
    pushl   %eax                   
    call    WriteInt                #   1:     call   WriteInt
    addl    $4, %esp               
l_f2_2_while_cond:
    call    dummyBOOLfunc           #   3:     call   t50 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_6_while_cond:
    jmp     l_f2_5                  #   5:     goto   5
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
l_f2_5:
    movl    $1, %eax                #   8:     if     1 = 0 goto 9_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   9:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  11:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $31265, %eax            #  14:     if     31265 > 89526 goto 13_if_true
    movl    $89526, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  15:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_12                 #  17:     goto   12
l_f2_14_if_false:
l_f2_12:
    movl    $28715, %eax            #  20:     param  1 <- 28715
    pushl   %eax                   
    leal    -17031216(%ebp), %eax   #  21:     &()    t51 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  0 <- t51
    pushl   %eax                   
    call    f1                      #  23:     call   t52 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_f2_2_while_cond       #  24:     goto   2_while_cond
    call    dummyBOOLfunc           #  25:     call   t53 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         

l_f2_exit:
    # epilogue
    addl    $17031204, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 42 of <array 36 of <array 82 of <array 77 of <array 82 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 17 of <array 85 of <array 78 of <array 92 of <array 60 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 17 of <array 85 of <array 78 of <array 92 of <array 60 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 17 of <array 85 of <array 78 of <array 92 of <array 60 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <ptr(4) to <array 17 of <array 85 of <array 78 of <array 92 of <array 60 of <int>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 17 of <array 85 of <array 78 of <array 92 of <array 60 of <int>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t27      <bool> %ebp-93 ]
    #   -100(%ebp)   4  [ $t28      <ptr(4) to <array 42 of <array 36 of <array 82 of <array 77 of <array 82 of <bool>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <ptr(4) to <array 42 of <array 36 of <array 82 of <array 77 of <array 82 of <bool>>>>>>> %ebp-104 ]
    #   -105(%ebp)   1  [ $t3       <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t32      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t33      <ptr(4) to <array 42 of <array 36 of <array 82 of <array 77 of <array 82 of <bool>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t34      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t35      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t36      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t37      <ptr(4) to <array 42 of <array 36 of <array 82 of <array 77 of <array 82 of <bool>>>>>>> %ebp-140 ]
    #   -144(%ebp)   4  [ $t38      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t39      <int> %ebp-148 ]
    #   -149(%ebp)   1  [ $t4       <char> %ebp-149 ]
    #   -156(%ebp)   4  [ $t40      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t41      <ptr(4) to <array 42 of <array 36 of <array 82 of <array 77 of <array 82 of <bool>>>>>>> %ebp-160 ]
    #   -164(%ebp)   4  [ $t42      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t43      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t44      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t45      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t46      <ptr(4) to <array 42 of <array 36 of <array 82 of <array 77 of <array 82 of <bool>>>>>>> %ebp-180 ]
    #   -184(%ebp)   4  [ $t47      <int> %ebp-184 ]
    #   -188(%ebp)   4  [ $t48      <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t49      <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t5       <ptr(4) to <array 17 of <array 85 of <array 78 of <array 92 of <array 60 of <int>>>>>>> %ebp-196 ]
    #   -200(%ebp)   4  [ $t6       <ptr(4) to <array 17 of <array 85 of <array 78 of <array 92 of <array 60 of <int>>>>>>> %ebp-200 ]
    #   -204(%ebp)   4  [ $t7       <int> %ebp-204 ]
    #   -208(%ebp)   4  [ $t8       <int> %ebp-208 ]
    #   -212(%ebp)   4  [ $t9       <int> %ebp-212 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $200, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $50, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    leal    v1, %eax                #   1:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  3 <- t0
    pushl   %eax                   
    movl    $97, %eax               #   3:     param  2 <- 97
    pushl   %eax                   
    leal    v0, %eax                #   4:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  1 <- t1
    pushl   %eax                   
    movl    $9008, %eax             #   6:     add    t2 <- 9008, 80517
    movl    $80517, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $88915, %eax            #   7:     if     88915 = t2 goto 4
    movl    -64(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_4               
    jmp     l_test_5                #   8:     goto   5
l_test_4:
    movl    $1, %eax                #  10:     assign t3 <- 1
    movb    %al, -105(%ebp)        
    jmp     l_test_6                #  11:     goto   6
l_test_5:
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -105(%ebp)        
l_test_6:
    movzbl  -105(%ebp), %eax        #  15:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  16:     call   t4 <- f2
    addl    $16, %esp              
    movb    %al, -149(%ebp)        
    leal    v0, %eax                #  17:     &()    t5 <- v0
    movl    %eax, -196(%ebp)       
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  19:     &()    t6 <- v0
    movl    %eax, -200(%ebp)       
    movl    -200(%ebp), %eax        #  20:     param  0 <- t6
    pushl   %eax                   
    call    DIM                     #  21:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -204(%ebp)       
    movl    $64170, %eax            #  22:     mul    t8 <- 64170, t7
    movl    -204(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -208(%ebp)       
    movl    -208(%ebp), %eax        #  23:     add    t9 <- t8, 30335
    movl    $30335, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -212(%ebp)       
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  25:     &()    t10 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  27:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -212(%ebp), %eax        #  28:     mul    t12 <- t9, t11
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     add    t13 <- t12, 92866
    movl    $92866, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  31:     &()    t14 <- v0
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  33:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  34:     mul    t16 <- t13, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  35:     add    t17 <- t16, 8003
    movl    $8003, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  37:     &()    t18 <- v0
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  38:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  39:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  40:     mul    t20 <- t17, t19
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  41:     add    t21 <- t20, 89207
    movl    $89207, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  42:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    leal    v0, %eax                #  43:     &()    t23 <- v0
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  44:     param  0 <- t23
    pushl   %eax                   
    call    DOFS                    #  45:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  46:     add    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -196(%ebp), %eax        #  47:     add    t26 <- t5, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $64046, %eax            #  48:     assign @t26 <- 64046
    movl    -92(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_test_exit            
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  51:     goto   11_while_cond
    jmp     l_test_0                #  52:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #  55:     call   t27 <- dummyBOOLfunc
    movb    %al, -93(%ebp)         
    leal    v1, %eax                #  56:     &()    t28 <- v1
    movl    %eax, -100(%ebp)       
    movl    $2, %eax                #  57:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  58:     &()    t29 <- v1
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  59:     param  0 <- t29
    pushl   %eax                   
    call    DIM                     #  60:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    $22573, %eax            #  61:     mul    t31 <- 22573, t30
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  62:     add    t32 <- t31, 60825
    movl    $60825, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $3, %eax                #  63:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  64:     &()    t33 <- v1
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  65:     param  0 <- t33
    pushl   %eax                   
    call    DIM                     #  66:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -120(%ebp), %eax        #  67:     mul    t35 <- t32, t34
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  68:     add    t36 <- t35, 9238
    movl    $9238, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $4, %eax                #  69:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  70:     &()    t37 <- v1
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  71:     param  0 <- t37
    pushl   %eax                   
    call    DIM                     #  72:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -136(%ebp), %eax        #  73:     mul    t39 <- t36, t38
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  74:     add    t40 <- t39, 86449
    movl    $86449, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $5, %eax                #  75:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  76:     &()    t41 <- v1
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  77:     param  0 <- t41
    pushl   %eax                   
    call    DIM                     #  78:     call   t42 <- DIM
    addl    $8, %esp               
    movl    %eax, -164(%ebp)       
    movl    -156(%ebp), %eax        #  79:     mul    t43 <- t40, t42
    movl    -164(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #  80:     add    t44 <- t43, 512
    movl    $512, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #  81:     mul    t45 <- t44, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -176(%ebp)       
    leal    v1, %eax                #  82:     &()    t46 <- v1
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        #  83:     param  0 <- t46
    pushl   %eax                   
    call    DOFS                    #  84:     call   t47 <- DOFS
    addl    $4, %esp               
    movl    %eax, -184(%ebp)       
    movl    -176(%ebp), %eax        #  85:     add    t48 <- t45, t47
    movl    -184(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -188(%ebp)       
    movl    -100(%ebp), %eax        #  86:     add    t49 <- t28, t48
    movl    -188(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -192(%ebp)       
    movzbl  -93(%ebp), %eax         #  87:     assign @t49 <- t27
    movl    -192(%ebp), %edi       
    movb    %al, (%edi)            
l_test_15_while_cond:
    jmp     l_test_14               #  89:     goto   14
    movl    $97, %eax               #  90:     if     97 <= 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_18_if_true      
    jmp     l_test_19_if_false      #  91:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  93:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_exit            
    movl    $100, %eax              #  97:     assign v4 <- 100
    movb    %al, v4                
    jmp     l_test_15_while_cond    #  98:     goto   15_while_cond
l_test_14:

l_test_exit:
    # epilogue
    addl    $200, %esp              # remove locals
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
v0:                                 # <array 17 of <array 85 of <array 78 of <array 92 of <array 60 of <int>>>>>>
    .long    5
    .long   17
    .long   85
    .long   78
    .long   92
    .long   60
    .skip -1806330496
v1:                                 # <array 42 of <array 36 of <array 82 of <array 77 of <array 82 of <bool>>>>>>
    .long    5
    .long   42
    .long   36
    .long   82
    .long   77
    .long   82
    .skip 782834976
v2:                                 # <int>
    .skip    4
v3:                                 # <bool>
    .skip    1
v4:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
