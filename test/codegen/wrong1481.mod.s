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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 64 of <array 53 of <array 80 of <array 99 of <int>>>>>>> %ebp+12 ]

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
    movl    $98, %eax               #   0:     if     98 <= 100 goto 4_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   1:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_if_false:
l_f0_3:
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
l_f0_10_while_cond:
    movl    $50884, %eax            #   9:     if     50884 <= 51134 goto 11_while_body
    movl    $51134, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_11_while_body     
    jmp     l_f0_9                  #  10:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  12:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_0                  #  14:     goto   0
l_f0_0:
    call    dummyBOOLfunc           #  16:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  17:     call   t5 <- dummyCHARfunc
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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 15 of <array 16 of <array 64 of <array 80 of <array 93 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -14(%ebp)   1  [ $v4       <bool> %ebp-14 ]

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
    movl    $24449, %eax            #   1:     if     24449 <= 11705 goto 2_while_body
    movl    $11705, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $0, %eax                #   4:     assign v4 <- 0
    movb    %al, -14(%ebp)         
    movl    $64703, %eax            #   5:     if     64703 > 44383 goto 6_if_true
    movl    $44383, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   6:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_1_while_cond       #  11:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_10                 #  13:     goto   10
    jmp     l_f1_10                 #  14:     goto   10
l_f1_10:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_12                 #  17:     goto   12
    movl    $0, %eax                #  18:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_12:
    movzbl  -13(%ebp), %eax         #  20:     return t3
    jmp     l_f1_exit              
l_f1_19_while_cond:
    jmp     l_f1_18                 #  22:     goto   18
    jmp     l_f1_19_while_cond      #  23:     goto   19_while_cond
l_f1_18:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 82 of <array 73 of <array 60 of <array 62 of <array 22 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     if     t4 = 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_2                 
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f2_4:
    movzbl  -18(%ebp), %eax         #  10:     return t5
    jmp     l_f2_exit              
l_f2_7_while_cond:
    movl    $1, %eax                #  12:     if     1 # 0 goto 8_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #  13:     goto   6
l_f2_8_while_body:
    movl    $79023, %eax            #  15:     mul    t6 <- 79023, 63725
    movl    $63725, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     if     t6 <= 69683 goto 11
    movl    $69683, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_11                
    jmp     l_f2_12                 #  17:     goto   12
l_f2_11:
    movl    $1, %eax                #  19:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_13                 #  20:     goto   13
l_f2_12:
    movl    $0, %eax                #  22:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f2_13:
    movzbl  -25(%ebp), %eax         #  24:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_7_while_cond       #  25:     goto   7_while_cond
l_f2_6:

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_test_3_while_cond:
    jmp     l_test_2                #   3:     goto   2
    jmp     l_test_3_while_cond     #   4:     goto   3_while_cond
l_test_2:
    movl    $64515, %eax            #   6:     assign v0 <- 64515
    movl    %eax, v0               
l_test_9_while_cond:
    movl    $97, %eax               #   8:     if     97 # 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_10_while_body   
    jmp     l_test_8                #   9:     goto   8
l_test_10_while_body:
    movl    $1, %eax                #  11:     if     1 # 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_13_if_true      
    jmp     l_test_14_if_false      #  12:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  14:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $94355, %eax            #  17:     if     94355 <= 49222 goto 17_if_true
    movl    $49222, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_17_if_true      
    jmp     l_test_18_if_false      #  18:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  20:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $100, %eax              #  23:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  24:     call   WriteChar
    addl    $4, %esp               
    movl    $0, %eax                #  25:     if     0 = 1 goto 22_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_22_if_true      
    jmp     l_test_23_if_false      #  26:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  28:     goto   21
l_test_23_if_false:
l_test_21:
l_test_26_while_cond:
    jmp     l_test_25               #  32:     goto   25
    jmp     l_test_26_while_cond    #  33:     goto   26_while_cond
l_test_25:
    movl    $47968, %eax            #  35:     assign v0 <- 47968
    movl    %eax, v0               
    movl    $37846, %eax            #  36:     if     37846 < 31708 goto 30_if_true
    movl    $31708, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_30_if_true      
    jmp     l_test_31_if_false      #  37:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_29               #  39:     goto   29
l_test_31_if_false:
l_test_29:
    jmp     l_test_33               #  42:     goto   33
l_test_33:
    jmp     l_test_9_while_cond     #  44:     goto   9_while_cond
l_test_8:
    call    dummyINTfunc            #  46:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
