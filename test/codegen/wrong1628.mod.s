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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
l_f0_5_while_cond:
    movl    $23878, %eax            #   2:     if     23878 = 72878 goto 6_while_body
    movl    $72878, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_6_while_body      
    jmp     l_f0_4                  #   3:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
l_f0_4:
    call    dummyCHARfunc           #   7:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     return t5
    jmp     l_f0_exit              
    jmp     l_f0_1                  #   9:     goto   1
l_f0_1:
    call    dummyBOOLfunc           #  11:     call   t6 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
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
    jmp     l_f1_4                  #   1:     goto   4
    jmp     l_f1_4                  #   2:     goto   4
l_f1_4:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   5:     goto   6
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    jmp     l_f1_10                 #   8:     goto   10
    movl    $1, %eax                #   9:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_11                 #  10:     goto   11
l_f1_10:
    movl    $0, %eax                #  12:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_11:
    movzbl  -13(%ebp), %eax         #  14:     if     t4 # t5 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #  15:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #  17:     goto   1_while_cond
l_f1_0:
l_f1_14_while_cond:
    jmp     l_f1_13                 #  20:     goto   13
l_f1_18_while_cond:
    jmp     l_f1_17                 #  22:     goto   17
    jmp     l_f1_18_while_cond      #  23:     goto   18_while_cond
l_f1_17:
l_f1_21_while_cond:
    jmp     l_f1_21_while_cond      #  26:     goto   21_while_cond
    jmp     l_f1_14_while_cond      #  27:     goto   14_while_cond
l_f1_13:
    call    dummyCHARfunc           #  29:     call   t6 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  30:     return t6
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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 100 of <array 20 of <array 95 of <array 72 of <array 84 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 77 of <array 81 of <array 79 of <array 62 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 17 of <array 30 of <array 100 of <array 21 of <array 13 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    movl    $57894, %eax            #   0:     param  0 <- 57894
    pushl   %eax                   
    call    f1                      #   1:     call   t4 <- f1
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 < 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_10_if_false        #   8:     goto   10_if_false
    jmp     l_f2_8                  #   9:     goto   8
l_f2_10_if_false:
l_f2_8:
    call    dummyBOOLfunc           #  12:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f2_13_while_cond:
    movl    $97, %eax               #  14:     if     97 < 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_14_while_body     
    jmp     l_f2_12                 #  15:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  17:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_1                  #  19:     goto   1
l_f2_1:
    movl    $89656, %eax            #  21:     param  0 <- 89656
    pushl   %eax                   
    call    f1                      #  22:     call   t6 <- f1
    addl    $4, %esp               
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  23:     return t6
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-28 ]

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
    movl    $8074, %eax             #   0:     mul    t0 <- 8074, 57301
    movl    $57301, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $44554, %eax            #   1:     if     44554 > t0 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    call    ReadInt                 #  10:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    leal    _str_1, %eax            #  11:     &()    t3 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               
l_test_8_while_cond:
    jmp     l_test_13               #  15:     goto   13
    jmp     l_test_13               #  16:     goto   13
l_test_13:
    jmp     l_test_9_while_body     #  18:     goto   9_while_body
    jmp     l_test_9_while_body     #  19:     goto   9_while_body
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  21:     goto   8_while_cond

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
