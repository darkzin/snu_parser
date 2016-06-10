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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 65 of <array 57 of <array 12 of <array 58 of <array 81 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_2                  #   1:     goto   2
    call    dummyBOOLfunc           #   2:     call   t8 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t8 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2                 
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $1, %eax                #   6:     assign t9 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $0, %eax                #   9:     assign t9 <- 0
    movb    %al, -15(%ebp)         
l_f0_4:
    movzbl  -15(%ebp), %eax         #  11:     return t9
    jmp     l_f0_exit              
    jmp     l_f0_8_if_false         #  12:     goto   8_if_false
    jmp     l_f0_8_if_false         #  13:     goto   8_if_false
    movl    $1, %eax                #  14:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  15:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 42 of <array 50 of <array 95 of <array 74 of <array 28 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 100 of <array 34 of <array 32 of <array 10 of <array 82 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 56 of <array 25 of <array 30 of <array 91 of <array 87 of <int>>>>>>> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $90498, %eax            #   2:     if     90498 <= 86561 goto 3_while_body
    movl    $86561, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    call    dummyBOOLfunc           #   5:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
l_f1_7_while_cond:
    movl    $32666, %eax            #   9:     if     32666 > 9140 goto 8_while_body
    movl    $9140, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f1_8_while_body      
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_while_body:
    jmp     l_f1_exit              
    movl    $98877, %eax            #  13:     assign v4 <- 98877
    movl    %eax, -20(%ebp)        
    jmp     l_f1_7_while_cond       #  14:     goto   7_while_cond
l_f1_6:

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
    #   -128(%ebp)   4  [ $t38      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t39      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t40      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t41      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t42      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t7       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t8       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t9       <int> %ebp-156 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 65 of <array 81 of <array 24 of <array 33 of <array 52 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   1:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   2:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    $21904, %eax            #   3:     mul    t8 <- 21904, t7
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #   4:     add    t9 <- t8, 77171
    movl    $77171, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   7:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -156(%ebp), %eax        #   8:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #   9:     call   t12 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $69288, %eax            #  10:     sub    t13 <- 69288, t12
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t14 <- t11, t13
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  15:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     add    t17 <- t16, 42691
    movl    $42691, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  20:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  21:     add    t20 <- t19, 7391
    movl    $7391, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  22:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  25:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $22166, %eax            #  27:     assign @t24 <- 22166
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $62264, %eax            #  28:     add    t25 <- 62264, 38802
    movl    $38802, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $2, %eax                #  29:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  30:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  31:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  32:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  33:     add    t28 <- t27, 56871
    movl    $56871, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  34:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  35:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  36:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  37:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    $37342, %eax            #  38:     sub    t31 <- 37342, 40787
    movl    $40787, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  39:     add    t32 <- t30, t31
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $4, %eax                #  40:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  41:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  42:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  43:     mul    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  44:     add    t35 <- t34, 35053
    movl    $35053, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $5, %eax                #  45:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  46:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  47:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  48:     mul    t37 <- t35, t36
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  49:     add    t38 <- t37, 82124
    movl    $82124, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  50:     mul    t39 <- t38, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    12(%ebp), %eax          #  51:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  52:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  53:     add    t41 <- t39, t40
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    12(%ebp), %eax          #  54:     add    t42 <- v1, t41
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $50351, %eax            #  55:     assign @t42 <- 50351
    movl    -144(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 56 of <array 25 of <array 30 of <array 91 of <array 87 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 100 of <array 34 of <array 32 of <array 10 of <array 82 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 42 of <array 50 of <array 95 of <array 74 of <array 28 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 65 of <array 57 of <array 12 of <array 58 of <array 81 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   2:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_4_while_cond:
    leal    v2, %eax                #   4:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  3 <- t2
    pushl   %eax                   
    leal    v1, %eax                #   6:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  2 <- t3
    pushl   %eax                   
    leal    v0, %eax                #   8:     &()    t4 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     param  1 <- t4
    pushl   %eax                   
    movl    $1, %eax                #  10:     param  0 <- 1
    pushl   %eax                   
    call    f1                      #  11:     call   f1
    addl    $16, %esp              
l_test_8_while_cond:
    movl    $100, %eax              #  13:     if     100 > 99 goto 9_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_9_while_body    
    jmp     l_test_7                #  14:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  16:     goto   8_while_cond
l_test_7:
    movl    $0, %eax                #  18:     param  1 <- 0
    pushl   %eax                   
    leal    v3, %eax                #  19:     &()    t5 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  21:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
    jmp     l_test_4_while_cond     #  22:     goto   4_while_cond

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v0:                                 # <array 42 of <array 50 of <array 95 of <array 74 of <array 28 of <char>>>>>>
    .long    5
    .long   42
    .long   50
    .long   95
    .long   74
    .long   28
    .skip 413364000
v1:                                 # <array 100 of <array 34 of <array 32 of <array 10 of <array 82 of <bool>>>>>>
    .long    5
    .long  100
    .long   34
    .long   32
    .long   10
    .long   82
    .skip 89216000
v2:                                 # <array 56 of <array 25 of <array 30 of <array 91 of <array 87 of <int>>>>>>
    .long    5
    .long   56
    .long   25
    .long   30
    .long   91
    .long   87
    .skip 1330056000
v3:                                 # <array 65 of <array 57 of <array 12 of <array 58 of <array 81 of <bool>>>>>>
    .long    5
    .long   65
    .long   57
    .long   12
    .long   58
    .long   81
    .skip 208873080








    # end of global data section
    #-----------------------------------------

    .end
##################################################
