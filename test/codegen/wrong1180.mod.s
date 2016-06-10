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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t8       <bool> %ebp-30 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 42 of <array 35 of <array 17 of <array 50 of <array 26 of <char>>>>>>> %ebp+8 ]
    #    -40(%ebp)   4  [ $v1       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $v2       <char> %ebp-41 ]

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
    movl    $2516, %eax             #   0:     sub    t3 <- 2516, 70832
    movl    $70832, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 97106
    movl    $97106, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t5 <- t4, 98931
    movl    $98931, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t6 <- t5, 31364
    movl    $31364, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v1 <- t6
    movl    %eax, -40(%ebp)        
    call    dummyCHARfunc           #   5:     call   t7 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   6:     assign v2 <- t7
    movb    %al, -41(%ebp)         
    call    dummyBOOLfunc           #   7:     call   t8 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #   8:     if     t8 = 1 goto 3_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   9:     goto   4_if_false
l_f0_3_if_true:
    call    dummyINTfunc            #  11:     call   t9 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    jmp     l_f0_2                  #  12:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 16 of <array 74 of <array 56 of <array 52 of <array 31 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 35 of <array 6 of <array 18 of <array 82 of <array 72 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
    jmp     l_f1_2_while_body       #   3:     goto   2_while_body
    jmp     l_f1_2_while_body       #   4:     goto   2_while_body
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_while_body:
    movl    $97, %eax               #   7:     return 97
    jmp     l_f1_exit              
l_f1_12_while_cond:
    jmp     l_f1_12_while_cond      #   9:     goto   12_while_cond
    movl    $2077, %eax             #  10:     assign v3 <- 2077
    movl    %eax, 20(%ebp)         
    jmp     l_f1_1_while_cond       #  11:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  13:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  14:     return t3
    jmp     l_f1_exit              
    movl    $90969, %eax            #  15:     mul    t4 <- 90969, 76313
    movl    $76313, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     div    t5 <- t4, 71761
    movl    $71761, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $3251, %eax             #  17:     if     3251 # t5 goto 17_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  18:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_20                 #  20:     goto   20
l_f1_20:
    jmp     l_f1_16                 #  22:     goto   16
l_f1_18_if_false:
l_f1_16:

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 35 of <array 6 of <array 18 of <array 82 of <array 72 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 16 of <array 74 of <array 56 of <array 52 of <array 31 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 35 of <array 6 of <array 18 of <array 82 of <array 72 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t9       <ptr(4) to <array 16 of <array 74 of <array 56 of <array 52 of <array 31 of <bool>>>>>>> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 94 of <array 90 of <array 59 of <array 6 of <array 92 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 79 of <array 9 of <array 34 of <array 61 of <array 64 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 26 of <array 47 of <array 92 of <array 70 of <int>>>>>>> %ebp+20 ]
    #   -106882112(%ebp)  106882072  [ $v4       <array 16 of <array 74 of <array 56 of <array 52 of <array 31 of <bool>>>>>> %ebp-106882112 ]
    #   -129199256(%ebp)  22317144  [ $v5       <array 35 of <array 6 of <array 18 of <array 82 of <array 72 of <bool>>>>>> %ebp-129199256 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $129199244, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $32299811, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-106882112(%ebp)     # local array 'v4': 5 dimensions
    movl    $16,-106882108(%ebp)    #   dimension 1: 16 elements
    movl    $74,-106882104(%ebp)    #   dimension 2: 74 elements
    movl    $56,-106882100(%ebp)    #   dimension 3: 56 elements
    movl    $52,-106882096(%ebp)    #   dimension 4: 52 elements
    movl    $31,-106882092(%ebp)    #   dimension 5: 31 elements
    movl    $5,-129199256(%ebp)     # local array 'v5': 5 dimensions
    movl    $35,-129199252(%ebp)    #   dimension 1: 35 elements
    movl    $6,-129199248(%ebp)     #   dimension 2: 6 elements
    movl    $18,-129199244(%ebp)    #   dimension 3: 18 elements
    movl    $82,-129199240(%ebp)    #   dimension 4: 82 elements
    movl    $72,-129199236(%ebp)    #   dimension 5: 72 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $97913, %eax            #   3:     param  3 <- 97913
    pushl   %eax                   
    leal    -129199256(%ebp), %eax  #   4:     &()    t4 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  2 <- t4
    pushl   %eax                   
    movl    $1, %eax                #   6:     param  1 <- 1
    pushl   %eax                   
    leal    -106882112(%ebp), %eax  #   7:     &()    t5 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #   9:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
l_f2_7_while_cond:
    movl    $12735, %eax            #  13:     param  3 <- 12735
    pushl   %eax                   
    leal    -129199256(%ebp), %eax  #  14:     &()    t7 <- v5
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     param  2 <- t7
    pushl   %eax                   
    movl    $82896, %eax            #  16:     if     82896 > 40478 goto 10
    movl    $40478, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_10                
    jmp     l_f2_11                 #  17:     goto   11
l_f2_10:
    movl    $1, %eax                #  19:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_12                 #  20:     goto   12
l_f2_11:
    movl    $0, %eax                #  22:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f2_12:
    movzbl  -33(%ebp), %eax         #  24:     param  1 <- t8
    pushl   %eax                   
    leal    -106882112(%ebp), %eax  #  25:     &()    t9 <- v4
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  27:     call   t10 <- f1
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #  28:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #  29:     if     t10 # t11 goto 8_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #  30:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  32:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_15                 #  34:     goto   15
    jmp     l_f2_16                 #  35:     goto   16
l_f2_15:
    movl    $1, %eax                #  37:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_17                 #  38:     goto   17
l_f2_16:
    movl    $0, %eax                #  40:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f2_17:
    movzbl  -15(%ebp), %eax         #  42:     assign v0 <- t12
    movb    %al, 8(%ebp)           

l_f2_exit:
    # epilogue
    addl    $129199244, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 35 of <array 6 of <array 18 of <array 82 of <array 72 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 16 of <array 74 of <array 56 of <array 52 of <array 31 of <bool>>>>>>> %ebp-20 ]
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
    movl    $81824, %eax            #   0:     if     81824 # 7225 goto 1_if_true
    movl    $7225, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    movl    $99, %eax               #   4:     if     99 >= 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_6_if_true       
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   7:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_0                #  10:     goto   0
l_test_2_if_false:
l_test_0:
l_test_10_while_cond:
    jmp     l_test_9                #  14:     goto   9
    movl    $99, %eax               #  15:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_10_while_cond    #  16:     goto   10_while_cond
l_test_9:
    movl    $16741, %eax            #  18:     param  3 <- 16741
    pushl   %eax                   
    leal    v2, %eax                #  19:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     param  2 <- t0
    pushl   %eax                   
    movl    $0, %eax                #  21:     param  1 <- 0
    pushl   %eax                   
    leal    v1, %eax                #  22:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  24:     call   t2 <- f1
    addl    $16, %esp              
    movb    %al, -21(%ebp)         

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 16 of <array 74 of <array 56 of <array 52 of <array 31 of <bool>>>>>>
    .long    5
    .long   16
    .long   74
    .long   56
    .long   52
    .long   31
    .skip 106882048
v2:                                 # <array 35 of <array 6 of <array 18 of <array 82 of <array 72 of <bool>>>>>>
    .long    5
    .long   35
    .long    6
    .long   18
    .long   82
    .long   72
    .skip 22317120








    # end of global data section
    #-----------------------------------------

    .end
##################################################
