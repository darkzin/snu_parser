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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 5 of <array 8 of <array 1 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyProcedure          #   1:     call   dummyProcedure
    movl    $32229, %eax            #   2:     add    t4 <- 32229, 496
    movl    $496, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t4 <= 97218 goto 3_if_true
    movl    $97218, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   4:     goto   4_if_false
l_f0_3_if_true:
    call    dummyCHARfunc           #   6:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $50866, %eax            #   7:     assign v1 <- 50866
    movl    %eax, 12(%ebp)         
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #   9:     goto   9_while_cond
    call    ReadInt                 #  10:     call   t6 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_f0_2                  #  11:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 7 of <array 7 of <array 5 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 3 of <array 9 of <array 1 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    movl    $98, %eax               #   0:     return 98
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $70080, %eax            #   2:     if     70080 > 67064 goto 3
    movl    $67064, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_3                 
    jmp     l_f1_4                  #   3:     goto   4
l_f1_3:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_5                  #   6:     goto   5
l_f1_4:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_5:
    movzbl  -14(%ebp), %eax         #  10:     assign v2 <- t4
    movb    %al, 16(%ebp)          

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_6                  #   2:     goto   6
l_f2_6:
    jmp     l_f2_3                  #   4:     goto   3
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -18(%ebp)         
l_f2_4:
    movzbl  -18(%ebp), %eax         #  10:     return t3
    jmp     l_f2_exit              
    movl    $22281, %eax            #  11:     mul    t4 <- 22281, 5185
    movl    $5185, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     div    t5 <- t4, 71192
    movl    $71192, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     div    t6 <- t5, 12482
    movl    $12482, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     mul    t7 <- t6, 40103
    movl    $40103, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     mul    t8 <- t7, 10146
    movl    $10146, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     mul    t9 <- t8, 3543
    movl    $3543, %ebx            
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  17:     div    t10 <- t9, 59055
    movl    $59055, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $55586, %eax            #  18:     if     55586 = t10 goto 10
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #  19:     goto   11
l_f2_10:
    movl    $1, %eax                #  21:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_12                 #  22:     goto   12
l_f2_11:
    movl    $0, %eax                #  24:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_12:
    movzbl  -17(%ebp), %eax         #  26:     return t11
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <array 3 of <array 9 of <array 1 of <array 3 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <array 7 of <array 7 of <array 5 of <array 7 of <int>>>>>>> %ebp-20 ]
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
    movl    $99, %eax               #   0:     if     99 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
    jmp     l_test_5                #   5:     goto   5
l_test_7_if_false:
l_test_5:
l_test_9_while_cond:
    movl    $99, %eax               #   9:     if     99 < 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_10_while_body   
    jmp     l_test_8                #  10:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  12:     goto   9_while_cond
l_test_8:
    jmp     l_test_0                #  14:     goto   0
l_test_2_if_false:
l_test_0:
l_test_13_while_cond:
    movl    $1, %eax                #  18:     param  2 <- 1
    pushl   %eax                   
    leal    v1, %eax                #  19:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     param  1 <- t0
    pushl   %eax                   
    leal    v0, %eax                #  21:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  23:     call   t2 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  24:     if     t2 > 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_14_while_body   
    jmp     l_test_12               #  25:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  27:     goto   13_while_cond
l_test_12:
    movl    $0, %eax                #  29:     assign v2 <- 0
    movb    %al, v2                

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
v0:                                 # <array 5 of <array 7 of <array 7 of <array 5 of <array 7 of <int>>>>>>
    .long    5
    .long    5
    .long    7
    .long    7
    .long    5
    .long    7
    .skip 34300
v1:                                 # <array 7 of <array 3 of <array 9 of <array 1 of <array 3 of <char>>>>>>
    .long    5
    .long    7
    .long    3
    .long    9
    .long    1
    .long    3
    .skip  567
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
