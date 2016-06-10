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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 31 of <array 63 of <array 73 of <array 50 of <array 70 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 51 of <array 45 of <array 92 of <array 77 of <array 18 of <bool>>>>>>> %ebp+20 ]

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
    movl    $1, %eax                #   0:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_2                  #   1:     goto   2
    jmp     l_f0_2                  #   2:     goto   2
    jmp     l_f0_2                  #   3:     goto   2
    jmp     l_f0_2                  #   4:     goto   2
    jmp     l_f0_2                  #   5:     goto   2
l_f0_2:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_4                  #   8:     goto   4
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_4:
    movzbl  -13(%ebp), %eax         #  11:     return t5
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f1_exit              
    call    WriteLn                 #   1:     call   WriteLn
    call    ReadInt                 #   2:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $v2       <char> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_6_if_false         #   2:     goto   6_if_false
    jmp     l_f2_4                  #   3:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $97, %eax               #   6:     return 97
    jmp     l_f2_exit              
    call    ReadInt                 #   7:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f2_1                  #   8:     goto   1
l_f2_1:
    call    dummyCHARfunc           #  10:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  11:     assign v2 <- t7
    movb    %al, -22(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 51 of <array 45 of <array 92 of <array 77 of <array 18 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 31 of <array 63 of <array 73 of <array 50 of <array 70 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]

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
    movl    $1, %eax                #   1:     if     1 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $0, %eax                #   4:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_8_if_false       #   8:     goto   8_if_false
    movl    $91902, %eax            #   9:     if     91902 = 62902 goto 10
    movl    $62902, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_10              
    jmp     l_test_11               #  10:     goto   11
l_test_10:
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_12               #  13:     goto   12
l_test_11:
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_12:
    movzbl  -14(%ebp), %eax         #  17:     assign v0 <- t1
    movb    %al, v0                
l_test_15_while_cond:
    movl    $97, %eax               #  19:     if     97 < 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_16_while_body   
    jmp     l_test_14               #  20:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  22:     goto   15_while_cond
l_test_14:
    jmp     l_test_20_if_false      #  24:     goto   20_if_false
    movl    $98, %eax               #  25:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_18               #  26:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_6                #  29:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $54703, %eax            #  32:     assign v2 <- 54703
    movl    %eax, v2               
    jmp     l_test_exit            
    leal    v4, %eax                #  34:     &()    t2 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  35:     param  3 <- t2
    pushl   %eax                   
    movl    $93460, %eax            #  36:     param  2 <- 93460
    pushl   %eax                   
    leal    v3, %eax                #  37:     &()    t3 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  38:     param  1 <- t3
    pushl   %eax                   
    movl    $99, %eax               #  39:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  40:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4
v3:                                 # <array 31 of <array 63 of <array 73 of <array 50 of <array 70 of <int>>>>>>
    .long    5
    .long   31
    .long   63
    .long   73
    .long   50
    .long   70
    .skip 1995966000
v4:                                 # <array 51 of <array 45 of <array 92 of <array 77 of <array 18 of <bool>>>>>>
    .long    5
    .long   51
    .long   45
    .long   92
    .long   77
    .long   18
    .skip 292640040








    # end of global data section
    #-----------------------------------------

    .end
##################################################
