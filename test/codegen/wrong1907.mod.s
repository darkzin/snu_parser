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
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <bool> %ebp-33 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 86 of <array 10 of <array 96 of <array 75 of <array 48 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $69971, %eax            #   0:     add    t4 <- 69971, 72772
    movl    $72772, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t5 <- t4, 7029
    movl    $7029, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t6 <- t5, 86960
    movl    $86960, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $65575, %eax            #   3:     if     65575 <= t6 goto 1_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   4:     goto   2_if_false
l_f0_1_if_true:
    movl    $69078, %eax            #   6:     return 69078
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   7:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyINTfunc            #  10:     call   t7 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    $28467, %eax            #  11:     add    t8 <- 28467, 71609
    movl    $71609, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  12:     if     t7 <= t8 goto 6
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_6                 
    jmp     l_f0_7                  #  13:     goto   7
l_f0_6:
    movl    $1, %eax                #  15:     assign t9 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_8                  #  16:     goto   8
l_f0_7:
    movl    $0, %eax                #  18:     assign t9 <- 0
    movb    %al, -33(%ebp)         
l_f0_8:
    movzbl  -33(%ebp), %eax         #  20:     assign v0 <- t9
    movb    %al, 8(%ebp)           
    jmp     l_f0_12_if_false        #  21:     goto   12_if_false
l_f0_14_while_cond:
    movl    $54809, %eax            #  23:     if     54809 < 75746 goto 15_while_body
    movl    $75746, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_15_while_body     
    jmp     l_f0_13                 #  24:     goto   13
l_f0_15_while_body:
l_f0_18_while_cond:
    jmp     l_f0_18_while_cond      #  27:     goto   18_while_cond
    jmp     l_f0_14_while_cond      #  28:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_10                 #  30:     goto   10
l_f0_12_if_false:
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 34 of <array 9 of <array 100 of <array 8 of <array 33 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 78 of <array 94 of <array 91 of <array 4 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 46 of <array 40 of <array 59 of <array 97 of <array 3 of <bool>>>>>>> %ebp+20 ]
    #    -16(%ebp)   4  [ $v4       <int> %ebp-16 ]

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
    movl    $22497, %eax            #   0:     assign v4 <- 22497
    movl    %eax, -16(%ebp)        
    movl    $35065, %eax            #   1:     if     35065 = 91177 goto 2_if_true
    movl    $91177, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    movl    $99, %eax               #   4:     if     99 <= 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   5:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_1                  #  10:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $100, %eax              #  13:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  14:     call   WriteChar
    addl    $4, %esp               

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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 47 of <array 21 of <array 6 of <array 68 of <array 89 of <bool>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_exit              
    movl    $27145, %eax            #   1:     assign v0 <- 27145
    movl    %eax, 8(%ebp)          
    movl    $4622, %eax             #   2:     if     4622 > 78756 goto 3_if_true
    movl    $78756, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
l_f2_3_if_true:
l_f2_10_while_cond:
    jmp     l_f2_9                  #   6:     goto   9
    jmp     l_f2_10_while_cond      #   7:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_6                  #   9:     goto   6
l_f2_6:
    jmp     l_f2_2                  #  11:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 86 of <array 10 of <array 96 of <array 75 of <array 48 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    movl    $0, %eax                #   0:     param  2 <- 0
    pushl   %eax                   
    leal    v0, %eax                #   1:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t0
    pushl   %eax                   
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t1 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_7               
    jmp     l_test_2                #   5:     goto   2
l_test_7:
    jmp     l_test_2                #   7:     goto   2
    movl    $1, %eax                #   8:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_3                #   9:     goto   3
l_test_2:
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_3:
    movzbl  -18(%ebp), %eax         #  13:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  14:     call   t3 <- f0
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_exit            

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
v0:                                 # <array 86 of <array 10 of <array 96 of <array 75 of <array 48 of <int>>>>>>
    .long    5
    .long   86
    .long   10
    .long   96
    .long   75
    .long   48
    .skip 1188864000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
