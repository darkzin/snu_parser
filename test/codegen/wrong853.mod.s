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
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -16(%ebp)   1  [ $v2       <char> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   3:     call   t6 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   4:     if     t6 <= 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   5:     goto   4_if_false
l_f0_3_if_true:
    movl    $100, %eax              #   7:     return 100
    jmp     l_f0_exit              
    movl    $97, %eax               #   8:     assign v2 <- 97
    movb    %al, -16(%ebp)         
l_f0_9_while_cond:
    jmp     l_f0_8                  #  10:     goto   8
    jmp     l_f0_9_while_cond       #  11:     goto   9_while_cond
l_f0_8:
    movl    $0, %eax                #  13:     assign v0 <- 0
    movb    %al, 8(%ebp)           
    jmp     l_f0_2                  #  14:     goto   2
l_f0_4_if_false:
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <char> %ebp-45 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 7 of <array 6 of <array 5 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $49258, %eax            #   0:     div    t4 <- 49258, 23480
    movl    $23480, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     add    t5 <- t4, 64042
    movl    $64042, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     sub    t6 <- t5, 91820
    movl    $91820, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     sub    t7 <- t6, 94684
    movl    $94684, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     param  1 <- t7
    pushl   %eax                   
    movl    $1, %eax                #   5:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #   6:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -45(%ebp)         
l_f1_2_while_cond:
    movl    $97, %eax               #   8:     if     97 > 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #  11:     goto   2_while_cond
l_f1_1:
    movl    $92709, %eax            #  13:     mul    t9 <- 92709, 2524
    movl    $2524, %ebx            
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  14:     mul    t10 <- t9, 15050
    movl    $15050, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     mul    t11 <- t10, 37538
    movl    $37538, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $88489, %eax            #  16:     mul    t12 <- 88489, 10807
    movl    $10807, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  17:     if     t11 = t12 goto 6
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_7                  #  18:     goto   7
l_f1_6:
    movl    $1, %eax                #  20:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_8                  #  21:     goto   8
l_f1_7:
    movl    $0, %eax                #  23:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f1_8:
    movzbl  -25(%ebp), %eax         #  25:     return t13
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 10 of <array 8 of <array 5 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $61570, %eax            #   0:     mul    t4 <- 61570, 52478
    movl    $52478, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t4
    jmp     l_f2_exit              
    movl    $99, %eax               #   2:     if     99 > 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    movl    $63936, %eax            #   5:     div    t5 <- 63936, 73186
    movl    $73186, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     div    t6 <- t5, 32007
    movl    $32007, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     param  1 <- t6
    pushl   %eax                   
    movl    $0, %eax                #   8:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #   9:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movl    $81834, %eax            #  10:     return 81834
    jmp     l_f2_exit              
l_f2_8_while_cond:
    jmp     l_f2_8_while_cond       #  12:     goto   8_while_cond
l_f2_11_while_cond:
    jmp     l_f2_11_while_cond      #  14:     goto   11_while_cond
    jmp     l_f2_1                  #  15:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $27864, %eax            #  18:     add    t8 <- 27864, 83731
    movl    $83731, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     sub    t9 <- t8, 51452
    movl    $51452, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     if     t9 = 15942 goto 14_if_true
    movl    $15942, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  21:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  23:     goto   13
l_f2_15_if_false:
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 10 of <array 8 of <array 5 of <array 1 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 > 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   6:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   7:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
l_test_9_while_cond:
    movl    $51443, %eax            #  10:     if     51443 <= 65832 goto 10_while_body
    movl    $65832, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:
    movl    $85900, %eax            #  15:     if     85900 # 35061 goto 13_if_true
    movl    $35061, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_13_if_true      
    jmp     l_test_14_if_false      #  16:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  18:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $2484, %eax             #  21:     mul    t1 <- 2484, 21188
    movl    $21188, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  1 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  23:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  25:     call   t3 <- f2
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    jmp     l_test_5                #  26:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 2 of <array 10 of <array 8 of <array 5 of <array 1 of <char>>>>>>
    .long    5
    .long    2
    .long   10
    .long    8
    .long    5
    .long    1
    .skip  800








    # end of global data section
    #-----------------------------------------

    .end
##################################################
