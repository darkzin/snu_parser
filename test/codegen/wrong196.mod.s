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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 7 of <array 8 of <array 9 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 6 of <array 10 of <array 10 of <array 8 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 1 of <array 3 of <array 6 of <array 8 of <bool>>>>>>> %ebp+20 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v4 <- t5
    movb    %al, -15(%ebp)         
l_f0_5_while_cond:
    jmp     l_f0_4                  #   3:     goto   4
    jmp     l_f0_5_while_cond       #   4:     goto   5_while_cond
l_f0_4:
    movl    $98, %eax               #   6:     return 98
    jmp     l_f0_exit              
    movl    $98, %eax               #   7:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_11_if_false        #   8:     goto   11_if_false
    jmp     l_f0_9                  #   9:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $97, %eax               #  12:     return 97
    jmp     l_f0_exit              
    movl    $100, %eax              #  13:     if     100 <= 99 goto 14_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  14:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  16:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_1                  #  19:     goto   1
l_f0_1:
l_f0_18_while_cond:
    jmp     l_f0_17                 #  22:     goto   17
    call    dummyBOOLfunc           #  23:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #  24:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_18_while_cond      #  25:     goto   18_while_cond
l_f0_17:

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <char> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 6 of <array 9 of <array 1 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 1 of <array 8 of <array 10 of <array 2 of <char>>>>>>> %ebp+16 ]

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
    jmp     l_f1_1                  #   0:     goto   1
l_f1_1:
    movl    $1, %eax                #   2:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     return t5
    jmp     l_f1_exit              
    movl    $100, %eax              #   7:     if     100 # 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   8:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_12_if_false        #  10:     goto   12_if_false
    jmp     l_f1_10                 #  11:     goto   10
l_f1_12_if_false:
l_f1_10:
    leal    _str_1, %eax            #  14:     &()    t6 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  16:     call   WriteStr
    addl    $4, %esp               
    movl    $1, %eax                #  17:     if     1 = 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  18:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  20:     goto   14
l_f1_16_if_false:
l_f1_14:
    call    dummyBOOLfunc           #  23:     call   t7 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f1_21_if_false        #  24:     goto   21_if_false
    jmp     l_f1_19                 #  25:     goto   19
l_f1_21_if_false:
l_f1_19:
    jmp     l_f1_22                 #  28:     goto   22
l_f1_22:
    jmp     l_f1_6                  #  30:     goto   6
l_f1_8_if_false:
l_f1_6:
    call    ReadInt                 #  33:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        
l_f1_30_while_cond:
    jmp     l_f1_29                 #  35:     goto   29
    jmp     l_f1_30_while_cond      #  36:     goto   30_while_cond
l_f1_29:
    call    dummyCHARfunc           #  38:     call   t9 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    jmp     l_f1_25                 #  39:     goto   25
l_f1_25:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $v0       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $v1       <char> %ebp-27 ]

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
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     if     97 <= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    movl    $100, %eax              #   5:     if     100 <= 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_6_while_body      
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   8:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    movl    $11893, %eax            #  12:     add    t5 <- 11893, 70700
    movl    $70700, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #  13:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  14:     add    t7 <- t5, t6
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     if     t7 = 26053 goto 9
    movl    $26053, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_9                 
    jmp     l_f2_10                 #  16:     goto   10
l_f2_9:
    movl    $1, %eax                #  18:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_11                 #  19:     goto   11
l_f2_10:
    movl    $0, %eax                #  21:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f2_11:
    movzbl  -25(%ebp), %eax         #  23:     assign v0 <- t8
    movb    %al, -26(%ebp)         
    movl    $98, %eax               #  24:     assign v1 <- 98
    movb    %al, -27(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 8 of <array 1 of <array 3 of <array 6 of <array 8 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 6 of <array 10 of <array 10 of <array 8 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 6 of <array 7 of <array 8 of <array 9 of <array 4 of <bool>>>>>>> %ebp-28 ]
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
l_test_4_while_cond:
    movl    $69617, %eax            #   1:     if     69617 < 67267 goto 5_while_body
    movl    $67267, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_5_while_body    
    jmp     l_test_3                #   2:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   4:     goto   4_while_cond
l_test_3:
    call    dummyCHARfunc           #   6:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   7:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_0                #   9:     goto   0
l_test_0:
    jmp     l_test_exit            
l_test_10_while_cond:
    movl    $414, %eax              #  13:     if     414 > 12908 goto 11_while_body
    movl    $12908, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #  14:     goto   9
l_test_11_while_body:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_10_while_cond    #  18:     goto   10_while_cond
l_test_9:
    leal    v2, %eax                #  20:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     param  3 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  22:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     param  2 <- t2
    pushl   %eax                   
    movl    $1, %eax                #  24:     param  1 <- 1
    pushl   %eax                   
    leal    v0, %eax                #  25:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  27:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         

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
v0:                                 # <array 6 of <array 7 of <array 8 of <array 9 of <array 4 of <bool>>>>>>
    .long    5
    .long    6
    .long    7
    .long    8
    .long    9
    .long    4
    .skip 12096
v1:                                 # <array 9 of <array 6 of <array 10 of <array 10 of <array 8 of <bool>>>>>>
    .long    5
    .long    9
    .long    6
    .long   10
    .long   10
    .long    8
    .skip 43200
v2:                                 # <array 8 of <array 1 of <array 3 of <array 6 of <array 8 of <bool>>>>>>
    .long    5
    .long    8
    .long    1
    .long    3
    .long    6
    .long    8
    .skip 1152








    # end of global data section
    #-----------------------------------------

    .end
##################################################
