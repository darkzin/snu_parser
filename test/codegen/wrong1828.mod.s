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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 30 of <array 78 of <array 84 of <array 37 of <array 33 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 42 of <array 94 of <array 67 of <array 8 of <array 35 of <int>>>>>>> %ebp+16 ]

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
    movl    $98, %eax               #   0:     if     98 >= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t1
    movb    %al, 8(%ebp)           
    call    dummyINTfunc            #   9:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $22545, %eax            #  10:     if     22545 >= 74313 goto 7_if_true
    movl    $74313, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  11:     goto   8_if_false
l_f0_7_if_true:
    movl    $99, %eax               #  13:     if     99 = 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  14:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  16:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_14                 #  19:     goto   14
l_f0_14:
l_f0_18_while_cond:
    movl    $7929, %eax             #  22:     if     7929 # 25847 goto 19_while_body
    movl    $25847, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_19_while_body     
    jmp     l_f0_17                 #  23:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  25:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_21                 #  27:     goto   21
l_f0_21:
    jmp     l_f0_6                  #  29:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    movl    $2361, %eax             #   0:     assign v1 <- 2361
    movl    %eax, 12(%ebp)         
l_f1_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   3:     if     100 # t1 goto 3_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_5                  #   6:     goto   5
l_f1_5:
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #   9:     goto   2_while_cond
l_f1_1:
    call    ReadInt                 #  11:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 42 of <array 94 of <array 67 of <array 8 of <array 35 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <ptr(4) to <array 42 of <array 94 of <array 67 of <array 8 of <array 35 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <ptr(4) to <array 42 of <array 94 of <array 67 of <array 8 of <array 35 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <ptr(4) to <array 42 of <array 94 of <array 67 of <array 8 of <array 35 of <int>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <ptr(4) to <array 30 of <array 78 of <array 84 of <array 37 of <array 33 of <bool>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <ptr(4) to <array 42 of <array 94 of <array 67 of <array 8 of <array 35 of <int>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t27      <bool> %ebp-89 ]
    #    -90(%ebp)   1  [ $t3       <bool> %ebp-90 ]
    #    -91(%ebp)   1  [ $t4       <bool> %ebp-91 ]
    #    -96(%ebp)   4  [ $t5       <ptr(4) to <array 42 of <array 94 of <array 67 of <array 8 of <array 35 of <int>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t6       <ptr(4) to <array 42 of <array 94 of <array 67 of <array 8 of <array 35 of <int>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t7       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t9       <int> %ebp-112 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 89 of <array 4 of <array 80 of <array 36 of <array 22 of <char>>>>>>> %ebp+8 ]
    #   -239999896(%ebp)  239999784  [ $v1       <array 30 of <array 78 of <array 84 of <array 37 of <array 33 of <bool>>>>>> %ebp-239999896 ]
    #   -536257840(%ebp)  296257944  [ $v2       <array 42 of <array 94 of <array 67 of <array 8 of <array 35 of <int>>>>>> %ebp-536257840 ]
    #   -536257844(%ebp)   4  [ $v3       <int> %ebp-536257844 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $536257832, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $134064458, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-239999896(%ebp)     # local array 'v1': 5 dimensions
    movl    $30,-239999892(%ebp)    #   dimension 1: 30 elements
    movl    $78,-239999888(%ebp)    #   dimension 2: 78 elements
    movl    $84,-239999884(%ebp)    #   dimension 3: 84 elements
    movl    $37,-239999880(%ebp)    #   dimension 4: 37 elements
    movl    $33,-239999876(%ebp)    #   dimension 5: 33 elements
    movl    $5,-536257840(%ebp)     # local array 'v2': 5 dimensions
    movl    $42,-536257836(%ebp)    #   dimension 1: 42 elements
    movl    $94,-536257832(%ebp)    #   dimension 2: 94 elements
    movl    $67,-536257828(%ebp)    #   dimension 3: 67 elements
    movl    $8,-536257824(%ebp)     #   dimension 4: 8 elements
    movl    $35,-536257820(%ebp)    #   dimension 5: 35 elements

    # function body
    leal    -536257840(%ebp), %eax  #   0:     &()    t1 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t1
    pushl   %eax                   
    leal    -239999896(%ebp), %eax  #   2:     &()    t2 <- v1
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   3:     param  1 <- t2
    pushl   %eax                   
    movl    $0, %eax                #   4:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #   5:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -90(%ebp)         
    call    dummyBOOLfunc           #   6:     call   t4 <- dummyBOOLfunc
    movb    %al, -91(%ebp)         
l_f2_3_while_cond:
    movl    $97, %eax               #   8:     if     97 >= 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_4_while_body      
    jmp     l_f2_2                  #   9:     goto   2
l_f2_4_while_body:
    jmp     l_f2_exit              
l_f2_8_while_cond:
    jmp     l_f2_8_while_cond       #  13:     goto   8_while_cond
    leal    -536257840(%ebp), %eax  #  14:     &()    t5 <- v2
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    leal    -536257840(%ebp), %eax  #  16:     &()    t6 <- v2
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  17:     param  0 <- t6
    pushl   %eax                   
    call    DIM                     #  18:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    $38172, %eax            #  19:     mul    t8 <- 38172, t7
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  20:     add    t9 <- t8, 99031
    movl    $99031, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $3, %eax                #  21:     param  1 <- 3
    pushl   %eax                   
    leal    -536257840(%ebp), %eax  #  22:     &()    t10 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  24:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -112(%ebp), %eax        #  25:     mul    t12 <- t9, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t13 <- t12, 67279
    movl    $67279, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    leal    -536257840(%ebp), %eax  #  28:     &()    t14 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  30:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  31:     mul    t16 <- t13, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  32:     add    t17 <- t16, 2235
    movl    $2235, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    leal    -536257840(%ebp), %eax  #  34:     &()    t18 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  35:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  36:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  37:     mul    t20 <- t17, t19
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  38:     add    t21 <- t20, 59055
    movl    $59055, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  39:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    leal    -536257840(%ebp), %eax  #  40:     &()    t23 <- v2
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  41:     param  0 <- t23
    pushl   %eax                   
    call    DOFS                    #  42:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  43:     add    t25 <- t22, t24
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -96(%ebp), %eax         #  44:     add    t26 <- t5, t25
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $15095, %eax            #  45:     assign @t26 <- 15095
    movl    -88(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyBOOLfunc           #  46:     call   t27 <- dummyBOOLfunc
    movb    %al, -89(%ebp)         
    jmp     l_f2_3_while_cond       #  47:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $536257832, %esp        # remove locals
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
    jmp     l_test_exit            
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    jmp     l_test_4                #   2:     goto   4
l_test_4:
    movl    $3891, %eax             #   4:     if     3891 >= 90222 goto 8_if_true
    movl    $90222, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_8_if_true       
    jmp     l_test_9_if_false       #   5:     goto   9_if_false
l_test_8_if_true:
l_test_12_while_cond:
    jmp     l_test_11               #   8:     goto   11
    jmp     l_test_12_while_cond    #   9:     goto   12_while_cond
l_test_11:
    jmp     l_test_exit            
    jmp     l_test_7                #  12:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_1                #  15:     goto   1
l_test_3_if_false:
l_test_1:
l_test_16_while_cond:
    call    dummyCHARfunc           #  19:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  20:     if     t0 <= 97 goto 17_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_17_while_body   
    jmp     l_test_15               #  21:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  23:     goto   16_while_cond
l_test_15:
    movl    $98, %eax               #  25:     assign v0 <- 98
    movb    %al, v0                
    movl    $4613, %eax             #  26:     assign v1 <- 4613
    movl    %eax, v1               
l_test_22_while_cond:
    jmp     l_test_21               #  28:     goto   21
l_test_25_while_cond:
    movl    $97, %eax               #  30:     if     97 < 99 goto 26_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_26_while_body   
    jmp     l_test_24               #  31:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  33:     goto   25_while_cond
l_test_24:
    jmp     l_test_exit            
    jmp     l_test_22_while_cond    #  36:     goto   22_while_cond
l_test_21:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
