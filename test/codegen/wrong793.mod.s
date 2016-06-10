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
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 7 of <array 10 of <array 7 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $476, %eax              #   1:     param  0 <- 476
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
l_f0_3_while_cond:
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   5:     if     98 <= t4 goto 4_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_4_while_body      
    jmp     l_f0_2                  #   6:     goto   2
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   8:     goto   3_while_cond
l_f0_2:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 1 of <array 2 of <array 4 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -21(%ebp)   1  [ $v4       <char> %ebp-21 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $98, %eax               #   1:     assign v4 <- 98
    movb    %al, -21(%ebp)         
    movl    $33349, %eax            #   2:     if     33349 < 68397 goto 5_if_true
    movl    $68397, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_9_while_cond:
    jmp     l_f1_8                  #   9:     goto   8
    jmp     l_f1_8                  #  10:     goto   8
    jmp     l_f1_8                  #  11:     goto   8
    jmp     l_f1_9_while_cond       #  12:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_0                  #  14:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $60231, %eax            #  17:     add    t3 <- 60231, 59475
    movl    $59475, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     sub    t4 <- t3, 62451
    movl    $62451, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     assign v1 <- t4
    movl    %eax, 8(%ebp)          
    movl    $44004, %eax            #  20:     if     44004 # 95345 goto 15_if_true
    movl    $95345, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  21:     goto   16_if_false
l_f1_15_if_true:
l_f1_19_while_cond:
    jmp     l_f1_19_while_cond      #  24:     goto   19_while_cond
    movl    $100, %eax              #  25:     assign v4 <- 100
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  26:     if     97 <= 99 goto 23_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  27:     goto   24_if_false
l_f1_23_if_true:
    jmp     l_f1_22                 #  29:     goto   22
l_f1_24_if_false:
l_f1_22:
    jmp     l_f1_14                 #  32:     goto   14
l_f1_16_if_false:
l_f1_14:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t8       <char> %ebp-27 ]
    #    -28(%ebp)   1  [ $t9       <bool> %ebp-28 ]
    #    -29(%ebp)   1  [ $v1       <bool> %ebp-29 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    movl    $98, %eax               #   2:     if     98 > 97 goto 4_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   3:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   5:     goto   3
l_f2_5_if_false:
l_f2_3:
    movl    $93401, %eax            #   8:     sub    t3 <- 93401, 85733
    movl    $85733, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $19828, %eax            #   9:     mul    t4 <- 19828, 74176
    movl    $74176, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  10:     sub    t5 <- t3, t4
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
    movl    $7384, %eax             #  15:     if     7384 <= 97826 goto 9
    movl    $97826, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_9                 
    jmp     l_f2_10                 #  16:     goto   10
l_f2_9:
    movl    $1, %eax                #  18:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_11                 #  19:     goto   11
l_f2_10:
    movl    $0, %eax                #  21:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f2_11:
    movzbl  -25(%ebp), %eax         #  23:     assign v1 <- t6
    movb    %al, -29(%ebp)         
    call    dummyCHARfunc           #  24:     call   t7 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    call    dummyCHARfunc           #  25:     call   t8 <- dummyCHARfunc
    movb    %al, -27(%ebp)         
    movzbl  -26(%ebp), %eax         #  26:     if     t7 # t8 goto 14
    movzbl  -27(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_14                
    jmp     l_f2_15                 #  27:     goto   15
l_f2_14:
    movl    $1, %eax                #  29:     assign t9 <- 1
    movb    %al, -28(%ebp)         
    jmp     l_f2_16                 #  30:     goto   16
l_f2_15:
    movl    $0, %eax                #  32:     assign t9 <- 0
    movb    %al, -28(%ebp)         
l_f2_16:
    movzbl  -28(%ebp), %eax         #  34:     assign v1 <- t9
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 1 of <array 2 of <array 4 of <array 8 of <int>>>>>>> %ebp-24 ]

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
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_exit            
l_test_3_while_cond:
    movl    $99, %eax               #   3:     if     99 >= 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_4_while_body    
    jmp     l_test_2                #   4:     goto   2
l_test_4_while_body:
l_test_7_while_cond:
    jmp     l_test_6                #   7:     goto   6
    jmp     l_test_7_while_cond     #   8:     goto   7_while_cond
l_test_6:
    call    dummyCHARfunc           #  10:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $59048, %eax            #  11:     if     59048 # 37385 goto 11_if_true
    movl    $37385, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_11_if_true      
    jmp     l_test_12_if_false      #  12:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  14:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_3_while_cond     #  17:     goto   3_while_cond
l_test_2:
    movl    $69354, %eax            #  19:     sub    t1 <- 69354, 90779
    movl    $90779, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  2 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  21:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     param  1 <- t2
    pushl   %eax                   
    movl    $22202, %eax            #  23:     param  0 <- 22202
    pushl   %eax                   
    call    f1                      #  24:     call   f1
    addl    $12, %esp              
    jmp     l_test_18               #  25:     goto   18
l_test_18:
    jmp     l_test_14               #  27:     goto   14
l_test_14:
l_test_22_while_cond:
    movl    $1, %eax                #  30:     assign v2 <- 1
    movb    %al, v2                
    jmp     l_test_27_if_false      #  31:     goto   27_if_false
    jmp     l_test_25               #  32:     goto   25
l_test_27_if_false:
l_test_25:
    jmp     l_test_22_while_cond    #  35:     goto   22_while_cond

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 9 of <array 1 of <array 2 of <array 4 of <array 8 of <int>>>>>>
    .long    5
    .long    9
    .long    1
    .long    2
    .long    4
    .long    8
    .skip 2304
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
