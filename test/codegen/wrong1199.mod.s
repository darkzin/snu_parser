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
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t15      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t16      <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t17      <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t18      <bool> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

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
l_f0_1_while_cond:
    movl    $17346, %eax            #   1:     mul    t14 <- 17346, 18131
    movl    $18131, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     assign v0 <- t14
    movl    %eax, 8(%ebp)          
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_5_while_cond:
    call    dummyBOOLfunc           #   5:     call   t15 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_9                  #   6:     goto   9
l_f0_9:
    movl    $1, %eax                #   8:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_5_while_cond       #   9:     goto   5_while_cond
l_f0_14_while_cond:
    jmp     l_f0_15_while_body      #  11:     goto   15_while_body
    jmp     l_f0_15_while_body      #  12:     goto   15_while_body
l_f0_15_while_body:
    movl    $17422, %eax            #  14:     if     17422 = 92608 goto 22
    movl    $92608, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_22                
    jmp     l_f0_23                 #  15:     goto   23
l_f0_22:
    movl    $1, %eax                #  17:     assign t16 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_24                 #  18:     goto   24
l_f0_23:
    movl    $0, %eax                #  20:     assign t16 <- 0
    movb    %al, -18(%ebp)         
l_f0_24:
    movzbl  -18(%ebp), %eax         #  22:     assign v1 <- t16
    movb    %al, -21(%ebp)         
    jmp     l_f0_28_if_false        #  23:     goto   28_if_false
    jmp     l_f0_26                 #  24:     goto   26
l_f0_28_if_false:
l_f0_26:
    call    dummyBOOLfunc           #  27:     call   t17 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    movl    $99, %eax               #  28:     if     99 >= 100 goto 31
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_31                
    jmp     l_f0_32                 #  29:     goto   32
l_f0_31:
    movl    $1, %eax                #  31:     assign t18 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f0_33                 #  32:     goto   33
l_f0_32:
    movl    $0, %eax                #  34:     assign t18 <- 0
    movb    %al, -20(%ebp)         
l_f0_33:
    movzbl  -20(%ebp), %eax         #  36:     return t18
    jmp     l_f0_exit              
    jmp     l_f0_14_while_cond      #  37:     goto   14_while_cond

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
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t17      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t18      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t19      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t20      <char> %ebp-37 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 82 of <array 58 of <array 15 of <array 68 of <array 12 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 16 of <array 35 of <array 92 of <array 97 of <array 64 of <bool>>>>>>> %ebp+16 ]

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
    movl    $94926, %eax            #   0:     add    t14 <- 94926, 27890
    movl    $27890, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t15 <- t14, 93352
    movl    $93352, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t16 <- t15, 30567
    movl    $30567, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t17 <- t16, 21915
    movl    $21915, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t17
    jmp     l_f1_exit              
    movl    $22404, %eax            #   5:     div    t18 <- 22404, 48397
    movl    $48397, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     sub    t19 <- t18, 86710
    movl    $86710, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     return t19
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   8:     call   t20 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #   9:     param  0 <- t20
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 81 of <array 45 of <array 93 of <array 15 of <array 70 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    call    dummyProcedure          #   2:     call   dummyProcedure

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 16 of <array 35 of <array 92 of <array 97 of <array 64 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t12      <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t13      <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $t2       <ptr(4) to <array 82 of <array 58 of <array 15 of <array 68 of <array 12 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t3       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <ptr(4) to <array 16 of <array 35 of <array 92 of <array 97 of <array 64 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t5       <ptr(4) to <array 82 of <array 58 of <array 15 of <array 68 of <array 12 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <ptr(4) to <array 81 of <array 45 of <array 93 of <array 15 of <array 70 of <char>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <ptr(4) to <array 16 of <array 35 of <array 92 of <array 97 of <array 64 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <ptr(4) to <array 82 of <array 58 of <array 15 of <array 68 of <array 12 of <char>>>>>>> %ebp-60 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     if     99 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    leal    v1, %eax                #   3:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  2 <- t0
    pushl   %eax                   
    movl    $1, %eax                #   5:     if     1 # 0 goto 5
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_5               
    jmp     l_test_6                #   6:     goto   6
l_test_5:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_7                #   9:     goto   7
l_test_6:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_7:
    movzbl  -17(%ebp), %eax         #  13:     param  1 <- t1
    pushl   %eax                   
    leal    v0, %eax                #  14:     &()    t2 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  16:     call   t3 <- f1
    addl    $12, %esp              
    movl    %eax, -36(%ebp)        
    leal    v1, %eax                #  17:     &()    t4 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  18:     param  2 <- t4
    pushl   %eax                   
    movl    $1, %eax                #  19:     param  1 <- 1
    pushl   %eax                   
    leal    v0, %eax                #  20:     &()    t5 <- v0
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  22:     call   t6 <- f1
    addl    $12, %esp              
    movl    %eax, -48(%ebp)        
    movl    $97, %eax               #  23:     if     97 # 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_11_if_true      
    jmp     l_test_12_if_false      #  24:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  26:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $45496, %eax            #  29:     param  3 <- 45496
    pushl   %eax                   
    movl    $64704, %eax            #  30:     param  2 <- 64704
    pushl   %eax                   
    leal    v2, %eax                #  31:     &()    t7 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  32:     param  1 <- t7
    pushl   %eax                   
    movl    $99, %eax               #  33:     param  0 <- 99
    pushl   %eax                   
    call    f2                      #  34:     call   f2
    addl    $16, %esp              
    leal    v1, %eax                #  35:     &()    t8 <- v1
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  36:     param  2 <- t8
    pushl   %eax                   
    movl    $1, %eax                #  37:     param  1 <- 1
    pushl   %eax                   
    leal    v0, %eax                #  38:     &()    t9 <- v0
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  39:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  40:     call   t10 <- f1
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    jmp     l_test_0                #  41:     goto   0
l_test_2_if_false:
l_test_0:
l_test_17_while_cond:
    movl    $72268, %eax            #  45:     if     72268 < 84688 goto 18_while_body
    movl    $84688, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_18_while_body   
    jmp     l_test_16               #  46:     goto   16
l_test_18_while_body:
    jmp     l_test_21               #  48:     goto   21
    jmp     l_test_22               #  49:     goto   22
l_test_21:
    movl    $1, %eax                #  51:     assign t11 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_23               #  52:     goto   23
l_test_22:
    movl    $0, %eax                #  54:     assign t11 <- 0
    movb    %al, -25(%ebp)         
l_test_23:
    movzbl  -25(%ebp), %eax         #  56:     assign v3 <- t11
    movb    %al, v3                
    jmp     l_test_17_while_cond    #  57:     goto   17_while_cond
l_test_16:
    call    dummyCHARfunc           #  59:     call   t12 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movl    $100, %eax              #  60:     if     100 <= t12 goto 28_if_true
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_28_if_true      
    jmp     l_test_29_if_false      #  61:     goto   29_if_false
l_test_28_if_true:
    movl    $62686, %eax            #  63:     param  0 <- 62686
    pushl   %eax                   
    call    f0                      #  64:     call   t13 <- f0
    addl    $4, %esp               
    movb    %al, -27(%ebp)         
    jmp     l_test_27               #  65:     goto   27
l_test_29_if_false:
l_test_27:

l_test_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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
v0:                                 # <array 82 of <array 58 of <array 15 of <array 68 of <array 12 of <char>>>>>>
    .long    5
    .long   82
    .long   58
    .long   15
    .long   68
    .long   12
    .skip 58213440
v1:                                 # <array 16 of <array 35 of <array 92 of <array 97 of <array 64 of <bool>>>>>>
    .long    5
    .long   16
    .long   35
    .long   92
    .long   97
    .long   64
    .skip 319836160
v2:                                 # <array 81 of <array 45 of <array 93 of <array 15 of <array 70 of <char>>>>>>
    .long    5
    .long   81
    .long   45
    .long   93
    .long   15
    .long   70
    .skip 355934250
v3:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
