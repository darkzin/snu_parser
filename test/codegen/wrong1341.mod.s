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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 49 of <array 22 of <array 93 of <array 36 of <array 74 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 76 of <array 4 of <array 50 of <array 69 of <int>>>>>>> %ebp+12 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    call    dummyCHARfunc           #   2:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_6_while_cond:
    movl    $100, %eax              #   4:     if     100 = 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
l_f0_0:
    movl    $67959, %eax            #  11:     if     67959 = 6359 goto 10_if_true
    movl    $6359, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  12:     goto   11_if_false
l_f0_10_if_true:
l_f0_14_while_cond:
    jmp     l_f0_14_while_cond      #  15:     goto   14_while_cond
    jmp     l_f0_9                  #  16:     goto   9
l_f0_11_if_false:
l_f0_9:
l_f0_17_while_cond:
    jmp     l_f0_16                 #  20:     goto   16
    movl    $0, %eax                #  21:     if     0 # 0 goto 22_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_22_if_true        
    jmp     l_f0_23_if_false        #  22:     goto   23_if_false
l_f0_22_if_true:
    jmp     l_f0_21                 #  24:     goto   21
l_f0_23_if_false:
l_f0_21:
    jmp     l_f0_17_while_cond      #  27:     goto   17_while_cond
l_f0_16:

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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <char> %ebp-21 ]

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
    call    ReadInt                 #   0:     call   t8 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   1:     if     97 < 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    movl    $40356, %eax            #   4:     if     40356 # 28465 goto 6_if_true
    movl    $28465, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   5:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_exit              
    movl    $98, %eax               #  11:     assign v0 <- 98
    movb    %al, -21(%ebp)         
    jmp     l_f1_exit              
    movl    $57533, %eax            #  13:     if     57533 < 76586 goto 13_if_true
    movl    $76586, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  14:     goto   14_if_false
l_f1_13_if_true:
    jmp     l_f1_12                 #  16:     goto   12
l_f1_14_if_false:
l_f1_12:
    jmp     l_f1_1                  #  19:     goto   1
l_f1_3_if_false:
l_f1_1:
    leal    _str_1, %eax            #  22:     &()    t9 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #  24:     call   WriteStr
    addl    $4, %esp               

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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t28      <bool> %ebp-85 ]
    #    -86(%ebp)   1  [ $t29      <bool> %ebp-86 ]
    #    -87(%ebp)   1  [ $t8       <bool> %ebp-87 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 55 of <array 76 of <array 37 of <array 17 of <array 84 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 5 of <array 35 of <array 96 of <array 21 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -93(%ebp)   1  [ $v4       <bool> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $20407, %eax            #   1:     if     20407 > 7125 goto 4
    movl    $7125, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_4                 
    jmp     l_f2_5                  #   2:     goto   5
l_f2_4:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -87(%ebp)         
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -87(%ebp)         
l_f2_6:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  11:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $59086, %eax            #  12:     mul    t10 <- 59086, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $88089, %eax            #  13:     div    t11 <- 88089, 91926
    movl    $91926, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  14:     add    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  18:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     add    t15 <- t14, 26290
    movl    $26290, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  23:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     add    t18 <- t17, 31088
    movl    $31088, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  28:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  29:     add    t21 <- t20, 5710
    movl    $5710, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  30:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  32:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  33:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  34:     add    t25 <- v0, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -87(%ebp), %eax         #  35:     assign @t25 <- t8
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_0                  #  36:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $83888, %eax            #  39:     div    t26 <- 83888, 80523
    movl    $80523, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    $26865, %eax            #  40:     sub    t27 <- 26865, t26
    movl    -80(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $9206, %eax             #  41:     if     9206 > t27 goto 9
    movl    -84(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_9                 
    jmp     l_f2_10                 #  42:     goto   10
l_f2_9:
    movl    $1, %eax                #  44:     assign t28 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f2_11                 #  45:     goto   11
l_f2_10:
    movl    $0, %eax                #  47:     assign t28 <- 0
    movb    %al, -85(%ebp)         
l_f2_11:
    movzbl  -85(%ebp), %eax         #  49:     return t28
    jmp     l_f2_exit              
    jmp     l_f2_15_if_false        #  50:     goto   15_if_false
    movl    $0, %eax                #  51:     assign v4 <- 0
    movb    %al, -93(%ebp)         
    movl    $36293, %eax            #  52:     if     36293 # 1109 goto 18_if_true
    movl    $1109, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  53:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  55:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_26_if_false        #  58:     goto   26_if_false
    jmp     l_f2_24                 #  59:     goto   24
l_f2_26_if_false:
l_f2_24:
    call    dummyBOOLfunc           #  62:     call   t29 <- dummyBOOLfunc
    movb    %al, -86(%ebp)         
l_f2_29_while_cond:
    jmp     l_f2_29_while_cond      #  64:     goto   29_while_cond
    jmp     l_f2_33_if_false        #  65:     goto   33_if_false
    jmp     l_f2_31                 #  66:     goto   31
l_f2_33_if_false:
l_f2_31:
    movl    $1, %eax                #  69:     return 1
    jmp     l_f2_exit              
    jmp     l_f2_21                 #  70:     goto   21
l_f2_21:
    jmp     l_f2_13                 #  72:     goto   13
l_f2_15_if_false:
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 90 of <array 76 of <array 4 of <array 50 of <array 69 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 49 of <array 22 of <array 93 of <array 36 of <array 74 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t7       <char> %ebp-30 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 <= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    movl    $70974, %eax            #   4:     param  0 <- 70974
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #   6:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_test_7_while_cond:
    movl    $98, %eax               #   8:     if     98 < 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_8_while_body    
    jmp     l_test_6                #   9:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  11:     goto   7_while_cond
l_test_6:
    jmp     l_test_exit            
    jmp     l_test_0                #  14:     goto   0
l_test_2_if_false:
l_test_0:
l_test_12_while_cond:
    jmp     l_test_11               #  18:     goto   11
    jmp     l_test_exit            
    jmp     l_test_12_while_cond    #  20:     goto   12_while_cond
l_test_11:
l_test_16_while_cond:
    call    dummyBOOLfunc           #  23:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  24:     if     t2 = 1 goto 17_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_15               #  25:     goto   15
l_test_17_while_body:
    leal    v1, %eax                #  27:     &()    t3 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     param  1 <- t3
    pushl   %eax                   
    leal    v0, %eax                #  29:     &()    t4 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  31:     call   t5 <- f0
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $1, %eax                #  32:     assign v2 <- 1
    movb    %al, v2                
    jmp     l_test_16_while_cond    #  33:     goto   16_while_cond
l_test_15:
    movl    $16084, %eax            #  35:     if     16084 < 48668 goto 21_if_true
    movl    $48668, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_21_if_true      
    jmp     l_test_22_if_false      #  36:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  39:     call   t6 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_20               #  40:     goto   20
l_test_22_if_false:
l_test_20:
    call    dummyCHARfunc           #  43:     call   t7 <- dummyCHARfunc
    movb    %al, -30(%ebp)         

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <array 49 of <array 22 of <array 93 of <array 36 of <array 74 of <int>>>>>>
    .long    5
    .long   49
    .long   22
    .long   93
    .long   36
    .long   74
    .skip 1068306624
v1:                                 # <array 90 of <array 76 of <array 4 of <array 50 of <array 69 of <int>>>>>>
    .long    5
    .long   90
    .long   76
    .long    4
    .long   50
    .long   69
    .skip 377568000
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
