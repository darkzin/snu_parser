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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
l_f0_1_while_cond:
    movl    $97, %eax               #   1:     assign v1 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f0_9_if_false         #   2:     goto   9_if_false
    jmp     l_f0_7                  #   3:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
    movl    $81646, %eax            #   7:     assign v2 <- 81646
    movl    %eax, -24(%ebp)        
l_f0_12_while_cond:
    movl    $5596, %eax             #   9:     if     5596 >= 96167 goto 13_while_body
    movl    $96167, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_13_while_body     
    jmp     l_f0_11                 #  10:     goto   11
l_f0_13_while_body:
    movl    $100, %eax              #  12:     assign v1 <- 100
    movb    %al, 8(%ebp)           
    movl    $69178, %eax            #  13:     if     69178 <= 12772 goto 17
    movl    $12772, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_17                
    jmp     l_f0_18                 #  14:     goto   18
l_f0_17:
    movl    $1, %eax                #  16:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_19                 #  17:     goto   19
l_f0_18:
    movl    $0, %eax                #  19:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f0_19:
    movzbl  -13(%ebp), %eax         #  21:     return t11
    jmp     l_f0_exit              
    movl    $97, %eax               #  22:     assign v1 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f0_22                 #  23:     goto   22
l_f0_22:
    call    dummyBOOLfunc           #  25:     call   t12 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    ReadInt                 #  26:     call   t13 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f0_28_while_cond:
    jmp     l_f0_28_while_cond      #  28:     goto   28_while_cond
    jmp     l_f0_12_while_cond      #  29:     goto   12_while_cond
l_f0_11:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 43 of <array 99 of <array 94 of <array 89 of <array 12 of <char>>>>>>> %ebp+8 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #   2:     call   t12 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
l_f1_2_while_cond:
    movl    $99, %eax               #   4:     return 99
    jmp     l_f1_exit              
l_f1_6_while_cond:
    movl    $97, %eax               #   6:     if     97 < 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_7_while_body      
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   9:     goto   6_while_cond
l_f1_5:
    call    dummyINTfunc            #  11:     call   t13 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t13
    pushl   %eax                   
    call    WriteInt                #  13:     call   WriteInt
    addl    $4, %esp               
l_f1_11_while_cond:
    movl    $85377, %eax            #  15:     if     85377 > 7129 goto 12_while_body
    movl    $7129, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f1_12_while_body     
    jmp     l_f1_10                 #  16:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  18:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_2_while_cond       #  20:     goto   2_while_cond
    movl    $0, %eax                #  21:     assign v2 <- 0
    movb    %al, -21(%ebp)         

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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t30      <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 43 of <array 97 of <array 93 of <array 85 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 42 of <array 18 of <array 9 of <array 57 of <array 28 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t11 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $16665, %eax            #   1:     sub    t12 <- 16665, 54939
    movl    $54939, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   3:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   4:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   5:     mul    t14 <- t12, t13
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t15 <- t14, 21839
    movl    $21839, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   8:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   9:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  10:     mul    t17 <- t15, t16
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $90241, %eax            #  11:     add    t18 <- 90241, 35401
    movl    $35401, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  12:     add    t19 <- t18, 52913
    movl    $52913, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  13:     add    t20 <- t17, t19
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  15:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  16:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  17:     mul    t22 <- t20, t21
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  18:     add    t23 <- t22, 3877
    movl    $3877, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  20:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  21:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  22:     mul    t25 <- t23, t24
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  23:     add    t26 <- t25, 86885
    movl    $86885, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  24:     mul    t27 <- t26, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    20(%ebp), %eax          #  25:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  26:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  27:     add    t29 <- t27, t28
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    20(%ebp), %eax          #  28:     add    t30 <- v4, t29
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $65630, %eax            #  29:     assign @t30 <- 65630
    movl    -92(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_4_if_false         #  30:     goto   4_if_false
    jmp     l_f2_4_if_false         #  31:     goto   4_if_false
    jmp     l_f2_4_if_false         #  32:     goto   4_if_false
    jmp     l_f2_2                  #  33:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t2       <ptr(4) to <array 43 of <array 99 of <array 94 of <array 89 of <array 12 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t3       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t4       <bool> %ebp-30 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $99, %eax               #   3:     assign v0 <- 99
    movb    %al, v0                
    movl    $0, %eax                #   4:     if     0 # 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   7:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyCHARfunc           #  10:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
l_test_11_while_cond:
    movl    $98, %eax               #  12:     if     98 <= 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_12_while_body   
    jmp     l_test_10               #  13:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  15:     goto   11_while_cond
l_test_10:
    jmp     l_test_0                #  17:     goto   0
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_18_if_false      #  21:     goto   18_if_false
    jmp     l_test_exit            
    jmp     l_test_16               #  23:     goto   16
l_test_18_if_false:
l_test_16:
    leal    v1, %eax                #  26:     &()    t2 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  28:     call   t3 <- f1
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  29:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  30:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -30(%ebp)         
    movl    $98, %eax               #  31:     if     98 # 99 goto 22_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_22_if_true      
    jmp     l_test_23_if_false      #  32:     goto   23_if_false
l_test_22_if_true:
    movl    $89109, %eax            #  34:     add    t5 <- 89109, 81534
    movl    $81534, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     add    t6 <- t5, 72857
    movl    $72857, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  36:     add    t7 <- t6, 35662
    movl    $35662, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  37:     add    t8 <- t7, 62916
    movl    $62916, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  38:     sub    t9 <- t8, 93508
    movl    $93508, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  39:     sub    t10 <- t9, 50087
    movl    $50087, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  40:     assign v2 <- t10
    movl    %eax, v2               
    jmp     l_test_21               #  41:     goto   21
l_test_23_if_false:
l_test_21:

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 43 of <array 99 of <array 94 of <array 89 of <array 12 of <char>>>>>>
    .long    5
    .long   43
    .long   99
    .long   94
    .long   89
    .long   12
    .skip 427368744
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
