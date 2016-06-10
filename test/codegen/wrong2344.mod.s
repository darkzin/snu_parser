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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 93 of <array 3 of <array 79 of <array 54 of <array 84 of <char>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    jmp     l_f0_3                  #   0:     goto   3
    jmp     l_f0_3                  #   1:     goto   3
l_f0_3:
    jmp     l_f0_0                  #   3:     goto   0
l_f0_0:
l_f0_11_while_cond:
    movl    $97817, %eax            #   6:     if     97817 > 75064 goto 14
    movl    $75064, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_14                
    jmp     l_f0_15                 #   7:     goto   15
l_f0_14:
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_16                 #  10:     goto   16
l_f0_15:
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_16:
    movzbl  -13(%ebp), %eax         #  14:     assign v2 <- t3
    movb    %al, -15(%ebp)         
    jmp     l_f0_11_while_cond      #  15:     goto   11_while_cond
    jmp     l_f0_7                  #  16:     goto   7
l_f0_7:
    call    dummyBOOLfunc           #  18:     call   t4 <- dummyBOOLfunc
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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    movl    $534, %eax              #   2:     return 534
    jmp     l_f1_exit              
l_f1_8_while_cond:
    movl    $99, %eax               #   4:     if     99 <= 99 goto 9_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_9_while_body      
    jmp     l_f1_7                  #   5:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #   7:     goto   8_while_cond
l_f1_7:
l_f1_12_while_cond:
    movl    $41049, %eax            #  10:     if     41049 > 33601 goto 13_while_body
    movl    $33601, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_13_while_body     
    jmp     l_f1_11                 #  11:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  13:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_1                  #  15:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $4740, %eax             #  18:     sub    t4 <- 4740, 64092
    movl    $64092, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     sub    t5 <- t4, 46840
    movl    $46840, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     add    t6 <- t5, 79869
    movl    $79869, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     return t6
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v2       <char> %ebp-16 ]

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
    movl    $56236, %eax            #   0:     if     56236 > 1372 goto 1_if_true
    movl    $1372, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $98, %eax               #   3:     if     98 <= 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_5                 
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   7:     goto   7
l_f2_6:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  11:     assign v1 <- t3
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #  12:     return 98
    jmp     l_f2_exit              
    movl    $98, %eax               #  13:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  14:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  17:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  18:     return t4
    jmp     l_f2_exit              
    movl    $100, %eax              #  19:     assign v2 <- 100
    movb    %al, -16(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    movl    $88528, %eax            #   0:     if     88528 # 79710 goto 1_if_true
    movl    $79710, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    leal    _str_1, %eax            #   3:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   5:     call   WriteStr
    addl    $4, %esp               
    leal    _str_2, %eax            #   6:     &()    t1 <- _str_2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   8:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #  12:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  13:     assign v0 <- t2
    movb    %al, v0                
l_test_8_while_cond:
    jmp     l_test_7                #  15:     goto   7
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  17:     goto   12_while_cond
    jmp     l_test_8_while_cond     #  18:     goto   8_while_cond
l_test_7:
l_test_15_while_cond:
    jmp     l_test_16_while_body    #  21:     goto   16_while_body
    jmp     l_test_16_while_body    #  22:     goto   16_while_body
    jmp     l_test_16_while_body    #  23:     goto   16_while_body
    jmp     l_test_16_while_body    #  24:     goto   16_while_body
l_test_16_while_body:
    movl    $81277, %eax            #  26:     if     81277 = 23533 goto 24_if_true
    movl    $23533, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_24_if_true      
    jmp     l_test_25_if_false      #  27:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  29:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_15_while_cond    #  32:     goto   15_while_cond
l_test_28_while_cond:
    movl    $99, %eax               #  34:     if     99 >= 99 goto 29_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_29_while_body   
    jmp     l_test_27               #  35:     goto   27
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  37:     goto   28_while_cond
l_test_27:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
