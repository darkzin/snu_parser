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
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t13      <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 6 of <array 3 of <array 5 of <array 8 of <char>>>>>>> %ebp+12 ]

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
    movl    $98, %eax               #   0:     if     98 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_6_if_false         #   3:     goto   6_if_false
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $99, %eax               #   7:     return 99
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   8:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_10_while_cond:
    call    dummyBOOLfunc           #  13:     call   t12 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_10_while_cond      #  14:     goto   10_while_cond
    call    dummyCHARfunc           #  15:     call   t13 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  16:     return t13
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -36(%ebp)   4  [ $v2       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v3       <char> %ebp-37 ]

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
    movl    $90334, %eax            #   0:     div    t11 <- 90334, 33645
    movl    $33645, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t12 <- t11, 84485
    movl    $84485, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t13 <- t12, 54030
    movl    $54030, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t14 <- t13, 18295
    movl    $18295, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     sub    t15 <- t14, 84084
    movl    $84084, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     return t15
    jmp     l_f1_exit              
    movl    $100, %eax              #   6:     if     100 > 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   7:     goto   3_if_false
l_f1_2_if_true:
    movl    $11033, %eax            #   9:     assign v2 <- 11033
    movl    %eax, -36(%ebp)        
    movl    $98, %eax               #  10:     assign v3 <- 98
    movb    %al, -37(%ebp)         
    jmp     l_f1_1                  #  11:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $100, %eax              #  14:     if     100 < 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #  15:     goto   9_if_false
l_f1_8_if_true:
    call    WriteLn                 #  17:     call   WriteLn
    movl    $96130, %eax            #  18:     if     96130 <= 45343 goto 13_if_true
    movl    $45343, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  19:     goto   14_if_false
l_f1_13_if_true:
    jmp     l_f1_12                 #  21:     goto   12
l_f1_14_if_false:
l_f1_12:
    movl    $0, %eax                #  24:     assign v1 <- 0
    movb    %al, 8(%ebp)           
    jmp     l_f1_7                  #  25:     goto   7
l_f1_9_if_false:
l_f1_7:

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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t30      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t31      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t32      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t33      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t34      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t35      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t36      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t37      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t38      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t39      <int> %ebp-128 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 8 of <array 8 of <array 6 of <array 1 of <char>>>>>>> %ebp+8 ]
    #   -129(%ebp)   1  [ $v2       <char> %ebp-129 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $120, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $30, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   2:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   3:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $50166, %eax            #   4:     mul    t12 <- 50166, t11
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #   5:     param  0 <- 0
    pushl   %eax                   
    call    f1                      #   6:     call   t13 <- f1
    addl    $4, %esp               
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     div    t14 <- t13, 7576
    movl    $7576, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     mul    t15 <- t14, 78464
    movl    $78464, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t16 <- t12, t15
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  13:     mul    t18 <- t16, t17
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  14:     add    t19 <- t18, 49903
    movl    $49903, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  18:     mul    t21 <- t19, t20
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  19:     add    t22 <- t21, 14152
    movl    $14152, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  23:     mul    t24 <- t22, t23
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  24:     add    t25 <- t24, 85645
    movl    $85645, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  25:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  27:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  28:     add    t28 <- t26, t27
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  29:     add    t29 <- v1, t28
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $97, %eax               #  30:     assign @t29 <- 97
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $17126, %eax            #  31:     mul    t30 <- 17126, 76073
    movl    $76073, %ebx           
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  32:     div    t31 <- t30, 63088
    movl    $63088, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  33:     mul    t32 <- t31, 45532
    movl    $45532, %ebx           
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  34:     mul    t33 <- t32, 6069
    movl    $6069, %ebx            
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  35:     div    t34 <- t33, 1586
    movl    $1586, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  36:     div    t35 <- t34, 44826
    movl    $44826, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  37:     mul    t36 <- t35, 82452
    movl    $82452, %ebx           
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  38:     sub    t37 <- t36, 30128
    movl    $30128, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  39:     add    t38 <- t37, 21856
    movl    $21856, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  40:     add    t39 <- t38, 54183
    movl    $54183, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  41:     return t39
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $120, %esp              # remove locals
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
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t3       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t4       <char> %ebp-30 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t9       <bool> %ebp-49 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $85530, %eax            #   1:     add    t1 <- 85530, 8622
    movl    $8622, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 24857
    movl    $24857, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     assign v0 <- t2
    movl    %eax, v0               
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    call    dummyCHARfunc           #   5:     call   t4 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movzbl  -29(%ebp), %eax         #   6:     if     t3 >= t4 goto 3_if_true
    movzbl  -30(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_3_if_true       
    jmp     l_test_4_if_false       #   7:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_2                #   9:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $43763, %eax            #  12:     sub    t5 <- 43763, 82893
    movl    $82893, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  13:     sub    t6 <- t5, 93639
    movl    $93639, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  14:     if     t6 >= 16940 goto 7_if_true
    movl    $16940, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_7_if_true       
    jmp     l_test_8_if_false       #  15:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_12_if_false      #  17:     goto   12_if_false
    jmp     l_test_10               #  18:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_6                #  21:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $99, %eax               #  24:     if     99 >= 97 goto 18
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_18              
    jmp     l_test_19               #  25:     goto   19
l_test_18:
    movl    $1, %eax                #  27:     assign t7 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_test_20               #  28:     goto   20
l_test_19:
    movl    $0, %eax                #  30:     assign t7 <- 0
    movb    %al, -41(%ebp)         
l_test_20:
    movzbl  -41(%ebp), %eax         #  32:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  33:     call   t8 <- f1
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  34:     if     t8 <= 37933 goto 14
    movl    $37933, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_14              
    jmp     l_test_15               #  35:     goto   15
l_test_14:
    movl    $1, %eax                #  37:     assign t9 <- 1
    movb    %al, -49(%ebp)         
    jmp     l_test_16               #  38:     goto   16
l_test_15:
    movl    $0, %eax                #  40:     assign t9 <- 0
    movb    %al, -49(%ebp)         
l_test_16:
    movzbl  -49(%ebp), %eax         #  42:     assign v1 <- t9
    movb    %al, v1                
    call    dummyBOOLfunc           #  43:     call   t10 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
