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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 6 of <array 2 of <array 7 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 2 of <array 9 of <array 10 of <array 4 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 6 of <array 6 of <array 3 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 4 of <array 9 of <array 2 of <array 10 of <bool>>>>>>> %ebp+20 ]
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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $55877, %eax            #   2:     assign v4 <- 55877
    movl    %eax, -20(%ebp)        
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_7                  #   5:     goto   7
    jmp     l_f0_7                  #   6:     goto   7
    movl    $1, %eax                #   7:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $0, %eax                #  10:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movzbl  -13(%ebp), %eax         #  12:     return t6
    jmp     l_f0_exit              
l_f0_12_while_cond:
    jmp     l_f0_11                 #  14:     goto   11
    call    dummyBOOLfunc           #  15:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_12_while_cond      #  16:     goto   12_while_cond
l_f0_11:

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 1 of <array 3 of <array 2 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 2 of <array 1 of <array 4 of <array 3 of <int>>>>>>> %ebp+12 ]

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
    movl    $97852, %eax            #   1:     if     97852 >= 34345 goto 2_while_body
    movl    $34345, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $97, %eax               #   4:     if     97 >= 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   5:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_1_while_cond       #  10:     goto   1_while_cond
l_f1_0:
l_f1_9_while_cond:
    jmp     l_f1_10_while_body      #  13:     goto   10_while_body
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  15:     goto   9_while_cond
    call    dummyBOOLfunc           #  16:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -68(%ebp)   4  [ $t23      <ptr(4) to <array 3 of <array 2 of <array 1 of <array 4 of <array 3 of <int>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <ptr(4) to <array 4 of <array 1 of <array 3 of <array 2 of <array 6 of <bool>>>>>>> %ebp-72 ]
    #    -73(%ebp)   1  [ $t25      <bool> %ebp-73 ]
    #    -74(%ebp)   1  [ $t26      <bool> %ebp-74 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 4 of <array 4 of <array 7 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -93(%ebp)   1  [ $v3       <char> %ebp-93 ]
    #   -264(%ebp)  168  [ $v4       <array 4 of <array 1 of <array 3 of <array 2 of <array 6 of <bool>>>>>> %ebp-264 ]
    #   -576(%ebp)  312  [ $v5       <array 3 of <array 2 of <array 1 of <array 4 of <array 3 of <int>>>>>> %ebp-576 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $564, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $141, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-264(%ebp)           # local array 'v4': 5 dimensions
    movl    $4,-260(%ebp)           #   dimension 1: 4 elements
    movl    $1,-256(%ebp)           #   dimension 2: 1 elements
    movl    $3,-252(%ebp)           #   dimension 3: 3 elements
    movl    $2,-248(%ebp)           #   dimension 4: 2 elements
    movl    $6,-244(%ebp)           #   dimension 5: 6 elements
    movl    $5,-576(%ebp)           # local array 'v5': 5 dimensions
    movl    $3,-572(%ebp)           #   dimension 1: 3 elements
    movl    $2,-568(%ebp)           #   dimension 2: 2 elements
    movl    $1,-564(%ebp)           #   dimension 3: 1 elements
    movl    $4,-560(%ebp)           #   dimension 4: 4 elements
    movl    $3,-556(%ebp)           #   dimension 5: 3 elements

    # function body
    call    dummyINTfunc            #   0:     call   t6 <- dummyINTfunc
    movl    %eax, -80(%ebp)        
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   2:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   3:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $54189, %eax            #   4:     mul    t8 <- 54189, t7
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   5:     add    t9 <- t8, 78834
    movl    $78834, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   8:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -92(%ebp), %eax         #   9:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t12 <- t11, 45876
    movl    $45876, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  13:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  14:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     add    t15 <- t14, 32914
    movl    $32914, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  19:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     add    t18 <- t17, 88102
    movl    $88102, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  23:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  24:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  25:     add    t22 <- v0, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $99, %eax               #  26:     assign @t22 <- 99
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $0, %eax                #  27:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  28:     goto   1
l_f2_1:
    jmp     l_f2_7                  #  30:     goto   7
    jmp     l_f2_7                  #  31:     goto   7
    leal    -576(%ebp), %eax        #  32:     &()    t23 <- v5
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  33:     param  1 <- t23
    pushl   %eax                   
    leal    -264(%ebp), %eax        #  34:     &()    t24 <- v4
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  35:     param  0 <- t24
    pushl   %eax                   
    call    f1                      #  36:     call   t25 <- f1
    addl    $8, %esp               
    movb    %al, -73(%ebp)         
    movzbl  -73(%ebp), %eax         #  37:     if     t25 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_8                  #  38:     goto   8
l_f2_7:
    movl    $1, %eax                #  40:     assign t26 <- 1
    movb    %al, -74(%ebp)         
    jmp     l_f2_9                  #  41:     goto   9
l_f2_8:
    movl    $0, %eax                #  43:     assign t26 <- 0
    movb    %al, -74(%ebp)         
l_f2_9:
    movzbl  -74(%ebp), %eax         #  45:     return t26
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $564, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 2 of <array 1 of <array 4 of <array 3 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 4 of <array 1 of <array 3 of <array 2 of <array 6 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #   3:     if     100 <= t1 goto 3_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    leal    v2, %eax                #   8:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  1 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  10:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  12:     call   t4 <- f1
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  13:     if     t4 # 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #  14:     goto   7_if_false
l_test_6_if_true:
l_test_10_while_cond:
    movl    $1, %eax                #  17:     if     1 # 0 goto 11_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_11_while_body   
    jmp     l_test_9                #  18:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  20:     goto   10_while_cond
l_test_9:
    movl    $53799, %eax            #  22:     assign v0 <- 53799
    movl    %eax, v0               
    jmp     l_test_5                #  23:     goto   5
l_test_7_if_false:
l_test_5:
l_test_15_while_cond:
    movl    $0, %eax                #  27:     if     0 # 0 goto 16_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_16_while_body   
    jmp     l_test_14               #  28:     goto   14
l_test_16_while_body:
l_test_19_while_cond:
    jmp     l_test_19_while_cond    #  31:     goto   19_while_cond
    movl    $46625, %eax            #  32:     if     46625 >= 76944 goto 22
    movl    $76944, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_22              
    jmp     l_test_23               #  33:     goto   23
l_test_22:
    movl    $1, %eax                #  35:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_24               #  36:     goto   24
l_test_23:
    movl    $0, %eax                #  38:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_test_24:
    movzbl  -30(%ebp), %eax         #  40:     assign v3 <- t5
    movb    %al, v3                
    jmp     l_test_15_while_cond    #  41:     goto   15_while_cond
l_test_14:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <array 4 of <array 1 of <array 3 of <array 2 of <array 6 of <bool>>>>>>
    .long    5
    .long    4
    .long    1
    .long    3
    .long    2
    .long    6
    .skip  144
v2:                                 # <array 3 of <array 2 of <array 1 of <array 4 of <array 3 of <int>>>>>>
    .long    5
    .long    3
    .long    2
    .long    1
    .long    4
    .long    3
    .skip  288
v3:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
