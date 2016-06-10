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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 9 of <array 2 of <array 2 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 10 of <array 1 of <array 7 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -14(%ebp)   1  [ $v5       <char> %ebp-14 ]

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
    jmp     l_f0_exit              
    jmp     l_f0_exit              
l_f0_6_while_cond:
    movl    $1, %eax                #   3:     if     1 # 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #   4:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   6:     goto   6_while_cond
l_f0_5:
    call    dummyBOOLfunc           #   8:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   9:     assign v5 <- 99
    movb    %al, -14(%ebp)         
    jmp     l_f0_2                  #  10:     goto   2
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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 10 of <array 3 of <array 9 of <array 8 of <bool>>>>>>> %ebp+8 ]

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
    leal    _str_1, %eax            #   0:     &()    t5 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   4:     goto   3_while_body
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
    call    dummyCHARfunc           #   7:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   8:     if     t6 # 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #   9:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  11:     goto   9
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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 7 of <array 8 of <array 10 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t5
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t6
    jmp     l_f2_exit              
    movl    $79039, %eax            #   4:     add    t7 <- 79039, 50846
    movl    $50846, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     sub    t8 <- t7, 69285
    movl    $69285, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     assign v4 <- t8
    movl    %eax, -28(%ebp)        

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <array 7 of <array 8 of <array 10 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]

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
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   2:     if     98 < t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_4                #   5:     goto   4
l_test_4:
    movl    $100, %eax              #   7:     if     100 <= 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_8_if_true       
    jmp     l_test_9_if_false       #   8:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  10:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_1_while_cond     #  13:     goto   1_while_cond
l_test_0:
l_test_12_while_cond:
    call    dummyBOOLfunc           #  16:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #  17:     if     0 = t1 goto 13_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  18:     goto   11
l_test_13_while_body:
    jmp     l_test_15               #  20:     goto   15
l_test_15:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $41427, %eax            #  24:     assign v0 <- 41427
    movl    %eax, v0               
l_test_22_while_cond:
    movl    $98, %eax               #  26:     if     98 >= 97 goto 23_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_23_while_body   
    jmp     l_test_21               #  27:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  29:     goto   22_while_cond
l_test_21:
    jmp     l_test_12_while_cond    #  31:     goto   12_while_cond
l_test_11:
    movl    $68906, %eax            #  33:     assign v0 <- 68906
    movl    %eax, v0               
l_test_27_while_cond:
    movl    $97, %eax               #  35:     param  2 <- 97
    pushl   %eax                   
    movl    $99, %eax               #  36:     param  1 <- 99
    pushl   %eax                   
    leal    v1, %eax                #  37:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  38:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  39:     call   t3 <- f2
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  40:     if     t3 <= 98 goto 28_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_28_while_body   
    jmp     l_test_26               #  41:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  43:     goto   27_while_cond
l_test_26:
    call    dummyBOOLfunc           #  45:     call   t4 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <array 5 of <array 7 of <array 8 of <array 10 of <array 7 of <bool>>>>>>
    .long    5
    .long    5
    .long    7
    .long    8
    .long   10
    .long    7
    .skip 19600








    # end of global data section
    #-----------------------------------------

    .end
##################################################
