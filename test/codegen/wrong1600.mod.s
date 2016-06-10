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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 56 of <array 7 of <array 87 of <array 84 of <array 19 of <char>>>>>>> %ebp+8 ]

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
    call    dummyINTfunc            #   0:     call   t7 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     add    t8 <- t7, 56337
    movl    $56337, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     sub    t9 <- t8, 46678
    movl    $46678, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     return t9
    jmp     l_f0_exit              
l_f0_2_while_cond:
    jmp     l_f0_1                  #   5:     goto   1
    movl    $92846, %eax            #   6:     return 92846
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
    call    ReadInt                 #   9:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     div    t11 <- t10, 59831
    movl    $59831, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     return t11
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 52 of <array 58 of <array 46 of <array 65 of <array 60 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 54 of <array 98 of <array 64 of <array 93 of <char>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    jmp     l_f1_4                  #   1:     goto   4
    jmp     l_f1_4                  #   2:     goto   4
    jmp     l_f1_5                  #   3:     goto   5
l_f1_4:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   6:     goto   6
l_f1_5:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movl    $18715, %eax            #  10:     if     18715 > 39517 goto 11
    movl    $39517, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_11                
    jmp     l_f1_12                 #  11:     goto   12
l_f1_11:
    movl    $1, %eax                #  13:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_13                 #  14:     goto   13
l_f1_12:
    movl    $0, %eax                #  16:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f1_13:
    movzbl  -13(%ebp), %eax         #  18:     if     t7 = t8 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #  19:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #  21:     goto   1_while_cond
l_f1_0:
    movl    $62501, %eax            #  23:     assign v3 <- 62501
    movl    %eax, -24(%ebp)        
    movl    $3276, %eax             #  24:     if     3276 <= 86582 goto 20_if_true
    movl    $86582, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  25:     goto   21_if_false
l_f1_20_if_true:
    jmp     l_f1_19                 #  27:     goto   19
l_f1_21_if_false:
l_f1_19:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_15                 #  32:     goto   15
l_f1_15:
    movl    $80793, %eax            #  34:     sub    t9 <- 80793, 32314
    movl    $32314, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  35:     if     t9 > 33844 goto 26_if_true
    movl    $33844, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_26_if_true        
    jmp     l_f1_27_if_false        #  36:     goto   27_if_false
l_f1_26_if_true:
l_f1_30_while_cond:
    movl    $97, %eax               #  39:     if     97 >= 97 goto 31_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_31_while_body     
    jmp     l_f1_29                 #  40:     goto   29
l_f1_31_while_body:
    jmp     l_f1_30_while_cond      #  42:     goto   30_while_cond
l_f1_29:
    jmp     l_f1_25                 #  44:     goto   25
l_f1_27_if_false:
l_f1_25:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t7       <char> %ebp-73 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 54 of <array 40 of <array 69 of <array 26 of <array 95 of <char>>>>>>> %ebp+8 ]
    #    -85(%ebp)   1  [ $v2       <bool> %ebp-85 ]
    #    -86(%ebp)   1  [ $v3       <char> %ebp-86 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     if     98 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    WriteLn                 #   3:     call   WriteLn
    movl    $0, %eax                #   4:     assign v2 <- 0
    movb    %al, -85(%ebp)         
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   8:     call   t7 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
l_f2_8_while_cond:
    movl    $23748, %eax            #  10:     add    t8 <- 23748, 28805
    movl    $28805, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  11:     if     t8 < 53679 goto 9_while_body
    movl    $53679, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_9_while_body      
    jmp     l_f2_7                  #  12:     goto   7
l_f2_9_while_body:
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $26216, %eax            #  17:     mul    t10 <- 26216, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     add    t11 <- t10, 59535
    movl    $59535, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  22:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     add    t14 <- t13, 33203
    movl    $33203, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  27:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     add    t17 <- t16, 60958
    movl    $60958, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  31:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  32:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  33:     add    t20 <- t19, 43216
    movl    $43216, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  34:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  35:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  36:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  37:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  38:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $98, %eax               #  39:     assign @t24 <- 98
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_8_while_cond       #  40:     goto   8_while_cond
l_f2_7:

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 54 of <array 40 of <array 69 of <array 26 of <array 95 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 56 of <array 7 of <array 87 of <array 84 of <array 19 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]

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
    movl    $71678, %eax            #   0:     assign v0 <- 71678
    movl    %eax, v0               
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    leal    v1, %eax                #   2:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #   4:     call   t2 <- f2
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movl    $75748, %eax            #   5:     if     75748 < 76434 goto 4
    movl    $76434, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_4               
    jmp     l_test_5                #   6:     goto   5
l_test_4:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_6                #   9:     goto   6
l_test_5:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_6:
    movzbl  -22(%ebp), %eax         #  13:     assign v2 <- t3
    movb    %al, v2                
l_test_9_while_cond:
    leal    v3, %eax                #  15:     &()    t4 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  17:     call   t5 <- f0
    addl    $4, %esp               
    movl    %eax, -32(%ebp)        
    movl    $45751, %eax            #  18:     add    t6 <- 45751, t5
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     if     t6 <= 96642 goto 10_while_body
    movl    $96642, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10_while_body   
    jmp     l_test_8                #  20:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  22:     goto   9_while_cond
l_test_8:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 54 of <array 40 of <array 69 of <array 26 of <array 95 of <char>>>>>>
    .long    5
    .long   54
    .long   40
    .long   69
    .long   26
    .long   95
    .skip 368128800
v2:                                 # <bool>
    .skip    1
    .align   4
v3:                                 # <array 56 of <array 7 of <array 87 of <array 84 of <array 19 of <char>>>>>>
    .long    5
    .long   56
    .long    7
    .long   87
    .long   84
    .long   19
    .skip 54429984








    # end of global data section
    #-----------------------------------------

    .end
##################################################
