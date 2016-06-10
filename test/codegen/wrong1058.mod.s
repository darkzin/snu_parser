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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 100 of <array 42 of <array 3 of <array 44 of <array 71 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $2705, %eax             #   1:     assign v2 <- 2705
    movl    %eax, 16(%ebp)         
l_f0_3_while_cond:
    movl    $78060, %eax            #   3:     if     78060 # 55448 goto 4_while_body
    movl    $55448, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_4_while_body      
    jmp     l_f0_2                  #   4:     goto   2
l_f0_4_while_body:
    call    dummyBOOLfunc           #   6:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   7:     return 99
    jmp     l_f0_exit              
    movl    $98, %eax               #   8:     if     98 >= 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #   9:     goto   10_if_false
l_f0_9_if_true:
    movl    $13078, %eax            #  11:     if     13078 > 15208 goto 13_if_true
    movl    $15208, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  12:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  14:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_16                 #  17:     goto   16
l_f0_16:
    jmp     l_f0_8                  #  19:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_3_while_cond       #  22:     goto   3_while_cond
l_f0_2:

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    movl    $99, %eax               #   0:     assign v2 <- 99
    movb    %al, -15(%ebp)         
    jmp     l_f1_2_if_true          #   1:     goto   2_if_true
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    movl    $27119, %eax            #   5:     if     27119 <= 20871 goto 7_while_body
    movl    $20871, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    call    dummyBOOLfunc           #  10:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_1                  #  11:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $98, %eax               #  14:     if     98 >= 99 goto 14
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_14                
    jmp     l_f1_12                 #  15:     goto   12
l_f1_14:
    movl    $1, %eax                #  17:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_13                 #  18:     goto   13
l_f1_12:
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f1_13:
    movzbl  -14(%ebp), %eax         #  22:     return t6
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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 39 of <array 99 of <array 69 of <array 70 of <array 99 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]

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
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
    jmp     l_f2_2_while_body       #   3:     goto   2_while_body
    jmp     l_f2_2_while_body       #   4:     goto   2_while_body
    jmp     l_f2_2_while_body       #   5:     goto   2_while_body
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
l_f2_9_while_cond:
    jmp     l_f2_9_while_cond       #   9:     goto   9_while_cond
    movl    $1, %eax                #  10:     param  1 <- 1
    pushl   %eax                   
    movl    $27744, %eax            #  11:     if     27744 # 13894 goto 12
    movl    $13894, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_12                
    jmp     l_f2_13                 #  12:     goto   13
l_f2_12:
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_14                 #  15:     goto   14
l_f2_13:
    movl    $0, %eax                #  17:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_14:
    movzbl  -13(%ebp), %eax         #  19:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  20:     call   t6 <- f1
    addl    $8, %esp               
    movb    %al, -14(%ebp)         
    jmp     l_f2_1_while_cond       #  21:     goto   1_while_cond
l_f2_0:
    movl    $69320, %eax            #  23:     div    t7 <- 69320, 72152
    movl    $72152, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $9596, %eax             #  24:     sub    t8 <- 9596, t7
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     assign v2 <- t8
    movl    %eax, -32(%ebp)        
    jmp     l_f2_18_if_true         #  26:     goto   18_if_true
    jmp     l_f2_18_if_true         #  27:     goto   18_if_true
l_f2_18_if_true:
    call    ReadInt                 #  29:     call   t9 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_f2_17                 #  30:     goto   17
l_f2_17:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-32 ]

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
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 # 15165 goto 2_while_body
    movl    $15165, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    call    dummyProcedure          #   6:     call   dummyProcedure
l_test_7_while_cond:
    jmp     l_test_6                #   8:     goto   6
    jmp     l_test_7_while_cond     #   9:     goto   7_while_cond
l_test_6:
l_test_10_while_cond:
    movl    $46657, %eax            #  12:     if     46657 > 5116 goto 11_while_body
    movl    $5116, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #  13:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  15:     goto   10_while_cond
l_test_9:
    jmp     l_test_1_while_cond     #  17:     goto   1_while_cond
l_test_0:
    call    dummyINTfunc            #  19:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyProcedure          #  20:     call   dummyProcedure
    call    ReadInt                 #  21:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $20502, %eax            #  22:     div    t3 <- 20502, t2
    movl    -24(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     assign v0 <- t3
    movl    %eax, v0               
l_test_17_while_cond:
    movl    $17274, %eax            #  25:     if     17274 >= 41631 goto 18_while_body
    movl    $41631, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_18_while_body   
    jmp     l_test_16               #  26:     goto   16
l_test_18_while_body:
    leal    _str_1, %eax            #  28:     &()    t4 <- _str_1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  30:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_17_while_cond    #  33:     goto   17_while_cond
l_test_16:
    jmp     l_test_24_if_true       #  35:     goto   24_if_true
l_test_24_if_true:
    jmp     l_test_23               #  37:     goto   23
l_test_23:

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
_str_1:                             # <array 7 of <char>>
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
