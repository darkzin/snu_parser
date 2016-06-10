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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 9 of <array 10 of <array 10 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 10 of <array 6 of <array 3 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -16(%ebp)   1  [ $v4       <bool> %ebp-16 ]

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
    movl    $1, %eax                #   0:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   1:     goto   3
    movl    $0, %eax                #   2:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   4:     return t7
    jmp     l_f0_exit              
    movl    $100, %eax              #   5:     if     100 > 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   6:     goto   7_if_false
l_f0_6_if_true:
    movl    $37378, %eax            #   8:     if     37378 < 42682 goto 10_if_true
    movl    $42682, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #   9:     goto   11_if_false
l_f0_10_if_true:
    movl    $29910, %eax            #  11:     if     29910 < 59023 goto 14
    movl    $59023, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_14                
    jmp     l_f0_15                 #  12:     goto   15
l_f0_14:
    movl    $1, %eax                #  14:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_16                 #  15:     goto   16
l_f0_15:
    movl    $0, %eax                #  17:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f0_16:
    movzbl  -14(%ebp), %eax         #  19:     assign v4 <- t8
    movb    %al, -16(%ebp)         
    jmp     l_f0_9                  #  20:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_5                  #  23:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_20                 #  26:     goto   20
    jmp     l_f0_20                 #  27:     goto   20
    movl    $1, %eax                #  28:     assign t9 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_21                 #  29:     goto   21
l_f0_20:
    movl    $0, %eax                #  31:     assign t9 <- 0
    movb    %al, -15(%ebp)         
l_f0_21:
    movzbl  -15(%ebp), %eax         #  33:     return t9
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 9 of <array 9 of <array 8 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 10 of <array 1 of <array 1 of <array 9 of <bool>>>>>>> %ebp+16 ]

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
    movl    $19133, %eax            #   0:     add    t7 <- 19133, 48817
    movl    $48817, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t8 <- t7, 90507
    movl    $90507, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t8
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $0, %eax                #   4:     if     0 = 0 goto 3_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
    movl    $98, %eax               #   7:     assign v2 <- 98
    movb    %al, 12(%ebp)          

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 7 of <array 9 of <array 8 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_5                  #   1:     goto   5
    jmp     l_f2_5                  #   2:     goto   5
    jmp     l_f2_6                  #   3:     goto   6
l_f2_5:
    movl    $1, %eax                #   5:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $0, %eax                #   8:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f2_7:
    movl    $0, %eax                #  10:     if     0 = t8 goto 2_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #  11:     goto   3_if_false
l_f2_2_if_true:
    movl    $29271, %eax            #  13:     assign v3 <- 29271
    movl    %eax, -20(%ebp)        
    jmp     l_f2_1                  #  14:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_12_while_cond:
    movl    $96744, %eax            #  18:     if     96744 < 41168 goto 13_while_body
    movl    $41168, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_13_while_body     
    jmp     l_f2_11                 #  19:     goto   11
l_f2_13_while_body:
l_f2_16_while_cond:
    movl    $38300, %eax            #  22:     if     38300 < 14264 goto 17_while_body
    movl    $14264, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_17_while_body     
    jmp     l_f2_15                 #  23:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  25:     goto   16_while_cond
l_f2_15:
    jmp     l_f2_21_if_false        #  27:     goto   21_if_false
    jmp     l_f2_19                 #  28:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_24_if_false        #  31:     goto   24_if_false
    jmp     l_f2_22                 #  32:     goto   22
l_f2_24_if_false:
l_f2_22:
    jmp     l_f2_12_while_cond      #  35:     goto   12_while_cond
l_f2_11:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 7 of <array 9 of <array 8 of <array 1 of <char>>>>>>> %ebp-40 ]

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
    movl    $47178, %eax            #   0:     div    t0 <- 47178, 96162
    movl    $96162, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    movl    $99725, %eax            #   2:     add    t1 <- 99725, 66726
    movl    $66726, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 2166
    movl    $2166, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $31577, %eax            #   4:     if     31577 >= t2 goto 2_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   5:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_1                #   7:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  11:     assign v1 <- t3
    movb    %al, v1                
l_test_7_while_cond:
    movl    $58928, %eax            #  13:     mul    t4 <- 58928, 58480
    movl    $58480, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     if     t4 = 1573 goto 8_while_body
    movl    $1573, %ebx            
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #  15:     goto   6
l_test_8_while_body:
    jmp     l_test_12_if_false      #  17:     goto   12_if_false
    jmp     l_test_10               #  18:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_7_while_cond     #  21:     goto   7_while_cond
l_test_6:
    movl    $97, %eax               #  23:     if     97 < 100 goto 14_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_14_if_true      
    jmp     l_test_15_if_false      #  24:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_exit            
    movl    $31363, %eax            #  27:     if     31363 # 60650 goto 19_if_true
    movl    $60650, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_19_if_true      
    jmp     l_test_20_if_false      #  28:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  30:     goto   18
l_test_20_if_false:
l_test_18:
    movl    $0, %eax                #  33:     if     0 # 1 goto 23
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_23              
    jmp     l_test_24               #  34:     goto   24
l_test_23:
    movl    $1, %eax                #  36:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_25               #  37:     goto   25
l_test_24:
    movl    $0, %eax                #  39:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_25:
    movzbl  -33(%ebp), %eax         #  41:     param  1 <- t5
    pushl   %eax                   
    leal    v2, %eax                #  42:     &()    t6 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  43:     param  0 <- t6
    pushl   %eax                   
    call    f2                      #  44:     call   f2
    addl    $8, %esp               
    movl    $32531, %eax            #  45:     assign v0 <- 32531
    movl    %eax, v0               
l_test_29_while_cond:
    jmp     l_test_29_while_cond    #  47:     goto   29_while_cond
    jmp     l_test_13               #  48:     goto   13
l_test_15_if_false:
l_test_13:

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

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 2 of <array 7 of <array 9 of <array 8 of <array 1 of <char>>>>>>
    .long    5
    .long    2
    .long    7
    .long    9
    .long    8
    .long    1
    .skip 1008








    # end of global data section
    #-----------------------------------------

    .end
##################################################
