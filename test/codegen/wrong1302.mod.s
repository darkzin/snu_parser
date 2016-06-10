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
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 51 of <array 62 of <array 68 of <array 53 of <array 56 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 34 of <array 21 of <array 76 of <array 82 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 71 of <array 69 of <array 93 of <array 94 of <array 86 of <char>>>>>>> %ebp+16 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    movl    $99, %eax               #   0:     return 99
    jmp     l_f0_exit              
    movl    $0, %eax                #   1:     assign v3 <- 0
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t3 < 100 goto 3_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   4:     goto   4_if_false
l_f0_3_if_true:
    movl    $43087, %eax            #   6:     assign v4 <- 43087
    movl    %eax, -28(%ebp)        
    movl    $98, %eax               #   7:     return 98
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   8:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $78290, %eax            #   9:     if     78290 # 24174 goto 10_if_true
    movl    $24174, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  10:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_if_false:
l_f0_9:
    call    ReadInt                 #  15:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_2                  #  16:     goto   2
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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $v0       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v1       <char> %ebp-33 ]

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
    jmp     l_f1_exit              
    movl    $85922, %eax            #   1:     sub    t3 <- 85922, 20543
    movl    $20543, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   2:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   3:     sub    t5 <- t3, t4
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v0 <- t5
    movl    %eax, -32(%ebp)        
l_f1_3_while_cond:
    jmp     l_f1_7                  #   6:     goto   7
    jmp     l_f1_7                  #   7:     goto   7
    jmp     l_f1_7                  #   8:     goto   7
    jmp     l_f1_7                  #   9:     goto   7
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_8                  #  11:     goto   8
l_f1_7:
    movl    $0, %eax                #  13:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f1_8:
    movl    $1, %eax                #  15:     if     1 # t6 goto 4_while_body
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_4_while_body      
    jmp     l_f1_2                  #  16:     goto   2
l_f1_4_while_body:
    movl    $99, %eax               #  18:     assign v1 <- 99
    movb    %al, -33(%ebp)         
    jmp     l_f1_15_if_false        #  19:     goto   15_if_false
    jmp     l_f1_13                 #  20:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_18_if_false        #  23:     goto   18_if_false
    jmp     l_f1_16                 #  24:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_19                 #  27:     goto   19
l_f1_19:
    call    dummyBOOLfunc           #  29:     call   t7 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
l_f1_24_while_cond:
    jmp     l_f1_23                 #  31:     goto   23
    jmp     l_f1_24_while_cond      #  32:     goto   24_while_cond
l_f1_23:
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #  35:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 51 of <array 62 of <array 68 of <array 53 of <array 56 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 71 of <array 69 of <array 93 of <array 94 of <array 86 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 34 of <array 21 of <array 76 of <array 82 of <array 10 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 51 of <array 62 of <array 68 of <array 53 of <array 56 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t7       <char> %ebp-34 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 71 of <array 69 of <array 93 of <array 94 of <array 86 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <ptr(4) to <array 34 of <array 21 of <array 76 of <array 82 of <array 10 of <char>>>>>>> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 37 of <array 91 of <array 100 of <array 70 of <array 34 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #   1742297276(%ebp)  -1742297320  [ $v4       <array 51 of <array 62 of <array 68 of <array 53 of <array 56 of <int>>>>>> %ebp+1742297276 ]
    #   1697800772(%ebp)  44496504  [ $v5       <array 34 of <array 21 of <array 76 of <array 82 of <array 10 of <char>>>>>> %ebp+1697800772 ]
    #   -1985326240(%ebp)  -611840284  [ $v6       <array 71 of <array 69 of <array 93 of <array 94 of <array 86 of <char>>>>>> %ebp-1985326240 ]
    #   -1985326241(%ebp)   1  [ $v7       <char> %ebp-1985326241 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1985326232, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-577410266, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,1742297276(%ebp)     # local array 'v4': 5 dimensions
    movl    $51,1742297280(%ebp)    #   dimension 1: 51 elements
    movl    $62,1742297284(%ebp)    #   dimension 2: 62 elements
    movl    $68,1742297288(%ebp)    #   dimension 3: 68 elements
    movl    $53,1742297292(%ebp)    #   dimension 4: 53 elements
    movl    $56,1742297296(%ebp)    #   dimension 5: 56 elements
    movl    $5,1697800772(%ebp)     # local array 'v5': 5 dimensions
    movl    $34,1697800776(%ebp)    #   dimension 1: 34 elements
    movl    $21,1697800780(%ebp)    #   dimension 2: 21 elements
    movl    $76,1697800784(%ebp)    #   dimension 3: 76 elements
    movl    $82,1697800788(%ebp)    #   dimension 4: 82 elements
    movl    $10,1697800792(%ebp)    #   dimension 5: 10 elements
    movl    $5,-1985326240(%ebp)    # local array 'v6': 5 dimensions
    movl    $71,-1985326236(%ebp)   #   dimension 1: 71 elements
    movl    $69,-1985326232(%ebp)   #   dimension 2: 69 elements
    movl    $93,-1985326228(%ebp)   #   dimension 3: 93 elements
    movl    $94,-1985326224(%ebp)   #   dimension 4: 94 elements
    movl    $86,-1985326220(%ebp)   #   dimension 5: 86 elements

    # function body
    leal    -1985326240(%ebp), %eax #   0:     &()    t3 <- v6
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     param  2 <- t3
    pushl   %eax                   
    leal    1697800772(%ebp), %eax  #   2:     &()    t4 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     param  1 <- t4
    pushl   %eax                   
    leal    1742297276(%ebp), %eax  #   4:     &()    t5 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   6:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #   7:     param  0 <- t6
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #   9:     call   t7 <- dummyCHARfunc
    movb    %al, -34(%ebp)         
    movzbl  -34(%ebp), %eax         #  10:     assign v7 <- t7
    movb    %al, -1985326241(%ebp) 
    leal    -1985326240(%ebp), %eax #  11:     &()    t8 <- v6
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     param  2 <- t8
    pushl   %eax                   
    leal    1697800772(%ebp), %eax  #  13:     &()    t9 <- v5
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  14:     param  1 <- t9
    pushl   %eax                   
    leal    1742297276(%ebp), %eax  #  15:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  17:     call   t11 <- f0
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  18:     return t11
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $1985326232, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    movl    $99, %eax               #   0:     if     99 <= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    leal    _str_1, %eax            #   3:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   5:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    call    ReadInt                 #  10:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_8_if_true        #  11:     goto   8_if_true
    jmp     l_test_8_if_true        #  12:     goto   8_if_true
l_test_8_if_true:
    call    dummyBOOLfunc           #  14:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_exit            
l_test_17_while_cond:
    jmp     l_test_16               #  17:     goto   16
    jmp     l_test_17_while_cond    #  18:     goto   17_while_cond
l_test_16:
    jmp     l_test_7                #  20:     goto   7
l_test_7:
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
