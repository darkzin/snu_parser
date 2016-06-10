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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    movl    $65213, %eax            #   0:     if     65213 >= 41307 goto 1
    movl    $41307, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v3 <- t3
    movb    %al, 16(%ebp)          
l_f0_6_while_cond:
    jmp     l_f0_7_while_body       #  10:     goto   7_while_body
l_f0_7_while_body:
    movl    $26303, %eax            #  12:     assign v4 <- 26303
    movl    %eax, 20(%ebp)         
    jmp     l_f0_6_while_cond       #  13:     goto   6_while_cond
    call    dummyINTfunc            #  14:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t13      <char> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t7       <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $t8       <char> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 56 of <array 40 of <array 16 of <array 91 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 66 of <array 57 of <array 88 of <array 62 of <array 12 of <int>>>>>>> %ebp+16 ]
    #    -30(%ebp)   1  [ $v4       <bool> %ebp-30 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     add    t4 <- t3, 95960
    movl    $95960, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     return t4
    jmp     l_f1_exit              
    movl    $68763, %eax            #   3:     param  3 <- 68763
    pushl   %eax                   
    movl    $0, %eax                #   4:     if     0 # 0 goto 6
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_6                 
    jmp     l_f1_7                  #   5:     goto   7
l_f1_6:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_8                  #   8:     goto   8
l_f1_7:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -25(%ebp)         
l_f1_8:
    movzbl  -25(%ebp), %eax         #  12:     param  2 <- t5
    pushl   %eax                   
    movl    $21879, %eax            #  13:     param  3 <- 21879
    pushl   %eax                   
    movl    $100, %eax              #  14:     if     100 = 100 goto 10
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_11                 #  15:     goto   11
l_f1_10:
    movl    $1, %eax                #  17:     assign t6 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_12                 #  18:     goto   12
l_f1_11:
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -26(%ebp)         
l_f1_12:
    movzbl  -26(%ebp), %eax         #  22:     param  2 <- t6
    pushl   %eax                   
    movl    $97, %eax               #  23:     param  1 <- 97
    pushl   %eax                   
    movl    $3843, %eax             #  24:     param  3 <- 3843
    pushl   %eax                   
    movl    $36130, %eax            #  25:     if     36130 >= 10733 goto 14
    movl    $10733, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_14                
    jmp     l_f1_15                 #  26:     goto   15
l_f1_14:
    movl    $1, %eax                #  28:     assign t7 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f1_16                 #  29:     goto   16
l_f1_15:
    movl    $0, %eax                #  31:     assign t7 <- 0
    movb    %al, -27(%ebp)         
l_f1_16:
    movzbl  -27(%ebp), %eax         #  33:     param  2 <- t7
    pushl   %eax                   
    movl    $98, %eax               #  34:     param  1 <- 98
    pushl   %eax                   
    call    dummyCHARfunc           #  35:     call   t8 <- dummyCHARfunc
    movb    %al, -28(%ebp)         
    movzbl  -28(%ebp), %eax         #  36:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  37:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  38:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  39:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  40:     param  1 <- t10
    pushl   %eax                   
    movl    $97, %eax               #  41:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  42:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  43:     if     98 < t11 goto 2
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2                 
    jmp     l_f1_3                  #  44:     goto   3
l_f1_2:
    movl    $1, %eax                #  46:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_4                  #  47:     goto   4
l_f1_3:
    movl    $0, %eax                #  49:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f1_4:
    movzbl  -15(%ebp), %eax         #  51:     assign v4 <- t12
    movb    %al, -30(%ebp)         
l_f1_19_while_cond:
    call    dummyCHARfunc           #  53:     call   t13 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  54:     if     t13 >= 99 goto 20_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_20_while_body     
    jmp     l_f1_18                 #  55:     goto   18
l_f1_20_while_body:
    jmp     l_f1_19_while_cond      #  57:     goto   19_while_cond
l_f1_18:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 18 of <array 14 of <array 34 of <array 74 of <array 34 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 58 of <array 1 of <array 5 of <array 6 of <array 20 of <bool>>>>>>> %ebp+12 ]

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
l_f2_1_while_cond:
    jmp     l_f2_5                  #   1:     goto   5
    jmp     l_f2_5                  #   2:     goto   5
    jmp     l_f2_5                  #   3:     goto   5
    jmp     l_f2_5                  #   4:     goto   5
l_f2_5:
    jmp     l_f2_0                  #   6:     goto   0
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    movl    $40590, %eax            #   9:     sub    t3 <- 40590, 41263
    movl    $41263, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $30604, %eax            #  10:     div    t4 <- 30604, 99881
    movl    $99881, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t5 <- t3, t4
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     return t5
    jmp     l_f2_exit              
l_f2_13_while_cond:
    movl    $3772, %eax             #  14:     add    t6 <- 3772, 77482
    movl    $77482, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     add    t7 <- t6, 82521
    movl    $82521, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $42849, %eax            #  16:     mul    t8 <- 42849, 87587
    movl    $87587, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     mul    t9 <- t8, 40958
    movl    $40958, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  18:     if     t7 > t9 goto 14_while_body
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_14_while_body     
    jmp     l_f2_12                 #  19:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  21:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    movl    $98, %eax               #   1:     if     98 < 99 goto 4_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_4_if_true       
    jmp     l_test_5_if_false       #   2:     goto   5_if_false
l_test_4_if_true:
    call    dummyBOOLfunc           #   4:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_10_if_false      #   5:     goto   10_if_false
    jmp     l_test_8                #   6:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_exit            
    jmp     l_test_3                #  10:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_1_while_cond     #  13:     goto   1_while_cond
    jmp     l_test_exit            
    movl    $55025, %eax            #  15:     if     55025 <= 15066 goto 14
    movl    $15066, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_14              
    jmp     l_test_15               #  16:     goto   15
l_test_14:
    movl    $1, %eax                #  18:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_16               #  19:     goto   16
l_test_15:
    movl    $0, %eax                #  21:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_16:
    movzbl  -14(%ebp), %eax         #  23:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $100, %eax              #  25:     if     100 <= 97 goto 20_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_20_if_true      
    jmp     l_test_21_if_false      #  26:     goto   21_if_false
l_test_20_if_true:
l_test_24_while_cond:
    movl    $100, %eax              #  29:     if     100 <= 100 goto 27
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_27              
    jmp     l_test_28               #  30:     goto   28
l_test_27:
    movl    $1, %eax                #  32:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_29               #  33:     goto   29
l_test_28:
    movl    $0, %eax                #  35:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_29:
    movzbl  -15(%ebp), %eax         #  37:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_24_while_cond    #  38:     goto   24_while_cond
    jmp     l_test_19               #  39:     goto   19
l_test_21_if_false:
l_test_19:
    movl    $98, %eax               #  42:     assign v1 <- 98
    movb    %al, v1                

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
