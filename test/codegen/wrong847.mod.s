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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 4 of <array 1 of <array 3 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    movl    $30688, %eax            #   0:     sub    t3 <- 30688, 97989
    movl    $97989, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t3
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   2:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #   3:     if     100 # 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   4:     goto   4_if_false
l_f0_3_if_true:
    call    dummyBOOLfunc           #   6:     call   t5 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movl    $40373, %eax            #   7:     return 40373
    jmp     l_f0_exit              
l_f0_9_while_cond:
    jmp     l_f0_8                  #   9:     goto   8
    jmp     l_f0_9_while_cond       #  10:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_2                  #  12:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 8 of <array 6 of <array 8 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 2 of <array 7 of <array 1 of <array 10 of <char>>>>>>> %ebp+16 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #   7:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $90195, %eax            #   8:     mul    t4 <- 90195, 78199
    movl    $78199, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     sub    t5 <- t4, 36873
    movl    $36873, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     add    t6 <- t5, 85773
    movl    $85773, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $18324, %eax            #  11:     if     18324 = t6 goto 8_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #  12:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #  14:     goto   7
l_f1_9_if_false:
l_f1_7:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 3 of <array 5 of <array 6 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $97, %eax               #   0:     if     97 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $97, %eax               #   3:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    movl    $8487, %eax             #   4:     assign v2 <- 8487
    movl    %eax, 16(%ebp)         
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_7_while_cond:
    jmp     l_f2_9                  #   9:     goto   9
l_f2_9:
    jmp     l_f2_6                  #  11:     goto   6
    jmp     l_f2_7_while_cond       #  12:     goto   7_while_cond
l_f2_6:
    movl    $38987, %eax            #  14:     sub    t3 <- 38987, 94909
    movl    $94909, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     sub    t4 <- t3, 57427
    movl    $57427, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $27360, %eax            #  16:     if     27360 <= t4 goto 13
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_13                
    jmp     l_f2_14                 #  17:     goto   14
l_f2_13:
    movl    $1, %eax                #  19:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_15                 #  20:     goto   15
l_f2_14:
    movl    $0, %eax                #  22:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_15:
    movzbl  -21(%ebp), %eax         #  24:     return t5
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyINTfunc            #   5:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    call    ReadInt                 #   9:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_9_while_cond:
    jmp     l_test_8                #  11:     goto   8
l_test_15_while_cond:
    movl    $100, %eax              #  13:     if     100 > 99 goto 16_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_16_while_body   
    jmp     l_test_14               #  14:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  16:     goto   15_while_cond
l_test_14:
    movl    $1, %eax                #  18:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_9_while_cond     #  19:     goto   9_while_cond
l_test_8:
    jmp     l_test_21               #  21:     goto   21
    jmp     l_test_21               #  22:     goto   21
    jmp     l_test_21               #  23:     goto   21
    jmp     l_test_21               #  24:     goto   21
    jmp     l_test_21               #  25:     goto   21
    jmp     l_test_21               #  26:     goto   21
    movl    $1, %eax                #  27:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_22               #  28:     goto   22
l_test_21:
    movl    $0, %eax                #  30:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_22:
    movzbl  -21(%ebp), %eax         #  32:     assign v0 <- t2
    movb    %al, v0                
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
