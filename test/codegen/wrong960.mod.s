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
    #    -13(%ebp)   1  [ $t16      <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    movl    $72764, %eax            #   2:     param  0 <- 72764
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
    movl    $100, %eax              #   4:     return 100
    jmp     l_f0_exit              
    movl    $98, %eax               #   5:     if     98 < 98 goto 6
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_6                 
    jmp     l_f0_7                  #   6:     goto   7
l_f0_6:
    movl    $1, %eax                #   8:     assign t16 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #   9:     goto   8
l_f0_7:
    movl    $0, %eax                #  11:     assign t16 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movzbl  -13(%ebp), %eax         #  13:     assign v2 <- t16
    movb    %al, 12(%ebp)          
l_f0_11_while_cond:
    movl    $100, %eax              #  15:     if     100 < 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_12_while_body     
    jmp     l_f0_10                 #  16:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  18:     goto   11_while_cond
l_f0_10:
    movl    $99, %eax               #  20:     if     99 <= 100 goto 15_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  21:     goto   16_if_false
l_f0_15_if_true:
    movl    $78633, %eax            #  23:     if     78633 <= 51261 goto 19_if_true
    movl    $51261, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  24:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  26:     goto   18
l_f0_20_if_false:
l_f0_18:
    movl    $98, %eax               #  29:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_14                 #  30:     goto   14
l_f0_16_if_false:
l_f0_14:
    jmp     l_f0_1_while_cond       #  33:     goto   1_while_cond
l_f0_0:
    movl    $69974, %eax            #  35:     if     69974 < 58692 goto 24_if_true
    movl    $58692, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_24_if_true        
    jmp     l_f0_25_if_false        #  36:     goto   25_if_false
l_f0_24_if_true:
l_f0_28_while_cond:
    jmp     l_f0_28_while_cond      #  39:     goto   28_while_cond
    movl    $98, %eax               #  40:     if     98 >= 99 goto 31_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_31_if_true        
    jmp     l_f0_32_if_false        #  41:     goto   32_if_false
l_f0_31_if_true:
    jmp     l_f0_30                 #  43:     goto   30
l_f0_32_if_false:
l_f0_30:
    movl    $99, %eax               #  46:     if     99 > 97 goto 35_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_35_if_true        
    jmp     l_f0_36_if_false        #  47:     goto   36_if_false
l_f0_35_if_true:
    jmp     l_f0_34                 #  49:     goto   34
l_f0_36_if_false:
l_f0_34:
    movl    $99, %eax               #  52:     if     99 > 98 goto 39_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_39_if_true        
    jmp     l_f0_40_if_false        #  53:     goto   40_if_false
l_f0_39_if_true:
    jmp     l_f0_38                 #  55:     goto   38
l_f0_40_if_false:
l_f0_38:
    jmp     l_f0_23                 #  58:     goto   23
l_f0_25_if_false:
l_f0_23:
l_f0_43_while_cond:
    jmp     l_f0_44_while_body      #  62:     goto   44_while_body
    jmp     l_f0_44_while_body      #  63:     goto   44_while_body
    jmp     l_f0_42                 #  64:     goto   42
l_f0_44_while_body:
    jmp     l_f0_43_while_cond      #  66:     goto   43_while_cond
l_f0_42:

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
    #    -13(%ebp)   1  [ $t16      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t17      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t18      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t19      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t20      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t21      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t22      <char> %ebp-33 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 7 of <array 8 of <array 7 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 4 of <array 10 of <array 4 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 8 of <array 9 of <array 7 of <array 6 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    movl    $51453, %eax            #   0:     if     51453 > 18536 goto 1
    movl    $18536, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t16 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t16 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     param  1 <- t16
    pushl   %eax                   
    movl    $12079, %eax            #   9:     param  0 <- 12079
    pushl   %eax                   
    call    f0                      #  10:     call   t17 <- f0
    addl    $8, %esp               
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     param  0 <- t17
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               
    movl    $0, %eax                #  13:     param  1 <- 0
    pushl   %eax                   
    movl    $77935, %eax            #  14:     add    t18 <- 77935, 66386
    movl    $66386, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     sub    t19 <- t18, 85255
    movl    $85255, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     sub    t20 <- t19, 60133
    movl    $60133, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     add    t21 <- t20, 37415
    movl    $37415, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     param  0 <- t21
    pushl   %eax                   
    call    f0                      #  19:     call   t22 <- f0
    addl    $8, %esp               
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  20:     return t22
    jmp     l_f1_exit              
l_f1_7_while_cond:
    movl    $98, %eax               #  22:     if     98 >= 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #  23:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  25:     goto   7_while_cond
l_f1_6:

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
    #    -16(%ebp)   4  [ $t16      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t17      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t18      <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 6 of <array 2 of <array 10 of <array 5 of <char>>>>>>> %ebp+12 ]

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
    call    ReadInt                 #   0:     call   t16 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f2_2_while_cond:
    movl    $98, %eax               #   2:     if     98 < 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    movl    $99, %eax               #   5:     assign v1 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
    movl    $1, %eax                #   8:     param  1 <- 1
    pushl   %eax                   
    movl    $23232, %eax            #   9:     param  0 <- 23232
    pushl   %eax                   
    call    f0                      #  10:     call   t17 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #  11:     if     99 < t17 goto 7
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_7                 
    jmp     l_f2_8                  #  12:     goto   8
l_f2_7:
    movl    $1, %eax                #  14:     assign t18 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_9                  #  15:     goto   9
l_f2_8:
    movl    $0, %eax                #  17:     assign t18 <- 0
    movb    %al, -18(%ebp)         
l_f2_9:
    movzbl  -18(%ebp), %eax         #  19:     return t18
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t10      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 2 of <array 8 of <array 9 of <array 7 of <array 6 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 10 of <array 4 of <array 10 of <array 4 of <array 4 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 5 of <array 7 of <array 8 of <array 7 of <array 2 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t15      <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $t2       <bool> %ebp-31 ]
    #    -32(%ebp)   1  [ $t3       <bool> %ebp-32 ]
    #    -33(%ebp)   1  [ $t4       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t5       <char> %ebp-34 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 8 of <array 9 of <array 7 of <array 6 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <ptr(4) to <array 10 of <array 4 of <array 10 of <array 4 of <array 4 of <bool>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <array 7 of <array 8 of <array 7 of <array 2 of <bool>>>>>>> %ebp-48 ]
    #    -49(%ebp)   1  [ $t9       <char> %ebp-49 ]

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
    jmp     l_test_6                #   0:     goto   6
    movl    $1, %eax                #   1:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   2:     goto   7
l_test_6:
    movl    $0, %eax                #   4:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    jmp     l_test_9                #   6:     goto   9
    jmp     l_test_9                #   7:     goto   9
    jmp     l_test_9                #   8:     goto   9
    jmp     l_test_9                #   9:     goto   9
l_test_9:
    movl    $1, %eax                #  11:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_11               #  12:     goto   11
    movl    $0, %eax                #  13:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_11:
    movzbl  -13(%ebp), %eax         #  15:     if     t0 # t1 goto 1
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_1               
    jmp     l_test_2                #  16:     goto   2
l_test_1:
    movl    $1, %eax                #  18:     assign t2 <- 1
    movb    %al, -31(%ebp)         
    jmp     l_test_3                #  19:     goto   3
l_test_2:
    movl    $0, %eax                #  21:     assign t2 <- 0
    movb    %al, -31(%ebp)         
l_test_3:
    movzbl  -31(%ebp), %eax         #  23:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_22               #  24:     goto   22
    movl    $1, %eax                #  25:     assign t3 <- 1
    movb    %al, -32(%ebp)         
    jmp     l_test_23               #  26:     goto   23
l_test_22:
    movl    $0, %eax                #  28:     assign t3 <- 0
    movb    %al, -32(%ebp)         
l_test_23:
    movl    $90184, %eax            #  30:     if     90184 # 95883 goto 25
    movl    $95883, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_25              
    jmp     l_test_26               #  31:     goto   26
l_test_25:
    movl    $1, %eax                #  33:     assign t4 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_27               #  34:     goto   27
l_test_26:
    movl    $0, %eax                #  36:     assign t4 <- 0
    movb    %al, -33(%ebp)         
l_test_27:
    movzbl  -32(%ebp), %eax         #  38:     if     t3 = t4 goto 18_if_true
    movzbl  -33(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_18_if_true      
    jmp     l_test_19_if_false      #  39:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  41:     goto   17
l_test_19_if_false:
l_test_17:
    call    dummyCHARfunc           #  44:     call   t5 <- dummyCHARfunc
    movb    %al, -34(%ebp)         
    jmp     l_test_exit            
    movl    $98, %eax               #  46:     param  3 <- 98
    pushl   %eax                   
    leal    v3, %eax                #  47:     &()    t6 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  48:     param  2 <- t6
    pushl   %eax                   
    leal    v2, %eax                #  49:     &()    t7 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  50:     param  1 <- t7
    pushl   %eax                   
    leal    v1, %eax                #  51:     &()    t8 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  52:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  53:     call   t9 <- f1
    addl    $16, %esp              
    movb    %al, -49(%ebp)         
    movl    $100, %eax              #  54:     if     100 < t9 goto 32
    movzbl  -49(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_32              
    jmp     l_test_33               #  55:     goto   33
l_test_32:
    movl    $1, %eax                #  57:     assign t10 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_34               #  58:     goto   34
l_test_33:
    movl    $0, %eax                #  60:     assign t10 <- 0
    movb    %al, -15(%ebp)         
l_test_34:
    movzbl  -15(%ebp), %eax         #  62:     assign v0 <- t10
    movb    %al, v0                
l_test_37_while_cond:
    movl    $100, %eax              #  64:     param  3 <- 100
    pushl   %eax                   
    leal    v3, %eax                #  65:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  66:     param  2 <- t11
    pushl   %eax                   
    leal    v2, %eax                #  67:     &()    t12 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  68:     param  1 <- t12
    pushl   %eax                   
    leal    v1, %eax                #  69:     &()    t13 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  70:     param  0 <- t13
    pushl   %eax                   
    call    f1                      #  71:     call   t14 <- f1
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  72:     if     t14 = 98 goto 38_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_38_while_body   
    jmp     l_test_36               #  73:     goto   36
l_test_38_while_body:
    call    dummyCHARfunc           #  75:     call   t15 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  76:     param  0 <- t15
    pushl   %eax                   
    call    WriteChar               #  77:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_37_while_cond    #  78:     goto   37_while_cond
l_test_36:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 5 of <array 7 of <array 8 of <array 7 of <array 2 of <bool>>>>>>
    .long    5
    .long    5
    .long    7
    .long    8
    .long    7
    .long    2
    .skip 3920
v2:                                 # <array 10 of <array 4 of <array 10 of <array 4 of <array 4 of <bool>>>>>>
    .long    5
    .long   10
    .long    4
    .long   10
    .long    4
    .long    4
    .skip 6400
v3:                                 # <array 2 of <array 8 of <array 9 of <array 7 of <array 6 of <int>>>>>>
    .long    5
    .long    2
    .long    8
    .long    9
    .long    7
    .long    6
    .skip 24192








    # end of global data section
    #-----------------------------------------

    .end
##################################################
