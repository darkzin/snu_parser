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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $99, %eax               #   1:     if     99 <= 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   2:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   4:     goto   5
l_f0_7_if_false:
l_f0_5:
    call    ReadInt                 #   7:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  11:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  12:     return t6
    jmp     l_f0_exit              
l_f0_15_while_cond:
    jmp     l_f0_15_while_cond      #  14:     goto   15_while_cond
    movl    $97, %eax               #  15:     return 97
    jmp     l_f0_exit              
    movl    $100, %eax              #  16:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_11                 #  17:     goto   11
l_f0_11:

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 76 of <array 54 of <array 13 of <array 100 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -21(%ebp)   1  [ $v3       <char> %ebp-21 ]

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
l_f1_1_while_cond:
    movl    $98, %eax               #   1:     if     98 >= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $98, %eax               #   4:     assign v3 <- 98
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #   5:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               
    movl    $67623, %eax            #   7:     if     67623 >= 90003 goto 7
    movl    $90003, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7                 
    jmp     l_f1_8                  #   8:     goto   8
l_f1_7:
    movl    $1, %eax                #  10:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_9                  #  11:     goto   9
l_f1_8:
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_9:
    movzbl  -13(%ebp), %eax         #  15:     return t5
    jmp     l_f1_exit              
    movl    $0, %eax                #  16:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  17:     goto   1_while_cond
l_f1_0:
    leal    _str_1, %eax            #  19:     &()    t6 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  21:     call   WriteStr
    addl    $4, %esp               
l_f1_14_while_cond:
    jmp     l_f1_15_while_body      #  23:     goto   15_while_body
l_f1_15_while_body:
    movl    $0, %eax                #  25:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_18                 #  26:     goto   18
l_f1_18:
    jmp     l_f1_14_while_cond      #  28:     goto   14_while_cond

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <bool> %ebp-14 ]

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
    movl    $97, %eax               #   0:     return 97
    jmp     l_f2_exit              
l_f2_2_while_cond:
    call    dummyProcedure          #   2:     call   dummyProcedure
    movl    $99, %eax               #   3:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #   4:     goto   2_while_cond
    jmp     l_f2_7                  #   5:     goto   7
    jmp     l_f2_7                  #   6:     goto   7
l_f2_7:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_9                  #   9:     goto   9
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_9:
    movzbl  -13(%ebp), %eax         #  12:     assign v2 <- t5
    movb    %al, -14(%ebp)         

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
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]

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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 > 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    call    dummyBOOLfunc           #   4:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
    jmp     l_test_10_if_false      #   7:     goto   10_if_false
    jmp     l_test_8                #   8:     goto   8
l_test_10_if_false:
l_test_8:
l_test_12_while_cond:
    jmp     l_test_11               #  12:     goto   11
    jmp     l_test_12_while_cond    #  13:     goto   12_while_cond
l_test_11:
    jmp     l_test_1_while_cond     #  15:     goto   1_while_cond
l_test_0:
    jmp     l_test_16_if_false      #  17:     goto   16_if_false
    jmp     l_test_exit            
    movl    $100, %eax              #  19:     assign v0 <- 100
    movb    %al, v0                
l_test_20_while_cond:
    movl    $1, %eax                #  21:     if     1 # 1 goto 21_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_21_while_body   
    jmp     l_test_19               #  22:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  24:     goto   20_while_cond
l_test_19:
    call    dummyCHARfunc           #  26:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  27:     param  0 <- t1
    pushl   %eax                   
    call    WriteChar               #  28:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_14               #  29:     goto   14
l_test_16_if_false:
l_test_14:
    call    dummyBOOLfunc           #  32:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_28               #  33:     goto   28
l_test_28:
    movl    $98, %eax               #  35:     param  0 <- 98
    pushl   %eax                   
    call    f2                      #  36:     call   t3 <- f2
    addl    $4, %esp               
    movb    %al, -16(%ebp)         
    jmp     l_test_25               #  37:     goto   25
l_test_25:
    call    f0                      #  39:     call   t4 <- f0
    movb    %al, -17(%ebp)         

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
