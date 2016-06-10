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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 4 of <array 4 of <array 3 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]

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
l_f0_1_while_cond:
    movl    $70314, %eax            #   1:     div    t4 <- 70314, 69588
    movl    $69588, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t5 <- t4, 51549
    movl    $51549, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t6 <- t5, 36424
    movl    $36424, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     mul    t7 <- t6, 79151
    movl    $79151, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     div    t8 <- t7, 91724
    movl    $91724, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     div    t9 <- t8, 78825
    movl    $78825, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $31220, %eax            #   7:     if     31220 > t9 goto 2_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
    movl    $74755, %eax            #  12:     if     74755 >= 77270 goto 5_if_true
    movl    $77270, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #  13:     goto   6_if_false
l_f0_5_if_true:
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #  16:     goto   9_while_cond
    movl    $93317, %eax            #  17:     assign v3 <- 93317
    movl    %eax, -40(%ebp)        
    jmp     l_f0_4                  #  18:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $1, %eax                #  21:     if     1 # 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  22:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_exit              
    movl    $38392, %eax            #  25:     if     38392 # 80796 goto 18_if_true
    movl    $80796, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  26:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  28:     goto   17
l_f0_19_if_false:
l_f0_17:
    movl    $76369, %eax            #  31:     assign v3 <- 76369
    movl    %eax, -40(%ebp)        
    jmp     l_f0_22                 #  32:     goto   22
l_f0_22:
    jmp     l_f0_12                 #  34:     goto   12
l_f0_14_if_false:
l_f0_12:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t15      <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t4       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t5       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <int> %ebp-60 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 2 of <array 3 of <array 6 of <array 9 of <bool>>>>>>> %ebp+8 ]

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
    movl    $22601, %eax            #   0:     mul    t4 <- 22601, 27318
    movl    $27318, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   1:     mul    t5 <- t4, 36316
    movl    $36316, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   2:     div    t6 <- t5, 1828
    movl    $1828, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   3:     div    t7 <- t6, 74687
    movl    $74687, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   4:     sub    t8 <- t7, 7845
    movl    $7845, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   5:     add    t9 <- t8, 75637
    movl    $75637, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   6:     add    t10 <- t9, 87658
    movl    $87658, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     sub    t11 <- t10, 53497
    movl    $53497, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t12 <- t11, 7485
    movl    $7485, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     add    t13 <- t12, 39883
    movl    $39883, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     sub    t14 <- t13, 61370
    movl    $61370, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     return t14
    jmp     l_f1_exit              
    call    WriteLn                 #  12:     call   WriteLn
    call    dummyCHARfunc           #  13:     call   t15 <- dummyCHARfunc
    movb    %al, -33(%ebp)         

l_f1_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t26      <bool> %ebp-77 ]
    #    -78(%ebp)   1  [ $t4       <char> %ebp-78 ]
    #    -79(%ebp)   1  [ $t5       <bool> %ebp-79 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 5 of <array 3 of <array 9 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 6 of <array 4 of <array 8 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 2 of <array 10 of <array 8 of <array 8 of <int>>>>>>> %ebp+20 ]
    #    -97(%ebp)   1  [ $v4       <bool> %ebp-97 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -78(%ebp)         
    movzbl  -78(%ebp), %eax         #   1:     if     t4 # 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -79(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -79(%ebp)         
l_f2_3:
    movzbl  -79(%ebp), %eax         #   9:     assign v4 <- t5
    movb    %al, -97(%ebp)         
    movl    $87318, %eax            #  10:     add    t6 <- 87318, 76925
    movl    $76925, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  11:     add    t7 <- t6, 60536
    movl    $60536, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $10537, %eax            #  15:     mul    t9 <- 10537, t8
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  16:     add    t10 <- t9, 72141
    movl    $72141, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  20:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $14229, %eax            #  21:     add    t13 <- 14229, 56456
    movl    $56456, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  26:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  27:     add    t17 <- t16, 65803
    movl    $65803, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  30:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  31:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  32:     add    t20 <- t19, 1984
    movl    $1984, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  33:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  35:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  36:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  37:     add    t24 <- v0, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -88(%ebp), %eax         #  38:     assign @t24 <- t7
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyINTfunc            #  39:     call   t25 <- dummyINTfunc
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  40:     if     t25 < 26496 goto 7
    movl    $26496, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_7                 
    jmp     l_f2_8                  #  41:     goto   8
l_f2_7:
    movl    $1, %eax                #  43:     assign t26 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f2_9                  #  44:     goto   9
l_f2_8:
    movl    $0, %eax                #  46:     assign t26 <- 0
    movb    %al, -77(%ebp)         
l_f2_9:
    movzbl  -77(%ebp), %eax         #  48:     assign v4 <- t26
    movb    %al, -97(%ebp)         

l_f2_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <char> %ebp-19 ]

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
    movl    $9758, %eax             #   0:     sub    t0 <- 9758, 74776
    movl    $74776, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t0 >= 9614 goto 1_if_true
    movl    $9614, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    call    WriteLn                 #   4:     call   WriteLn
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #  10:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    call    dummyCHARfunc           #  11:     call   t3 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  12:     assign v0 <- t3
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
