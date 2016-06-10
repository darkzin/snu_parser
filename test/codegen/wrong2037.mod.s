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
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
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
l_f0_1_while_cond:
    call    dummyINTfunc            #   1:     call   t7 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $31049, %eax            #   2:     div    t8 <- 31049, 65022
    movl    $65022, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t7 <= t8 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    movl    $100, %eax              #   8:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_7                  #   9:     goto   7
    movl    $1, %eax                #  10:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_8                  #  11:     goto   8
l_f0_7:
    movl    $0, %eax                #  13:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f0_8:
    movzbl  -21(%ebp), %eax         #  15:     assign v0 <- t9
    movb    %al, 8(%ebp)           

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]

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
    movl    $40597, %eax            #   0:     add    t7 <- 40597, 6507
    movl    $6507, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $40070, %eax            #   1:     if     40070 <= t7 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    movl    $1, %eax                #   4:     assign v0 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyINTfunc            #   8:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f1_10_while_cond:
    jmp     l_f1_10_while_cond      #  10:     goto   10_while_cond
    movl    $97256, %eax            #  11:     if     97256 = 94282 goto 13_if_true
    movl    $94282, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  12:     goto   14_if_false
l_f1_13_if_true:
    jmp     l_f1_12                 #  14:     goto   12
l_f1_14_if_false:
l_f1_12:
    jmp     l_f1_18_if_false        #  17:     goto   18_if_false
    jmp     l_f1_16                 #  18:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_6                  #  21:     goto   6
l_f1_6:

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 72 of <array 47 of <array 25 of <array 99 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
l_f2_1_while_cond:
    movl    $20232, %eax            #   1:     add    t7 <- 20232, 71786
    movl    $71786, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t7 < 81574 goto 2_while_body
    movl    $81574, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    movl    $89690, %eax            #   5:     if     89690 > 92002 goto 5_if_true
    movl    $92002, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   6:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   8:     goto   4
l_f2_6_if_false:
l_f2_4:
l_f2_9_while_cond:
    jmp     l_f2_9_while_cond       #  12:     goto   9_while_cond
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
l_f2_12_while_cond:
    call    dummyCHARfunc           #  16:     call   t8 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  17:     if     t8 < 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_13_while_body     
    jmp     l_f2_11                 #  18:     goto   11
l_f2_13_while_body:
    movl    $99, %eax               #  20:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f2_12_while_cond      #  21:     goto   12_while_cond
l_f2_11:
    movl    $12465, %eax            #  23:     div    t9 <- 12465, 16204
    movl    $16204, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     return t9
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $t6       <char> %ebp-31 ]

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
    movl    $59197, %eax            #   1:     div    t0 <- 59197, 55192
    movl    $55192, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t1 <- t0, 71608
    movl    $71608, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t2 <- t1, 30353
    movl    $30353, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t2 >= 87391 goto 2_while_body
    movl    $87391, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   5:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   8:     goto   5_while_cond
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
    leal    _str_1, %eax            #  11:     &()    t3 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               
    movl    $88461, %eax            #  14:     if     88461 >= 10596 goto 9_if_true
    movl    $10596, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_9_if_true       
    jmp     l_test_10_if_false      #  15:     goto   10_if_false
l_test_9_if_true:
    movl    $98, %eax               #  17:     assign v0 <- 98
    movb    %al, v0                
    movl    $98, %eax               #  18:     param  2 <- 98
    pushl   %eax                   
    movl    $100, %eax              #  19:     param  1 <- 100
    pushl   %eax                   
    movl    $99, %eax               #  20:     if     99 > 97 goto 14
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_14              
    jmp     l_test_15               #  21:     goto   15
l_test_14:
    movl    $1, %eax                #  23:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_16               #  24:     goto   16
l_test_15:
    movl    $0, %eax                #  26:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_16:
    movzbl  -29(%ebp), %eax         #  28:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  29:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -30(%ebp)         
    jmp     l_test_18               #  30:     goto   18
l_test_18:
    call    dummyCHARfunc           #  32:     call   t6 <- dummyCHARfunc
    movb    %al, -31(%ebp)         
l_test_23_while_cond:
    movl    $99, %eax               #  34:     if     99 < 99 goto 24_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_24_while_body   
    jmp     l_test_22               #  35:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  37:     goto   23_while_cond
l_test_22:
    movl    $99, %eax               #  39:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_8                #  40:     goto   8
l_test_10_if_false:
l_test_8:
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
