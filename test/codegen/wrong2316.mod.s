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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 85 of <array 89 of <array 99 of <array 17 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    movl    $32418, %eax            #   0:     mul    t7 <- 32418, 52339
    movl    $52339, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
    movl    $71278, %eax            #   3:     if     71278 > 68779 goto 11
    movl    $68779, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_11                
    jmp     l_f0_3                  #   4:     goto   3
l_f0_11:
    jmp     l_f0_3                  #   6:     goto   3
    jmp     l_f0_3                  #   7:     goto   3
    jmp     l_f0_3                  #   8:     goto   3
    jmp     l_f0_3                  #   9:     goto   3
    movl    $1, %eax                #  10:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_4                  #  11:     goto   4
l_f0_3:
    movl    $0, %eax                #  13:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f0_4:
    movzbl  -17(%ebp), %eax         #  15:     return t8
    jmp     l_f0_exit              
    call    ReadInt                 #  16:     call   t9 <- ReadInt
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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
    call    dummyCHARfunc           #   4:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 46 of <array 63 of <array 4 of <array 74 of <array 67 of <int>>>>>>> %ebp+12 ]

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
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     if     97 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $100, %eax              #   8:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   9:     goto   1_while_cond
l_f2_0:
    movl    $78644, %eax            #  11:     if     78644 = 90043 goto 9_if_true
    movl    $90043, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  12:     goto   10_if_false
l_f2_9_if_true:
    call    ReadInt                 #  14:     call   t7 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $73131, %eax            #  15:     if     73131 > t7 goto 13_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  16:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_12                 #  18:     goto   12
l_f2_14_if_false:
l_f2_12:
    jmp     l_f2_8                  #  21:     goto   8
l_f2_10_if_false:
l_f2_8:
    call    dummyCHARfunc           #  24:     call   t8 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 46 of <array 63 of <array 4 of <array 74 of <array 67 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 46 of <array 63 of <array 4 of <array 74 of <array 67 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <char> %ebp-34 ]

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
    movl    $47580, %eax            #   0:     sub    t0 <- 47580, 45372
    movl    $45372, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    leal    v1, %eax                #   2:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t1
    pushl   %eax                   
    movl    $1, %eax                #   4:     param  0 <- 1
    pushl   %eax                   
    call    f2                      #   5:     call   t2 <- f2
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    leal    _str_1, %eax            #   6:     &()    t3 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   8:     call   WriteStr
    addl    $4, %esp               
l_test_4_while_cond:
    jmp     l_test_5_while_body     #  10:     goto   5_while_body
    jmp     l_test_3                #  11:     goto   3
l_test_5_while_body:
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #  14:     goto   9_while_cond
    jmp     l_test_11               #  15:     goto   11
l_test_11:
    movl    $83129, %eax            #  17:     if     83129 < 87854 goto 15_if_true
    movl    $87854, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_15_if_true      
    jmp     l_test_16_if_false      #  18:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  20:     goto   14
l_test_16_if_false:
l_test_14:
    movl    $97, %eax               #  23:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  24:     call   WriteChar
    addl    $4, %esp               
    movl    $68919, %eax            #  25:     if     68919 <= 51597 goto 20_if_true
    movl    $51597, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_20_if_true      
    jmp     l_test_21_if_false      #  26:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  28:     goto   19
l_test_21_if_false:
l_test_19:
    leal    v1, %eax                #  31:     &()    t4 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     param  1 <- t4
    pushl   %eax                   
    movl    $71604, %eax            #  33:     if     71604 <= 30406 goto 24
    movl    $30406, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_24              
    jmp     l_test_25               #  34:     goto   25
l_test_24:
    movl    $1, %eax                #  36:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_26               #  37:     goto   26
l_test_25:
    movl    $0, %eax                #  39:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_26:
    movzbl  -33(%ebp), %eax         #  41:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  42:     call   t6 <- f2
    addl    $8, %esp               
    movb    %al, -34(%ebp)         
    movl    $97, %eax               #  43:     assign v2 <- 97
    movb    %al, v2                
l_test_30_while_cond:
    movl    $94917, %eax            #  45:     if     94917 < 77273 goto 31_while_body
    movl    $77273, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_31_while_body   
    jmp     l_test_29               #  46:     goto   29
l_test_31_while_body:
    jmp     l_test_30_while_cond    #  48:     goto   30_while_cond
l_test_29:
    jmp     l_test_exit            
    jmp     l_test_36_if_false      #  51:     goto   36_if_false
    jmp     l_test_34               #  52:     goto   34
l_test_36_if_false:
l_test_34:
    jmp     l_test_4_while_cond     #  55:     goto   4_while_cond
l_test_3:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 46 of <array 63 of <array 4 of <array 74 of <array 67 of <int>>>>>>
    .long    5
    .long   46
    .long   63
    .long    4
    .long   74
    .long   67
    .skip 229892544
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
