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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 82 of <array 32 of <array 84 of <array 17 of <array 7 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 45 of <array 6 of <array 90 of <array 39 of <array 10 of <int>>>>>>> %ebp+20 ]
    #    -32(%ebp)   4  [ $v4       <int> %ebp-32 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $0, %eax                #   4:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     return t4
    jmp     l_f0_exit              
    movl    $18599, %eax            #   7:     add    t5 <- 18599, 75315
    movl    $75315, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     sub    t6 <- t5, 54031
    movl    $54031, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     assign v4 <- t6
    movl    %eax, -32(%ebp)        
    movl    $99, %eax               #  10:     if     99 >= 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #  11:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_12                 #  13:     goto   12
    jmp     l_f0_12                 #  14:     goto   12
    jmp     l_f0_12                 #  15:     goto   12
l_f0_12:
    movl    $1, %eax                #  17:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_14                 #  18:     goto   14
    movl    $0, %eax                #  19:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f0_14:
    movzbl  -25(%ebp), %eax         #  21:     assign v1 <- t7
    movb    %al, 12(%ebp)          
    jmp     l_f0_7                  #  22:     goto   7
l_f0_9_if_false:
l_f0_7:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 46 of <array 71 of <array 94 of <array 42 of <bool>>>>>>> %ebp+16 ]

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
    leal    _str_1, %eax            #   0:     &()    t4 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
    jmp     l_f1_3_if_false         #   5:     goto   3_if_false
    movl    $98, %eax               #   6:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_1                  #   7:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $99, %eax               #  10:     return 99
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <ptr(4) to <array 1 of <array 46 of <array 71 of <array 94 of <array 42 of <bool>>>>>>> %ebp-48 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #   -12894240(%ebp)  12894192  [ $v2       <array 1 of <array 46 of <array 71 of <array 94 of <array 42 of <bool>>>>>> %ebp-12894240 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12894228, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3223557, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-12894240(%ebp)      # local array 'v2': 5 dimensions
    movl    $1,-12894236(%ebp)      #   dimension 1: 1 elements
    movl    $46,-12894232(%ebp)     #   dimension 2: 46 elements
    movl    $71,-12894228(%ebp)     #   dimension 3: 71 elements
    movl    $94,-12894224(%ebp)     #   dimension 4: 94 elements
    movl    $42,-12894220(%ebp)     #   dimension 5: 42 elements

    # function body
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $50176, %eax            #   4:     if     50176 <= 27246 goto 5_if_true
    movl    $27246, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
l_f2_5_if_true:
    movl    $98, %eax               #   7:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_4                  #   8:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
l_f2_10_while_cond:
    movl    $11184, %eax            #  14:     add    t4 <- 11184, 31844
    movl    $31844, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     sub    t5 <- t4, 53792
    movl    $53792, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t6 <- t5, 43746
    movl    $43746, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     sub    t7 <- t6, 18116
    movl    $18116, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  18:     sub    t8 <- t7, 71831
    movl    $71831, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  19:     if     t8 >= 93274 goto 11_while_body
    movl    $93274, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_11_while_body     
    jmp     l_f2_9                  #  20:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  22:     goto   10_while_cond
l_f2_9:
    leal    -12894240(%ebp), %eax   #  24:     &()    t9 <- v2
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     param  2 <- t9
    pushl   %eax                   
    call    ReadInt                 #  26:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  27:     param  1 <- t10
    pushl   %eax                   
    movl    $13672, %eax            #  28:     add    t11 <- 13672, 47234
    movl    $47234, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  30:     call   t12 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12894228, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   4:     goto   3_while_body
    jmp     l_test_3_while_body     #   5:     goto   3_while_body
    jmp     l_test_3_while_body     #   6:     goto   3_while_body
    call    dummyBOOLfunc           #   7:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     if     t1 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   9:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #  11:     goto   2_while_cond
l_test_1:
    call    dummyBOOLfunc           #  13:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
l_test_10_while_cond:
    jmp     l_test_9                #  15:     goto   9
    call    ReadInt                 #  16:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_10_while_cond    #  17:     goto   10_while_cond
l_test_9:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
