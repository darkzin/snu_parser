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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 9 of <array 1 of <array 7 of <array 6 of <int>>>>>>> %ebp+8 ]

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
l_f0_4_while_cond:
    movl    $97, %eax               #   2:     if     97 # 99 goto 5_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_5_while_body      
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_while_body:
    jmp     l_f0_4_while_cond       #   5:     goto   4_while_cond
l_f0_3:
    movl    $87592, %eax            #   7:     if     87592 >= 25654 goto 8_if_true
    movl    $25654, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   8:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #  10:     goto   7
l_f0_9_if_false:
l_f0_7:
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #  14:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $97, %eax               #  17:     return 97
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  18:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  19:     if     t3 > 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  20:     goto   15_if_false
l_f0_14_if_true:
l_f0_18_while_cond:
    movl    $98, %eax               #  23:     if     98 > 97 goto 19_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_19_while_body     
    jmp     l_f0_17                 #  24:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  26:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_13                 #  28:     goto   13
l_f0_15_if_false:
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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
    jmp     l_f1_exit              
    call    ReadInt                 #   1:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $35996, %eax            #   2:     mul    t3 <- 35996, 62339
    movl    $62339, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v1 <- t3
    movl    %eax, -24(%ebp)        

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t3       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t31      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t32      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t33      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t34      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t35      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t36      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t37      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t38      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t4       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t5       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t6       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t7       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t8       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t9       <int> %ebp-160 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 4 of <array 6 of <array 4 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 7 of <array 1 of <array 5 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 7 of <array 1 of <array 7 of <array 7 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 9 of <array 3 of <array 2 of <array 8 of <bool>>>>>>> %ebp+20 ]
    #   -161(%ebp)   1  [ $v4       <char> %ebp-161 ]
    #   -168(%ebp)   4  [ $v5       <int> %ebp-168 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $156, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $39, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movl    $43725, %eax            #   1:     sub    t3 <- 43725, 15474
    movl    $15474, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   2:     sub    t4 <- t3, 85628
    movl    $85628, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   4:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   5:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #   6:     mul    t6 <- t4, t5
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #   7:     add    t7 <- t6, 19757
    movl    $19757, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -156(%ebp)       
    movl    -152(%ebp), %eax        #  11:     mul    t9 <- t7, t8
    movl    -156(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  12:     add    t10 <- t9, 43296
    movl    $43296, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  16:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     add    t13 <- t12, 76721
    movl    $76721, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  21:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     add    t16 <- t15, 84741
    movl    $84741, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  25:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  26:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  27:     add    t20 <- v0, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -53(%ebp), %eax         #  28:     assign @t20 <- t2
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $2, %eax                #  29:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  30:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  31:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $80178, %eax            #  32:     mul    t22 <- 80178, t21
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  33:     add    t23 <- t22, 49322
    movl    $49322, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  34:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  35:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  36:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  37:     mul    t25 <- t23, t24
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  38:     add    t26 <- t25, 39651
    movl    $39651, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  39:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  40:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  41:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  42:     mul    t28 <- t26, t27
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  43:     add    t29 <- t28, 98323
    movl    $98323, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $5, %eax                #  44:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  45:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  46:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -96(%ebp), %eax         #  47:     mul    t31 <- t29, t30
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  48:     add    t32 <- t31, 18858
    movl    $18858, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  49:     mul    t33 <- t32, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    16(%ebp), %eax          #  50:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  51:     call   t34 <- DOFS
    addl    $4, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  52:     add    t35 <- t33, t34
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    16(%ebp), %eax          #  53:     add    t36 <- v2, t35
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $42307, %eax            #  54:     assign @t36 <- 42307
    movl    -128(%ebp), %edi       
    movl    %eax, (%edi)           
l_f2_9_while_cond:
    jmp     l_f2_9_while_cond       #  56:     goto   9_while_cond
    jmp     l_f2_4                  #  57:     goto   4
l_f2_4:
    jmp     l_f2_1                  #  59:     goto   1
l_f2_1:
l_f2_12_while_cond:
    movl    $51293, %eax            #  62:     add    t37 <- 51293, 41593
    movl    $41593, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  63:     add    t38 <- t37, 55185
    movl    $55185, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  64:     if     t38 <= 7654 goto 13_while_body
    movl    $7654, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_13_while_body     
    jmp     l_f2_11                 #  65:     goto   11
l_f2_13_while_body:
l_f2_16_while_cond:
    jmp     l_f2_16_while_cond      #  68:     goto   16_while_cond
    jmp     l_f2_12_while_cond      #  69:     goto   12_while_cond
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $156, %esp              # remove locals
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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    movl    $48484, %eax            #   2:     assign v0 <- 48484
    movl    %eax, v0               
    jmp     l_test_4                #   3:     goto   4
l_test_4:
    movl    $73786, %eax            #   5:     assign v0 <- 73786
    movl    %eax, v0               
    movl    $99, %eax               #   6:     if     99 # 100 goto 9
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_9               
    jmp     l_test_10               #   7:     goto   10
l_test_9:
    movl    $1, %eax                #   9:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_11               #  10:     goto   11
l_test_10:
    movl    $0, %eax                #  12:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_11:
    movzbl  -13(%ebp), %eax         #  14:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #  16:     goto   1_while_cond
l_test_0:
    movl    $73116, %eax            #  18:     if     73116 > 23439 goto 15_if_true
    movl    $23439, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_15_if_true      
    jmp     l_test_16_if_false      #  19:     goto   16_if_false
l_test_15_if_true:
    movl    $0, %eax                #  21:     if     0 = 0 goto 19_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_19_if_true      
    jmp     l_test_20_if_false      #  22:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_exit            
l_test_24_while_cond:
    movl    $1283, %eax             #  26:     if     1283 # 34282 goto 25_while_body
    movl    $34282, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_25_while_body   
    jmp     l_test_23               #  27:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  29:     goto   24_while_cond
l_test_23:
    jmp     l_test_exit            
    movl    $100, %eax              #  32:     if     100 = 97 goto 29_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_29_if_true      
    jmp     l_test_30_if_false      #  33:     goto   30_if_false
l_test_29_if_true:
    jmp     l_test_28               #  35:     goto   28
l_test_30_if_false:
l_test_28:
    jmp     l_test_18               #  38:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_14               #  41:     goto   14
l_test_16_if_false:
l_test_14:
    movl    $95344, %eax            #  44:     sub    t1 <- 95344, 55399
    movl    $55399, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  45:     assign v0 <- t1
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
