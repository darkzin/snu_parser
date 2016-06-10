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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    movl    $58521, %eax            #   0:     add    t4 <- 58521, 37738
    movl    $37738, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 53654
    movl    $53654, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v2 <- t5
    movl    %eax, 12(%ebp)         
    movl    $25992, %eax            #   3:     div    t6 <- 25992, 47569
    movl    $47569, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t6 >= 63840 goto 2_if_true
    movl    $63840, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   5:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    jmp     l_f0_6_while_cond       #   8:     goto   6_while_cond
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyProcedure          #  12:     call   dummyProcedure

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 93 of <array 6 of <array 8 of <array 89 of <array 64 of <bool>>>>>>> %ebp+12 ]

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
    jmp     l_f1_3                  #   1:     goto   3
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
l_f1_3:
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_7_while_cond:
    jmp     l_f1_6                  #   7:     goto   6
    movl    $100, %eax              #   8:     param  2 <- 100
    pushl   %eax                   
    movl    $43888, %eax            #   9:     param  1 <- 43888
    pushl   %eax                   
    movl    $0, %eax                #  10:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  11:     call   t4 <- f0
    addl    $12, %esp              
    movb    %al, -13(%ebp)         
l_f1_11_while_cond:
    movl    $99, %eax               #  13:     if     99 <= 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_12_while_body     
    jmp     l_f1_10                 #  14:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  16:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_7_while_cond       #  18:     goto   7_while_cond
l_f1_6:
    call    WriteLn                 #  20:     call   WriteLn
    jmp     l_f1_14                 #  21:     goto   14
l_f1_14:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 83 of <array 96 of <array 84 of <array 38 of <array 90 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 78 of <array 82 of <array 95 of <array 85 of <array 91 of <char>>>>>>> %ebp+12 ]
    #    -26(%ebp)   1  [ $v3       <char> %ebp-26 ]

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
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $98, %eax               #   1:     assign v3 <- 98
    movb    %al, -26(%ebp)         
l_f2_3_while_cond:
    jmp     l_f2_2                  #   3:     goto   2
    movl    $100, %eax              #   4:     param  2 <- 100
    pushl   %eax                   
    movl    $87518, %eax            #   5:     param  1 <- 87518
    pushl   %eax                   
    jmp     l_f2_6                  #   6:     goto   6
    jmp     l_f2_6                  #   7:     goto   6
    jmp     l_f2_6                  #   8:     goto   6
l_f2_6:
    movl    $1, %eax                #  10:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_8                  #  11:     goto   8
    movl    $0, %eax                #  12:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f2_8:
    movzbl  -17(%ebp), %eax         #  14:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  15:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -18(%ebp)         
    call    ReadInt                 #  16:     call   t7 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $97, %eax               #  17:     if     97 >= 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  18:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  20:     goto   13
l_f2_15_if_false:
l_f2_13:
    call    dummyBOOLfunc           #  23:     call   t8 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_f2_3_while_cond       #  24:     goto   3_while_cond
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 78 of <array 82 of <array 95 of <array 85 of <array 91 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 83 of <array 96 of <array 84 of <array 38 of <array 90 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    movl    $1, %eax                #   0:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_exit            
l_test_3_while_cond:
    leal    v2, %eax                #   3:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  1 <- t0
    pushl   %eax                   
    leal    v1, %eax                #   5:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #   7:     call   t2 <- f2
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #   9:     goto   7_while_cond
    jmp     l_test_3_while_cond     #  10:     goto   3_while_cond
    movl    $99, %eax               #  11:     assign v3 <- 99
    movb    %al, v3                
l_test_11_while_cond:
    call    dummyCHARfunc           #  13:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $98, %eax               #  14:     if     98 # t3 goto 12_while_body
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_12_while_body   
    jmp     l_test_10               #  15:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  17:     goto   11_while_cond
l_test_10:

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
    .align   4
v1:                                 # <array 83 of <array 96 of <array 84 of <array 38 of <array 90 of <bool>>>>>>
    .long    5
    .long   83
    .long   96
    .long   84
    .long   38
    .long   90
    .skip -2005920256
v2:                                 # <array 78 of <array 82 of <array 95 of <array 85 of <array 91 of <char>>>>>>
    .long    5
    .long   78
    .long   82
    .long   95
    .long   85
    .long   91
    .skip 404973404
v3:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
