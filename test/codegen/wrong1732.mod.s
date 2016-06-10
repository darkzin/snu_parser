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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 16 of <array 45 of <array 40 of <array 98 of <array 23 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 72 of <array 1 of <array 65 of <array 23 of <array 15 of <bool>>>>>>> %ebp+20 ]
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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $56136, %eax            #   1:     assign v4 <- 56136
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #   2:     if     98 > 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_6                  #   5:     goto   6
l_f0_6:
    movl    $100, %eax              #   7:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_12_if_false        #   8:     goto   12_if_false
    jmp     l_f0_10                 #   9:     goto   10
l_f0_12_if_false:
l_f0_10:
    movl    $98, %eax               #  12:     assign v0 <- 98
    movb    %al, 8(%ebp)           
    jmp     l_f0_2                  #  13:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 78 of <array 47 of <array 44 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 16 of <array 54 of <array 45 of <array 14 of <array 2 of <int>>>>>>> %ebp+16 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $99, %eax               #   1:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   5:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     return t7
    jmp     l_f1_exit              
    movl    $97, %eax               #   7:     if     97 # 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   8:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_if_false:
l_f1_6:

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 58 of <array 43 of <array 56 of <array 64 of <array 13 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 62 of <array 85 of <array 70 of <array 70 of <array 98 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t7
    jmp     l_f2_exit              
l_f2_2_while_cond:
    jmp     l_f2_3_while_body       #   3:     goto   3_while_body
l_f2_3_while_body:
    movl    $99, %eax               #   5:     return 99
    jmp     l_f2_exit              
l_f2_7_while_cond:
    jmp     l_f2_6                  #   7:     goto   6
    jmp     l_f2_7_while_cond       #   8:     goto   7_while_cond
l_f2_6:
    movl    $97, %eax               #  10:     return 97
    jmp     l_f2_exit              
    movl    $99, %eax               #  11:     return 99
    jmp     l_f2_exit              
    movl    $98, %eax               #  12:     assign v4 <- 98
    movb    %al, -15(%ebp)         
    jmp     l_f2_2_while_cond       #  13:     goto   2_while_cond
    call    dummyCHARfunc           #  14:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  15:     if     98 >= t8 goto 13_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  16:     goto   14_if_false
l_f2_13_if_true:
l_f2_17_while_cond:
    movl    $42783, %eax            #  19:     if     42783 = 87160 goto 18_while_body
    movl    $87160, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_18_while_body     
    jmp     l_f2_16                 #  20:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  22:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_12                 #  24:     goto   12
l_f2_14_if_false:
l_f2_12:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 62 of <array 85 of <array 70 of <array 70 of <array 98 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 58 of <array 43 of <array 56 of <array 64 of <array 13 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
l_test_5_while_cond:
    call    dummyCHARfunc           #   8:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #  11:     if     97 > 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_12_if_true      
    jmp     l_test_13_if_false      #  12:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  14:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_5_while_cond     #  17:     goto   5_while_cond
l_test_16_while_cond:
    movl    $0, %eax                #  19:     if     0 = 0 goto 17_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_15               #  20:     goto   15
l_test_17_while_body:
    movl    $51543, %eax            #  22:     assign v0 <- 51543
    movl    %eax, v0               
    movl    $100, %eax              #  23:     assign v1 <- 100
    movb    %al, v1                
l_test_22_while_cond:
    jmp     l_test_26               #  25:     goto   26
    movl    $1, %eax                #  26:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_27               #  27:     goto   27
l_test_26:
    movl    $0, %eax                #  29:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_27:
    movzbl  -16(%ebp), %eax         #  31:     param  3 <- t3
    pushl   %eax                   
    movl    $25640, %eax            #  32:     param  2 <- 25640
    pushl   %eax                   
    leal    v3, %eax                #  33:     &()    t4 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  34:     param  1 <- t4
    pushl   %eax                   
    leal    v2, %eax                #  35:     &()    t5 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  36:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  37:     call   t6 <- f2
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movl    $97, %eax               #  38:     if     97 < t6 goto 23_while_body
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_23_while_body   
    jmp     l_test_21               #  39:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  41:     goto   22_while_cond
l_test_21:
    jmp     l_test_16_while_cond    #  43:     goto   16_while_cond
l_test_15:
l_test_30_while_cond:
    jmp     l_test_32               #  46:     goto   32
l_test_32:
    jmp     l_test_30_while_cond    #  48:     goto   30_while_cond
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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 58 of <array 43 of <array 56 of <array 64 of <array 13 of <int>>>>>>
    .long    5
    .long   58
    .long   43
    .long   56
    .long   64
    .long   13
    .skip 464801792
v3:                                 # <array 62 of <array 85 of <array 70 of <array 70 of <array 98 of <int>>>>>>
    .long    5
    .long   62
    .long   85
    .long   70
    .long   70
    .long   98
    .skip 1532681408








    # end of global data section
    #-----------------------------------------

    .end
##################################################
