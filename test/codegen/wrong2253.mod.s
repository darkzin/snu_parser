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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 69 of <array 90 of <array 8 of <array 1 of <array 72 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 11 of <array 2 of <array 60 of <array 60 of <array 6 of <bool>>>>>>> %ebp+20 ]

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
l_f0_1_while_cond:
    movl    $97, %eax               #   1:     if     97 < 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
l_f0_8_while_cond:
    movl    $20362, %eax            #   9:     if     20362 < 21969 goto 9_while_body
    movl    $21969, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_9_while_body      
    jmp     l_f0_7                  #  10:     goto   7
l_f0_9_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_8_while_cond       #  13:     goto   8_while_cond
l_f0_7:
    call    dummyCHARfunc           #  15:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 52 of <array 35 of <array 99 of <array 66 of <array 95 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <bool> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f1_exit              
    call    WriteLn                 #   2:     call   WriteLn
    call    dummyCHARfunc           #   3:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     return t7
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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]

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
    call    ReadInt                 #   0:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $99, %eax               #   1:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    movl    $52067, %eax            #   3:     mul    t7 <- 52067, 79782
    movl    $79782, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     assign v3 <- t7
    movl    %eax, 12(%ebp)         

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 52 of <array 35 of <array 99 of <array 66 of <array 95 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <char> %ebp-26 ]

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
    movl    $100, %eax              #   0:     if     100 > 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $99, %eax               #   3:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
l_test_6_while_cond:
l_test_9_while_cond:
    movl    $0, %eax                #   9:     if     0 = 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  10:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  12:     goto   9_while_cond
l_test_8:
    jmp     l_test_14_if_false      #  14:     goto   14_if_false
    jmp     l_test_12               #  15:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $23018, %eax            #  18:     assign v1 <- 23018
    movl    %eax, v1               
    jmp     l_test_6_while_cond     #  19:     goto   6_while_cond
    movl    $3443, %eax             #  20:     assign v1 <- 3443
    movl    %eax, v1               
l_test_18_while_cond:
    jmp     l_test_19_while_body    #  22:     goto   19_while_body
    jmp     l_test_19_while_body    #  23:     goto   19_while_body
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  25:     goto   18_while_cond
    movl    $99, %eax               #  26:     if     99 = 98 goto 25_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_25_if_true      
    jmp     l_test_26_if_false      #  27:     goto   26_if_false
l_test_25_if_true:
    movl    $61159, %eax            #  29:     if     61159 < 25222 goto 29_if_true
    movl    $25222, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_29_if_true      
    jmp     l_test_30_if_false      #  30:     goto   30_if_false
l_test_29_if_true:
    jmp     l_test_28               #  32:     goto   28
l_test_30_if_false:
l_test_28:
    call    dummyBOOLfunc           #  35:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_24               #  36:     goto   24
l_test_26_if_false:
l_test_24:
l_test_34_while_cond:
    movl    $99, %eax               #  40:     if     99 # 97 goto 37
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_37              
    jmp     l_test_38               #  41:     goto   38
l_test_37:
    movl    $1, %eax                #  43:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_39               #  44:     goto   39
l_test_38:
    movl    $0, %eax                #  46:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_39:
    movzbl  -14(%ebp), %eax         #  48:     param  3 <- t1
    pushl   %eax                   
    movl    $16069, %eax            #  49:     param  2 <- 16069
    pushl   %eax                   
    leal    v2, %eax                #  50:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  51:     param  1 <- t2
    pushl   %eax                   
    movl    $47268, %eax            #  52:     sub    t3 <- 47268, 61126
    movl    $61126, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $87654, %eax            #  53:     if     87654 < t3 goto 41
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_41              
    jmp     l_test_42               #  54:     goto   42
l_test_41:
    movl    $1, %eax                #  56:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_43               #  57:     goto   43
l_test_42:
    movl    $0, %eax                #  59:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_test_43:
    movzbl  -25(%ebp), %eax         #  61:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  62:     call   t5 <- f1
    addl    $16, %esp              
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  63:     if     t5 >= 98 goto 35_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_35_while_body   
    jmp     l_test_33               #  64:     goto   33
l_test_35_while_body:
l_test_46_while_cond:
    movl    $97, %eax               #  67:     if     97 <= 100 goto 47_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_47_while_body   
    jmp     l_test_45               #  68:     goto   45
l_test_47_while_body:
    jmp     l_test_46_while_cond    #  70:     goto   46_while_cond
l_test_45:
    jmp     l_test_34_while_cond    #  72:     goto   34_while_cond
l_test_33:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 52 of <array 35 of <array 99 of <array 66 of <array 95 of <char>>>>>>
    .long    5
    .long   52
    .long   35
    .long   99
    .long   66
    .long   95
    .skip 1129728600








    # end of global data section
    #-----------------------------------------

    .end
##################################################
