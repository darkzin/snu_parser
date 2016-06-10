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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 5 of <char>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 45 of <array 44 of <array 33 of <array 53 of <array 11 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 76 of <array 39 of <array 70 of <array 87 of <array 48 of <bool>>>>>>> %ebp+12 ]

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
    movl    $53536, %eax            #   0:     mul    t6 <- 53536, 60137
    movl    $60137, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     mul    t7 <- t6, 20308
    movl    $20308, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     div    t8 <- t7, 24885
    movl    $24885, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     add    t9 <- t8, 14578
    movl    $14578, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     return t9
    jmp     l_f0_exit              
    movl    $73970, %eax            #   5:     add    t10 <- 73970, 22265
    movl    $22265, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $44497, %eax            #   6:     mul    t11 <- 44497, 64958
    movl    $64958, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   7:     add    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     return t12
    jmp     l_f0_exit              
l_f0_6_while_cond:
    movl    $34252, %eax            #  10:     if     34252 < 88441 goto 7_while_body
    movl    $88441, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_7_while_body      
    jmp     l_f0_5                  #  11:     goto   5
l_f0_7_while_body:
    movl    $68212, %eax            #  13:     return 68212
    jmp     l_f0_exit              
    leal    _str_1, %eax            #  14:     &()    t13 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     param  0 <- t13
    pushl   %eax                   
    call    WriteStr                #  16:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_6_while_cond       #  17:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_2                  #  19:     goto   2
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 17 of <array 3 of <array 21 of <array 50 of <array 87 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 73 of <array 39 of <array 69 of <array 9 of <array 94 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 95 of <array 6 of <array 3 of <array 100 of <array 20 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 93 of <array 100 of <array 42 of <array 56 of <array 15 of <char>>>>>>> %ebp+20 ]
    #   -104(%ebp)   4  [ $v4       <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $v5       <char> %ebp-105 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $43382, %eax            #   0:     mul    t6 <- 43382, 61326
    movl    $61326, %ebx           
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   1:     assign v4 <- t6
    movl    %eax, -104(%ebp)       
l_f1_2_while_cond:
    movl    $58748, %eax            #   3:     div    t7 <- 58748, 45849
    movl    $45849, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   4:     div    t8 <- t7, 59533
    movl    $59533, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   5:     if     t8 >= 28146 goto 3_while_body
    movl    $28146, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_while_body:
    jmp     l_f1_5                  #   8:     goto   5
l_f1_5:
    jmp     l_f1_2_while_cond       #  10:     goto   2_while_cond
l_f1_1:
    movl    $18163, %eax            #  12:     div    t9 <- 18163, 99457
    movl    $99457, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  13:     mul    t10 <- t9, 50851
    movl    $50851, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  17:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    call    ReadInt                 #  18:     call   t13 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  23:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     add    t17 <- t16, 2629
    movl    $2629, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  28:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  29:     add    t20 <- t19, 97347
    movl    $97347, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  33:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  34:     add    t23 <- t22, 94546
    movl    $94546, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  35:     mul    t24 <- t23, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  37:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  38:     add    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    8(%ebp), %eax           #  39:     add    t27 <- v0, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $99, %eax               #  40:     assign @t27 <- 99
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $96, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 12 of <array 75 of <array 35 of <array 29 of <array 65 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    movl    $74994, %eax            #   0:     if     74994 < 68480 goto 1_if_true
    movl    $68480, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_4                  #   3:     goto   4
l_f2_4:
    movl    $0, %eax                #   5:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $94240, %eax            #   9:     sub    t6 <- 94240, 53658
    movl    $53658, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     if     t6 # 94399 goto 9_if_true
    movl    $94399, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  11:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_12                 #  13:     goto   12
l_f2_12:
    movl    $100, %eax              #  15:     assign v1 <- 100
    movb    %al, 12(%ebp)          
l_f2_17_while_cond:
    jmp     l_f2_16                 #  17:     goto   16
    jmp     l_f2_17_while_cond      #  18:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_19                 #  20:     goto   19
l_f2_19:
    movl    $23076, %eax            #  22:     if     23076 > 83723 goto 23_if_true
    movl    $83723, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_23_if_true        
    jmp     l_f2_24_if_false        #  23:     goto   24_if_false
l_f2_23_if_true:
    jmp     l_f2_22                 #  25:     goto   22
l_f2_24_if_false:
l_f2_22:
    jmp     l_f2_8                  #  28:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_30                 #  31:     goto   30
    jmp     l_f2_30                 #  32:     goto   30
    jmp     l_f2_30                 #  33:     goto   30
    jmp     l_f2_27_if_true         #  34:     goto   27_if_true
l_f2_30:
    jmp     l_f2_27_if_true         #  36:     goto   27_if_true
l_f2_27_if_true:
    jmp     l_f2_26                 #  38:     goto   26
l_f2_26:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 76 of <array 39 of <array 70 of <array 87 of <array 48 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 45 of <array 44 of <array 33 of <array 53 of <array 11 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]

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
    jmp     l_test_exit            
    movl    $97, %eax               #   1:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    movl    $60443, %eax            #   3:     div    t0 <- 60443, 11391
    movl    $11391, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    leal    v2, %eax                #   4:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  1 <- t1
    pushl   %eax                   
    leal    v1, %eax                #   6:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   8:     call   t3 <- f0
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -16(%ebp), %eax         #   9:     div    t4 <- t0, t3
    movl    -28(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $34682, %eax            #  10:     if     34682 < t4 goto 3
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_3               
    jmp     l_test_4                #  11:     goto   4
l_test_3:
    movl    $1, %eax                #  13:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_5                #  14:     goto   5
l_test_4:
    movl    $0, %eax                #  16:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_5:
    movzbl  -33(%ebp), %eax         #  18:     assign v0 <- t5
    movb    %al, v0                
l_test_8_while_cond:
    jmp     l_test_9_while_body     #  20:     goto   9_while_body
    jmp     l_test_7                #  21:     goto   7
l_test_9_while_body:
l_test_14_while_cond:
    jmp     l_test_13               #  24:     goto   13
    jmp     l_test_14_while_cond    #  25:     goto   14_while_cond
l_test_13:
    movl    $100, %eax              #  27:     if     100 # 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_17_if_true      
    jmp     l_test_18_if_false      #  28:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  30:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_8_while_cond     #  33:     goto   8_while_cond
l_test_7:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 45 of <array 44 of <array 33 of <array 53 of <array 11 of <int>>>>>>
    .long    5
    .long   45
    .long   44
    .long   33
    .long   53
    .long   11
    .skip 152372880
v2:                                 # <array 76 of <array 39 of <array 70 of <array 87 of <array 48 of <bool>>>>>>
    .long    5
    .long   76
    .long   39
    .long   70
    .long   87
    .long   48
    .skip 866436480








    # end of global data section
    #-----------------------------------------

    .end
##################################################
