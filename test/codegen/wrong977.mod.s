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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_2_if_true          #   2:     goto   2_if_true
l_f0_2_if_true:
    movl    $100, %eax              #   4:     assign v0 <- 100
    movb    %al, 8(%ebp)           
    jmp     l_f0_1                  #   5:     goto   1
l_f0_1:
    movl    $78983, %eax            #   7:     sub    t5 <- 78983, 28821
    movl    $28821, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     assign v1 <- t5
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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t7       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <char>>> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 8 of <array 2 of <array 1 of <array 6 of <int>>>>>>> %ebp+12 ]

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
    jmp     l_f1_5                  #   0:     goto   5
    jmp     l_f1_5                  #   1:     goto   5
l_f1_5:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   4:     goto   7
    movl    $0, %eax                #   5:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    jmp     l_f1_11                 #   7:     goto   11
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #   9:     goto   12
l_f1_11:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -13(%ebp), %eax         #  13:     if     t4 # t5 goto 1
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #  14:     goto   2
l_f1_1:
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_3                  #  17:     goto   3
l_f1_2:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f1_3:
    movzbl  -15(%ebp), %eax         #  21:     return t6
    jmp     l_f1_exit              
l_f1_15_while_cond:
    call    dummyCHARfunc           #  23:     call   t7 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  24:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  25:     call   t8 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #  26:     if     98 = t8 goto 16_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_16_while_body     
    jmp     l_f1_14                 #  27:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  29:     goto   15_while_cond
l_f1_14:
    leal    _str_1, %eax            #  31:     &()    t9 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #  33:     call   WriteStr
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 8 of <array 1 of <array 9 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 4 of <array 6 of <array 9 of <array 9 of <bool>>>>>>> %ebp+12 ]

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
    movl    $58147, %eax            #   0:     sub    t4 <- 58147, 97845
    movl    $97845, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $40712, %eax            #   1:     if     40712 < t4 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $19119, %eax            #   4:     if     19119 >= 17416 goto 5
    movl    $17416, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_5                 
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_7                  #   8:     goto   7
l_f2_6:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f2_7:
    movzbl  -17(%ebp), %eax         #  12:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  13:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_10_while_cond:
    jmp     l_f2_11_while_body      #  17:     goto   11_while_body
    jmp     l_f2_9                  #  18:     goto   9
l_f2_11_while_body:
l_f2_15_while_cond:
    jmp     l_f2_14                 #  21:     goto   14
    jmp     l_f2_15_while_cond      #  22:     goto   15_while_cond
l_f2_14:
l_f2_18_while_cond:
    jmp     l_f2_18_while_cond      #  25:     goto   18_while_cond
    jmp     l_f2_10_while_cond      #  26:     goto   10_while_cond
l_f2_9:
l_f2_21_while_cond:
    jmp     l_f2_20                 #  29:     goto   20
    jmp     l_f2_25                 #  30:     goto   25
    jmp     l_f2_25                 #  31:     goto   25
    movl    $1, %eax                #  32:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_26                 #  33:     goto   26
l_f2_25:
    movl    $0, %eax                #  35:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f2_26:
    movzbl  -18(%ebp), %eax         #  37:     return t6
    jmp     l_f2_exit              
    jmp     l_f2_21_while_cond      #  38:     goto   21_while_cond
l_f2_20:

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 6 of <array 4 of <array 6 of <array 9 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <array 8 of <array 1 of <array 9 of <array 4 of <int>>>>>>> %ebp-24 ]
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_1                #   2:     goto   1
l_test_1:
l_test_6_while_cond:
    movl    $99, %eax               #   5:     if     99 = 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_7_while_body    
    jmp     l_test_5                #   6:     goto   5
l_test_7_while_body:
l_test_10_while_cond:
    movl    $28338, %eax            #   9:     if     28338 # 2864 goto 11_while_body
    movl    $2864, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_11_while_body   
    jmp     l_test_9                #  10:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  12:     goto   10_while_cond
l_test_9:
    jmp     l_test_15_if_false      #  14:     goto   15_if_false
    jmp     l_test_13               #  15:     goto   13
l_test_15_if_false:
l_test_13:
    leal    v1, %eax                #  18:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     param  1 <- t1
    pushl   %eax                   
    leal    v0, %eax                #  20:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  22:     call   t3 <- f2
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    jmp     l_test_6_while_cond     #  23:     goto   6_while_cond
l_test_5:

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
v0:                                 # <array 7 of <array 8 of <array 1 of <array 9 of <array 4 of <int>>>>>>
    .long    5
    .long    7
    .long    8
    .long    1
    .long    9
    .long    4
    .skip 8064
v1:                                 # <array 6 of <array 4 of <array 6 of <array 9 of <array 9 of <bool>>>>>>
    .long    5
    .long    6
    .long    4
    .long    6
    .long    9
    .long    9
    .skip 11664








    # end of global data section
    #-----------------------------------------

    .end
##################################################
