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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t6       <bool> %ebp-19 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 55 of <array 10 of <array 1 of <array 27 of <array 93 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 19 of <array 96 of <array 57 of <array 79 of <array 15 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    movl    $4147, %eax             #   0:     sub    t3 <- 4147, 28750
    movl    $28750, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $31401, %eax            #   1:     if     31401 = t3 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f0_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v2 <- t4
    movb    %al, 12(%ebp)          
    call    dummyBOOLfunc           #  10:     call   t5 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    call    dummyBOOLfunc           #  11:     call   t6 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 22 of <array 25 of <array 49 of <array 42 of <array 13 of <int>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $98, %eax               #   3:     if     98 = 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    movl    $97, %eax               #   6:     return 97
    jmp     l_f1_exit              
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #   8:     goto   7_while_cond
    movl    $100, %eax              #   9:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #  10:     goto   2_while_cond
l_f1_1:
    leal    _str_1, %eax            #  12:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  14:     call   WriteStr
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 54 of <array 60 of <array 53 of <array 3 of <array 87 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 70 of <array 72 of <array 5 of <array 26 of <int>>>>>>> %ebp+12 ]
    #    -33(%ebp)   1  [ $v3       <char> %ebp-33 ]

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
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     assign v3 <- 97
    movb    %al, -33(%ebp)         
    jmp     l_f2_1_while_cond       #   2:     goto   1_while_cond
    movl    $76109, %eax            #   3:     mul    t3 <- 76109, 10986
    movl    $10986, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     div    t4 <- t3, 90175
    movl    $90175, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     div    t5 <- t4, 31281
    movl    $31281, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     div    t6 <- t5, 43066
    movl    $43066, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     mul    t7 <- t6, 99605
    movl    $99605, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     return t7
    jmp     l_f2_exit              
    movl    $100, %eax              #   9:     assign v3 <- 100
    movb    %al, -33(%ebp)         

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 8 of <array 70 of <array 72 of <array 5 of <array 26 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 54 of <array 60 of <array 53 of <array 3 of <array 87 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    movl    $72865, %eax            #   1:     if     72865 >= 74035 goto 2_while_body
    movl    $74035, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    movl    $44016, %eax            #   7:     assign v0 <- 44016
    movl    %eax, v0               
    movl    $84660, %eax            #   8:     param  0 <- 84660
    pushl   %eax                   
    call    WriteInt                #   9:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_12_if_false      #  10:     goto   12_if_false
    jmp     l_test_10               #  11:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_5                #  14:     goto   5
l_test_5:
l_test_14_while_cond:
    movl    $65698, %eax            #  17:     if     65698 >= 86244 goto 15_while_body
    movl    $86244, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_15_while_body   
    jmp     l_test_13               #  18:     goto   13
l_test_15_while_body:
    jmp     l_test_17               #  20:     goto   17
l_test_17:
l_test_21_while_cond:
    jmp     l_test_21_while_cond    #  23:     goto   21_while_cond
    leal    v2, %eax                #  24:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     param  1 <- t0
    pushl   %eax                   
    leal    v1, %eax                #  26:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #  28:     call   t2 <- f2
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $0, %eax                #  29:     if     0 # 0 goto 25_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_25_if_true      
    jmp     l_test_26_if_false      #  30:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  32:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_14_while_cond    #  35:     goto   14_while_cond
l_test_13:
    jmp     l_test_29_if_true       #  37:     goto   29_if_true
    jmp     l_test_30_if_false      #  38:     goto   30_if_false
l_test_29_if_true:
    jmp     l_test_28               #  40:     goto   28
l_test_30_if_false:
l_test_28:
    jmp     l_test_35_if_true       #  43:     goto   35_if_true
    jmp     l_test_35_if_true       #  44:     goto   35_if_true
    jmp     l_test_35_if_true       #  45:     goto   35_if_true
    jmp     l_test_36_if_false      #  46:     goto   36_if_false
l_test_35_if_true:
l_test_42_while_cond:
    movl    $97, %eax               #  49:     if     97 # 100 goto 43_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_43_while_body   
    jmp     l_test_41               #  50:     goto   41
l_test_43_while_body:
    jmp     l_test_42_while_cond    #  52:     goto   42_while_cond
l_test_41:
    jmp     l_test_34               #  54:     goto   34
l_test_36_if_false:
l_test_34:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <array 54 of <array 60 of <array 53 of <array 3 of <array 87 of <int>>>>>>
    .long    5
    .long   54
    .long   60
    .long   53
    .long    3
    .long   87
    .skip 179275680
v2:                                 # <array 8 of <array 70 of <array 72 of <array 5 of <array 26 of <int>>>>>>
    .long    5
    .long    8
    .long   70
    .long   72
    .long    5
    .long   26
    .skip 20966400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
