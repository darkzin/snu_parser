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
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 71 of <array 74 of <array 76 of <array 25 of <array 15 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 24 of <array 76 of <array 32 of <array 78 of <array 93 of <bool>>>>>>> %ebp+12 ]

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
    movl    $0, %eax                #   0:     if     0 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   4:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_exit              
l_f0_8_while_cond:
    jmp     l_f0_7                  #  10:     goto   7
    jmp     l_f0_exit              
    leal    _str_1, %eax            #  12:     &()    t5 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #  14:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_8_while_cond       #  15:     goto   8_while_cond
l_f0_7:

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
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 73 of <array 15 of <array 86 of <array 66 of <array 3 of <char>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 48 of <array 52 of <array 92 of <array 15 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 70 of <array 90 of <array 30 of <array 6 of <array 25 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 43 of <array 54 of <array 65 of <array 82 of <array 3 of <bool>>>>>>> %ebp+20 ]
    #    -15(%ebp)   1  [ $v6       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $v7       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v6 <- t4
    movb    %al, -15(%ebp)         
    call    dummyBOOLfunc           #   2:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $42077, %eax            #   3:     assign v7 <- 42077
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 73 of <array 15 of <array 86 of <array 66 of <array 3 of <char>>>>>>> %ebp-28 ]

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
    movl    $96650, %eax            #   0:     if     96650 # 33940 goto 1
    movl    $33940, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    movl    $97, %eax               #   9:     assign v1 <- 97
    movb    %al, v1                
l_test_7_while_cond:
    call    dummyINTfunc            #  11:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_11_while_cond:
    jmp     l_test_10               #  13:     goto   10
    jmp     l_test_11_while_cond    #  14:     goto   11_while_cond
l_test_10:
l_test_14_while_cond:
    jmp     l_test_13               #  17:     goto   13
    jmp     l_test_14_while_cond    #  18:     goto   14_while_cond
l_test_13:
    movl    $70405, %eax            #  20:     if     70405 < 73695 goto 17_if_true
    movl    $73695, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_17_if_true      
    jmp     l_test_18_if_false      #  21:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  23:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_7_while_cond     #  26:     goto   7_while_cond
    call    dummyCHARfunc           #  27:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_exit            
    movl    $100, %eax              #  29:     if     100 <= 99 goto 23_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_23_if_true      
    jmp     l_test_24_if_false      #  30:     goto   24_if_false
l_test_23_if_true:
    leal    v2, %eax                #  32:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  34:     call   f1
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_22               #  36:     goto   22
l_test_24_if_false:
l_test_22:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 73 of <array 15 of <array 86 of <array 66 of <array 3 of <char>>>>>>
    .long    5
    .long   73
    .long   15
    .long   86
    .long   66
    .long    3
    .skip 18645660








    # end of global data section
    #-----------------------------------------

    .end
##################################################
