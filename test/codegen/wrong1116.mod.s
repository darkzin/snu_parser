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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 58 of <array 53 of <array 11 of <array 23 of <array 17 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 86 of <array 67 of <array 81 of <array 39 of <array 58 of <int>>>>>>> %ebp+12 ]
    #    -36(%ebp)   4  [ $v4       <int> %ebp-36 ]

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
    movl    $55180, %eax            #   0:     mul    t5 <- 55180, 89625
    movl    $89625, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v4 <- t5
    movl    %eax, -36(%ebp)        
    movl    $86168, %eax            #   2:     div    t6 <- 86168, 23288
    movl    $23288, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t7 <- t6, 42265
    movl    $42265, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t8 <- t7, 78608
    movl    $78608, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     return t8
    jmp     l_f0_exit              
    call    dummyINTfunc            #   6:     call   t9 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     return t9
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $v2       <char> %ebp-17 ]

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
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t5
    movb    %al, -17(%ebp)         
l_f1_2_while_cond:
    call    dummyCHARfunc           #   3:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     if     t6 >= 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    call    dummyBOOLfunc           #   7:     call   t7 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #   9:     goto   2_while_cond
l_f1_1:
    call    dummyCHARfunc           #  11:     call   t8 <- dummyCHARfunc
    movb    %al, -16(%ebp)         

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $63619, %eax            #   1:     if     63619 > 82343 goto 2_if_true
    movl    $82343, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    call    dummyCHARfunc           #   4:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $0, %eax                #   5:     assign v2 <- 0
    movb    %al, 8(%ebp)           
    movl    $96922, %eax            #   6:     if     96922 > 66844 goto 8
    movl    $66844, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_8                 
    jmp     l_f2_9                  #   7:     goto   9
l_f2_8:
    movl    $1, %eax                #   9:     assign t7 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_10                 #  10:     goto   10
l_f2_9:
    movl    $0, %eax                #  12:     assign t7 <- 0
    movb    %al, -18(%ebp)         
l_f2_10:
    movzbl  -18(%ebp), %eax         #  14:     assign v2 <- t7
    movb    %al, 8(%ebp)           
    jmp     l_f2_1                  #  15:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_14_if_false        #  18:     goto   14_if_false
    jmp     l_f2_14_if_false        #  19:     goto   14_if_false
    movl    $1, %eax                #  20:     if     1 = 1 goto 19_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  21:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  23:     goto   18
l_f2_20_if_false:
l_f2_18:
    jmp     l_f2_12                 #  26:     goto   12
l_f2_14_if_false:
l_f2_12:

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
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
    movl    $98, %eax               #   0:     if     98 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $99, %eax               #   3:     if     99 >= 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $98, %eax               #   9:     assign v0 <- 98
    movb    %al, v0                
l_test_10_while_cond:
    movl    $28471, %eax            #  11:     if     28471 = 56082 goto 11_while_body
    movl    $56082, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  12:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  14:     goto   10_while_cond
l_test_9:
    jmp     l_test_0                #  16:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $53423, %eax            #  19:     if     53423 >= 24899 goto 14_if_true
    movl    $24899, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_14_if_true      
    jmp     l_test_15_if_false      #  20:     goto   15_if_false
l_test_14_if_true:
    movl    $99, %eax               #  22:     assign v0 <- 99
    movb    %al, v0                
    movl    $0, %eax                #  23:     assign v1 <- 0
    movb    %al, v1                
l_test_23_while_cond:
    jmp     l_test_22               #  25:     goto   22
    jmp     l_test_23_while_cond    #  26:     goto   23_while_cond
l_test_22:
    jmp     l_test_17               #  28:     goto   17
l_test_17:
    jmp     l_test_13               #  30:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $13801, %eax            #  33:     mul    t0 <- 13801, 84111
    movl    $84111, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  34:     mul    t1 <- t0, 34187
    movl    $34187, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  35:     param  0 <- t1
    pushl   %eax                   
    call    WriteInt                #  36:     call   WriteInt
    addl    $4, %esp               
    movl    $76513, %eax            #  37:     sub    t2 <- 76513, 64356
    movl    $64356, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  38:     add    t3 <- t2, 88762
    movl    $88762, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  39:     assign v2 <- t3
    movl    %eax, v2               
    movl    $100, %eax              #  40:     assign v0 <- 100
    movb    %al, v0                
    call    dummyCHARfunc           #  41:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  42:     param  0 <- t4
    pushl   %eax                   
    call    WriteChar               #  43:     call   WriteChar
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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
