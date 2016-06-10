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
    #    -13(%ebp)   1  [ $t12      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t18      <char> %ebp-37 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t12 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    call    dummyINTfunc            #   2:     call   t13 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $46962, %eax            #   3:     add    t14 <- 46962, t13
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $67545, %eax            #   4:     if     67545 # t14 goto 3_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
l_f0_6_while_cond:
    movl    $76225, %eax            #  10:     sub    t15 <- 76225, 95847
    movl    $95847, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     add    t16 <- t15, 14943
    movl    $14943, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     add    t17 <- t16, 49643
    movl    $49643, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $33329, %eax            #  13:     if     33329 < t17 goto 7_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_7_while_body      
    jmp     l_f0_5                  #  14:     goto   5
l_f0_7_while_body:
    movl    $27258, %eax            #  16:     return 27258
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  17:     call   t18 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    jmp     l_f0_6_while_cond       #  18:     goto   6_while_cond
l_f0_5:

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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 10 of <array 6 of <array 7 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -13(%ebp)   1  [ $v3       <char> %ebp-13 ]

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
    movl    $97, %eax               #   0:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
l_f1_5_while_cond:
    movl    $90201, %eax            #   3:     if     90201 <= 17395 goto 6_while_body
    movl    $17395, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6_while_body      
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_0                  #   8:     goto   0
l_f1_0:
    jmp     l_f1_10_if_false        #  10:     goto   10_if_false
l_f1_12_while_cond:
    movl    $62345, %eax            #  12:     if     62345 < 47095 goto 13_while_body
    movl    $47095, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_13_while_body     
    jmp     l_f1_11                 #  13:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  15:     goto   12_while_cond
l_f1_11:
l_f1_16_while_cond:
    movl    $36132, %eax            #  18:     if     36132 <= 37630 goto 17_while_body
    movl    $37630, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_17_while_body     
    jmp     l_f1_15                 #  19:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  21:     goto   16_while_cond
l_f1_15:
    jmp     l_f1_8                  #  23:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $97, %eax               #  26:     assign v3 <- 97
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t29      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t30      <bool> %ebp-85 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 9 of <array 6 of <array 7 of <array 3 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 7 of <array 3 of <array 6 of <array 6 of <array 2 of <char>>>>>>> %ebp+20 ]

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
    movl    $5728, %eax             #   0:     add    t12 <- 5728, 52713
    movl    $52713, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   2:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   3:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   4:     mul    t14 <- t12, t13
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $68239, %eax            #   5:     add    t15 <- 68239, 18551
    movl    $18551, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   6:     add    t16 <- t14, t15
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  10:     mul    t18 <- t16, t17
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     add    t19 <- t18, 59477
    movl    $59477, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  15:     mul    t21 <- t19, t20
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  16:     add    t22 <- t21, 84924
    movl    $84924, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  20:     mul    t24 <- t22, t23
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  21:     add    t25 <- t24, 82122
    movl    $82122, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  22:     mul    t26 <- t25, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  24:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  25:     add    t28 <- t26, t27
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    16(%ebp), %eax          #  26:     add    t29 <- v3, t28
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $62756, %eax            #  27:     assign @t29 <- 62756
    movl    -84(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_6                  #  28:     goto   6
    movl    $1, %eax                #  29:     assign t30 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f2_7                  #  30:     goto   7
l_f2_6:
    movl    $0, %eax                #  32:     assign t30 <- 0
    movb    %al, -85(%ebp)         
l_f2_7:
    movzbl  -85(%ebp), %eax         #  34:     if     t30 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #  35:     goto   3_if_false
l_f2_2_if_true:
    movl    $98, %eax               #  37:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_12_if_false        #  38:     goto   12_if_false
    jmp     l_f2_10                 #  39:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_1                  #  42:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_15_if_false        #  45:     goto   15_if_false
l_f2_17_while_cond:
    jmp     l_f2_16                 #  47:     goto   16
    jmp     l_f2_17_while_cond      #  48:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_13                 #  50:     goto   13
l_f2_15_if_false:
l_f2_13:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 7 of <array 10 of <array 6 of <array 7 of <array 1 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t2       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <array 3 of <array 6 of <array 6 of <array 2 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <array 9 of <array 6 of <array 7 of <array 3 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t9       <char> %ebp-53 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $79045, %eax            #   1:     mul    t1 <- 79045, 55088
    movl    $55088, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
    call    dummyBOOLfunc           #   3:     call   t2 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    leal    v2, %eax                #   4:     &()    t3 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     param  3 <- t3
    pushl   %eax                   
    leal    v1, %eax                #   6:     &()    t4 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     param  2 <- t4
    pushl   %eax                   
    movl    $1, %eax                #   8:     param  1 <- 1
    pushl   %eax                   
    call    dummyINTfunc            #   9:     call   t5 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     sub    t6 <- t5, 14329
    movl    $14329, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  11:     sub    t7 <- t6, 63810
    movl    $63810, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  12:     add    t8 <- t7, 97916
    movl    $97916, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  13:     param  0 <- t8
    pushl   %eax                   
    call    f2                      #  14:     call   t9 <- f2
    addl    $16, %esp              
    movb    %al, -53(%ebp)         
    jmp     l_test_9_if_false       #  15:     goto   9_if_false
    jmp     l_test_exit            
    jmp     l_test_7                #  17:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_4                #  20:     goto   4
l_test_4:
l_test_12_while_cond:
    movl    $0, %eax                #  23:     param  1 <- 0
    pushl   %eax                   
    leal    v3, %eax                #  24:     &()    t10 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  26:     call   t11 <- f1
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  27:     if     t11 = 1 goto 13_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  28:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  30:     goto   12_while_cond
l_test_11:

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
v1:                                 # <array 5 of <array 9 of <array 6 of <array 7 of <array 3 of <int>>>>>>
    .long    5
    .long    5
    .long    9
    .long    6
    .long    7
    .long    3
    .skip 22680
v2:                                 # <array 7 of <array 3 of <array 6 of <array 6 of <array 2 of <char>>>>>>
    .long    5
    .long    7
    .long    3
    .long    6
    .long    6
    .long    2
    .skip 1512
v3:                                 # <array 7 of <array 10 of <array 6 of <array 7 of <array 1 of <bool>>>>>>
    .long    5
    .long    7
    .long   10
    .long    6
    .long    7
    .long    1
    .skip 2940








    # end of global data section
    #-----------------------------------------

    .end
##################################################
