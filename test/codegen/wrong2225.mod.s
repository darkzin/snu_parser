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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_4                  #   2:     goto   4
l_f0_4:
    movl    $0, %eax                #   4:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $20615, %eax            #   8:     assign v1 <- 20615
    movl    %eax, -32(%ebp)        
    movl    $21780, %eax            #   9:     mul    t6 <- 21780, 15340
    movl    $15340, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     div    t7 <- t6, 63627
    movl    $63627, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     div    t8 <- t7, 27502
    movl    $27502, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     assign v1 <- t8
    movl    %eax, -32(%ebp)        

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
    movl    $93382, %eax            #   2:     if     93382 # 82303 goto 5_while_body
    movl    $82303, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_5_while_body      
    jmp     l_f1_3                  #   3:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   5:     goto   4_while_cond
l_f1_3:
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $99, %eax               #  10:     if     99 <= 98 goto 8
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_8                 
    jmp     l_f1_9                  #  11:     goto   9
l_f1_8:
    movl    $1, %eax                #  13:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_10                 #  14:     goto   10
l_f1_9:
    movl    $0, %eax                #  16:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_10:
    movzbl  -13(%ebp), %eax         #  18:     assign v0 <- t5
    movb    %al, 8(%ebp)           
l_f1_13_while_cond:
    jmp     l_f1_12                 #  20:     goto   12
    movl    $97, %eax               #  21:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  22:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #  23:     call   t7 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_13_while_cond      #  24:     goto   13_while_cond
l_f1_12:

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 61 of <array 46 of <array 23 of <array 98 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 82 of <array 37 of <array 92 of <array 92 of <array 40 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 80 of <array 12 of <array 70 of <array 79 of <array 22 of <bool>>>>>>> %ebp+20 ]
    #    -18(%ebp)   1  [ $v4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $v5       <char> %ebp-19 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   2:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     assign v4 <- t6
    movb    %al, -18(%ebp)         
    call    dummyCHARfunc           #   4:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   5:     assign v5 <- t7
    movb    %al, -19(%ebp)         
    movl    $98, %eax               #   6:     if     98 <= 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   7:     goto   4_if_false
l_f2_3_if_true:
l_f2_7_while_cond:
    jmp     l_f2_6                  #  10:     goto   6
    jmp     l_f2_7_while_cond       #  11:     goto   7_while_cond
l_f2_6:
    movl    $2925, %eax             #  13:     if     2925 > 64565 goto 10_if_true
    movl    $64565, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  14:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  16:     goto   9
l_f2_11_if_false:
l_f2_9:
    call    dummyCHARfunc           #  19:     call   t8 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
l_f2_15_while_cond:
    movl    $88117, %eax            #  21:     if     88117 <= 6103 goto 16_while_body
    movl    $6103, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_16_while_body     
    jmp     l_f2_14                 #  22:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  24:     goto   15_while_cond
l_f2_14:
    movl    $1, %eax                #  26:     assign v4 <- 1
    movb    %al, -18(%ebp)         
    call    dummyCHARfunc           #  27:     call   t9 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f2_2                  #  28:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_3_while_cond:
    jmp     l_test_2                #   3:     goto   2
    leal    _str_1, %eax            #   4:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #   7:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $53963, %eax            #   8:     if     53963 < 90467 goto 8_if_true
    movl    $90467, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_8_if_true       
    jmp     l_test_9_if_false       #   9:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  11:     goto   7
l_test_9_if_false:
l_test_7:
l_test_12_while_cond:
    movl    $0, %eax                #  15:     if     0 = 1 goto 13_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  16:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  18:     goto   12_while_cond
l_test_11:
    jmp     l_test_3_while_cond     #  20:     goto   3_while_cond
l_test_2:
l_test_16_while_cond:
    movl    $77799, %eax            #  23:     if     77799 # 43489 goto 17_while_body
    movl    $43489, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_17_while_body   
    jmp     l_test_15               #  24:     goto   15
l_test_17_while_body:
    jmp     l_test_exit            
    leal    _str_2, %eax            #  27:     &()    t3 <- _str_2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  29:     call   WriteStr
    addl    $4, %esp               
    movl    $96846, %eax            #  30:     assign v0 <- 96846
    movl    %eax, v0               
    jmp     l_test_16_while_cond    #  31:     goto   16_while_cond
l_test_15:
    call    dummyCHARfunc           #  33:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  34:     param  0 <- t4
    pushl   %eax                   
    call    WriteChar               #  35:     call   WriteChar
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    .align   4
_str_2:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
