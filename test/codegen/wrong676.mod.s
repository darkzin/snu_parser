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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -37(%ebp)   1  [ $v1       <bool> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $22289, %eax            #   0:     sub    t6 <- 22289, 69128
    movl    $69128, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     sub    t7 <- t6, 18572
    movl    $18572, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     add    t8 <- t7, 89819
    movl    $89819, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     sub    t9 <- t8, 14785
    movl    $14785, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     add    t10 <- t9, 79597
    movl    $79597, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     return t10
    jmp     l_f0_exit              
    jmp     l_f0_2                  #   6:     goto   2
    jmp     l_f0_3                  #   7:     goto   3
l_f0_2:
    movl    $1, %eax                #   9:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_4                  #  10:     goto   4
l_f0_3:
    movl    $0, %eax                #  12:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f0_4:
    movzbl  -17(%ebp), %eax         #  14:     assign v1 <- t11
    movb    %al, -37(%ebp)         
    movl    $99, %eax               #  15:     if     99 >= 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #  16:     goto   9_if_false
l_f0_8_if_true:
    movl    $69294, %eax            #  18:     return 69294
    jmp     l_f0_exit              
l_f0_13_while_cond:
    movl    $32081, %eax            #  20:     if     32081 <= 84352 goto 14_while_body
    movl    $84352, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_14_while_body     
    jmp     l_f0_12                 #  21:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  23:     goto   13_while_cond
l_f0_12:
    movl    $95560, %eax            #  25:     return 95560
    jmp     l_f0_exit              
    movl    $33937, %eax            #  26:     param  0 <- 33937
    pushl   %eax                   
    call    WriteInt                #  27:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_7                  #  28:     goto   7
l_f0_9_if_false:
l_f0_7:

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 10 of <array 8 of <array 1 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $0, %eax                #   4:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v1 <- t6
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #   7:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99450, %eax            #   8:     assign v2 <- 99450
    movl    %eax, -20(%ebp)        

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 8 of <array 1 of <array 7 of <array 4 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 4 of <array 7 of <array 1 of <array 10 of <char>>>>>>> %ebp+16 ]

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
    movl    $97, %eax               #   0:     return 97
    jmp     l_f2_exit              
    movl    $97, %eax               #   1:     return 97
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]

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
l_test_1_while_cond:
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $16595, %eax            #   2:     sub    t1 <- 16595, t0
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t1 # 88029 goto 2_while_body
    movl    $88029, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    jmp     l_test_4                #   9:     goto   4
    jmp     l_test_4                #  10:     goto   4
    call    ReadInt                 #  11:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_test_exit            
    call    dummyINTfunc            #  13:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_test_5_while_cond     #  14:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
    jmp     l_test_19               #  17:     goto   19
    jmp     l_test_16               #  18:     goto   16
l_test_19:
    jmp     l_test_17               #  20:     goto   17
l_test_16:
    movl    $1, %eax                #  22:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_18               #  23:     goto   18
l_test_17:
    movl    $0, %eax                #  25:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_18:
    movzbl  -29(%ebp), %eax         #  27:     if     t4 # 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_13_if_true      
    jmp     l_test_14_if_false      #  28:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  30:     goto   12
l_test_14_if_false:
l_test_12:
l_test_22_while_cond:
    movl    $1, %eax                #  34:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_27               #  35:     goto   27
    movl    $0, %eax                #  36:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_test_27:
    movl    $1, %eax                #  38:     if     1 # t5 goto 23_while_body
    movzbl  -30(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_23_while_body   
    jmp     l_test_21               #  39:     goto   21
l_test_23_while_body:
    call    WriteLn                 #  41:     call   WriteLn
    movl    $1, %eax                #  42:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_22_while_cond    #  43:     goto   22_while_cond
l_test_21:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
