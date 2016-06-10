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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 53 of <array 10 of <array 80 of <array 93 of <array 68 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
l_f0_4_while_cond:
    movl    $69398, %eax            #   2:     if     69398 <= 26161 goto 5_while_body
    movl    $26161, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_5_while_body      
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_while_body:
    jmp     l_f0_4_while_cond       #   5:     goto   4_while_cond
l_f0_3:
    jmp     l_f0_9_if_false         #   7:     goto   9_if_false
    jmp     l_f0_7                  #   8:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_1_while_cond       #  11:     goto   1_while_cond
l_f0_11_while_cond:
    movl    $17024, %eax            #  13:     mul    t1 <- 17024, 51629
    movl    $51629, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $66012, %eax            #  14:     add    t2 <- 66012, t1
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $35911, %eax            #  15:     if     35911 >= t2 goto 12_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_12_while_body     
    jmp     l_f0_10                 #  16:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  18:     goto   11_while_cond
l_f0_10:
l_f0_15_while_cond:
    call    dummyBOOLfunc           #  21:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movl    $1, %eax                #  22:     if     1 # t3 goto 16_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_16_while_body     
    jmp     l_f0_14                 #  23:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  25:     goto   15_while_cond
l_f0_14:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 46 of <array 24 of <array 57 of <array 3 of <array 68 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 43 of <array 36 of <array 84 of <array 74 of <array 80 of <int>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v3       <bool> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t1
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #   2:     if     97 > 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_2                 
    jmp     l_f1_3                  #   3:     goto   3
l_f1_2:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #  10:     assign v3 <- t2
    movb    %al, -16(%ebp)         
    movl    $15976, %eax            #  11:     if     15976 >= 94672 goto 7_if_true
    movl    $94672, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  12:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_exit              
    jmp     l_f1_13_if_false        #  15:     goto   13_if_false
    jmp     l_f1_11                 #  16:     goto   11
l_f1_13_if_false:
l_f1_11:
    jmp     l_f1_6                  #  19:     goto   6
l_f1_8_if_false:
l_f1_6:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 53 of <array 10 of <array 80 of <array 93 of <array 68 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 53 of <array 10 of <array 80 of <array 93 of <array 68 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t7       <char> %ebp-27 ]
    #    -28(%ebp)   1  [ $t8       <bool> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <char> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #   -268137656(%ebp)  268137624  [ $v1       <array 53 of <array 10 of <array 80 of <array 93 of <array 68 of <char>>>>>> %ebp-268137656 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $268137644, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $67034411, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-268137656(%ebp)     # local array 'v1': 5 dimensions
    movl    $53,-268137652(%ebp)    #   dimension 1: 53 elements
    movl    $10,-268137648(%ebp)    #   dimension 2: 10 elements
    movl    $80,-268137644(%ebp)    #   dimension 3: 80 elements
    movl    $93,-268137640(%ebp)    #   dimension 4: 93 elements
    movl    $68,-268137636(%ebp)    #   dimension 5: 68 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
l_f2_2_while_body:
    movl    $12121, %eax            #   3:     if     12121 < 20742 goto 5
    movl    $20742, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_5                 
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   7:     goto   7
l_f2_6:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  11:     return t1
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
    jmp     l_f2_11                 #  13:     goto   11
    jmp     l_f2_11                 #  14:     goto   11
    movl    $1, %eax                #  15:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_12                 #  16:     goto   12
l_f2_11:
    movl    $0, %eax                #  18:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_12:
    movzbl  -14(%ebp), %eax         #  20:     return t2
    jmp     l_f2_exit              
    movl    $83547, %eax            #  21:     param  3 <- 83547
    pushl   %eax                   
    leal    -268137656(%ebp), %eax  #  22:     &()    t3 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  2 <- t3
    pushl   %eax                   
    movl    $70816, %eax            #  24:     param  3 <- 70816
    pushl   %eax                   
    leal    -268137656(%ebp), %eax  #  25:     &()    t4 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     param  2 <- t4
    pushl   %eax                   
    movl    $99, %eax               #  27:     param  1 <- 99
    pushl   %eax                   
    call    dummyCHARfunc           #  28:     call   t5 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $98, %eax               #  29:     if     98 < t5 goto 17
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_17                
    jmp     l_f2_18                 #  30:     goto   18
l_f2_17:
    movl    $1, %eax                #  32:     assign t6 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_19                 #  33:     goto   19
l_f2_18:
    movl    $0, %eax                #  35:     assign t6 <- 0
    movb    %al, -26(%ebp)         
l_f2_19:
    movzbl  -26(%ebp), %eax         #  37:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  38:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #  39:     param  1 <- t7
    pushl   %eax                   
    movl    $1, %eax                #  40:     if     1 # 0 goto 21
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_21                
    jmp     l_f2_22                 #  41:     goto   22
l_f2_21:
    movl    $1, %eax                #  43:     assign t8 <- 1
    movb    %al, -28(%ebp)         
    jmp     l_f2_23                 #  44:     goto   23
l_f2_22:
    movl    $0, %eax                #  46:     assign t8 <- 0
    movb    %al, -28(%ebp)         
l_f2_23:
    movzbl  -28(%ebp), %eax         #  48:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  49:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $268137644, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
l_test_1_while_cond:
    movl    $100, %eax              #   1:     if     100 # 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
l_test_6_while_cond:
    movl    $57475, %eax            #   6:     if     57475 >= 74923 goto 7_while_body
    movl    $74923, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #   7:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   9:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  13:     goto   11_while_cond
    call    ReadInt                 #  14:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $0, %eax                #  15:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_1_while_cond     #  16:     goto   1_while_cond
l_test_0:
    movl    $22792, %eax            #  18:     if     22792 >= 35518 goto 16_if_true
    movl    $35518, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_16_if_true      
    jmp     l_test_17_if_false      #  19:     goto   17_if_false
l_test_16_if_true:
    movl    $98, %eax               #  21:     if     98 <= 100 goto 20_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_20_if_true      
    jmp     l_test_21_if_false      #  22:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  24:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_exit            
l_test_25_while_cond:
    jmp     l_test_25_while_cond    #  29:     goto   25_while_cond
    jmp     l_test_15               #  30:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_29_if_false      #  33:     goto   29_if_false
    movl    $100, %eax              #  34:     if     100 = 97 goto 31_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_31_if_true      
    jmp     l_test_32_if_false      #  35:     goto   32_if_false
l_test_31_if_true:
    jmp     l_test_30               #  37:     goto   30
l_test_32_if_false:
l_test_30:
    jmp     l_test_34               #  40:     goto   34
l_test_34:
    jmp     l_test_27               #  42:     goto   27
l_test_29_if_false:
l_test_27:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
