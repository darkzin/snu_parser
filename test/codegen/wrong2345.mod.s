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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 35 of <array 74 of <array 24 of <array 46 of <array 47 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 52 of <array 91 of <array 9 of <array 44 of <array 77 of <int>>>>>>> %ebp+20 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    movl    $97, %eax               #   0:     return 97
    jmp     l_f0_exit              
    movl    $97, %eax               #   1:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   2:     goto   0
l_f0_0:
l_f0_6_while_cond:
    movl    $53301, %eax            #   5:     if     53301 # 1789 goto 7_while_body
    movl    $1789, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_while_body:
    call    dummyINTfunc            #   8:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_14                 #   9:     goto   14
    jmp     l_f0_14                 #  10:     goto   14
l_f0_14:
    movl    $1, %eax                #  12:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_16                 #  13:     goto   16
    movl    $0, %eax                #  14:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f0_16:
    movzbl  -17(%ebp), %eax         #  16:     if     t3 = 0 goto 11_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  17:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  19:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_6_while_cond       #  22:     goto   6_while_cond
l_f0_5:
    movl    $37406, %eax            #  24:     assign v4 <- 37406
    movl    %eax, -24(%ebp)        

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 23 of <array 96 of <array 79 of <array 95 of <array 93 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 11 of <array 100 of <array 32 of <array 46 of <array 71 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   1:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t4 <- t3, 43198
    movl    $43198, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t4
    jmp     l_f1_exit              
    movl    $76758, %eax            #   4:     sub    t5 <- 76758, 36721
    movl    $36721, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     sub    t6 <- t5, 69628
    movl    $69628, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     add    t7 <- t6, 8958
    movl    $8958, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t22      <char> %ebp-65 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t24      <char> %ebp-73 ]
    #    -74(%ebp)   1  [ $t3       <char> %ebp-74 ]
    #    -75(%ebp)   1  [ $t4       <bool> %ebp-75 ]
    #    -76(%ebp)   1  [ $t5       <bool> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 95 of <array 86 of <array 50 of <array 58 of <array 30 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -93(%ebp)   1  [ $v2       <bool> %ebp-93 ]

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
    movl    $97, %eax               #   0:     if     97 > 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $100, %eax              #   3:     if     100 >= 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyBOOLfunc           #   9:     call   t2 <- dummyBOOLfunc
    movb    %al, -53(%ebp)         
l_f2_10_while_cond:
    jmp     l_f2_9                  #  11:     goto   9
    jmp     l_f2_10_while_cond      #  12:     goto   10_while_cond
l_f2_9:
    call    dummyCHARfunc           #  14:     call   t3 <- dummyCHARfunc
    movb    %al, -74(%ebp)         
    movl    $98, %eax               #  15:     if     98 < 97 goto 14
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_14                
    jmp     l_f2_15                 #  16:     goto   15
l_f2_14:
    movl    $1, %eax                #  18:     assign t4 <- 1
    movb    %al, -75(%ebp)         
    jmp     l_f2_16                 #  19:     goto   16
l_f2_15:
    movl    $0, %eax                #  21:     assign t4 <- 0
    movb    %al, -75(%ebp)         
l_f2_16:
    movzbl  -75(%ebp), %eax         #  23:     assign v2 <- t4
    movb    %al, -93(%ebp)         
    movl    $84137, %eax            #  24:     if     84137 # 77206 goto 19
    movl    $77206, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_19                
    jmp     l_f2_20                 #  25:     goto   20
l_f2_19:
    movl    $1, %eax                #  27:     assign t5 <- 1
    movb    %al, -76(%ebp)         
    jmp     l_f2_21                 #  28:     goto   21
l_f2_20:
    movl    $0, %eax                #  30:     assign t5 <- 0
    movb    %al, -76(%ebp)         
l_f2_21:
    movl    $2, %eax                #  32:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  33:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  34:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $43802, %eax            #  35:     mul    t7 <- 43802, t6
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  36:     add    t8 <- t7, 3516
    movl    $3516, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  37:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  38:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  39:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  40:     mul    t10 <- t8, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  41:     add    t11 <- t10, 60769
    movl    $60769, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  42:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  43:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  44:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  45:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  46:     add    t14 <- t13, 73658
    movl    $73658, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  47:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  48:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  49:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  50:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  51:     add    t17 <- t16, 76941
    movl    $76941, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  52:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  53:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  54:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  55:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  56:     add    t21 <- v0, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -76(%ebp), %eax         #  57:     assign @t21 <- t5
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $98, %eax               #  58:     return 98
    jmp     l_f2_exit              
    movl    $97, %eax               #  59:     return 97
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  60:     call   t22 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    call    ReadInt                 #  61:     call   t23 <- ReadInt
    movl    %eax, -72(%ebp)        
    movl    $98, %eax               #  62:     assign v1 <- 98
    movb    %al, 12(%ebp)          
    jmp     l_f2_28                 #  63:     goto   28
l_f2_28:
l_f2_32_while_cond:
    jmp     l_f2_31                 #  66:     goto   31
    jmp     l_f2_32_while_cond      #  67:     goto   32_while_cond
l_f2_31:
    jmp     l_f2_0                  #  69:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $55793, %eax            #  72:     param  0 <- 55793
    pushl   %eax                   
    call    WriteInt                #  73:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #  74:     call   t24 <- dummyCHARfunc
    movb    %al, -73(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
    movl    $10117, %eax            #   0:     if     10117 <= 4771 goto 1_if_true
    movl    $4771, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    leal    _str_1, %eax            #   3:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   5:     call   WriteStr
    addl    $4, %esp               
    movl    $63185, %eax            #   6:     param  0 <- 63185
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $98, %eax               #  11:     if     98 = 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_7_if_true       
    jmp     l_test_8_if_false       #  12:     goto   8_if_false
l_test_7_if_true:
    movl    $98, %eax               #  14:     if     98 = 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_11_if_true      
    jmp     l_test_12_if_false      #  15:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  17:     goto   10
l_test_12_if_false:
l_test_10:
l_test_15_while_cond:
    movl    $1, %eax                #  21:     if     1 # 1 goto 16_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_16_while_body   
    jmp     l_test_14               #  22:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  24:     goto   15_while_cond
l_test_14:
    jmp     l_test_18               #  26:     goto   18
l_test_18:
    jmp     l_test_6                #  28:     goto   6
l_test_8_if_false:
l_test_6:
l_test_22_while_cond:
    movl    $100, %eax              #  32:     if     100 <= 99 goto 23_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_23_while_body   
    jmp     l_test_21               #  33:     goto   21
l_test_23_while_body:
    movl    $17041, %eax            #  35:     if     17041 > 4490 goto 26_if_true
    movl    $4490, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_26_if_true      
    jmp     l_test_27_if_false      #  36:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  38:     goto   25
l_test_27_if_false:
l_test_25:
    movl    $99, %eax               #  41:     if     99 # 100 goto 30_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_30_if_true      
    jmp     l_test_31_if_false      #  42:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_29               #  44:     goto   29
l_test_31_if_false:
l_test_29:
l_test_34_while_cond:
    movl    $0, %eax                #  48:     if     0 # 1 goto 35_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_35_while_body   
    jmp     l_test_33               #  49:     goto   33
l_test_35_while_body:
    jmp     l_test_34_while_cond    #  51:     goto   34_while_cond
l_test_33:
    jmp     l_test_22_while_cond    #  53:     goto   22_while_cond
l_test_21:
    jmp     l_test_exit            
    movl    $100, %eax              #  56:     if     100 # 98 goto 39
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_39              
    jmp     l_test_40               #  57:     goto   40
l_test_39:
    movl    $1, %eax                #  59:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_41               #  60:     goto   41
l_test_40:
    movl    $0, %eax                #  62:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_41:
    movzbl  -17(%ebp), %eax         #  64:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
