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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]

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
    jmp     l_f0_0                  #   2:     goto   0
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_0:
    movl    $20349, %eax            #   5:     if     20349 > 92037 goto 6_if_true
    movl    $92037, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   6:     goto   7_if_false
l_f0_6_if_true:
    call    dummyBOOLfunc           #   8:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   9:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_13_if_false        #  10:     goto   13_if_false
    jmp     l_f0_11                 #  11:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_5                  #  14:     goto   5
l_f0_7_if_false:
l_f0_5:
    call    dummyCHARfunc           #  17:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  18:     return t8
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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 5 of <array 6 of <array 1 of <array 10 of <int>>>>>>> %ebp+8 ]
    #    -16(%ebp)   1  [ $v3       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v4       <char> %ebp-17 ]

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
    movl    $100, %eax              #   0:     if     100 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_exit              
    jmp     l_f1_7_if_false         #   4:     goto   7_if_false
    jmp     l_f1_5                  #   5:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_8                  #   8:     goto   8
l_f1_8:
    movl    $97, %eax               #  10:     if     97 <= 98 goto 12
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_12                
    jmp     l_f1_13                 #  11:     goto   13
l_f1_12:
    movl    $1, %eax                #  13:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_14                 #  14:     goto   14
l_f1_13:
    movl    $0, %eax                #  16:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f1_14:
    movzbl  -13(%ebp), %eax         #  18:     assign v3 <- t6
    movb    %al, -16(%ebp)         
    movl    $97, %eax               #  19:     assign v4 <- 97
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #  20:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  22:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98, %eax               #  25:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #  26:     call   t8 <- f0
    addl    $4, %esp               
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #  27:     assign v4 <- 97
    movb    %al, -17(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 3 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]

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
    leal    _str_1, %eax            #   0:     &()    t6 <- _str_1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_f2_2_while_cond:
    call    ReadInt                 #   4:     call   t7 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     mul    t8 <- t7, 48365
    movl    $48365, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     div    t9 <- t8, 65168
    movl    $65168, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   7:     div    t10 <- t9, 80507
    movl    $80507, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     div    t11 <- t10, 24567
    movl    $24567, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     div    t12 <- t11, 35508
    movl    $35508, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     if     t12 < 44639 goto 3_while_body
    movl    $44639, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #  11:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #  13:     goto   2_while_cond
l_f2_1:
    movl    $99, %eax               #  15:     if     99 >= 100 goto 6
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_6                 
    jmp     l_f2_7                  #  16:     goto   7
l_f2_6:
    movl    $1, %eax                #  18:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_8                  #  19:     goto   8
l_f2_7:
    movl    $0, %eax                #  21:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f2_8:
    movzbl  -25(%ebp), %eax         #  23:     assign v4 <- t13
    movb    %al, 16(%ebp)          

l_f2_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 3 of <array 10 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]

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
    jmp     l_test_0                #   1:     goto   0
l_test_5_while_cond:
    movl    $100, %eax              #   3:     if     100 >= 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_6_while_body    
    jmp     l_test_4                #   4:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   6:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $68240, %eax            #  10:     if     68240 > 59606 goto 11
    movl    $59606, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_11              
    jmp     l_test_12               #  11:     goto   12
l_test_11:
    movl    $1, %eax                #  13:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_13               #  14:     goto   13
l_test_12:
    movl    $0, %eax                #  16:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_13:
    movzbl  -13(%ebp), %eax         #  18:     assign v0 <- t0
    movb    %al, v0                
    call    dummyBOOLfunc           #  19:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_1_while_cond     #  20:     goto   1_while_cond
l_test_0:
    movl    $100, %eax              #  22:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_exit            
    movl    $97, %eax               #  24:     if     97 >= 100 goto 19
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_19              
    jmp     l_test_20               #  25:     goto   20
l_test_19:
    movl    $1, %eax                #  27:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_21               #  28:     goto   21
l_test_20:
    movl    $0, %eax                #  30:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_21:
    movzbl  -15(%ebp), %eax         #  32:     assign v0 <- t2
    movb    %al, v0                
    movl    $98, %eax               #  33:     if     98 >= 98 goto 27
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_27              
    jmp     l_test_28               #  34:     goto   28
l_test_27:
    movl    $1, %eax                #  36:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_29               #  37:     goto   29
l_test_28:
    movl    $0, %eax                #  39:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_29:
    movzbl  -16(%ebp), %eax         #  41:     param  2 <- t3
    pushl   %eax                   
    leal    v2, %eax                #  42:     &()    t4 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  43:     param  1 <- t4
    pushl   %eax                   
    movl    $99, %eax               #  44:     param  0 <- 99
    pushl   %eax                   
    call    f2                      #  45:     call   t5 <- f2
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  46:     if     97 < t5 goto 24_if_true
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_24_if_true      
    jmp     l_test_25_if_false      #  47:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  49:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_exit            

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 10 of <array 2 of <array 9 of <array 3 of <array 10 of <char>>>>>>
    .long    5
    .long   10
    .long    2
    .long    9
    .long    3
    .long   10
    .skip 5400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
