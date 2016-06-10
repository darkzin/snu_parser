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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 92 of <array 61 of <array 67 of <array 93 of <array 62 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 100 of <array 55 of <array 99 of <array 32 of <array 16 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -97(%ebp)   1  [ $v5       <char> %ebp-97 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   3:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   4:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $8956, %eax             #   5:     mul    t2 <- 8956, t1
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   6:     add    t3 <- t2, 52518
    movl    $52518, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  10:     mul    t5 <- t3, t4
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  11:     add    t6 <- t5, 28536
    movl    $28536, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  15:     mul    t8 <- t6, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  16:     add    t9 <- t8, 11244
    movl    $11244, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -96(%ebp), %eax         #  20:     mul    t11 <- t9, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     add    t12 <- t11, 6063
    movl    $6063, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     mul    t13 <- t12, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    16(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  24:     call   t14 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  25:     add    t15 <- t13, t14
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  26:     add    t16 <- v3, t15
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $1, %eax                #  27:     assign @t16 <- 1
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_1_while_cond       #  28:     goto   1_while_cond
l_f0_6_while_cond:
    movl    $12683, %eax            #  30:     if     12683 # 87776 goto 7_while_body
    movl    $87776, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #  31:     goto   5
l_f0_7_while_body:
    movl    $74281, %eax            #  33:     return 74281
    jmp     l_f0_exit              
    movl    $99, %eax               #  34:     assign v5 <- 99
    movb    %al, -97(%ebp)         
    jmp     l_f0_6_while_cond       #  35:     goto   6_while_cond
l_f0_5:
l_f0_12_while_cond:
    movl    $75277, %eax            #  38:     sub    t17 <- 75277, 44006
    movl    $44006, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  39:     sub    t18 <- t17, 93845
    movl    $93845, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $1039, %eax             #  40:     sub    t19 <- 1039, 74135
    movl    $74135, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  41:     sub    t20 <- t19, 76656
    movl    $76656, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  42:     if     t18 <= t20 goto 13_while_body
    movl    -68(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_13_while_body     
    jmp     l_f0_11                 #  43:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  45:     goto   12_while_cond
l_f0_11:

l_f0_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 44 of <array 81 of <array 86 of <array 17 of <array 37 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 79 of <array 36 of <array 35 of <array 30 of <array 40 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   2:     goto   3_while_body
l_f1_3_while_body:
    jmp     l_f1_7_if_false         #   4:     goto   7_if_false
    jmp     l_f1_5                  #   5:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
l_f1_9_while_cond:
    movl    $98816, %eax            #  10:     if     98816 = 31496 goto 10_while_body
    movl    $31496, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_10_while_body     
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_while_body:
    call    dummyBOOLfunc           #  13:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_9_while_cond       #  14:     goto   9_while_cond
l_f1_8:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 21 of <array 46 of <array 50 of <array 91 of <array 37 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 98 of <array 58 of <array 89 of <array 87 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_5                  #   1:     goto   5
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   3:     goto   6
l_f2_5:
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #   7:     return t0
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
    movl    $47647, %eax            #   9:     assign v1 <- 47647
    movl    %eax, 8(%ebp)          
    movl    $44587, %eax            #  10:     sub    t1 <- 44587, 31990
    movl    $31990, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $31657, %eax            #  14:     mul    t3 <- 31657, t2
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  15:     add    t4 <- t3, 84571
    movl    $84571, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  19:     mul    t6 <- t4, t5
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  20:     add    t7 <- t6, 74461
    movl    $74461, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  24:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  25:     add    t10 <- t9, 8639
    movl    $8639, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  29:     mul    t12 <- t10, t11
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     add    t13 <- t12, 78195
    movl    $78195, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     mul    t14 <- t13, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  33:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  34:     add    t16 <- t14, t15
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  35:     add    t17 <- v2, t16
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -20(%ebp), %eax         #  36:     assign @t17 <- t1
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_1_if_true        #   1:     goto   1_if_true
l_test_1_if_true:
l_test_6_while_cond:
    movl    $100, %eax              #   4:     if     100 < 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_7_while_body    
    jmp     l_test_5                #   5:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
    jmp     l_test_0                #   9:     goto   0
l_test_0:
    jmp     l_test_10_if_true       #  11:     goto   10_if_true
    jmp     l_test_10_if_true       #  12:     goto   10_if_true
l_test_10_if_true:
l_test_15_while_cond:
    movl    $0, %eax                #  15:     if     0 = 0 goto 16_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_16_while_body   
    jmp     l_test_14               #  16:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  18:     goto   15_while_cond
l_test_14:
    movl    $7828, %eax             #  20:     if     7828 >= 43765 goto 19_if_true
    movl    $43765, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_19_if_true      
    jmp     l_test_20_if_false      #  21:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  23:     goto   18
l_test_20_if_false:
l_test_18:
    movl    $100, %eax              #  26:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_9                #  27:     goto   9
l_test_9:
    jmp     l_test_25_if_false      #  29:     goto   25_if_false
l_test_29_while_cond:
    movl    $99, %eax               #  31:     if     99 # 100 goto 30_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_30_while_body   
    jmp     l_test_28               #  32:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  34:     goto   29_while_cond
l_test_28:
    jmp     l_test_23               #  36:     goto   23
l_test_25_if_false:
l_test_23:
    movl    $35680, %eax            #  39:     if     35680 = 65324 goto 33_if_true
    movl    $65324, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_33_if_true      
    jmp     l_test_34_if_false      #  40:     goto   34_if_false
l_test_33_if_true:
l_test_37_while_cond:
    jmp     l_test_36               #  43:     goto   36
    jmp     l_test_37_while_cond    #  44:     goto   37_while_cond
l_test_36:
l_test_40_while_cond:
    movl    $98, %eax               #  47:     if     98 < 98 goto 41_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_41_while_body   
    jmp     l_test_39               #  48:     goto   39
l_test_41_while_body:
    jmp     l_test_40_while_cond    #  50:     goto   40_while_cond
l_test_39:
l_test_44_while_cond:
    jmp     l_test_43               #  53:     goto   43
    jmp     l_test_44_while_cond    #  54:     goto   44_while_cond
l_test_43:
    jmp     l_test_32               #  56:     goto   32
l_test_34_if_false:
l_test_32:
    movl    $99, %eax               #  59:     if     99 < 98 goto 47_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_47_if_true      
    jmp     l_test_48_if_false      #  60:     goto   48_if_false
l_test_47_if_true:
    jmp     l_test_exit            
    jmp     l_test_46               #  63:     goto   46
l_test_48_if_false:
l_test_46:

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
