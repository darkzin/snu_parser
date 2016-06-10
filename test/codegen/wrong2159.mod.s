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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    movl    $75653, %eax            #   0:     div    t9 <- 75653, 23225
    movl    $23225, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   1:     mul    t10 <- t9, 59968
    movl    $59968, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t11 <- t10, 87881
    movl    $87881, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $82685, %eax            #   3:     if     82685 <= t11 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_1                 
    jmp     l_f0_2                  #   4:     goto   2
l_f0_1:
    movl    $1, %eax                #   6:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_3                  #   7:     goto   3
l_f0_2:
    movl    $0, %eax                #   9:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f0_3:
    movzbl  -21(%ebp), %eax         #  11:     return t12
    jmp     l_f0_exit              
l_f0_6_while_cond:
    call    ReadInt                 #  13:     call   t13 <- ReadInt
    movl    %eax, -28(%ebp)        
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #  15:     goto   10_while_cond
    movl    $0, %eax                #  16:     return 0
    jmp     l_f0_exit              
    movl    $35764, %eax            #  17:     if     35764 > 98588 goto 14_if_true
    movl    $98588, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  18:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  20:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_6_while_cond       #  23:     goto   6_while_cond
    call    dummyCHARfunc           #  24:     call   t14 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movl    $99, %eax               #  25:     if     99 < t14 goto 18_if_true
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  26:     goto   19_if_false
l_f0_18_if_true:
    movl    $74706, %eax            #  28:     if     74706 # 68016 goto 22_if_true
    movl    $68016, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_22_if_true        
    jmp     l_f0_23_if_false        #  29:     goto   23_if_false
l_f0_22_if_true:
    jmp     l_f0_21                 #  31:     goto   21
l_f0_23_if_false:
l_f0_21:
    jmp     l_f0_17                 #  34:     goto   17
l_f0_19_if_false:
l_f0_17:

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
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t9       <bool> %ebp-89 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 56 of <array 43 of <array 95 of <array 69 of <array 17 of <bool>>>>>>> %ebp+8 ]
    #    -90(%ebp)   1  [ $v1       <char> %ebp-90 ]
    #    -91(%ebp)   1  [ $v2       <bool> %ebp-91 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
l_f1_5_while_cond:
    movl    $100, %eax              #   3:     if     100 > 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_6_while_body      
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_exit              
    movl    $0, %eax                #   9:     if     0 # 0 goto 10_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  10:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_exit              
    movl    $98, %eax               #  16:     assign v1 <- 98
    movb    %al, -90(%ebp)         
l_f1_16_while_cond:
    jmp     l_f1_16_while_cond      #  18:     goto   16_while_cond
    jmp     l_f1_1_while_cond       #  19:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_exit              
    movl    $5715, %eax             #  22:     if     5715 >= 72376 goto 20
    movl    $72376, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_20                
    jmp     l_f1_21                 #  23:     goto   21
l_f1_20:
    movl    $1, %eax                #  25:     assign t9 <- 1
    movb    %al, -89(%ebp)         
    jmp     l_f1_22                 #  26:     goto   22
l_f1_21:
    movl    $0, %eax                #  28:     assign t9 <- 0
    movb    %al, -89(%ebp)         
l_f1_22:
    movl    $2, %eax                #  30:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $99254, %eax            #  33:     mul    t11 <- 99254, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  34:     add    t12 <- t11, 68219
    movl    $68219, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  35:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  37:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  38:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $284, %eax              #  39:     sub    t15 <- 284, 70202
    movl    $70202, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  40:     sub    t16 <- t15, 84202
    movl    $84202, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  41:     sub    t17 <- t16, 53484
    movl    $53484, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -32(%ebp), %eax         #  42:     add    t18 <- t14, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  43:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  45:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  46:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  47:     add    t21 <- t20, 64047
    movl    $64047, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  48:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  49:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  50:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  51:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  52:     add    t24 <- t23, 48424
    movl    $48424, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  53:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  54:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  55:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  56:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  57:     add    t28 <- v0, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movzbl  -89(%ebp), %eax         #  58:     assign @t28 <- t9
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
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
    call    ReadInt                 #   0:     call   t9 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     if     t9 >= 30513 goto 1_if_true
    movl    $30513, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_8_if_true          #  11:     goto   8_if_true
l_f2_8_if_true:
    call    ReadInt                 #  13:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_7                  #  14:     goto   7
l_f2_7:
    movl    $98, %eax               #  16:     if     98 <= 99 goto 13_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  17:     goto   14_if_false
l_f2_13_if_true:
    movl    $99, %eax               #  19:     assign v0 <- 99
    movb    %al, -21(%ebp)         
    jmp     l_f2_12                 #  20:     goto   12
l_f2_14_if_false:
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    movl    $98, %eax               #   2:     if     98 = 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    call    dummyBOOLfunc           #   5:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   6:     if     t1 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   9:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_2_while_cond     #  12:     goto   2_while_cond
l_test_1:
    movl    $7211, %eax             #  14:     if     7211 > 12658 goto 9_if_true
    movl    $12658, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_9_if_true       
    jmp     l_test_10_if_false      #  15:     goto   10_if_false
l_test_9_if_true:
l_test_13_while_cond:
    movl    $98, %eax               #  18:     if     98 < 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_14_while_body   
    jmp     l_test_12               #  19:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  21:     goto   13_while_cond
l_test_12:
l_test_17_while_cond:
    jmp     l_test_16               #  24:     goto   16
    jmp     l_test_17_while_cond    #  25:     goto   17_while_cond
l_test_16:
l_test_20_while_cond:
    jmp     l_test_20_while_cond    #  28:     goto   20_while_cond
    movl    $47729, %eax            #  29:     if     47729 <= 44892 goto 23_if_true
    movl    $44892, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_23_if_true      
    jmp     l_test_24_if_false      #  30:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  32:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_8                #  35:     goto   8
l_test_10_if_false:
l_test_8:
l_test_27_while_cond:
    call    dummyCHARfunc           #  39:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #  40:     if     97 = t2 goto 28_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_28_while_body   
    jmp     l_test_26               #  41:     goto   26
l_test_28_while_body:
    call    ReadInt                 #  43:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
l_test_33_while_cond:
    jmp     l_test_32               #  46:     goto   32
    jmp     l_test_33_while_cond    #  47:     goto   33_while_cond
l_test_32:
    call    dummyCHARfunc           #  49:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
l_test_37_while_cond:
    movl    $98, %eax               #  51:     if     98 = 100 goto 38_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_38_while_body   
    jmp     l_test_36               #  52:     goto   36
l_test_38_while_body:
    jmp     l_test_37_while_cond    #  54:     goto   37_while_cond
l_test_36:
    call    dummyINTfunc            #  56:     call   t5 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_test_27_while_cond    #  57:     goto   27_while_cond
l_test_26:
    call    dummyINTfunc            #  59:     call   t6 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  60:     div    t7 <- t6, 95876
    movl    $95876, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  61:     div    t8 <- t7, 91667
    movl    $91667, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  62:     param  0 <- t8
    pushl   %eax                   
    call    WriteInt                #  63:     call   WriteInt
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
