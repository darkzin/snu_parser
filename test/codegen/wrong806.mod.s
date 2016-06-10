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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 10 of <array 1 of <array 9 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 4 of <array 1 of <array 10 of <array 1 of <array 9 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]
    #    -15(%ebp)   1  [ $v6       <bool> %ebp-15 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $88412, %eax            #   1:     if     88412 >= 37932 goto 4
    movl    $37932, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_4                 
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   9:     assign v6 <- t5
    movb    %al, -15(%ebp)         
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyBOOLfunc           #  13:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $49955, %eax            #  14:     if     49955 = 20550 goto 10_if_true
    movl    $20550, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  15:     goto   11_if_false
l_f0_10_if_true:
l_f0_14_while_cond:
    movl    $78971, %eax            #  18:     if     78971 > 30171 goto 17_if_true
    movl    $30171, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  19:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  21:     goto   16
l_f0_18_if_false:
l_f0_16:
l_f0_21_while_cond:
    jmp     l_f0_21_while_cond      #  25:     goto   21_while_cond
    jmp     l_f0_14_while_cond      #  26:     goto   14_while_cond
    jmp     l_f0_9                  #  27:     goto   9
l_f0_11_if_false:
l_f0_9:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]

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
    movl    $28074, %eax            #   0:     div    t5 <- 28074, 42220
    movl    $42220, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t6 <- t5, 37890
    movl    $37890, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v2 <- t6
    movl    %eax, -32(%ebp)        
    leal    _str_1, %eax            #   3:     &()    t7 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #   5:     call   WriteStr
    addl    $4, %esp               
    call    dummyBOOLfunc           #   6:     call   t8 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 9 of <array 7 of <array 7 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $91158, %eax            #   1:     div    t6 <- 91158, 1308
    movl    $1308, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t7 <- t6, 82261
    movl    $82261, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v2 <- t7
    movl    %eax, 8(%ebp)          
    jmp     l_f2_4_if_false         #   4:     goto   4_if_false
    jmp     l_f2_exit              
    jmp     l_f2_2                  #   6:     goto   2
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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 4 of <array 1 of <array 10 of <array 1 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 10 of <array 1 of <array 9 of <array 7 of <bool>>>>>>> %ebp-28 ]
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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
    jmp     l_test_2_while_body     #   3:     goto   2_while_body
l_test_2_while_body:
    movl    $45628, %eax            #   5:     assign v0 <- 45628
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
    call    dummyCHARfunc           #   8:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_exit            
l_test_11_while_cond:
    jmp     l_test_10               #  12:     goto   10
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  14:     goto   14_while_cond
    movl    $99, %eax               #  15:     if     99 # 97 goto 17_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_17_if_true      
    jmp     l_test_18_if_false      #  16:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  18:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_exit            
    jmp     l_test_11_while_cond    #  22:     goto   11_while_cond
l_test_10:
    movl    $99, %eax               #  24:     param  3 <- 99
    pushl   %eax                   
    leal    v3, %eax                #  25:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     param  2 <- t1
    pushl   %eax                   
    call    f1                      #  27:     call   t2 <- f1
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  28:     param  1 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  29:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  31:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    jmp     l_test_exit            

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 8 of <array 10 of <array 1 of <array 9 of <array 7 of <bool>>>>>>
    .long    5
    .long    8
    .long   10
    .long    1
    .long    9
    .long    7
    .skip 5040
v3:                                 # <array 4 of <array 1 of <array 10 of <array 1 of <array 9 of <int>>>>>>
    .long    5
    .long    4
    .long    1
    .long   10
    .long    1
    .long    9
    .skip 1440








    # end of global data section
    #-----------------------------------------

    .end
##################################################
