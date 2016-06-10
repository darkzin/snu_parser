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
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $54279, %eax            #   1:     assign v0 <- 54279
    movl    %eax, 8(%ebp)          
l_f0_5_while_cond:
    movl    $92516, %eax            #   3:     if     92516 = 62642 goto 6_while_body
    movl    $62642, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_6_while_body      
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
l_f0_4:
    movl    $98, %eax               #   8:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   9:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_11_if_false        #  10:     goto   11_if_false
    jmp     l_f0_9                  #  11:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_0                  #  14:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_14_if_false        #  17:     goto   14_if_false
    movl    $98, %eax               #  18:     if     98 <= 97 goto 16
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_16                
    jmp     l_f0_17                 #  19:     goto   17
l_f0_16:
    movl    $1, %eax                #  21:     assign t8 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_18                 #  22:     goto   18
l_f0_17:
    movl    $0, %eax                #  24:     assign t8 <- 0
    movb    %al, -13(%ebp)         
l_f0_18:
    movzbl  -13(%ebp), %eax         #  26:     return t8
    jmp     l_f0_exit              
    movl    $1, %eax                #  27:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_12                 #  28:     goto   12
l_f0_14_if_false:
l_f0_12:
    movl    $40465, %eax            #  31:     if     40465 < 47766 goto 22_if_true
    movl    $47766, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_22_if_true        
    jmp     l_f0_23_if_false        #  32:     goto   23_if_false
l_f0_22_if_true:
    movl    $98, %eax               #  34:     assign v1 <- 98
    movb    %al, 12(%ebp)          
l_f0_27_while_cond:
    movl    $83577, %eax            #  36:     if     83577 < 42227 goto 28_while_body
    movl    $42227, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_28_while_body     
    jmp     l_f0_26                 #  37:     goto   26
l_f0_28_while_body:
    jmp     l_f0_27_while_cond      #  39:     goto   27_while_cond
l_f0_26:
    call    ReadInt                 #  41:     call   t9 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_21                 #  42:     goto   21
l_f0_23_if_false:
l_f0_21:

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
    #    -69(%ebp)   1  [ $t24      <char> %ebp-69 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 19 of <array 59 of <array 41 of <array 18 of <array 76 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 18 of <array 39 of <array 88 of <array 58 of <array 35 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 48 of <array 95 of <array 45 of <array 58 of <array 59 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 48 of <array 43 of <array 66 of <array 16 of <char>>>>>>> %ebp+20 ]
    #    -93(%ebp)   1  [ $v4       <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $v5       <int> %ebp-100 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $19676, %eax            #   1:     if     19676 > 4898 goto 2_while_body
    movl    $4898, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $14791, %eax            #   4:     if     14791 < 18 goto 5_if_true
    movl    $18, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   5:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_10_if_false        #  10:     goto   10_if_false
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $99, %eax               #  14:     return 99
    jmp     l_f1_exit              
l_f1_13_while_cond:
    movl    $99, %eax               #  16:     if     99 > 97 goto 14_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_14_while_body     
    jmp     l_f1_12                 #  17:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  19:     goto   13_while_cond
l_f1_12:
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  23:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $77968, %eax            #  24:     mul    t9 <- 77968, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  25:     add    t10 <- t9, 79959
    movl    $79959, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  26:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  27:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  28:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  29:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     add    t13 <- t12, 1789
    movl    $1789, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  32:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  33:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  34:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     add    t16 <- t15, 65904
    movl    $65904, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  37:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  38:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  39:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  40:     add    t19 <- t18, 22200
    movl    $22200, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  41:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    20(%ebp), %eax          #  42:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  43:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  44:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    20(%ebp), %eax          #  45:     add    t23 <- v3, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $97, %eax               #  46:     assign @t23 <- 97
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_18_while_cond:
    jmp     l_f1_18_while_cond      #  48:     goto   18_while_cond
    call    dummyCHARfunc           #  49:     call   t24 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    jmp     l_f1_1_while_cond       #  50:     goto   1_while_cond
l_f1_0:
    movl    $100, %eax              #  52:     if     100 > 100 goto 22_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_22_if_true        
    jmp     l_f1_23_if_false        #  53:     goto   23_if_false
l_f1_22_if_true:
    movl    $20674, %eax            #  55:     assign v5 <- 20674
    movl    %eax, -100(%ebp)       
    movl    $97, %eax               #  56:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_21                 #  57:     goto   21
l_f1_23_if_false:
l_f1_21:
    movl    $34172, %eax            #  60:     sub    t25 <- 34172, 40787
    movl    $40787, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  61:     add    t26 <- t25, 56733
    movl    $56733, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  62:     add    t27 <- t26, 76066
    movl    $76066, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  63:     assign v5 <- t27
    movl    %eax, -100(%ebp)       

l_f1_exit:
    # epilogue
    addl    $88, %esp               # remove locals
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
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t9       <bool> %ebp-26 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 34 of <array 40 of <array 14 of <array 36 of <char>>>>>>> %ebp+12 ]
    #    -27(%ebp)   1  [ $v2       <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $v3       <int> %ebp-32 ]

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
    movl    $97, %eax               #   0:     if     97 = 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f2_3:
    movzbl  -25(%ebp), %eax         #   8:     assign v2 <- t8
    movb    %al, -27(%ebp)         
    call    dummyBOOLfunc           #   9:     call   t9 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  10:     if     t9 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  11:     goto   7_if_false
l_f2_6_if_true:
l_f2_9_while_cond:
    movl    $100, %eax              #  14:     if     100 = 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_10_while_body     
    jmp     l_f2_8                  #  15:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  17:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_5                  #  19:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $11151, %eax            #  22:     mul    t10 <- 11151, 74550
    movl    $74550, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     add    t11 <- t10, 97996
    movl    $97996, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     sub    t12 <- t11, 4068
    movl    $4068, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     assign v3 <- t12
    movl    %eax, -32(%ebp)        

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $14594, %eax            #   1:     if     14594 = 50512 goto 2_while_body
    movl    $50512, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    leal    _str_1, %eax            #   4:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
l_test_6_while_cond:
    call    dummyINTfunc            #  10:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  11:     if     97 = 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_10_if_true      
    jmp     l_test_11_if_false      #  12:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  14:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_6_while_cond     #  17:     goto   6_while_cond
    jmp     l_test_exit            
    movl    $52079, %eax            #  19:     add    t2 <- 52079, 92717
    movl    $92717, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     add    t3 <- t2, 11037
    movl    $11037, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     sub    t4 <- t3, 54265
    movl    $54265, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     sub    t5 <- t4, 80960
    movl    $80960, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     add    t6 <- t5, 47383
    movl    $47383, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     sub    t7 <- t6, 92964
    movl    $92964, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     assign v0 <- t7
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
