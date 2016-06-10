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
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t6       <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 99 of <array 82 of <array 61 of <array 53 of <array 84 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 80 of <array 11 of <array 29 of <array 33 of <array 61 of <int>>>>>>> %ebp+16 ]
    #    -88(%ebp)   4  [ $v3       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $v4       <char> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $10313, %eax            #   0:     sub    t5 <- 10313, 16073
    movl    $16073, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   1:     assign v3 <- t5
    movl    %eax, -88(%ebp)        
l_f0_2_while_cond:
    call    dummyBOOLfunc           #   3:     call   t6 <- dummyBOOLfunc
    movb    %al, -69(%ebp)         
    movzbl  -69(%ebp), %eax         #   4:     if     t6 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
    movl    $100, %eax              #   7:     if     100 = 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   8:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #  10:     goto   4
l_f0_6_if_false:
l_f0_4:
l_f0_9_while_cond:
    jmp     l_f0_8                  #  14:     goto   8
    jmp     l_f0_9_while_cond       #  15:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_2_while_cond       #  17:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_13_if_false        #  19:     goto   13_if_false
    movl    $100, %eax              #  20:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  21:     call   WriteChar
    addl    $4, %esp               
    movl    $99, %eax               #  22:     assign v4 <- 99
    movb    %al, -89(%ebp)         
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $86183, %eax            #  26:     mul    t8 <- 86183, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  27:     add    t9 <- t8, 98793
    movl    $98793, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  30:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  31:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  32:     add    t12 <- t11, 78449
    movl    $78449, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  33:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  35:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  36:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  37:     add    t15 <- t14, 82977
    movl    $82977, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  38:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  40:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  41:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  42:     add    t18 <- t17, 13841
    movl    $13841, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  43:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  45:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  46:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  47:     add    t22 <- v0, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3742, %eax             #  48:     assign @t22 <- 3742
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_11                 #  49:     goto   11
l_f0_13_if_false:
l_f0_11:

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <char>>> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 43 of <array 94 of <array 8 of <array 78 of <array 62 of <char>>>>>>> %ebp+8 ]
    #    -40(%ebp)   4  [ $v1       <int> %ebp-40 ]

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
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     div    t6 <- t5, 17602
    movl    $17602, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     return t6
    jmp     l_f1_exit              
    movl    $44391, %eax            #   3:     add    t7 <- 44391, 28580
    movl    $28580, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t8 <- t7, 73316
    movl    $73316, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     return t8
    jmp     l_f1_exit              
l_f1_3_while_cond:
    movl    $98, %eax               #   7:     if     98 <= 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_4_while_body      
    jmp     l_f1_2                  #   8:     goto   2
l_f1_4_while_body:
    leal    _str_1, %eax            #  10:     &()    t9 <- _str_1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #  12:     call   WriteStr
    addl    $4, %esp               
    movl    $77956, %eax            #  13:     return 77956
    jmp     l_f1_exit              
    call    ReadInt                 #  14:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $6569, %eax             #  15:     assign v1 <- 6569
    movl    %eax, -40(%ebp)        
l_f1_11_while_cond:
    movl    $20228, %eax            #  17:     if     20228 # 19315 goto 12_while_body
    movl    $19315, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_12_while_body     
    jmp     l_f1_10                 #  18:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  20:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_3_while_cond       #  22:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 80 of <array 11 of <array 29 of <array 33 of <array 61 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 99 of <array 82 of <array 61 of <array 53 of <array 84 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #   -228551444(%ebp)  228551416  [ $v2       <array 99 of <array 82 of <array 61 of <array 53 of <array 84 of <int>>>>>> %ebp-228551444 ]
    #   -434038508(%ebp)  205487064  [ $v3       <array 80 of <array 11 of <array 29 of <array 33 of <array 61 of <int>>>>>> %ebp-434038508 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $434038496, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $108509624, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-228551444(%ebp)     # local array 'v2': 5 dimensions
    movl    $99,-228551440(%ebp)    #   dimension 1: 99 elements
    movl    $82,-228551436(%ebp)    #   dimension 2: 82 elements
    movl    $61,-228551432(%ebp)    #   dimension 3: 61 elements
    movl    $53,-228551428(%ebp)    #   dimension 4: 53 elements
    movl    $84,-228551424(%ebp)    #   dimension 5: 84 elements
    movl    $5,-434038508(%ebp)     # local array 'v3': 5 dimensions
    movl    $80,-434038504(%ebp)    #   dimension 1: 80 elements
    movl    $11,-434038500(%ebp)    #   dimension 2: 11 elements
    movl    $29,-434038496(%ebp)    #   dimension 3: 29 elements
    movl    $33,-434038492(%ebp)    #   dimension 4: 33 elements
    movl    $61,-434038488(%ebp)    #   dimension 5: 61 elements

    # function body
    movl    $0, %eax                #   0:     if     0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   4:     goto   5_while_cond
    movl    $96869, %eax            #   5:     assign v0 <- 96869
    movl    %eax, 8(%ebp)          
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  10:     return t5
    jmp     l_f2_exit              
    leal    -434038508(%ebp), %eax  #  11:     &()    t6 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  2 <- t6
    pushl   %eax                   
    movl    $1, %eax                #  13:     param  1 <- 1
    pushl   %eax                   
    leal    -228551444(%ebp), %eax  #  14:     &()    t7 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  16:     call   t8 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         

l_f2_exit:
    # epilogue
    addl    $434038496, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 80 of <array 11 of <array 29 of <array 33 of <array 61 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 99 of <array 82 of <array 61 of <array 53 of <array 84 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   1:     if     1 # 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
l_test_9_while_cond:
    jmp     l_test_8                #   7:     goto   8
    jmp     l_test_9_while_cond     #   8:     goto   9_while_cond
l_test_8:
    leal    v1, %eax                #  10:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  2 <- t1
    pushl   %eax                   
    jmp     l_test_12               #  12:     goto   12
l_test_12:
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_14               #  15:     goto   14
    movl    $0, %eax                #  16:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_14:
    movzbl  -21(%ebp), %eax         #  18:     param  1 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  19:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  21:     call   t4 <- f0
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    jmp     l_test_1                #  22:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            

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
v0:                                 # <array 99 of <array 82 of <array 61 of <array 53 of <array 84 of <int>>>>>>
    .long    5
    .long   99
    .long   82
    .long   61
    .long   53
    .long   84
    .skip 228551392
v1:                                 # <array 80 of <array 11 of <array 29 of <array 33 of <array 61 of <int>>>>>>
    .long    5
    .long   80
    .long   11
    .long   29
    .long   33
    .long   61
    .skip 205487040








    # end of global data section
    #-----------------------------------------

    .end
##################################################
