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
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 8 of <array 4 of <array 8 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 7 of <array 10 of <array 10 of <array 7 of <array 2 of <int>>>>>>> %ebp+16 ]
    #    -13(%ebp)   1  [ $v5       <char> %ebp-13 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $99, %eax               #   1:     assign v5 <- 99
    movb    %al, -13(%ebp)         
    jmp     l_f0_4_if_false         #   2:     goto   4_if_false
    jmp     l_f0_exit              
    movl    $94866, %eax            #   4:     if     94866 < 55550 goto 7_if_true
    movl    $55550, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   5:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   7:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $100, %eax              #  10:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  11:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_2                  #  12:     goto   2
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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 8 of <array 5 of <array 5 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 10 of <array 7 of <array 4 of <array 1 of <array 5 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 9 of <array 6 of <array 4 of <array 6 of <array 3 of <int>>>>>>> %ebp+20 ]

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
    movl    $35795, %eax            #   0:     if     35795 # 85817 goto 1_if_true
    movl    $85817, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_4                  #   3:     goto   4
l_f1_4:
l_f1_8_while_cond:
    movl    $31776, %eax            #   6:     if     31776 <= 76135 goto 9_while_body
    movl    $76135, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_9_while_body      
    jmp     l_f1_7                  #   7:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #   9:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $22484, %eax            #  14:     mul    t7 <- 22484, 49031
    movl    $49031, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     if     t7 >= 49655 goto 12
    movl    $49655, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_12                
    jmp     l_f1_13                 #  16:     goto   13
l_f1_12:
    movl    $1, %eax                #  18:     assign t8 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_14                 #  19:     goto   14
l_f1_13:
    movl    $0, %eax                #  21:     assign t8 <- 0
    movb    %al, -21(%ebp)         
l_f1_14:
    movzbl  -21(%ebp), %eax         #  23:     return t8
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  24:     call   t9 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $97, %eax               #  25:     if     97 < t9 goto 17
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_17                
    jmp     l_f1_18                 #  26:     goto   18
l_f1_17:
    movl    $1, %eax                #  28:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_19                 #  29:     goto   19
l_f1_18:
    movl    $0, %eax                #  31:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_19:
    movzbl  -13(%ebp), %eax         #  33:     return t10
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v2 <- t7
    movb    %al, -14(%ebp)         
l_f2_3_while_cond:
l_f2_6_while_cond:
    jmp     l_f2_5                  #   5:     goto   5
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_3_while_cond       #   8:     goto   3_while_cond

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 9 of <array 6 of <array 4 of <array 6 of <array 3 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 10 of <array 7 of <array 4 of <array 1 of <array 5 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <array 8 of <array 5 of <array 5 of <array 7 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]

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
    jmp     l_test_2                #   0:     goto   2
    jmp     l_test_2                #   1:     goto   2
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   3:     goto   3
l_test_2:
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   7:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #   8:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     assign v1 <- t1
    movb    %al, v1                
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  11:     assign v1 <- t2
    movb    %al, v1                
    leal    v4, %eax                #  12:     &()    t3 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  3 <- t3
    pushl   %eax                   
    leal    v3, %eax                #  14:     &()    t4 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  2 <- t4
    pushl   %eax                   
    movl    $99, %eax               #  16:     param  1 <- 99
    pushl   %eax                   
    leal    v2, %eax                #  17:     &()    t5 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  19:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    jmp     l_test_11_if_true       #  20:     goto   11_if_true
    jmp     l_test_12_if_false      #  21:     goto   12_if_false
l_test_11_if_true:
    movl    $980, %eax              #  23:     if     980 <= 15964 goto 15_if_true
    movl    $15964, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_15_if_true      
    jmp     l_test_16_if_false      #  24:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  26:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_10               #  29:     goto   10
l_test_12_if_false:
l_test_10:
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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 7 of <array 8 of <array 5 of <array 5 of <array 7 of <char>>>>>>
    .long    5
    .long    7
    .long    8
    .long    5
    .long    5
    .long    7
    .skip 9800
v3:                                 # <array 10 of <array 7 of <array 4 of <array 1 of <array 5 of <int>>>>>>
    .long    5
    .long   10
    .long    7
    .long    4
    .long    1
    .long    5
    .skip 5600
v4:                                 # <array 9 of <array 6 of <array 4 of <array 6 of <array 3 of <int>>>>>>
    .long    5
    .long    9
    .long    6
    .long    4
    .long    6
    .long    3
    .skip 15552








    # end of global data section
    #-----------------------------------------

    .end
##################################################
