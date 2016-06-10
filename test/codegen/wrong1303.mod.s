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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 26 of <array 24 of <array 43 of <array 21 of <array 74 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 26 of <array 2 of <array 55 of <array 31 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -18(%ebp)   1  [ $v4       <char> %ebp-18 ]

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
    jmp     l_f0_0                  #   1:     goto   0
l_f0_6_while_cond:
    jmp     l_f0_5                  #   3:     goto   5
    jmp     l_f0_6_while_cond       #   4:     goto   6_while_cond
l_f0_5:
    movl    $97, %eax               #   6:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   7:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_1_while_cond       #   8:     goto   1_while_cond
l_f0_0:
    movl    $81141, %eax            #  10:     sub    t5 <- 81141, 7720
    movl    $7720, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $21271, %eax            #  11:     if     21271 >= t5 goto 10_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  12:     goto   11_if_false
l_f0_10_if_true:
    movl    $9988, %eax             #  14:     if     9988 <= 37913 goto 14_if_true
    movl    $37913, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  15:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  17:     goto   13
l_f0_15_if_false:
l_f0_13:
l_f0_18_while_cond:
    movl    $75193, %eax            #  21:     if     75193 >= 79848 goto 19_while_body
    movl    $79848, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_19_while_body     
    jmp     l_f0_17                 #  22:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  24:     goto   18_while_cond
l_f0_17:
    movl    $0, %eax                #  26:     if     0 # 0 goto 22
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_22                
    jmp     l_f0_23                 #  27:     goto   23
l_f0_22:
    movl    $1, %eax                #  29:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_24                 #  30:     goto   24
l_f0_23:
    movl    $0, %eax                #  32:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f0_24:
    movzbl  -17(%ebp), %eax         #  34:     assign v1 <- t6
    movb    %al, 12(%ebp)          
l_f0_27_while_cond:
    movl    $99, %eax               #  36:     if     99 <= 97 goto 28_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_28_while_body     
    jmp     l_f0_26                 #  37:     goto   26
l_f0_28_while_body:
    jmp     l_f0_27_while_cond      #  39:     goto   27_while_cond
l_f0_26:
    jmp     l_f0_9                  #  41:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $98, %eax               #  44:     assign v4 <- 98
    movb    %al, -18(%ebp)         

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 44 of <array 62 of <array 12 of <array 99 of <array 78 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 37 of <array 13 of <array 1 of <array 28 of <array 82 of <char>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 >= 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_2                 
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $1, %eax                #   4:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $0, %eax                #   7:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v2 <- t6
    movb    %al, 16(%ebp)          
l_f1_8_while_cond:
    jmp     l_f1_7                  #  11:     goto   7
l_f1_11_while_cond:
    jmp     l_f1_14                 #  13:     goto   14
    jmp     l_f1_14                 #  14:     goto   14
    jmp     l_f1_14                 #  15:     goto   14
    jmp     l_f1_14                 #  16:     goto   14
    jmp     l_f1_15                 #  17:     goto   15
l_f1_14:
    movl    $1, %eax                #  19:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_16                 #  20:     goto   16
l_f1_15:
    movl    $0, %eax                #  22:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f1_16:
    movzbl  -15(%ebp), %eax         #  24:     if     t7 # 0 goto 12_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_12_while_body     
    jmp     l_f1_10                 #  25:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  27:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_8_while_cond       #  29:     goto   8_while_cond
l_f1_7:

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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    jmp     l_f2_exit              
    leal    _str_1, %eax            #   1:     &()    t5 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    call    dummyBOOLfunc           #   4:     call   t6 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 37 of <array 13 of <array 1 of <array 28 of <array 82 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 44 of <array 62 of <array 12 of <array 99 of <array 78 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    jmp     l_test_4                #   0:     goto   4
    jmp     l_test_5                #   1:     goto   5
l_test_4:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   4:     goto   6
l_test_5:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movl    $0, %eax                #   8:     if     0 = t0 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   9:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_0                #  12:     goto   0
l_test_2_if_false:
l_test_0:
l_test_10_while_cond:
    movl    $84914, %eax            #  16:     if     84914 >= 48902 goto 11_while_body
    movl    $48902, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_11_while_body   
    jmp     l_test_9                #  17:     goto   9
l_test_11_while_body:
    jmp     l_test_13               #  19:     goto   13
l_test_13:
    jmp     l_test_exit            
    movl    $99, %eax               #  22:     if     99 > 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_18_if_true      
    jmp     l_test_19_if_false      #  23:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  25:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_10_while_cond    #  28:     goto   10_while_cond
l_test_9:
    leal    v1, %eax                #  30:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     param  3 <- t1
    pushl   %eax                   
    movl    $1, %eax                #  32:     param  2 <- 1
    pushl   %eax                   
    leal    v0, %eax                #  33:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     param  1 <- t2
    pushl   %eax                   
    movl    $28159, %eax            #  35:     sub    t3 <- 28159, 94893
    movl    $94893, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  36:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  37:     call   t4 <- f1
    addl    $16, %esp              
    movb    %al, -29(%ebp)         

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <array 44 of <array 62 of <array 12 of <array 99 of <array 78 of <char>>>>>>
    .long    5
    .long   44
    .long   62
    .long   12
    .long   99
    .long   78
    .skip 252787392
v1:                                 # <array 37 of <array 13 of <array 1 of <array 28 of <array 82 of <char>>>>>>
    .long    5
    .long   37
    .long   13
    .long    1
    .long   28
    .long   82
    .skip 1104376








    # end of global data section
    #-----------------------------------------

    .end
##################################################
