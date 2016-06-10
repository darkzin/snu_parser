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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t6       <char> %ebp-19 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v0       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $v1       <bool> %ebp-34 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    call    dummyINTfunc            #   1:     call   t7 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     div    t8 <- t7, 70181
    movl    $70181, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     div    t9 <- t8, 3234
    movl    $3234, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     mul    t10 <- t9, 20952
    movl    $20952, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $94618, %eax            #   5:     if     94618 # t10 goto 2
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2                 
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $1, %eax                #   8:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_4                  #   9:     goto   4
l_f0_3:
    movl    $0, %eax                #  11:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f0_4:
    movzbl  -17(%ebp), %eax         #  13:     return t11
    jmp     l_f0_exit              
    jmp     l_f0_7_if_true          #  14:     goto   7_if_true
    jmp     l_f0_7_if_true          #  15:     goto   7_if_true
    jmp     l_f0_8_if_false         #  16:     goto   8_if_false
l_f0_7_if_true:
    movl    $100, %eax              #  18:     assign v0 <- 100
    movb    %al, -33(%ebp)         
    movl    $97, %eax               #  19:     assign v0 <- 97
    movb    %al, -33(%ebp)         
    call    dummyProcedure          #  20:     call   dummyProcedure
    movl    $99, %eax               #  21:     if     99 = 97 goto 16
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_16                
    jmp     l_f0_17                 #  22:     goto   17
l_f0_16:
    movl    $1, %eax                #  24:     assign t12 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_18                 #  25:     goto   18
l_f0_17:
    movl    $0, %eax                #  27:     assign t12 <- 0
    movb    %al, -18(%ebp)         
l_f0_18:
    movzbl  -18(%ebp), %eax         #  29:     assign v1 <- t12
    movb    %al, -34(%ebp)         
    jmp     l_f0_6                  #  30:     goto   6
l_f0_8_if_false:
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 8 of <array 4 of <array 10 of <array 1 of <char>>>>>>> %ebp+20 ]
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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
    jmp     l_f1_3                  #   2:     goto   3
    jmp     l_f1_4_while_cond       #   3:     goto   4_while_cond
l_f1_3:
    movl    $98, %eax               #   5:     if     98 <= 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   6:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #   8:     goto   6
l_f1_8_if_false:
l_f1_6:
    movl    $94535, %eax            #  11:     assign v4 <- 94535
    movl    %eax, -20(%ebp)        
    jmp     l_f1_0                  #  12:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_12_while_cond:
    movl    $0, %eax                #  16:     if     0 # 1 goto 13_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_13_while_body     
    jmp     l_f1_11                 #  17:     goto   11
l_f1_13_while_body:
l_f1_16_while_cond:
    movl    $69068, %eax            #  20:     if     69068 = 29185 goto 17_while_body
    movl    $29185, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_17_while_body     
    jmp     l_f1_15                 #  21:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  23:     goto   16_while_cond
l_f1_15:
    movl    $1, %eax                #  25:     assign v1 <- 1
    movb    %al, 12(%ebp)          
    call    dummyBOOLfunc           #  26:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyProcedure          #  27:     call   dummyProcedure
    movl    $97, %eax               #  28:     if     97 < 97 goto 23_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  29:     goto   24_if_false
l_f1_23_if_true:
    jmp     l_f1_22                 #  31:     goto   22
l_f1_24_if_false:
l_f1_22:
    jmp     l_f1_12_while_cond      #  34:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
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
    #    -81(%ebp)   1  [ $t6       <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $t7       <char> %ebp-82 ]
    #    -83(%ebp)   1  [ $t8       <bool> %ebp-83 ]
    #    -84(%ebp)   1  [ $t9       <bool> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 7 of <array 5 of <array 10 of <array 5 of <int>>>>>>> %ebp+8 ]
    #    -88(%ebp)   4  [ $v1       <int> %ebp-88 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -81(%ebp)         
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -82(%ebp)         
    movzbl  -81(%ebp), %eax         #   2:     if     t6 # t7 goto 1
    movzbl  -82(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t8 <- 1
    movb    %al, -83(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t8 <- 0
    movb    %al, -83(%ebp)         
l_f2_3:
    movzbl  -83(%ebp), %eax         #  10:     return t8
    jmp     l_f2_exit              
l_f2_6_while_cond:
    call    dummyBOOLfunc           #  12:     call   t9 <- dummyBOOLfunc
    movb    %al, -84(%ebp)         
    movzbl  -84(%ebp), %eax         #  13:     if     t9 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_5                  #  14:     goto   5
l_f2_10:
    jmp     l_f2_5                  #  16:     goto   5
    jmp     l_f2_5                  #  17:     goto   5
    jmp     l_f2_6_while_cond       #  18:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_13_if_false        #  20:     goto   13_if_false
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  22:     goto   15_while_cond
    movl    $0, %eax                #  23:     return 0
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  24:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $2, %eax                #  25:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $20539, %eax            #  28:     mul    t12 <- 20539, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     add    t13 <- t12, 93995
    movl    $93995, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  30:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  33:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  34:     add    t16 <- t15, 9458
    movl    $9458, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  37:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  38:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  39:     add    t19 <- t18, 51391
    movl    $51391, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  41:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  42:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  43:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  44:     add    t22 <- t21, 23388
    movl    $23388, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  45:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  46:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  47:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  48:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  49:     add    t26 <- v0, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $46460, %eax            #  50:     assign @t26 <- 46460
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_11                 #  51:     goto   11
l_f2_13_if_false:
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 7 of <array 5 of <array 10 of <array 5 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <char> %ebp-22 ]

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
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 >= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    movl    $1, %eax                #   8:     if     1 = 0 goto 6_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6_while_body    
    jmp     l_test_4                #   9:     goto   4
l_test_6_while_body:
l_test_9_while_cond:
    movl    $87126, %eax            #  12:     if     87126 >= 50132 goto 10_while_body
    movl    $50132, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_10_while_body   
    jmp     l_test_8                #  13:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  15:     goto   9_while_cond
l_test_8:
    call    dummyCHARfunc           #  17:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_5_while_cond     #  18:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
l_test_15_while_cond:
    movl    $20727, %eax            #  22:     if     20727 >= 28816 goto 18
    movl    $28816, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_18              
l_test_18:
    movl    $1, %eax                #  24:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_20               #  25:     goto   20
    movl    $0, %eax                #  26:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_20:
    movzbl  -15(%ebp), %eax         #  28:     if     t2 = 0 goto 16_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_16_while_body   
    jmp     l_test_14               #  29:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  31:     goto   15_while_cond
l_test_14:
    movl    $23036, %eax            #  33:     if     23036 < 42842 goto 24_if_true
    movl    $42842, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_24_if_true      
    jmp     l_test_25_if_false      #  34:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_27               #  36:     goto   27
l_test_27:
    jmp     l_test_exit            
    leal    v0, %eax                #  39:     &()    t3 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  40:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  41:     call   t4 <- f2
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
l_test_33_while_cond:
    movl    $56785, %eax            #  43:     if     56785 >= 31649 goto 34_while_body
    movl    $31649, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_34_while_body   
    jmp     l_test_32               #  44:     goto   32
l_test_34_while_body:
    jmp     l_test_33_while_cond    #  46:     goto   33_while_cond
l_test_32:
    jmp     l_test_23               #  48:     goto   23
l_test_25_if_false:
l_test_23:
    call    dummyCHARfunc           #  51:     call   t5 <- dummyCHARfunc
    movb    %al, -22(%ebp)         

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <array 8 of <array 7 of <array 5 of <array 10 of <array 5 of <int>>>>>>
    .long    5
    .long    8
    .long    7
    .long    5
    .long   10
    .long    5
    .skip 56000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
