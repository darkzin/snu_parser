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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <char>>> %ebp-52 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 8 of <array 5 of <array 5 of <array 7 of <int>>>>>>> %ebp+8 ]
    #    -56(%ebp)   4  [ $v1       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $14597, %eax            #   3:     div    t1 <- 14597, 56748
    movl    $56748, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     mul    t2 <- t1, 33154
    movl    $33154, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     mul    t3 <- t2, 62177
    movl    $62177, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     mul    t4 <- t3, 78568
    movl    $78568, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     mul    t5 <- t4, 12039
    movl    $12039, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     add    t6 <- t5, 51790
    movl    $51790, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     assign v1 <- t6
    movl    %eax, -56(%ebp)        
l_f0_3_while_cond:
    call    dummyBOOLfunc           #  11:     call   t7 <- dummyBOOLfunc
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  12:     if     t7 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4_while_body      
    jmp     l_f0_2                  #  13:     goto   2
l_f0_4_while_body:
l_f0_6_while_cond:
    jmp     l_f0_6_while_cond       #  16:     goto   6_while_cond
    movl    $100, %eax              #  17:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  18:     call   WriteChar
    addl    $4, %esp               
    call    ReadInt                 #  19:     call   t8 <- ReadInt
    movl    %eax, -48(%ebp)        
    leal    _str_2, %eax            #  20:     &()    t9 <- _str_2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  21:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #  22:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_3_while_cond       #  23:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $44, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
    movl    $43282, %eax            #   0:     div    t0 <- 43282, 86049
    movl    $86049, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v1 <- t0
    movl    %eax, -24(%ebp)        
    jmp     l_f1_2_if_true          #   2:     goto   2_if_true
l_f1_2_if_true:
l_f1_6_while_cond:
    movl    $78765, %eax            #   5:     if     78765 > 66687 goto 7_while_body
    movl    $66687, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    movl    $24994, %eax            #  10:     if     24994 = 66868 goto 10
    movl    $66868, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_11                 #  11:     goto   11
l_f1_10:
    movl    $1, %eax                #  13:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_12                 #  14:     goto   12
l_f1_11:
    movl    $0, %eax                #  16:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_f1_12:
    movzbl  -17(%ebp), %eax         #  18:     return t1
    jmp     l_f1_exit              
    movl    $13597, %eax            #  19:     if     13597 = 14763 goto 15_if_true
    movl    $14763, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  20:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  22:     goto   14
l_f1_16_if_false:
l_f1_14:
    jmp     l_f1_20_if_false        #  25:     goto   20_if_false
    jmp     l_f1_18                 #  26:     goto   18
l_f1_20_if_false:
l_f1_18:
    jmp     l_f1_1                  #  29:     goto   1
l_f1_1:
    call    dummyBOOLfunc           #  31:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  32:     if     t2 = 1 goto 22_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_22_if_true        
    jmp     l_f1_22_if_true         #  33:     goto   22_if_true
l_f1_22_if_true:
    jmp     l_f1_21                 #  35:     goto   21
l_f1_21:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 6 of <array 1 of <array 9 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 10 of <array 7 of <array 5 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 5 of <array 1 of <array 6 of <array 10 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 1 of <array 2 of <array 6 of <array 8 of <bool>>>>>>> %ebp+20 ]
    #    -16(%ebp)   1  [ $v4       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $v5       <bool> %ebp-17 ]

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
l_f2_4_while_cond:
    jmp     l_f2_4_while_cond       #   1:     goto   4_while_cond
l_f2_7_while_cond:
    jmp     l_f2_7_while_cond       #   3:     goto   7_while_cond
    call    dummyCHARfunc           #   4:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $68640, %eax            #   5:     return 68640
    jmp     l_f2_exit              
    movl    $97, %eax               #   6:     assign v4 <- 97
    movb    %al, -16(%ebp)         
l_f2_13_while_cond:
    jmp     l_f2_12                 #   8:     goto   12
    jmp     l_f2_13_while_cond      #   9:     goto   13_while_cond
l_f2_12:
    movl    $94561, %eax            #  11:     if     94561 = 6334 goto 16
    movl    $6334, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_16                
    jmp     l_f2_17                 #  12:     goto   17
l_f2_16:
    movl    $1, %eax                #  14:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_18                 #  15:     goto   18
l_f2_17:
    movl    $0, %eax                #  17:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f2_18:
    movzbl  -14(%ebp), %eax         #  19:     assign v5 <- t1
    movb    %al, -17(%ebp)         
    jmp     l_f2_22_if_false        #  20:     goto   22_if_false
    jmp     l_f2_20                 #  21:     goto   20
l_f2_22_if_false:
l_f2_20:
    jmp     l_f2_0                  #  24:     goto   0
l_f2_0:
    call    dummyCHARfunc           #  26:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  27:     assign v4 <- t2
    movb    %al, -16(%ebp)         
    movl    $99, %eax               #  28:     assign v4 <- 99
    movb    %al, -16(%ebp)         

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $99, %eax               #   2:     assign v0 <- 99
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
