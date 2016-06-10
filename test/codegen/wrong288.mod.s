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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 5 of <array 3 of <array 1 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 2 of <array 8 of <array 10 of <array 8 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 8 of <array 5 of <array 9 of <array 5 of <int>>>>>>> %ebp+20 ]
    #    -28(%ebp)   4  [ $v5       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyINTfunc            #   0:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $71544, %eax            #   1:     sub    t7 <- 71544, 66832
    movl    $66832, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v5 <- t7
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #   3:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -65(%ebp)   1  [ $t23      <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 10 of <array 1 of <array 10 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 7 of <array 9 of <array 10 of <array 1 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 7 of <array 2 of <array 7 of <array 4 of <array 2 of <char>>>>>>> %ebp+20 ]
    #    -85(%ebp)   1  [ $v5       <char> %ebp-85 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $76967, %eax            #   0:     add    t6 <- 76967, 65068
    movl    $65068, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   2:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   3:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #   4:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   5:     add    t9 <- t8, 18516
    movl    $18516, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   7:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   8:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #   9:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t12 <- t11, 83355
    movl    $83355, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  12:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  13:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  14:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     add    t15 <- t14, 22821
    movl    $22821, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  17:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  18:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  19:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     add    t18 <- t17, 6005
    movl    $6005, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  22:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  23:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  24:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  25:     add    t22 <- v4, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $97, %eax               #  26:     assign @t22 <- 97
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyProcedure          #  27:     call   dummyProcedure
l_f1_3_while_cond:
    movl    $98826, %eax            #  29:     if     98826 = 58792 goto 4_while_body
    movl    $58792, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_4_while_body      
    jmp     l_f1_2                  #  30:     goto   2
l_f1_4_while_body:
    jmp     l_f1_8_if_false         #  32:     goto   8_if_false
    jmp     l_f1_6                  #  33:     goto   6
l_f1_8_if_false:
l_f1_6:
    movl    $35937, %eax            #  36:     if     35937 # 26971 goto 10
    movl    $26971, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_10                
    jmp     l_f1_11                 #  37:     goto   11
l_f1_10:
    movl    $1, %eax                #  39:     assign t23 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f1_12                 #  40:     goto   12
l_f1_11:
    movl    $0, %eax                #  42:     assign t23 <- 0
    movb    %al, -65(%ebp)         
l_f1_12:
    movzbl  -65(%ebp), %eax         #  44:     assign v2 <- t23
    movb    %al, 12(%ebp)          
    movl    $20923, %eax            #  45:     return 20923
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #  46:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $v1       <bool> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $75527, %eax            #   0:     sub    t6 <- 75527, 96643
    movl    $96643, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t7 <- t6, 7400
    movl    $7400, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t8 <- t7, 14085
    movl    $14085, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $68744, %eax            #   3:     if     68744 <= t8 goto 1
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   4:     goto   2
l_f2_1:
    movl    $1, %eax                #   6:     assign t9 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t9 <- 0
    movb    %al, -25(%ebp)         
l_f2_3:
    movzbl  -25(%ebp), %eax         #  11:     assign v1 <- t9
    movb    %al, -26(%ebp)         
    jmp     l_f2_exit              
l_f2_7_while_cond:
    jmp     l_f2_6                  #  14:     goto   6
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_7_while_cond       #  17:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 8 of <array 8 of <array 5 of <array 9 of <array 5 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <array 2 of <array 8 of <array 10 of <array 8 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 9 of <array 5 of <array 3 of <array 1 of <array 7 of <int>>>>>>> %ebp-28 ]
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
    jmp     l_test_2_if_true        #   1:     goto   2_if_true
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $98, %eax               #   4:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_8_if_false       #   5:     goto   8_if_false
    jmp     l_test_6                #   6:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_1                #   9:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    jmp     l_test_exit            
    leal    v3, %eax                #  14:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  3 <- t1
    pushl   %eax                   
    leal    v2, %eax                #  16:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     param  2 <- t2
    pushl   %eax                   
    movl    $1, %eax                #  18:     param  1 <- 1
    pushl   %eax                   
    leal    v1, %eax                #  19:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  21:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movl    $97, %eax               #  22:     if     97 > 100 goto 17
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_17              
    jmp     l_test_14               #  23:     goto   14
l_test_17:
    jmp     l_test_14               #  25:     goto   14
    movl    $1, %eax                #  26:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_15               #  27:     goto   15
l_test_14:
    movl    $0, %eax                #  29:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_test_15:
    movzbl  -30(%ebp), %eax         #  31:     assign v4 <- t5
    movb    %al, v4                

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 9 of <array 5 of <array 3 of <array 1 of <array 7 of <int>>>>>>
    .long    5
    .long    9
    .long    5
    .long    3
    .long    1
    .long    7
    .skip 3780
v2:                                 # <array 7 of <array 2 of <array 8 of <array 10 of <array 8 of <char>>>>>>
    .long    5
    .long    7
    .long    2
    .long    8
    .long   10
    .long    8
    .skip 8960
v3:                                 # <array 8 of <array 8 of <array 5 of <array 9 of <array 5 of <int>>>>>>
    .long    5
    .long    8
    .long    8
    .long    5
    .long    9
    .long    5
    .skip 57600
v4:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
