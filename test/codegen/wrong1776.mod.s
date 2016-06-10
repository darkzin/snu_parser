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
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t6       <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 66 of <array 29 of <array 99 of <array 1 of <array 59 of <bool>>>>>>> %ebp+8 ]
    #    -93(%ebp)   1  [ $v2       <bool> %ebp-93 ]
    #   -100(%ebp)   4  [ $v3       <int> %ebp-100 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $1, %eax                #   2:     if     1 = 0 goto 4
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4                 
    jmp     l_f0_5                  #   3:     goto   5
l_f0_4:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f0_6                  #   6:     goto   6
l_f0_5:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -77(%ebp)         
l_f0_6:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $71347, %eax            #  13:     mul    t8 <- 71347, t7
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  14:     add    t9 <- t8, 87108
    movl    $87108, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -92(%ebp), %eax         #  18:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t12 <- t11, 11202
    movl    $11202, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  23:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     add    t15 <- t14, 13854
    movl    $13854, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  28:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     add    t18 <- t17, 41691
    movl    $41691, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  33:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  34:     add    t22 <- v1, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -77(%ebp), %eax         #  35:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  37:     goto   1_while_cond
l_f0_0:
    movl    $99, %eax               #  39:     if     99 <= 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  40:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  42:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_9                  #  45:     goto   9
l_f0_9:
    movl    $54902, %eax            #  47:     sub    t23 <- 54902, 62670
    movl    $62670, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  48:     add    t24 <- t23, 23174
    movl    $23174, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  49:     add    t25 <- t24, 58857
    movl    $58857, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  50:     assign v3 <- t25
    movl    %eax, -100(%ebp)       

l_f0_exit:
    # epilogue
    addl    $88, %esp               # remove locals
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
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <int> %ebp-60 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 91 of <array 78 of <array 59 of <array 2 of <array 36 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 61 of <array 19 of <array 65 of <array 86 of <array 3 of <bool>>>>>>> %ebp+12 ]

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
    movl    $80270, %eax            #   0:     mul    t6 <- 80270, 79626
    movl    $79626, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   1:     div    t7 <- t6, 57522
    movl    $57522, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   2:     mul    t8 <- t7, 81908
    movl    $81908, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   3:     div    t9 <- t8, 95001
    movl    $95001, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   4:     div    t10 <- t9, 10990
    movl    $10990, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     mul    t11 <- t10, 71548
    movl    $71548, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     mul    t12 <- t11, 18676
    movl    $18676, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     div    t13 <- t12, 44015
    movl    $44015, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     return t13
    jmp     l_f1_exit              
    movl    $10749, %eax            #   9:     div    t14 <- 10749, 75188
    movl    $75188, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     mul    t15 <- t14, 72440
    movl    $72440, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     return t15
    jmp     l_f1_exit              
    movl    $65912, %eax            #  12:     sub    t16 <- 65912, 95573
    movl    $95573, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  13:     add    t17 <- t16, 51622
    movl    $51622, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  14:     return t17
    jmp     l_f1_exit              

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
    #    -65(%ebp)   1  [ $t23      <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t6       <char> %ebp-66 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 46 of <array 48 of <array 16 of <array 52 of <array 98 of <int>>>>>>> %ebp+8 ]
    #    -84(%ebp)   4  [ $v2       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $v3       <bool> %ebp-85 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -66(%ebp)         
    movzbl  -66(%ebp), %eax         #   1:     return t6
    jmp     l_f2_exit              
    movl    $98, %eax               #   2:     if     98 < 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    movl    $97, %eax               #   5:     return 97
    jmp     l_f2_exit              
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   8:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $15435, %eax            #   9:     mul    t8 <- 15435, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  10:     add    t9 <- t8, 2346
    movl    $2346, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  14:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t12 <- t11, 63580
    movl    $63580, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  19:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     add    t15 <- t14, 60369
    movl    $60369, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  24:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     add    t18 <- t17, 95676
    movl    $95676, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  26:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  27:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  28:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  29:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  30:     add    t22 <- v1, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $99918, %eax            #  31:     assign @t22 <- 99918
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_1                  #  32:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_8                  #  35:     goto   8
    jmp     l_f2_9                  #  36:     goto   9
l_f2_8:
    movl    $1, %eax                #  38:     assign t23 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f2_10                 #  39:     goto   10
l_f2_9:
    movl    $0, %eax                #  41:     assign t23 <- 0
    movb    %al, -65(%ebp)         
l_f2_10:
    movzbl  -65(%ebp), %eax         #  43:     assign v3 <- t23
    movb    %al, -85(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 46 of <array 48 of <array 16 of <array 52 of <array 98 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_3                #   1:     goto   3
l_test_3:
    movl    $48982, %eax            #   3:     if     48982 >= 30609 goto 7
    movl    $30609, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_7               
    jmp     l_test_8                #   4:     goto   8
l_test_7:
    movl    $1, %eax                #   6:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_9                #   7:     goto   9
l_test_8:
    movl    $0, %eax                #   9:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_9:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t0
    movb    %al, v0                
    movl    $97806, %eax            #  12:     if     97806 = 90152 goto 12_if_true
    movl    $90152, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_12_if_true      
    jmp     l_test_13_if_false      #  13:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  15:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $31395, %eax            #  18:     if     31395 >= 47656 goto 16
    movl    $47656, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_16              
    jmp     l_test_17               #  19:     goto   17
l_test_16:
    movl    $1, %eax                #  21:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_18               #  22:     goto   18
l_test_17:
    movl    $0, %eax                #  24:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_18:
    movzbl  -14(%ebp), %eax         #  26:     assign v0 <- t1
    movb    %al, v0                
    movl    $1, %eax                #  27:     if     1 # 0 goto 21_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_21_if_true      
    jmp     l_test_22_if_false      #  28:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  30:     goto   20
l_test_22_if_false:
l_test_20:
l_test_25_while_cond:
    jmp     l_test_25_while_cond    #  34:     goto   25_while_cond
    jmp     l_test_0                #  35:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $100, %eax              #  38:     if     100 = 99 goto 28_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_28_if_true      
    jmp     l_test_29_if_false      #  39:     goto   29_if_false
l_test_28_if_true:
    jmp     l_test_27               #  41:     goto   27
l_test_29_if_false:
l_test_27:
l_test_32_while_cond:
    movl    $100, %eax              #  45:     if     100 <= 100 goto 33_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_33_while_body   
    jmp     l_test_31               #  46:     goto   31
l_test_33_while_body:
    movl    $94568, %eax            #  48:     if     94568 <= 129 goto 36_if_true
    movl    $129, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_36_if_true      
    jmp     l_test_37_if_false      #  49:     goto   37_if_false
l_test_36_if_true:
    jmp     l_test_35               #  51:     goto   35
l_test_37_if_false:
l_test_35:
    jmp     l_test_32_while_cond    #  54:     goto   32_while_cond
l_test_31:
l_test_40_while_cond:
    jmp     l_test_43               #  57:     goto   43
    jmp     l_test_43               #  58:     goto   43
l_test_43:
    movl    $1, %eax                #  60:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_45               #  61:     goto   45
    movl    $0, %eax                #  62:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_45:
    movl    $0, %eax                #  64:     if     0 # t2 goto 41_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_41_while_body   
    jmp     l_test_39               #  65:     goto   39
l_test_41_while_body:
    call    WriteLn                 #  67:     call   WriteLn
    movl    $100, %eax              #  68:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  69:     call   WriteChar
    addl    $4, %esp               
l_test_52_while_cond:
    movl    $99, %eax               #  71:     if     99 = 100 goto 53_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_53_while_body   
    jmp     l_test_51               #  72:     goto   51
l_test_53_while_body:
    jmp     l_test_52_while_cond    #  74:     goto   52_while_cond
l_test_51:
    leal    v1, %eax                #  76:     &()    t3 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  77:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  78:     call   t4 <- f2
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_40_while_cond    #  80:     goto   40_while_cond
l_test_39:
    call    dummyBOOLfunc           #  82:     call   t5 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 46 of <array 48 of <array 16 of <array 52 of <array 98 of <int>>>>>>
    .long    5
    .long   46
    .long   48
    .long   16
    .long   52
    .long   98
    .skip 720125952








    # end of global data section
    #-----------------------------------------

    .end
##################################################
