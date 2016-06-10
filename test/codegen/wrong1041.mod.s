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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v1       <char> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $60110, %eax            #   0:     add    t1 <- 60110, 11675
    movl    $11675, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $49379, %eax            #   1:     div    t2 <- 49379, 20674
    movl    $20674, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t3 <- t1, t2
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     if     t3 < 45283 goto 1
    movl    $45283, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   4:     goto   2
l_f0_1:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_3                  #   7:     goto   3
l_f0_2:
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f0_3:
    movzbl  -25(%ebp), %eax         #  11:     return t4
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  12:     call   t5 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  13:     assign v1 <- t5
    movb    %al, -37(%ebp)         
l_f0_7_while_cond:
    call    dummyINTfunc            #  15:     call   t6 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     mul    t7 <- t6, 33130
    movl    $33130, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $49837, %eax            #  17:     if     49837 >= t7 goto 8_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_8_while_body      
    jmp     l_f0_6                  #  18:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  20:     goto   7_while_cond
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 65 of <array 81 of <array 92 of <array 88 of <array 99 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 73 of <array 60 of <array 71 of <array 23 of <array 23 of <int>>>>>>> %ebp+20 ]

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
l_f1_1_while_cond:
    movl    $97, %eax               #   1:     if     97 = 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   5:     goto   4
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
    call    f0                      #  10:     call   t1 <- f0
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #  11:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -36(%ebp)   4  [ $v3       <int> %ebp-36 ]

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
    movl    $99, %eax               #   0:     assign v1 <- 99
    movb    %al, 8(%ebp)           
l_f2_2_while_cond:
    jmp     l_f2_3_while_body       #   2:     goto   3_while_body
    jmp     l_f2_3_while_body       #   3:     goto   3_while_body
    jmp     l_f2_3_while_body       #   4:     goto   3_while_body
    jmp     l_f2_3_while_body       #   5:     goto   3_while_body
    jmp     l_f2_3_while_body       #   6:     goto   3_while_body
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_while_body:
    movl    $97, %eax               #   9:     assign v1 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f2_2_while_cond       #  10:     goto   2_while_cond
l_f2_1:
    movl    $75790, %eax            #  12:     mul    t1 <- 75790, 71052
    movl    $71052, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     div    t2 <- t1, 55771
    movl    $55771, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     div    t3 <- t2, 6449
    movl    $6449, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     div    t4 <- t3, 64595
    movl    $64595, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     sub    t5 <- t4, 97926
    movl    $97926, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     assign v3 <- t5
    movl    %eax, -36(%ebp)        

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
l_test_5_while_cond:
    jmp     l_test_4                #   3:     goto   4
    jmp     l_test_5_while_cond     #   4:     goto   5_while_cond
l_test_4:
l_test_8_while_cond:
    jmp     l_test_9_while_body     #   7:     goto   9_while_body
    jmp     l_test_9_while_body     #   8:     goto   9_while_body
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  10:     goto   8_while_cond
    jmp     l_test_1                #  11:     goto   1
l_test_1:
    movl    $91703, %eax            #  13:     if     91703 >= 94087 goto 14_if_true
    movl    $94087, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_14_if_true      
    jmp     l_test_15_if_false      #  14:     goto   15_if_false
l_test_14_if_true:
l_test_18_while_cond:
    movl    $1, %eax                #  17:     if     1 = 1 goto 19_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_19_while_body   
    jmp     l_test_17               #  18:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  20:     goto   18_while_cond
l_test_17:
    movl    $97, %eax               #  22:     if     97 > 100 goto 22_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_22_if_true      
    jmp     l_test_23_if_false      #  23:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  25:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_13               #  28:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
