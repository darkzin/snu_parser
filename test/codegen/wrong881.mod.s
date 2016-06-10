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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_0                  #   2:     goto   0
    movl    $97, %eax               #   3:     if     97 > 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
    movl    $98, %eax               #  12:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  13:     call   WriteChar
    addl    $4, %esp               
l_f0_12_while_cond:
    jmp     l_f0_11                 #  15:     goto   11
    jmp     l_f0_12_while_cond      #  16:     goto   12_while_cond
l_f0_11:

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 8 of <array 4 of <array 4 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 7 of <array 10 of <array 4 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $93744, %eax            #   0:     if     93744 >= 74784 goto 1_if_true
    movl    $74784, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    f0                      #   3:     call   f0
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_exit              
l_f1_7_while_cond:
    movl    $13563, %eax            #   9:     if     13563 > 53398 goto 8_while_body
    movl    $53398, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_8_while_body      
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_while_body:
    movl    $97, %eax               #  12:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  13:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_7_while_cond       #  14:     goto   7_while_cond
l_f1_6:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 6 of <array 5 of <array 4 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
l_f2_1_while_cond:
    jmp     l_f2_4_if_true          #   1:     goto   4_if_true
    jmp     l_f2_4_if_true          #   2:     goto   4_if_true
    jmp     l_f2_5_if_false         #   3:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   5:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
    call    dummyBOOLfunc           #   9:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  10:     if     t0 = 1 goto 12_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_12_if_true        
    jmp     l_f2_12_if_true         #  11:     goto   12_if_true
l_f2_12_if_true:
    jmp     l_f2_11                 #  13:     goto   11
l_f2_11:
    movl    $30592, %eax            #  15:     if     30592 <= 3242 goto 17_if_true
    movl    $3242, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  16:     goto   18_if_false
l_f2_17_if_true:
    movl    $0, %eax                #  18:     return 0
    jmp     l_f2_exit              
    movl    $99, %eax               #  19:     if     99 = 99 goto 22
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_22                
    jmp     l_f2_23                 #  20:     goto   23
l_f2_22:
    movl    $1, %eax                #  22:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_24                 #  23:     goto   24
l_f2_23:
    movl    $0, %eax                #  25:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f2_24:
    movzbl  -14(%ebp), %eax         #  27:     return t1
    jmp     l_f2_exit              
    jmp     l_f2_16                 #  28:     goto   16
l_f2_18_if_false:
l_f2_16:

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
l_test_5_while_cond:
    jmp     l_test_4                #   3:     goto   4
    jmp     l_test_5_while_cond     #   4:     goto   5_while_cond
l_test_4:
    movl    $100, %eax              #   6:     if     100 = 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_8_if_true       
    jmp     l_test_9_if_false       #   7:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #   9:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_11               #  12:     goto   11
l_test_11:
    jmp     l_test_1                #  14:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    movl    $98, %eax               #  18:     assign v0 <- 98
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
