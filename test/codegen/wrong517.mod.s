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
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v1       <char> %ebp-25 ]

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
    movl    $67374, %eax            #   0:     add    t5 <- 67374, 76755
    movl    $76755, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t5
    movl    %eax, -24(%ebp)        
l_f0_2_while_cond:
    call    dummyCHARfunc           #   3:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #   4:     if     99 > t6 goto 3_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
    movl    $27403, %eax            #   9:     if     27403 <= 56538 goto 6_if_true
    movl    $56538, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  10:     goto   7_if_false
l_f0_6_if_true:
    call    dummyBOOLfunc           #  12:     call   t7 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movl    $99, %eax               #  13:     assign v1 <- 99
    movb    %al, -25(%ebp)         
    movl    $75386, %eax            #  14:     assign v0 <- 75386
    movl    %eax, -24(%ebp)        
    jmp     l_f0_14_if_false        #  15:     goto   14_if_false
    jmp     l_f0_12                 #  16:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_5                  #  19:     goto   5
l_f0_7_if_false:
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t8       <bool> %ebp-30 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 2 of <array 9 of <array 10 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 1 of <array 2 of <array 9 of <array 7 of <int>>>>>>> %ebp+20 ]

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
    movl    $77171, %eax            #   0:     sub    t5 <- 77171, 85536
    movl    $85536, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $9758, %eax             #   1:     sub    t6 <- 9758, 12895
    movl    $12895, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   2:     if     t5 > t6 goto 1
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   3:     goto   2
l_f1_1:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -29(%ebp)         
l_f1_3:
    movzbl  -29(%ebp), %eax         #  10:     return t7
    jmp     l_f1_exit              
    movl    $1, %eax                #  11:     assign t8 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f1_8                  #  12:     goto   8
    movl    $0, %eax                #  13:     assign t8 <- 0
    movb    %al, -30(%ebp)         
l_f1_8:
    movzbl  -30(%ebp), %eax         #  15:     assign v1 <- t8
    movb    %al, 12(%ebp)          
    movl    $38270, %eax            #  16:     mul    t9 <- 38270, 14973
    movl    $14973, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     add    t10 <- t9, 29935
    movl    $29935, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     if     t10 <= 38779 goto 11
    movl    $38779, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_11                
    jmp     l_f1_12                 #  19:     goto   12
l_f1_11:
    movl    $1, %eax                #  21:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_13                 #  22:     goto   13
l_f1_12:
    movl    $0, %eax                #  24:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f1_13:
    movzbl  -17(%ebp), %eax         #  26:     return t11
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 6 of <array 4 of <array 10 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 1 of <array 2 of <array 9 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -25(%ebp)   1  [ $v4       <bool> %ebp-25 ]

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
    movl    $0, %eax                #   0:     assign v4 <- 0
    movb    %al, -25(%ebp)         
    jmp     l_f2_2                  #   1:     goto   2
l_f2_2:
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_4                  #   4:     goto   4
    movl    $0, %eax                #   5:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_4:
    movzbl  -13(%ebp), %eax         #   7:     return t5
    jmp     l_f2_exit              
    movl    $20754, %eax            #   8:     mul    t6 <- 20754, 24280
    movl    $24280, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     mul    t7 <- t6, 1340
    movl    $1340, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     assign v3 <- t7
    movl    %eax, 20(%ebp)         

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]

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
    call    dummyINTfunc            #   1:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_3_while_cond:
    jmp     l_test_4_while_body     #   3:     goto   4_while_body
    jmp     l_test_4_while_body     #   4:     goto   4_while_body
    jmp     l_test_2                #   5:     goto   2
l_test_4_while_body:
    call    dummyINTfunc            #   7:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_3_while_cond     #   8:     goto   3_while_cond
l_test_2:
    jmp     l_test_11_if_false      #  10:     goto   11_if_false
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_9                #  13:     goto   9
l_test_11_if_false:
l_test_9:
l_test_15_while_cond:
    jmp     l_test_14               #  17:     goto   14
l_test_18_while_cond:
    jmp     l_test_19_while_body    #  19:     goto   19_while_body
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  21:     goto   18_while_cond
    jmp     l_test_15_while_cond    #  22:     goto   15_while_cond
l_test_14:
l_test_24_while_cond:
    call    f0                      #  25:     call   t3 <- f0
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  26:     if     t3 = 1 goto 27
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_27              
l_test_27:
    movl    $1, %eax                #  28:     assign t4 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_29               #  29:     goto   29
    movl    $0, %eax                #  30:     assign t4 <- 0
    movb    %al, -26(%ebp)         
l_test_29:
    movl    $0, %eax                #  32:     if     0 = t4 goto 25_while_body
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_25_while_body   
    jmp     l_test_23               #  33:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  35:     goto   24_while_cond
l_test_23:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
