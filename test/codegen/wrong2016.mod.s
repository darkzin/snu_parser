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
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 76 of <array 50 of <array 44 of <array 33 of <array 71 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 45 of <array 33 of <array 2 of <array 9 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_2                  #   1:     goto   2
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   9:     return t4
    jmp     l_f0_exit              
    movl    $30849, %eax            #  10:     assign v4 <- 30849
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #  11:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  12:     assign v1 <- t5
    movb    %al, 12(%ebp)          

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 40 of <array 39 of <array 18 of <array 18 of <array 13 of <char>>>>>>> %ebp+8 ]
    #    -26(%ebp)   1  [ $v1       <char> %ebp-26 ]

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
    call    WriteLn                 #   1:     call   WriteLn
    movl    $90715, %eax            #   2:     if     90715 > 95157 goto 5_if_true
    movl    $95157, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $99, %eax               #   8:     if     99 <= 97 goto 9_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
    movl    $31876, %eax            #  15:     sub    t4 <- 31876, 99563
    movl    $99563, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     sub    t5 <- t4, 56724
    movl    $56724, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t6 <- t5, 93165
    movl    $93165, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     return t6
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  19:     call   t7 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  20:     assign v1 <- t7
    movb    %al, -26(%ebp)         

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 11 of <array 80 of <array 74 of <array 92 of <array 61 of <int>>>>>>> %ebp+8 ]
    #    -19(%ebp)   1  [ $v1       <bool> %ebp-19 ]

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
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t4 > 67569 goto 1_if_true
    movl    $67569, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_9_if_false         #   9:     goto   9_if_false
    call    WriteLn                 #  10:     call   WriteLn
    movl    $97, %eax               #  11:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_exit              
    jmp     l_f2_7                  #  14:     goto   7
l_f2_9_if_false:
l_f2_7:
    call    dummyCHARfunc           #  17:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #  18:     if     98 = t5 goto 14
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_14                
    jmp     l_f2_15                 #  19:     goto   15
l_f2_14:
    movl    $1, %eax                #  21:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_16                 #  22:     goto   16
l_f2_15:
    movl    $0, %eax                #  24:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f2_16:
    movzbl  -18(%ebp), %eax         #  26:     assign v1 <- t6
    movb    %al, -19(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <char> %ebp-19 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
    movl    $98, %eax               #   2:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
l_test_11_while_cond:
    jmp     l_test_10               #   5:     goto   10
    jmp     l_test_11_while_cond    #   6:     goto   11_while_cond
l_test_10:
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    call    dummyINTfunc            #  12:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    call    dummyCHARfunc           #  14:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  15:     if     t1 # 98 goto 17
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_17              
    jmp     l_test_18               #  16:     goto   18
l_test_17:
    movl    $1, %eax                #  18:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_19               #  19:     goto   19
l_test_18:
    movl    $0, %eax                #  21:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_19:
    movzbl  -18(%ebp), %eax         #  23:     assign v0 <- t2
    movb    %al, v0                
    call    dummyCHARfunc           #  24:     call   t3 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  25:     assign v1 <- t3
    movb    %al, v1                

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
