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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 2 of <array 3 of <array 2 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    leal    _str_1, %eax            #   0:     &()    t4 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #   3:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     return t5
    jmp     l_f0_exit              
    call    dummyINTfunc            #   5:     call   t6 <- dummyINTfunc
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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 3 of <array 2 of <array 3 of <array 2 of <array 10 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $v0       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v1       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $v2       <bool> %ebp-34 ]
    #   -420(%ebp)  384  [ $v3       <array 3 of <array 2 of <array 3 of <array 2 of <array 10 of <char>>>>>> %ebp-420 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $408, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $102, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-420(%ebp)           # local array 'v3': 5 dimensions
    movl    $3,-416(%ebp)           #   dimension 1: 3 elements
    movl    $2,-412(%ebp)           #   dimension 2: 2 elements
    movl    $3,-408(%ebp)           #   dimension 3: 3 elements
    movl    $2,-404(%ebp)           #   dimension 4: 2 elements
    movl    $10,-400(%ebp)          #   dimension 5: 10 elements

    # function body
    movl    $98, %eax               #   0:     if     98 < 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   3:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $40132, %eax            #   4:     assign v0 <- 40132
    movl    %eax, -32(%ebp)        
    movl    $100, %eax              #   5:     if     100 >= 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   6:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #   8:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $97, %eax               #  14:     assign v1 <- 97
    movb    %al, -33(%ebp)         
    movl    $97, %eax               #  15:     if     97 = 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  16:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_17_if_false        #  18:     goto   17_if_false
    movl    $0, %eax                #  19:     assign v2 <- 0
    movb    %al, -34(%ebp)         
    movl    $99, %eax               #  20:     if     99 <= 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  21:     goto   21_if_false
l_f1_20_if_true:
    jmp     l_f1_19                 #  23:     goto   19
l_f1_21_if_false:
l_f1_19:
    movl    $98, %eax               #  26:     param  2 <- 98
    pushl   %eax                   
    leal    -420(%ebp), %eax        #  27:     &()    t5 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     param  1 <- t5
    pushl   %eax                   
    movl    $100, %eax              #  29:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  30:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    call    dummyINTfunc            #  31:     call   t7 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f1_15                 #  32:     goto   15
l_f1_17_if_false:
l_f1_15:
    jmp     l_f1_11                 #  35:     goto   11
l_f1_13_if_false:
l_f1_11:

l_f1_exit:
    # epilogue
    addl    $408, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 1 of <array 4 of <array 6 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 4 of <array 6 of <array 4 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $100, %eax              #   0:     if     100 > 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_5                  #   1:     goto   5
l_f2_5:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   4:     goto   7
    movl    $0, %eax                #   5:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #   7:     if     t4 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   8:     goto   2
l_f2_1:
    movl    $1, %eax                #  10:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #  11:     goto   3
l_f2_2:
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  15:     return t5
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  16:     call   t6 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $10302, %eax            #  17:     if     10302 # 32285 goto 13_if_true
    movl    $32285, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  18:     goto   14_if_false
l_f2_13_if_true:
l_f2_17_while_cond:
    jmp     l_f2_16                 #  21:     goto   16
    call    dummyINTfunc            #  22:     call   t7 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $20119, %eax            #  23:     if     20119 <= 80181 goto 21_if_true
    movl    $80181, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_21_if_true        
    jmp     l_f2_22_if_false        #  24:     goto   22_if_false
l_f2_21_if_true:
    jmp     l_f2_20                 #  26:     goto   20
l_f2_22_if_false:
l_f2_20:
    jmp     l_f2_17_while_cond      #  29:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_12                 #  31:     goto   12
l_f2_14_if_false:
l_f2_12:

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 2 of <array 4 of <array 6 of <array 4 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 6 of <array 1 of <array 4 of <array 6 of <array 2 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $30459, %eax            #   0:     if     30459 <= 97183 goto 1
    movl    $97183, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     param  3 <- t0
    pushl   %eax                   
    leal    v1, %eax                #   9:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  2 <- t1
    pushl   %eax                   
    leal    v0, %eax                #  11:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     param  1 <- t2
    pushl   %eax                   
    movl    $98, %eax               #  13:     param  0 <- 98
    pushl   %eax                   
    call    f2                      #  14:     call   t3 <- f2
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_test_exit            
    movl    $97, %eax               #  16:     if     97 < 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_7_if_true       
    jmp     l_test_8_if_false       #  17:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_10               #  19:     goto   10
l_test_10:
    jmp     l_test_15_if_false      #  21:     goto   15_if_false
    jmp     l_test_13               #  22:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_6                #  25:     goto   6
l_test_8_if_false:
l_test_6:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <array 6 of <array 1 of <array 4 of <array 6 of <array 2 of <char>>>>>>
    .long    5
    .long    6
    .long    1
    .long    4
    .long    6
    .long    2
    .skip  288
v1:                                 # <array 2 of <array 4 of <array 6 of <array 4 of <array 7 of <bool>>>>>>
    .long    5
    .long    2
    .long    4
    .long    6
    .long    4
    .long    7
    .skip 1344








    # end of global data section
    #-----------------------------------------

    .end
##################################################
