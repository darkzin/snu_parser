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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 3 of <array 9 of <array 6 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 6 of <array 4 of <array 2 of <array 1 of <char>>>>>>> %ebp+16 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    movl    $97, %eax               #   0:     return 97
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $41147, %eax            #   2:     add    t6 <- 41147, 58511
    movl    $58511, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3808, %eax             #   3:     if     3808 # t6 goto 3_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    call    dummyBOOLfunc           #   6:     call   t7 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
    movl    $54954, %eax            #   9:     assign v3 <- 54954
    movl    %eax, -24(%ebp)        

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 1 of <array 6 of <array 4 of <array 8 of <int>>>>>>> %ebp+8 ]
    #    -16(%ebp)   1  [ $v1       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $v2       <bool> %ebp-17 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $69530, %eax            #   2:     return 69530
    jmp     l_f1_exit              
    movl    $57857, %eax            #   3:     return 57857
    jmp     l_f1_exit              
    jmp     l_f1_5                  #   4:     goto   5
l_f1_5:
    jmp     l_f1_10_if_false        #   6:     goto   10_if_false
    jmp     l_f1_8                  #   7:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $84737, %eax            #  10:     return 84737
    jmp     l_f1_exit              
    movl    $97, %eax               #  11:     assign v1 <- 97
    movb    %al, -16(%ebp)         
l_f1_14_while_cond:
    movl    $97, %eax               #  13:     if     97 < 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  14:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  16:     goto   14_while_cond
l_f1_13:
    call    dummyBOOLfunc           #  18:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #  19:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  20:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_1_while_cond       #  21:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #  23:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $31438, %eax            #  24:     return 31438
    jmp     l_f1_exit              
    movl    $68189, %eax            #  25:     if     68189 > 90845 goto 25
    movl    $90845, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_25                
    jmp     l_f1_26                 #  26:     goto   26
l_f1_25:
    movl    $1, %eax                #  28:     assign t8 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_27                 #  29:     goto   27
l_f1_26:
    movl    $0, %eax                #  31:     assign t8 <- 0
    movb    %al, -15(%ebp)         
l_f1_27:
    movzbl  -15(%ebp), %eax         #  33:     assign v2 <- t8
    movb    %al, -17(%ebp)         
    jmp     l_f1_20                 #  34:     goto   20
l_f1_20:

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
    #    -16(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 1 of <array 6 of <array 4 of <array 8 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #   -3888(%ebp)  3864  [ $v2       <array 5 of <array 1 of <array 6 of <array 4 of <array 8 of <int>>>>>> %ebp-3888 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3876, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $969, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3888(%ebp)          # local array 'v2': 5 dimensions
    movl    $5,-3884(%ebp)          #   dimension 1: 5 elements
    movl    $1,-3880(%ebp)          #   dimension 2: 1 elements
    movl    $6,-3876(%ebp)          #   dimension 3: 6 elements
    movl    $4,-3872(%ebp)          #   dimension 4: 4 elements
    movl    $8,-3868(%ebp)          #   dimension 5: 8 elements

    # function body
    leal    -3888(%ebp), %eax       #   0:     &()    t6 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #   2:     call   t7 <- f1
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #   3:     call   t8 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $3876, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 8 of <array 6 of <array 4 of <array 2 of <array 1 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 9 of <array 3 of <array 9 of <array 6 of <array 5 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t5       <bool> %ebp-27 ]

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
    leal    v1, %eax                #   0:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t0
    pushl   %eax                   
    leal    v0, %eax                #   2:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t1
    pushl   %eax                   
    movl    $31194, %eax            #   4:     add    t2 <- 31194, 43384
    movl    $43384, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     if     t2 < 81133 goto 1
    movl    $81133, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_1               
    jmp     l_test_2                #   6:     goto   2
l_test_1:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_3                #   9:     goto   3
l_test_2:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_3:
    movzbl  -25(%ebp), %eax         #  13:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  14:     call   t4 <- f0
    addl    $12, %esp              
    movb    %al, -26(%ebp)         
    movl    $45560, %eax            #  15:     if     45560 <= 59939 goto 6
    movl    $59939, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_6               
    jmp     l_test_7                #  16:     goto   7
l_test_6:
    movl    $1, %eax                #  18:     assign t5 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_test_8                #  19:     goto   8
l_test_7:
    movl    $0, %eax                #  21:     assign t5 <- 0
    movb    %al, -27(%ebp)         
l_test_8:
    movzbl  -27(%ebp), %eax         #  23:     assign v2 <- t5
    movb    %al, v2                
    movl    $77688, %eax            #  24:     if     77688 >= 16577 goto 11_if_true
    movl    $16577, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_11_if_true      
    jmp     l_test_12_if_false      #  25:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_10               #  30:     goto   10
l_test_12_if_false:
l_test_10:

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
v0:                                 # <array 9 of <array 3 of <array 9 of <array 6 of <array 5 of <bool>>>>>>
    .long    5
    .long    9
    .long    3
    .long    9
    .long    6
    .long    5
    .skip 7290
    .align   4
v1:                                 # <array 8 of <array 6 of <array 4 of <array 2 of <array 1 of <char>>>>>>
    .long    5
    .long    8
    .long    6
    .long    4
    .long    2
    .long    1
    .skip  384
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
