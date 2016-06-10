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
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t20      <char> %ebp-57 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t22      <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t3       <char> %ebp-66 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 5 of <array 54 of <array 98 of <array 58 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 81 of <array 5 of <array 65 of <array 79 of <array 17 of <char>>>>>>> %ebp+16 ]
    #    -93(%ebp)   1  [ $v5       <char> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -56(%ebp)        
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -66(%ebp)         
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   3:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   4:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $25495, %eax            #   5:     mul    t5 <- 25495, t4
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   6:     add    t6 <- t5, 48398
    movl    $48398, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   8:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   9:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  10:     mul    t8 <- t6, t7
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  11:     add    t9 <- t8, 45524
    movl    $45524, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  13:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  14:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -92(%ebp), %eax         #  15:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t12 <- t11, 859
    movl    $859, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  19:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  20:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t15 <- t14, 71283
    movl    $71283, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    16(%ebp), %eax          #  23:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  24:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  25:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  26:     add    t19 <- v4, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -66(%ebp), %eax         #  27:     assign @t19 <- t3
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_3_while_cond:
    jmp     l_f0_2                  #  29:     goto   2
    call    dummyCHARfunc           #  30:     call   t20 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    call    ReadInt                 #  31:     call   t21 <- ReadInt
    movl    %eax, -64(%ebp)        
    movl    $87665, %eax            #  32:     if     87665 < 49516 goto 8
    movl    $49516, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_8                 
    jmp     l_f0_9                  #  33:     goto   9
l_f0_8:
    movl    $1, %eax                #  35:     assign t22 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f0_10                 #  36:     goto   10
l_f0_9:
    movl    $0, %eax                #  38:     assign t22 <- 0
    movb    %al, -65(%ebp)         
l_f0_10:
    movzbl  -65(%ebp), %eax         #  40:     return t22
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  41:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
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
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t4       <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 68 of <array 27 of <array 19 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 85 of <array 23 of <array 60 of <array 22 of <array 74 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 76 of <array 16 of <array 33 of <array 19 of <array 27 of <char>>>>>>> %ebp+16 ]
    #    -89(%ebp)   1  [ $v5       <bool> %ebp-89 ]

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
    movl    $64917, %eax            #   0:     if     64917 # 92006 goto 1_if_true
    movl    $92006, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   6:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #   7:     return t2
    jmp     l_f1_exit              
    movl    $27032, %eax            #   8:     add    t3 <- 27032, 79159
    movl    $79159, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $24428, %eax            #   9:     if     24428 < t3 goto 7_if_true
    movl    -64(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  10:     goto   8_if_false
l_f1_7_if_true:
    movl    $51734, %eax            #  12:     if     51734 >= 61514 goto 11
    movl    $61514, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_11                
    jmp     l_f1_12                 #  13:     goto   12
l_f1_11:
    movl    $1, %eax                #  15:     assign t4 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f1_13                 #  16:     goto   13
l_f1_12:
    movl    $0, %eax                #  18:     assign t4 <- 0
    movb    %al, -65(%ebp)         
l_f1_13:
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  22:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $82387, %eax            #  23:     mul    t6 <- 82387, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  24:     add    t7 <- t6, 12163
    movl    $12163, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  27:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  28:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  29:     add    t10 <- t9, 31686
    movl    $31686, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  31:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  32:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  33:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     add    t13 <- t12, 93117
    movl    $93117, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  36:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  37:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  38:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  39:     add    t16 <- t15, 61356
    movl    $61356, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  40:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  41:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  42:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  43:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  44:     add    t20 <- v3, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -65(%ebp), %eax         #  45:     assign @t20 <- t4
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_6                  #  46:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 76 of <array 16 of <array 33 of <array 19 of <array 27 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 85 of <array 23 of <array 60 of <array 22 of <array 74 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 68 of <array 27 of <array 19 of <array 9 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 81 of <array 5 of <array 65 of <array 79 of <array 17 of <char>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t8       <bool> %ebp-38 ]
    #    -44(%ebp)   4  [ $t9       <ptr(4) to <array 6 of <array 5 of <array 54 of <array 98 of <array 58 of <bool>>>>>>> %ebp-44 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 33 of <array 84 of <array 60 of <array 64 of <array 83 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 28 of <array 69 of <array 66 of <array 48 of <array 29 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #   -2197760(%ebp)  2197716  [ $v5       <array 7 of <array 68 of <array 27 of <array 19 of <array 9 of <char>>>>>> %ebp-2197760 ]
    #   -193162184(%ebp)  190964424  [ $v6       <array 85 of <array 23 of <array 60 of <array 22 of <array 74 of <bool>>>>>> %ebp-193162184 ]
    #   -213747872(%ebp)  20585688  [ $v7       <array 76 of <array 16 of <array 33 of <array 19 of <array 27 of <char>>>>>> %ebp-213747872 ]
    #   -222955976(%ebp)  9208104  [ $v8       <array 6 of <array 5 of <array 54 of <array 98 of <array 58 of <bool>>>>>> %ebp-222955976 ]
    #   -258310476(%ebp)  35354499  [ $v9       <array 81 of <array 5 of <array 65 of <array 79 of <array 17 of <char>>>>>> %ebp-258310476 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $258310464, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $64577616, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2197760(%ebp)       # local array 'v5': 5 dimensions
    movl    $7,-2197756(%ebp)       #   dimension 1: 7 elements
    movl    $68,-2197752(%ebp)      #   dimension 2: 68 elements
    movl    $27,-2197748(%ebp)      #   dimension 3: 27 elements
    movl    $19,-2197744(%ebp)      #   dimension 4: 19 elements
    movl    $9,-2197740(%ebp)       #   dimension 5: 9 elements
    movl    $5,-193162184(%ebp)     # local array 'v6': 5 dimensions
    movl    $85,-193162180(%ebp)    #   dimension 1: 85 elements
    movl    $23,-193162176(%ebp)    #   dimension 2: 23 elements
    movl    $60,-193162172(%ebp)    #   dimension 3: 60 elements
    movl    $22,-193162168(%ebp)    #   dimension 4: 22 elements
    movl    $74,-193162164(%ebp)    #   dimension 5: 74 elements
    movl    $5,-213747872(%ebp)     # local array 'v7': 5 dimensions
    movl    $76,-213747868(%ebp)    #   dimension 1: 76 elements
    movl    $16,-213747864(%ebp)    #   dimension 2: 16 elements
    movl    $33,-213747860(%ebp)    #   dimension 3: 33 elements
    movl    $19,-213747856(%ebp)    #   dimension 4: 19 elements
    movl    $27,-213747852(%ebp)    #   dimension 5: 27 elements
    movl    $5,-222955976(%ebp)     # local array 'v8': 5 dimensions
    movl    $6,-222955972(%ebp)     #   dimension 1: 6 elements
    movl    $5,-222955968(%ebp)     #   dimension 2: 5 elements
    movl    $54,-222955964(%ebp)    #   dimension 3: 54 elements
    movl    $98,-222955960(%ebp)    #   dimension 4: 98 elements
    movl    $58,-222955956(%ebp)    #   dimension 5: 58 elements
    movl    $5,-258310476(%ebp)     # local array 'v9': 5 dimensions
    movl    $81,-258310472(%ebp)    #   dimension 1: 81 elements
    movl    $5,-258310468(%ebp)     #   dimension 2: 5 elements
    movl    $65,-258310464(%ebp)    #   dimension 3: 65 elements
    movl    $79,-258310460(%ebp)    #   dimension 4: 79 elements
    movl    $17,-258310456(%ebp)    #   dimension 5: 17 elements

    # function body
    leal    -213747872(%ebp), %eax  #   0:     &()    t2 <- v7
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     param  2 <- t2
    pushl   %eax                   
    leal    -193162184(%ebp), %eax  #   2:     &()    t3 <- v6
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  1 <- t3
    pushl   %eax                   
    leal    -2197760(%ebp), %eax    #   4:     &()    t4 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #   6:     call   t5 <- f1
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   7:     assign v4 <- t5
    movb    %al, 16(%ebp)          
l_f2_2_while_cond:
    jmp     l_f2_1                  #   9:     goto   1
    jmp     l_f2_1                  #  10:     goto   1
    jmp     l_f2_1                  #  11:     goto   1
    jmp     l_f2_1                  #  12:     goto   1
    jmp     l_f2_1                  #  13:     goto   1
    jmp     l_f2_2_while_cond       #  14:     goto   2_while_cond
l_f2_1:
    leal    -258310476(%ebp), %eax  #  16:     &()    t6 <- v9
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     param  2 <- t6
    pushl   %eax                   
    call    dummyBOOLfunc           #  18:     call   t7 <- dummyBOOLfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  19:     if     t7 = 1 goto 13
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_13                
    jmp     l_f2_14                 #  20:     goto   14
l_f2_13:
    movl    $1, %eax                #  22:     assign t8 <- 1
    movb    %al, -38(%ebp)         
    jmp     l_f2_15                 #  23:     goto   15
l_f2_14:
    movl    $0, %eax                #  25:     assign t8 <- 0
    movb    %al, -38(%ebp)         
l_f2_15:
    movzbl  -38(%ebp), %eax         #  27:     param  1 <- t8
    pushl   %eax                   
    leal    -222955976(%ebp), %eax  #  28:     &()    t9 <- v8
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  30:     call   t10 <- f0
    addl    $12, %esp              
    movb    %al, -13(%ebp)         

l_f2_exit:
    # epilogue
    addl    $258310464, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
l_test_1_while_cond:
    movl    $2806, %eax             #   1:     if     2806 >= 17842 goto 2_while_body
    movl    $17842, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    jmp     l_test_7                #   6:     goto   7
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   8:     goto   8
l_test_7:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movzbl  -13(%ebp), %eax         #  12:     assign v0 <- t0
    movb    %al, v0                
    movl    $24863, %eax            #  13:     mul    t1 <- 24863, 59078
    movl    $59078, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     assign v1 <- t1
    movl    %eax, v1               
l_test_12_while_cond:
    jmp     l_test_13_while_body    #  16:     goto   13_while_body
    jmp     l_test_13_while_body    #  17:     goto   13_while_body
    jmp     l_test_13_while_body    #  18:     goto   13_while_body
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  20:     goto   12_while_cond
    movl    $21321, %eax            #  21:     assign v1 <- 21321
    movl    %eax, v1               
l_test_19_while_cond:
    jmp     l_test_18               #  23:     goto   18
    jmp     l_test_19_while_cond    #  24:     goto   19_while_cond
l_test_18:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
