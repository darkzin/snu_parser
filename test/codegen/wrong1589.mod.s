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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 97 of <array 29 of <array 33 of <array 68 of <array 42 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $10211, %eax            #   0:     if     10211 # 11595 goto 1_if_true
    movl    $11595, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $12372, %eax            #   3:     if     12372 > 66038 goto 5_if_true
    movl    $66038, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_8                  #   6:     goto   8
l_f0_8:
    jmp     l_f0_4                  #   8:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyINTfunc            #  14:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     mul    t2 <- t1, 77327
    movl    $77327, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  16:     return t2
    jmp     l_f0_exit              
    movl    $15287, %eax            #  17:     if     15287 >= 55043 goto 13_if_true
    movl    $55043, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  18:     goto   14_if_false
l_f0_13_if_true:
l_f0_17_while_cond:
    movl    $45925, %eax            #  21:     if     45925 # 80237 goto 18_while_body
    movl    $80237, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_18_while_body     
    jmp     l_f0_16                 #  22:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  24:     goto   17_while_cond
l_f0_16:
    movl    $2, %eax                #  26:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  27:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  28:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $88073, %eax            #  29:     mul    t4 <- 88073, t3
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  30:     add    t5 <- t4, 28921
    movl    $28921, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  31:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  32:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  33:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  34:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  35:     add    t8 <- t7, 62107
    movl    $62107, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  36:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  37:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  38:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  39:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  40:     add    t11 <- t10, 82394
    movl    $82394, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  42:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  43:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  44:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  45:     add    t14 <- t13, 3192
    movl    $3192, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  46:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  47:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  48:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  49:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  50:     add    t18 <- v4, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $53018, %eax            #  51:     assign @t18 <- 53018
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           
l_f0_22_while_cond:
    jmp     l_f0_22_while_cond      #  53:     goto   22_while_cond
    jmp     l_f0_26_if_false        #  54:     goto   26_if_false
    jmp     l_f0_24                 #  55:     goto   24
l_f0_26_if_false:
l_f0_24:
l_f0_28_while_cond:
    movl    $99, %eax               #  59:     if     99 > 97 goto 29_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_29_while_body     
    jmp     l_f0_27                 #  60:     goto   27
l_f0_29_while_body:
    jmp     l_f0_28_while_cond      #  62:     goto   28_while_cond
l_f0_27:
    jmp     l_f0_12                 #  64:     goto   12
l_f0_14_if_false:
l_f0_12:

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $t7       <bool> %ebp-31 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 96 of <array 28 of <array 44 of <array 16 of <array 87 of <int>>>>>>> %ebp+12 ]

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
    movl    $3536, %eax             #   0:     sub    t1 <- 3536, 76387
    movl    $76387, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t2 <- t1, 84153
    movl    $84153, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t3 <- t2, 79462
    movl    $79462, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t4 <- t3, 96448
    movl    $96448, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     if     t4 < 71056 goto 1
    movl    $71056, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   5:     goto   2
l_f1_1:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_3                  #   8:     goto   3
l_f1_2:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_f1_3:
    movzbl  -29(%ebp), %eax         #  12:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_6                  #  13:     goto   6
    jmp     l_f1_6                  #  14:     goto   6
    jmp     l_f1_7                  #  15:     goto   7
l_f1_6:
    movl    $1, %eax                #  17:     assign t6 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f1_8                  #  18:     goto   8
l_f1_7:
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -30(%ebp)         
l_f1_8:
    movzbl  -30(%ebp), %eax         #  22:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_16                 #  23:     goto   16
    jmp     l_f1_17                 #  24:     goto   17
l_f1_16:
    movl    $1, %eax                #  26:     assign t7 <- 1
    movb    %al, -31(%ebp)         
    jmp     l_f1_18                 #  27:     goto   18
l_f1_17:
    movl    $0, %eax                #  29:     assign t7 <- 0
    movb    %al, -31(%ebp)         
l_f1_18:
    movzbl  -31(%ebp), %eax         #  31:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 15 of <array 77 of <array 89 of <array 44 of <array 42 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    movl    $84940, %eax            #   0:     assign v0 <- 84940
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_3_while_cond:
    movl    $65904, %eax            #   3:     if     65904 >= 27679 goto 4_while_body
    movl    $27679, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_4_while_body    
    jmp     l_test_2                #   4:     goto   2
l_test_4_while_body:
l_test_7_while_cond:
    jmp     l_test_6                #   7:     goto   6
    jmp     l_test_7_while_cond     #   8:     goto   7_while_cond
l_test_6:
    jmp     l_test_3_while_cond     #  10:     goto   3_while_cond
l_test_2:
l_test_13_while_cond:
    jmp     l_test_14_while_body    #  13:     goto   14_while_body
l_test_14_while_body:
l_test_20_while_cond:
    movl    $91748, %eax            #  16:     if     91748 <= 75479 goto 21_while_body
    movl    $75479, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_21_while_body   
    jmp     l_test_19               #  17:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  19:     goto   20_while_cond
l_test_19:
    jmp     l_test_13_while_cond    #  21:     goto   13_while_cond
    call    dummyCHARfunc           #  22:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_28_while_cond:
    jmp     l_test_29_while_body    #  24:     goto   29_while_body
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  26:     goto   28_while_cond
    jmp     l_test_24               #  27:     goto   24
l_test_24:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
