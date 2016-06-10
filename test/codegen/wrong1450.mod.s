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
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 54 of <array 60 of <array 93 of <array 97 of <array 85 of <char>>>>>>> %ebp+8 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    jmp     l_f0_2                  #   1:     goto   2
    jmp     l_f0_2                  #   2:     goto   2
    jmp     l_f0_2                  #   3:     goto   2
    jmp     l_f0_2                  #   4:     goto   2
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #  10:     return t1
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  11:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #  12:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_17                 #  13:     goto   17
    movl    $0, %eax                #  14:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f0_17:
    movzbl  -14(%ebp), %eax         #  16:     if     t2 # t3 goto 11
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_11                
    jmp     l_f0_12                 #  17:     goto   12
l_f0_11:
    movl    $1, %eax                #  19:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_13                 #  20:     goto   13
l_f0_12:
    movl    $0, %eax                #  22:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f0_13:
    movzbl  -16(%ebp), %eax         #  24:     return t4
    jmp     l_f0_exit              
    call    dummyINTfunc            #  25:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 23 of <array 11 of <array 73 of <array 22 of <array 55 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 42 of <array 43 of <array 30 of <array 72 of <array 86 of <char>>>>>>> %ebp+16 ]

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
    movl    $93149, %eax            #   0:     if     93149 <= 19990 goto 1_if_true
    movl    $19990, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    WriteLn                 #   7:     call   WriteLn
    call    dummyINTfunc            #   8:     call   t1 <- dummyINTfunc
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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 28 of <array 22 of <array 34 of <array 59 of <char>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v3       <char> %ebp-16 ]

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
    movl    $21820, %eax            #   0:     if     21820 <= 9530 goto 1_if_true
    movl    $9530, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_if_false:
l_f2_4:
l_f2_8_while_cond:
    jmp     l_f2_7                  #   8:     goto   7
    jmp     l_f2_8_while_cond       #   9:     goto   8_while_cond
l_f2_7:
    movl    $97, %eax               #  11:     if     97 >= 98 goto 11
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_11                
    jmp     l_f2_12                 #  12:     goto   12
l_f2_11:
    movl    $1, %eax                #  14:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_13                 #  15:     goto   13
l_f2_12:
    movl    $0, %eax                #  17:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_13:
    movzbl  -13(%ebp), %eax         #  19:     assign v2 <- t1
    movb    %al, -15(%ebp)         
l_f2_16_while_cond:
    jmp     l_f2_16_while_cond      #  21:     goto   16_while_cond
    movl    $100, %eax              #  22:     assign v3 <- 100
    movb    %al, -16(%ebp)         
    movl    $91994, %eax            #  23:     return 91994
    jmp     l_f2_exit              
l_f2_21_while_cond:
    jmp     l_f2_20                 #  25:     goto   20
    jmp     l_f2_21_while_cond      #  26:     goto   21_while_cond
l_f2_20:
    movl    $63977, %eax            #  28:     assign v0 <- 63977
    movl    %eax, 8(%ebp)          
l_f2_25_while_cond:
    jmp     l_f2_24                 #  30:     goto   24
    jmp     l_f2_25_while_cond      #  31:     goto   25_while_cond
l_f2_24:
    movl    $33903, %eax            #  33:     return 33903
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  34:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #  37:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f2_30_while_cond:
l_f2_33_while_cond:
    movl    $73609, %eax            #  40:     if     73609 <= 42245 goto 34_while_body
    movl    $42245, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_34_while_body     
    jmp     l_f2_32                 #  41:     goto   32
l_f2_34_while_body:
    jmp     l_f2_33_while_cond      #  43:     goto   33_while_cond
l_f2_32:
    jmp     l_f2_30_while_cond      #  45:     goto   30_while_cond

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1                #   1:     goto   1
l_test_1:
    jmp     l_test_exit            

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
