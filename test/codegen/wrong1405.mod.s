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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
l_f0_2_while_cond:
    call    ReadInt                 #   2:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f0_7_while_cond:
    movl    $99, %eax               #   4:     if     99 > 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_8_while_body      
    jmp     l_f0_6                  #   5:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #   7:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_2_while_cond       #   9:     goto   2_while_cond
l_f0_11_while_cond:
    call    dummyBOOLfunc           #  11:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  12:     if     t5 = 1 goto 12_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_12_while_body     
    jmp     l_f0_10                 #  13:     goto   10
l_f0_12_while_body:
l_f0_14_while_cond:
    movl    $82094, %eax            #  16:     if     82094 <= 16677 goto 15_while_body
    movl    $16677, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_15_while_body     
    jmp     l_f0_13                 #  17:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  19:     goto   14_while_cond
l_f0_13:
l_f0_18_while_cond:
    movl    $56425, %eax            #  22:     if     56425 >= 28320 goto 19_while_body
    movl    $28320, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_19_while_body     
    jmp     l_f0_17                 #  23:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  25:     goto   18_while_cond
l_f0_17:
    movl    $0, %eax                #  27:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_11_while_cond      #  28:     goto   11_while_cond
l_f0_10:

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 63 of <array 56 of <array 90 of <array 85 of <array 93 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 100 of <array 1 of <array 48 of <array 48 of <array 37 of <int>>>>>>> %ebp+16 ]
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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v4 <- t4
    movb    %al, -15(%ebp)         
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   3:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 61 of <array 97 of <array 78 of <array 11 of <int>>>>>>> %ebp+8 ]

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
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t5
    jmp     l_f2_exit              
    leal    _str_1, %eax            #   4:     &()    t6 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-24 ]

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t0
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
l_test_6_while_cond:
    jmp     l_test_5                #   5:     goto   5
    jmp     l_test_exit            
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
    jmp     l_test_2                #   9:     goto   2
l_test_2:
l_test_10_while_cond:
    jmp     l_test_13               #  12:     goto   13
l_test_13:
    movl    $99, %eax               #  14:     if     99 > 99 goto 17_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_17_if_true      
    jmp     l_test_18_if_false      #  15:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  17:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $6709, %eax             #  20:     assign v1 <- 6709
    movl    %eax, v1               
    jmp     l_test_exit            
    jmp     l_test_10_while_cond    #  22:     goto   10_while_cond
    movl    $98, %eax               #  23:     if     98 >= 100 goto 26
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_26              
    jmp     l_test_27               #  24:     goto   27
l_test_26:
    movl    $1, %eax                #  26:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_28               #  27:     goto   28
l_test_27:
    movl    $0, %eax                #  29:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_28:
    movzbl  -17(%ebp), %eax         #  31:     param  1 <- t1
    pushl   %eax                   
    movl    $54391, %eax            #  32:     param  0 <- 54391
    pushl   %eax                   
    call    f0                      #  33:     call   t2 <- f0
    addl    $8, %esp               
    movb    %al, -18(%ebp)         
    movl    $1, %eax                #  34:     if     1 # t2 goto 23_if_true
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_23_if_true      
    jmp     l_test_24_if_false      #  35:     goto   24_if_false
l_test_23_if_true:
    call    dummyProcedure          #  37:     call   dummyProcedure
    movl    $80375, %eax            #  38:     param  0 <- 80375
    pushl   %eax                   
    call    WriteInt                #  39:     call   WriteInt
    addl    $4, %esp               
    movl    $63482, %eax            #  40:     param  0 <- 63482
    pushl   %eax                   
    call    WriteInt                #  41:     call   WriteInt
    addl    $4, %esp               
    leal    _str_2, %eax            #  42:     &()    t3 <- _str_2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  43:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  44:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_22               #  45:     goto   22
l_test_24_if_false:
l_test_22:
    movl    $31175, %eax            #  48:     assign v1 <- 31175
    movl    %eax, v1               

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
_str_2:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
