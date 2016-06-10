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
    #    -13(%ebp)   1  [ $t52      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t53      <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 2 of <array 1 of <array 1 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 1 of <array 5 of <array 8 of <array 1 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t52 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t52
    jmp     l_f0_exit              
    movl    $97, %eax               #   2:     if     97 > 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    call    dummyCHARfunc           #   5:     call   t53 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_8_if_false         #   6:     goto   8_if_false
    jmp     l_f0_11_if_false        #   7:     goto   11_if_false
    jmp     l_f0_9                  #   8:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $97, %eax               #  11:     return 97
    jmp     l_f0_exit              
    movl    $97, %eax               #  12:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  13:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_1                  #  16:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $64913, %eax            #  19:     if     64913 > 16628 goto 18_if_true
    movl    $16628, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  20:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  22:     goto   17
l_f0_19_if_false:
l_f0_17:
    movl    $99, %eax               #  25:     if     99 = 100 goto 22_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_22_if_true        
    jmp     l_f0_23_if_false        #  26:     goto   23_if_false
l_f0_22_if_true:
    jmp     l_f0_21                 #  28:     goto   21
l_f0_23_if_false:
l_f0_21:
    jmp     l_f0_14                 #  31:     goto   14
l_f0_14:

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
    #    -16(%ebp)   4  [ $t52      <ptr(4) to <array 9 of <array 1 of <array 5 of <array 8 of <array 1 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t53      <ptr(4) to <array 7 of <array 2 of <array 1 of <array 1 of <array 2 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t54      <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #    -22(%ebp)   1  [ $v2       <char> %ebp-22 ]
    #    -76(%ebp)  52  [ $v3       <array 7 of <array 2 of <array 1 of <array 1 of <array 2 of <char>>>>>> %ebp-76 ]
    #   -460(%ebp)  384  [ $v4       <array 9 of <array 1 of <array 5 of <array 8 of <array 1 of <bool>>>>>> %ebp-460 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $448, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $112, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-76(%ebp)            # local array 'v3': 5 dimensions
    movl    $7,-72(%ebp)            #   dimension 1: 7 elements
    movl    $2,-68(%ebp)            #   dimension 2: 2 elements
    movl    $1,-64(%ebp)            #   dimension 3: 1 elements
    movl    $1,-60(%ebp)            #   dimension 4: 1 elements
    movl    $2,-56(%ebp)            #   dimension 5: 2 elements
    movl    $5,-460(%ebp)           # local array 'v4': 5 dimensions
    movl    $9,-456(%ebp)           #   dimension 1: 9 elements
    movl    $1,-452(%ebp)           #   dimension 2: 1 elements
    movl    $5,-448(%ebp)           #   dimension 3: 5 elements
    movl    $8,-444(%ebp)           #   dimension 4: 8 elements
    movl    $1,-440(%ebp)           #   dimension 5: 1 elements

    # function body
    movl    $97, %eax               #   0:     return 97
    jmp     l_f1_exit              
    movl    $100, %eax              #   1:     assign v2 <- 100
    movb    %al, -22(%ebp)         
    leal    -460(%ebp), %eax        #   2:     &()    t52 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  3 <- t52
    pushl   %eax                   
    movl    $1, %eax                #   4:     param  2 <- 1
    pushl   %eax                   
    leal    -76(%ebp), %eax         #   5:     &()    t53 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  1 <- t53
    pushl   %eax                   
    movl    $2191, %eax             #   7:     param  0 <- 2191
    pushl   %eax                   
    call    f0                      #   8:     call   t54 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   9:     return t54
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $448, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t52      <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t53      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t54      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t55      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t56      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t57      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t58      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t59      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t60      <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 10 of <array 7 of <array 9 of <array 10 of <char>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_5_if_false         #   0:     goto   5_if_false
    jmp     l_f2_3                  #   1:     goto   3
l_f2_5_if_false:
l_f2_3:
    leal    _str_1, %eax            #   4:     &()    t52 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  0 <- t52
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    movl    $62324, %eax            #   7:     return 62324
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   8:     goto   0
l_f2_0:
    movl    $35715, %eax            #  10:     add    t53 <- 35715, 680
    movl    $680, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $63923, %eax            #  11:     mul    t54 <- 63923, 13185
    movl    $13185, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     mul    t55 <- t54, 74189
    movl    $74189, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     mul    t56 <- t55, 79661
    movl    $79661, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     mul    t57 <- t56, 57154
    movl    $57154, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -20(%ebp), %eax         #  15:     sub    t58 <- t53, t57
    movl    -36(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     return t58
    jmp     l_f2_exit              
    movl    $91044, %eax            #  17:     div    t59 <- 91044, 99111
    movl    $99111, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  18:     mul    t60 <- t59, 10617
    movl    $10617, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  19:     return t60
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t28      <bool> %ebp-97 ]
    #    -98(%ebp)   1  [ $t29      <bool> %ebp-98 ]
    #   -104(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t31      <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t32      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t33      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t34      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t35      <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t36      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t37      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t38      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t39      <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp-144 ]
    #   -148(%ebp)   4  [ $t4       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t40      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t41      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t42      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t43      <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp-164 ]
    #   -168(%ebp)   4  [ $t44      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t45      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t46      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t47      <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t48      <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp-184 ]
    #   -188(%ebp)   4  [ $t49      <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>> %ebp-192 ]
    #   -196(%ebp)   4  [ $t50      <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t51      <int> %ebp-200 ]
    #   -204(%ebp)   4  [ $t6       <int> %ebp-204 ]
    #   -208(%ebp)   4  [ $t7       <int> %ebp-208 ]
    #   -212(%ebp)   4  [ $t8       <int> %ebp-212 ]
    #   -216(%ebp)   4  [ $t9       <int> %ebp-216 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $204, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $51, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    leal    v0, %eax                #   1:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t0
    pushl   %eax                   
    movl    $7092, %eax             #   3:     param  0 <- 7092
    pushl   %eax                   
    call    f1                      #   4:     call   t1 <- f1
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     if     t1 # 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #   6:     goto   3_if_false
l_test_2_if_true:
    call    dummyINTfunc            #   8:     call   t2 <- dummyINTfunc
    movl    %eax, -64(%ebp)        
    jmp     l_test_1                #   9:     goto   1
l_test_3_if_false:
l_test_1:
    leal    v0, %eax                #  12:     &()    t3 <- v0
    movl    %eax, -104(%ebp)       
    movl    $27414, %eax            #  13:     mul    t4 <- 27414, 51634
    movl    $51634, %ebx           
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  15:     &()    t5 <- v0
    movl    %eax, -192(%ebp)       
    movl    -192(%ebp), %eax        #  16:     param  0 <- t5
    pushl   %eax                   
    call    DIM                     #  17:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -204(%ebp)       
    movl    -148(%ebp), %eax        #  18:     mul    t7 <- t4, t6
    movl    -204(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -208(%ebp)       
    movl    $86170, %eax            #  19:     div    t8 <- 86170, 28817
    movl    $28817, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -212(%ebp)       
    movl    -212(%ebp), %eax        #  20:     div    t9 <- t8, 23644
    movl    $23644, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -216(%ebp)       
    movl    -208(%ebp), %eax        #  21:     add    t10 <- t7, t9
    movl    -216(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  23:     &()    t11 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  25:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  26:     mul    t13 <- t10, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t14 <- t13, 85475
    movl    $85475, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  29:     &()    t15 <- v0
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  30:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  31:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  32:     mul    t17 <- t14, t16
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  33:     add    t18 <- t17, 29359
    movl    $29359, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  35:     &()    t19 <- v0
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  36:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  37:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  38:     mul    t21 <- t18, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     add    t22 <- t21, 51774
    movl    $51774, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  40:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    v0, %eax                #  41:     &()    t24 <- v0
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  42:     param  0 <- t24
    pushl   %eax                   
    call    DOFS                    #  43:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  44:     add    t26 <- t23, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -104(%ebp), %eax        #  45:     add    t27 <- t3, t26
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $1, %eax                #  46:     assign @t27 <- 1
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_test_12               #  47:     goto   12
l_test_12:
    movl    $1, %eax                #  49:     assign t28 <- 1
    movb    %al, -97(%ebp)         
    jmp     l_test_14               #  50:     goto   14
    movl    $0, %eax                #  51:     assign t28 <- 0
    movb    %al, -97(%ebp)         
l_test_14:
    movl    $0, %eax                #  53:     if     0 # t28 goto 8
    movzbl  -97(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_8               
    jmp     l_test_9                #  54:     goto   9
l_test_8:
    movl    $1, %eax                #  56:     assign t29 <- 1
    movb    %al, -98(%ebp)         
    jmp     l_test_10               #  57:     goto   10
l_test_9:
    movl    $0, %eax                #  59:     assign t29 <- 0
    movb    %al, -98(%ebp)         
l_test_10:
    leal    v0, %eax                #  61:     &()    t30 <- v0
    movl    %eax, -108(%ebp)       
    movl    $2, %eax                #  62:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  63:     &()    t31 <- v0
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  64:     param  0 <- t31
    pushl   %eax                   
    call    DIM                     #  65:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    $69563, %eax            #  66:     mul    t33 <- 69563, t32
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  67:     add    t34 <- t33, 18759
    movl    $18759, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $3, %eax                #  68:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  69:     &()    t35 <- v0
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  70:     param  0 <- t35
    pushl   %eax                   
    call    DIM                     #  71:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    -124(%ebp), %eax        #  72:     mul    t37 <- t34, t36
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  73:     add    t38 <- t37, 85191
    movl    $85191, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $4, %eax                #  74:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  75:     &()    t39 <- v0
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  76:     param  0 <- t39
    pushl   %eax                   
    call    DIM                     #  77:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -140(%ebp), %eax        #  78:     mul    t41 <- t38, t40
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  79:     add    t42 <- t41, 13357
    movl    $13357, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    $5, %eax                #  80:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  81:     &()    t43 <- v0
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  82:     param  0 <- t43
    pushl   %eax                   
    call    DIM                     #  83:     call   t44 <- DIM
    addl    $8, %esp               
    movl    %eax, -168(%ebp)       
    movl    -160(%ebp), %eax        #  84:     mul    t45 <- t42, t44
    movl    -168(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #  85:     add    t46 <- t45, 30809
    movl    $30809, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -176(%ebp)       
    movl    -176(%ebp), %eax        #  86:     mul    t47 <- t46, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -180(%ebp)       
    leal    v0, %eax                #  87:     &()    t48 <- v0
    movl    %eax, -184(%ebp)       
    movl    -184(%ebp), %eax        #  88:     param  0 <- t48
    pushl   %eax                   
    call    DOFS                    #  89:     call   t49 <- DOFS
    addl    $4, %esp               
    movl    %eax, -188(%ebp)       
    movl    -180(%ebp), %eax        #  90:     add    t50 <- t47, t49
    movl    -188(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -196(%ebp)       
    movl    -108(%ebp), %eax        #  91:     add    t51 <- t30, t50
    movl    -196(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -200(%ebp)       
    movzbl  -98(%ebp), %eax         #  92:     assign @t51 <- t29
    movl    -200(%ebp), %edi       
    movb    %al, (%edi)            

l_test_exit:
    # epilogue
    addl    $204, %esp              # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <array 5 of <array 1 of <array 9 of <array 4 of <array 4 of <bool>>>>>>
    .long    5
    .long    5
    .long    1
    .long    9
    .long    4
    .long    4
    .skip  720
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
