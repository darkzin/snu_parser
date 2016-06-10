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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-28 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 48 of <array 66 of <array 24 of <array 46 of <array 58 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
l_f0_2_while_body:
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_8_while_cond:
    movl    $97, %eax               #   5:     if     97 > 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_9_while_body      
    jmp     l_f0_7                  #   6:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #   8:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
    jmp     l_f0_13_if_false        #  11:     goto   13_if_false
    call    dummyINTfunc            #  12:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     if     t2 < 9926 goto 15
    movl    $9926, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_15                
    jmp     l_f0_16                 #  14:     goto   16
l_f0_15:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_17                 #  17:     goto   17
l_f0_16:
    movl    $0, %eax                #  19:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f0_17:
    movzbl  -21(%ebp), %eax         #  21:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_11                 #  22:     goto   11
l_f0_13_if_false:
l_f0_11:
    leal    _str_1, %eax            #  25:     &()    t4 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  27:     call   WriteStr
    addl    $4, %esp               

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $13568, %eax            #   0:     if     13568 >= 30395 goto 1_if_true
    movl    $30395, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $97, %eax               #   3:     if     97 = 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   4:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_exit              
    movl    $97, %eax               #  10:     if     97 > 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  11:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_0                  #  16:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $32714, %eax            #  19:     param  0 <- 32714
    pushl   %eax                   
    call    WriteInt                #  20:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 60 of <array 84 of <array 72 of <array 83 of <array 19 of <bool>>>>>>> %ebp+8 ]
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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f2_exit              
    movl    $99, %eax               #   2:     return 99
    jmp     l_f2_exit              
    movl    $21789, %eax            #   3:     assign v3 <- 21789
    movl    %eax, 12(%ebp)         
    jmp     l_f2_1                  #   4:     goto   1
l_f2_1:
    call    dummyINTfunc            #   6:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f2_6                  #   7:     goto   6
l_f2_6:

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
    movl    $98, %eax               #   0:     if     98 < 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
l_test_7_while_cond:
    jmp     l_test_8_while_body     #  11:     goto   8_while_body
    jmp     l_test_6                #  12:     goto   6
l_test_8_while_body:
    jmp     l_test_exit            
    movl    $42756, %eax            #  15:     assign v1 <- 42756
    movl    %eax, v1               
    jmp     l_test_7_while_cond     #  16:     goto   7_while_cond
l_test_6:
    movl    $97, %eax               #  18:     assign v2 <- 97
    movb    %al, v2                
    jmp     l_test_12               #  19:     goto   12
l_test_12:
    jmp     l_test_17_if_true       #  21:     goto   17_if_true
    jmp     l_test_18_if_false      #  22:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  24:     goto   16
l_test_18_if_false:
l_test_16:
l_test_24_while_cond:
    jmp     l_test_23               #  28:     goto   23
    movl    $51172, %eax            #  29:     assign v1 <- 51172
    movl    %eax, v1               
    movl    $54587, %eax            #  30:     if     54587 > 99834 goto 28_if_true
    movl    $99834, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_28_if_true      
    jmp     l_test_29_if_false      #  31:     goto   29_if_false
l_test_28_if_true:
    jmp     l_test_27               #  33:     goto   27
l_test_29_if_false:
l_test_27:
    jmp     l_test_33_if_false      #  36:     goto   33_if_false
    jmp     l_test_31               #  37:     goto   31
l_test_33_if_false:
l_test_31:
    jmp     l_test_24_while_cond    #  40:     goto   24_while_cond
l_test_23:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
