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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 34 of <array 74 of <array 33 of <array 83 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -19(%ebp)   1  [ $v3       <char> %ebp-19 ]

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
l_f0_1_while_cond:
    movl    $71651, %eax            #   1:     sub    t7 <- 71651, 10640
    movl    $10640, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t7 < 27123 goto 2_while_body
    movl    $27123, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    movl    $98, %eax               #   6:     if     98 <= 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6_while_body      
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   9:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_1_while_cond       #  11:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  13:     call   t8 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  14:     if     t8 < 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  15:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  17:     goto   8
l_f0_10_if_false:
l_f0_8:
    movl    $98, %eax               #  20:     if     98 > 99 goto 13_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  21:     goto   14_if_false
l_f0_13_if_true:
    movl    $99, %eax               #  23:     assign v3 <- 99
    movb    %al, -19(%ebp)         
    movl    $1, %eax                #  24:     if     1 = 0 goto 18
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_18                
    jmp     l_f0_19                 #  25:     goto   19
l_f0_18:
    movl    $1, %eax                #  27:     assign t9 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_20                 #  28:     goto   20
l_f0_19:
    movl    $0, %eax                #  30:     assign t9 <- 0
    movb    %al, -18(%ebp)         
l_f0_20:
    movzbl  -18(%ebp), %eax         #  32:     assign v2 <- t9
    movb    %al, 12(%ebp)          
    jmp     l_f0_12                 #  33:     goto   12
l_f0_14_if_false:
l_f0_12:

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
    #    -16(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 52 of <array 20 of <array 72 of <array 51 of <array 63 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 45 of <array 63 of <array 69 of <array 8 of <array 7 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 88 of <array 21 of <array 91 of <array 91 of <array 87 of <int>>>>>>> %ebp+20 ]
    #    -22(%ebp)   1  [ $v5       <bool> %ebp-22 ]

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
    leal    _str_1, %eax            #   0:     &()    t7 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $67288, %eax            #   3:     div    t8 <- 67288, 79911
    movl    $79911, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     return t8
    jmp     l_f1_exit              
    jmp     l_f1_3                  #   5:     goto   3
l_f1_3:
    movl    $1, %eax                #   7:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_5                  #   8:     goto   5
    movl    $0, %eax                #   9:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f1_5:
    movzbl  -21(%ebp), %eax         #  11:     assign v5 <- t9
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v3       <char> %ebp-21 ]

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
    call    dummyBOOLfunc           #   0:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t8 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $97778, %eax            #   2:     if     97778 >= 91829 goto 3_if_true
    movl    $91829, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
l_f2_3_if_true:
    movl    $56832, %eax            #   5:     assign v2 <- 56832
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #   6:     assign v1 <- 0
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   7:     call   t9 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $30343, %eax            #   8:     return 30343
    jmp     l_f2_exit              
l_f2_11_while_cond:
    movl    $97, %eax               #  10:     if     97 >= 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_12_while_body     
    jmp     l_f2_10                 #  11:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  13:     goto   11_while_cond
l_f2_10:
    call    dummyProcedure          #  15:     call   dummyProcedure
    movl    $98, %eax               #  16:     assign v3 <- 98
    movb    %al, -21(%ebp)         
l_f2_17_while_cond:
    movl    $100, %eax              #  18:     if     100 > 97 goto 18_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_18_while_body     
    jmp     l_f2_16                 #  19:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  21:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_2                  #  23:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 88 of <array 21 of <array 91 of <array 91 of <array 87 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 45 of <array 63 of <array 69 of <array 8 of <array 7 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 52 of <array 20 of <array 72 of <array 51 of <array 63 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 >= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $35241, %eax            #   4:     assign v0 <- 35241
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_6_if_true        #   7:     goto   6_if_true
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_11_if_false      #  10:     goto   11_if_false
    jmp     l_test_9                #  11:     goto   9
l_test_11_if_false:
l_test_9:
    call    dummyCHARfunc           #  14:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_5                #  15:     goto   5
l_test_7_if_false:
l_test_5:
    leal    v4, %eax                #  18:     &()    t1 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     param  3 <- t1
    pushl   %eax                   
    leal    v3, %eax                #  20:     &()    t2 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     param  2 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  22:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     param  1 <- t3
    pushl   %eax                   
    movl    $99, %eax               #  24:     param  0 <- 99
    pushl   %eax                   
    call    f1                      #  25:     call   t4 <- f1
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     sub    t5 <- t4, 13181
    movl    $13181, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $57966, %eax            #  27:     if     57966 # t5 goto 14
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_14              
    jmp     l_test_15               #  28:     goto   15
l_test_14:
    movl    $1, %eax                #  30:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_16               #  31:     goto   16
l_test_15:
    movl    $0, %eax                #  33:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_test_16:
    movzbl  -37(%ebp), %eax         #  35:     assign v1 <- t6
    movb    %al, v1                
    jmp     l_test_exit            

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 52 of <array 20 of <array 72 of <array 51 of <array 63 of <bool>>>>>>
    .long    5
    .long   52
    .long   20
    .long   72
    .long   51
    .long   63
    .skip 240589440
v3:                                 # <array 45 of <array 63 of <array 69 of <array 8 of <array 7 of <char>>>>>>
    .long    5
    .long   45
    .long   63
    .long   69
    .long    8
    .long    7
    .skip 10954440
v4:                                 # <array 88 of <array 21 of <array 91 of <array 91 of <array 87 of <int>>>>>>
    .long    5
    .long   88
    .long   21
    .long   91
    .long   91
    .long   87
    .skip 1030576928








    # end of global data section
    #-----------------------------------------

    .end
##################################################
