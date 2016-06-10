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
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -23(%ebp)   1  [ $v1       <bool> %ebp-23 ]

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
    movl    $91517, %eax            #   0:     mul    t1 <- 91517, 3308
    movl    $3308, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 81447
    movl    $81447, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t2
    jmp     l_f0_exit              
    jmp     l_f0_2                  #   3:     goto   2
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f0_4:
    movzbl  -21(%ebp), %eax         #  11:     assign v1 <- t3
    movb    %al, -23(%ebp)         
    call    dummyBOOLfunc           #  12:     call   t4 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 1 of <array 6 of <array 2 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 2 of <array 10 of <array 3 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 8 of <array 10 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 3 of <array 3 of <array 1 of <array 1 of <char>>>>>>> %ebp+20 ]
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
    jmp     l_f1_exit              
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    movl    $75309, %eax            #   2:     if     75309 < 40997 goto 5_if_true
    movl    $40997, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $15913, %eax            #   8:     assign v4 <- 15913
    movl    %eax, -20(%ebp)        
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $99, %eax               #  12:     if     99 <= 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  13:     goto   11_if_false
l_f1_10_if_true:
    call    dummyBOOLfunc           #  15:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_9                  #  16:     goto   9
l_f1_11_if_false:
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   3:     call   t2 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    jmp     l_f2_4_if_false         #   4:     goto   4_if_false
    jmp     l_f2_4_if_false         #   5:     goto   4_if_false
    movl    $77912, %eax            #   6:     if     77912 > 42284 goto 8_if_true
    movl    $42284, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   7:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #   9:     goto   7
l_f2_9_if_false:
l_f2_7:
l_f2_12_while_cond:
    movl    $97, %eax               #  13:     if     97 # 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_13_while_body     
    jmp     l_f2_11                 #  14:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  16:     goto   12_while_cond
l_f2_11:
    jmp     l_f2_2                  #  18:     goto   2
l_f2_4_if_false:
l_f2_2:

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
l_test_1_while_cond:
    jmp     l_test_4                #   1:     goto   4
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
l_test_4:
    jmp     l_test_2_while_body     #   4:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
    movl    $84840, %eax            #   7:     param  1 <- 84840
    pushl   %eax                   
    movl    $98, %eax               #   8:     param  0 <- 98
    pushl   %eax                   
    call    f2                      #   9:     call   t0 <- f2
    addl    $8, %esp               
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  10:     assign v0 <- t0
    movb    %al, v0                
    movl    $11231, %eax            #  11:     assign v1 <- 11231
    movl    %eax, v1               

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
