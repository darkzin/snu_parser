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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    call    dummyINTfunc            #   0:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $99, %eax               #   1:     if     99 = 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_2                 
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f0_4:
    movzbl  -17(%ebp), %eax         #   9:     return t7
    jmp     l_f0_exit              
l_f0_8_while_cond:
    movl    $100, %eax              #  11:     if     100 <= 100 goto 9_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_9_while_body      
    jmp     l_f0_7                  #  12:     goto   7
l_f0_9_while_body:
    movl    $100, %eax              #  14:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    movl    $54121, %eax            #  16:     assign v2 <- 54121
    movl    %eax, -24(%ebp)        
    movl    $64568, %eax            #  17:     if     64568 = 48181 goto 14
    movl    $48181, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_14                
    jmp     l_f0_15                 #  18:     goto   15
l_f0_14:
    movl    $1, %eax                #  20:     assign t8 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_16                 #  21:     goto   16
l_f0_15:
    movl    $0, %eax                #  23:     assign t8 <- 0
    movb    %al, -18(%ebp)         
l_f0_16:
    movzbl  -18(%ebp), %eax         #  25:     return t8
    jmp     l_f0_exit              
    jmp     l_f0_8_while_cond       #  26:     goto   8_while_cond
l_f0_7:

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 9 of <array 9 of <array 1 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

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
    movl    $94399, %eax            #   0:     sub    t6 <- 94399, 69139
    movl    $69139, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t7 <- t6, 98764
    movl    $98764, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
    movl    $99, %eax               #   5:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               
    movl    $27150, %eax            #   7:     assign v1 <- 27150
    movl    %eax, -28(%ebp)        
    movl    $99, %eax               #   8:     if     99 < 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $0, %eax                #  14:     assign v2 <- 0
    movb    %al, -29(%ebp)         
    movl    $99, %eax               #  15:     if     99 = 99 goto 14_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  16:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  18:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_1                  #  21:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_18_while_cond:
    jmp     l_f1_22                 #  25:     goto   22
    movl    $1, %eax                #  26:     assign t8 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_23                 #  27:     goto   23
l_f1_22:
    movl    $0, %eax                #  29:     assign t8 <- 0
    movb    %al, -21(%ebp)         
l_f1_23:
    movl    $1, %eax                #  31:     if     1 = t8 goto 19_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_19_while_body     
    jmp     l_f1_17                 #  32:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  34:     goto   18_while_cond
l_f1_17:

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 6 of <array 6 of <array 2 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 2 of <array 10 of <array 1 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    movl    $100, %eax              #   0:     assign v2 <- 100
    movb    %al, -14(%ebp)         
l_f2_2_while_cond:
    movl    $97, %eax               #   2:     return 97
    jmp     l_f2_exit              
    movl    $97, %eax               #   3:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #   4:     goto   2_while_cond
    call    dummyCHARfunc           #   5:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 6 of <array 2 of <array 10 of <array 1 of <array 4 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 6 of <array 6 of <array 2 of <array 4 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t5       <bool> %ebp-27 ]

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
    jmp     l_test_exit            
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    call    ReadInt                 #   2:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_1                #   3:     goto   1
l_test_3_if_false:
l_test_1:
l_test_6_while_cond:
    leal    v1, %eax                #   7:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  1 <- t1
    pushl   %eax                   
    leal    v0, %eax                #   9:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  11:     call   t3 <- f2
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    jmp     l_test_9                #  12:     goto   9
l_test_9:
    jmp     l_test_14_if_false      #  14:     goto   14_if_false
    jmp     l_test_12               #  15:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_exit            
    movl    $74075, %eax            #  19:     if     74075 = 87892 goto 17
    movl    $87892, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_17              
    jmp     l_test_18               #  20:     goto   18
l_test_17:
    movl    $1, %eax                #  22:     assign t4 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_19               #  23:     goto   19
l_test_18:
    movl    $0, %eax                #  25:     assign t4 <- 0
    movb    %al, -26(%ebp)         
l_test_19:
    movzbl  -26(%ebp), %eax         #  27:     assign v2 <- t4
    movb    %al, v2                
l_test_22_while_cond:
    jmp     l_test_21               #  29:     goto   21
    jmp     l_test_22_while_cond    #  30:     goto   22_while_cond
l_test_21:
    movl    $54912, %eax            #  32:     if     54912 < 27487 goto 25_if_true
    movl    $27487, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_25_if_true      
    jmp     l_test_26_if_false      #  33:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  35:     goto   24
l_test_26_if_false:
l_test_24:
l_test_29_while_cond:
    movl    $97953, %eax            #  39:     if     97953 < 43258 goto 30_while_body
    movl    $43258, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_30_while_body   
    jmp     l_test_28               #  40:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  42:     goto   29_while_cond
l_test_28:
    jmp     l_test_32               #  44:     goto   32
l_test_32:
l_test_36_while_cond:
    movl    $100, %eax              #  47:     if     100 <= 97 goto 37_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_37_while_body   
    jmp     l_test_35               #  48:     goto   35
l_test_37_while_body:
    jmp     l_test_36_while_cond    #  50:     goto   36_while_cond
l_test_35:
    jmp     l_test_6_while_cond     #  52:     goto   6_while_cond
    call    dummyBOOLfunc           #  53:     call   t5 <- dummyBOOLfunc
    movb    %al, -27(%ebp)         

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
v0:                                 # <array 2 of <array 6 of <array 6 of <array 2 of <array 4 of <char>>>>>>
    .long    5
    .long    2
    .long    6
    .long    6
    .long    2
    .long    4
    .skip  576
v1:                                 # <array 6 of <array 2 of <array 10 of <array 1 of <array 4 of <bool>>>>>>
    .long    5
    .long    6
    .long    2
    .long   10
    .long    1
    .long    4
    .skip  480
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
