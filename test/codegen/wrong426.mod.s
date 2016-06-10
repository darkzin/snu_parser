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
    #    -57(%ebp)   1  [ $t21      <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t3       <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t4       <bool> %ebp-66 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 3 of <array 4 of <array 9 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 6 of <array 2 of <array 4 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #    -92(%ebp)   4  [ $v4       <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $v5       <bool> %ebp-93 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -65(%ebp)         
    movzbl  -65(%ebp), %eax         #   2:     if     t3 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $51681, %eax            #   5:     assign v4 <- 51681
    movl    %eax, -92(%ebp)        
    movl    $58581, %eax            #   6:     if     58581 < 74033 goto 5
    movl    $74033, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_5                 
    jmp     l_f0_6                  #   7:     goto   6
l_f0_5:
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -66(%ebp)         
    jmp     l_f0_7                  #  10:     goto   7
l_f0_6:
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -66(%ebp)         
l_f0_7:
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $10298, %eax            #  17:     mul    t6 <- 10298, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  18:     add    t7 <- t6, 74354
    movl    $74354, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  22:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  23:     add    t10 <- t9, 26630
    movl    $26630, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  26:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  27:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     add    t13 <- t12, 14875
    movl    $14875, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  31:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  32:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     add    t16 <- t15, 80739
    movl    $80739, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  35:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  36:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  37:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  38:     add    t20 <- v2, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movzbl  -66(%ebp), %eax         #  39:     assign @t20 <- t4
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $33850, %eax            #  40:     if     33850 # 53630 goto 10
    movl    $53630, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_10                
    jmp     l_f0_11                 #  41:     goto   11
l_f0_10:
    movl    $1, %eax                #  43:     assign t21 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f0_12                 #  44:     goto   12
l_f0_11:
    movl    $0, %eax                #  46:     assign t21 <- 0
    movb    %al, -57(%ebp)         
l_f0_12:
    movzbl  -57(%ebp), %eax         #  48:     assign v5 <- t21
    movb    %al, -93(%ebp)         
l_f0_15_while_cond:
    jmp     l_f0_14                 #  50:     goto   14
    jmp     l_f0_15_while_cond      #  51:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_19_if_false        #  53:     goto   19_if_false
    jmp     l_f0_17                 #  54:     goto   17
l_f0_19_if_false:
l_f0_17:
    jmp     l_f0_1_while_cond       #  57:     goto   1_while_cond
l_f0_0:
    movl    $94391, %eax            #  59:     if     94391 >= 71818 goto 21_if_true
    movl    $71818, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_21_if_true        
    jmp     l_f0_22_if_false        #  60:     goto   22_if_false
l_f0_21_if_true:
    call    dummyINTfunc            #  62:     call   t22 <- dummyINTfunc
    movl    %eax, -64(%ebp)        
    movl    $97, %eax               #  63:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_20                 #  64:     goto   20
l_f0_22_if_false:
l_f0_20:
l_f0_27_while_cond:
    jmp     l_f0_28_while_body      #  68:     goto   28_while_body
    movl    $1, %eax                #  69:     if     1 # 0 goto 28_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_28_while_body     
    jmp     l_f0_26                 #  70:     goto   26
l_f0_28_while_body:
    jmp     l_f0_27_while_cond      #  72:     goto   27_while_cond
l_f0_26:

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 4 of <array 6 of <array 2 of <array 4 of <array 6 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 3 of <array 4 of <array 9 of <array 5 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 4 of <array 6 of <array 2 of <array 4 of <array 6 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 2 of <array 3 of <array 4 of <array 9 of <array 5 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <char> %ebp-33 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]
    #   -1140(%ebp)  1104  [ $v6       <array 2 of <array 3 of <array 4 of <array 9 of <array 5 of <bool>>>>>> %ebp-1140 ]
    #   -2316(%ebp)  1176  [ $v7       <array 4 of <array 6 of <array 2 of <array 4 of <array 6 of <bool>>>>>> %ebp-2316 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2304, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $576, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1140(%ebp)          # local array 'v6': 5 dimensions
    movl    $2,-1136(%ebp)          #   dimension 1: 2 elements
    movl    $3,-1132(%ebp)          #   dimension 2: 3 elements
    movl    $4,-1128(%ebp)          #   dimension 3: 4 elements
    movl    $9,-1124(%ebp)          #   dimension 4: 9 elements
    movl    $5,-1120(%ebp)          #   dimension 5: 5 elements
    movl    $5,-2316(%ebp)          # local array 'v7': 5 dimensions
    movl    $4,-2312(%ebp)          #   dimension 1: 4 elements
    movl    $6,-2308(%ebp)          #   dimension 2: 6 elements
    movl    $2,-2304(%ebp)          #   dimension 3: 2 elements
    movl    $4,-2300(%ebp)          #   dimension 4: 4 elements
    movl    $6,-2296(%ebp)          #   dimension 5: 6 elements

    # function body
    movl    $97, %eax               #   0:     if     97 >= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    leal    -2316(%ebp), %eax       #   3:     &()    t3 <- v7
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  1 <- t3
    pushl   %eax                   
    leal    -1140(%ebp), %eax       #   5:     &()    t4 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   7:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_f1_4                  #   8:     goto   4
l_f1_4:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
    leal    -2316(%ebp), %eax       #  13:     &()    t6 <- v7
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     param  1 <- t6
    pushl   %eax                   
    leal    -1140(%ebp), %eax       #  15:     &()    t7 <- v6
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  17:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -33(%ebp)         
    jmp     l_f1_11_if_false        #  18:     goto   11_if_false
    movl    $16982, %eax            #  19:     param  0 <- 16982
    pushl   %eax                   
    call    WriteInt                #  20:     call   WriteInt
    addl    $4, %esp               
l_f1_14_while_cond:
    jmp     l_f1_13                 #  22:     goto   13
    jmp     l_f1_14_while_cond      #  23:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_9                  #  25:     goto   9
l_f1_11_if_false:
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $2304, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <ptr(4) to <array 4 of <array 6 of <array 2 of <array 4 of <array 6 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <ptr(4) to <array 2 of <array 3 of <array 4 of <array 9 of <array 5 of <bool>>>>>>> %ebp-36 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 2 of <array 2 of <array 1 of <array 6 of <int>>>>>>> %ebp+8 ]
    #    -37(%ebp)   1  [ $v3       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $v4       <int> %ebp-44 ]
    #   -1148(%ebp)  1104  [ $v5       <array 2 of <array 3 of <array 4 of <array 9 of <array 5 of <bool>>>>>> %ebp-1148 ]
    #   -2324(%ebp)  1176  [ $v6       <array 4 of <array 6 of <array 2 of <array 4 of <array 6 of <bool>>>>>> %ebp-2324 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2312, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $578, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1148(%ebp)          # local array 'v5': 5 dimensions
    movl    $2,-1144(%ebp)          #   dimension 1: 2 elements
    movl    $3,-1140(%ebp)          #   dimension 2: 3 elements
    movl    $4,-1136(%ebp)          #   dimension 3: 4 elements
    movl    $9,-1132(%ebp)          #   dimension 4: 9 elements
    movl    $5,-1128(%ebp)          #   dimension 5: 5 elements
    movl    $5,-2324(%ebp)          # local array 'v6': 5 dimensions
    movl    $4,-2320(%ebp)          #   dimension 1: 4 elements
    movl    $6,-2316(%ebp)          #   dimension 2: 6 elements
    movl    $2,-2312(%ebp)          #   dimension 3: 2 elements
    movl    $4,-2308(%ebp)          #   dimension 4: 4 elements
    movl    $6,-2304(%ebp)          #   dimension 5: 6 elements

    # function body
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $97, %eax               #   4:     if     97 > 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $1, %eax                #   7:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_7                  #   8:     goto   7
l_f2_6:
    movl    $0, %eax                #  10:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_7:
    movzbl  -14(%ebp), %eax         #  12:     assign v3 <- t3
    movb    %al, -37(%ebp)         
l_f2_10_while_cond:
    jmp     l_f2_9                  #  14:     goto   9
    jmp     l_f2_10_while_cond      #  15:     goto   10_while_cond
l_f2_9:
    call    dummyBOOLfunc           #  17:     call   t4 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $91761, %eax            #  18:     assign v4 <- 91761
    movl    %eax, -44(%ebp)        
    jmp     l_f2_1_while_cond       #  19:     goto   1_while_cond
l_f2_0:
    movl    $36632, %eax            #  21:     add    t5 <- 36632, 25657
    movl    $25657, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     sub    t6 <- t5, 88776
    movl    $88776, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     if     t6 # 84006 goto 15_if_true
    movl    $84006, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  24:     goto   16_if_false
l_f2_15_if_true:
    call    dummyBOOLfunc           #  26:     call   t7 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $1, %eax                #  27:     assign v3 <- 1
    movb    %al, -37(%ebp)         
    movl    $73567, %eax            #  28:     assign v4 <- 73567
    movl    %eax, -44(%ebp)        
    jmp     l_f2_23_if_false        #  29:     goto   23_if_false
    jmp     l_f2_21                 #  30:     goto   21
l_f2_23_if_false:
l_f2_21:
    jmp     l_f2_26_if_false        #  33:     goto   26_if_false
    jmp     l_f2_24                 #  34:     goto   24
l_f2_26_if_false:
l_f2_24:
    jmp     l_f2_29_if_false        #  37:     goto   29_if_false
    jmp     l_f2_27                 #  38:     goto   27
l_f2_29_if_false:
l_f2_27:
l_f2_31_while_cond:
    movl    $9681, %eax             #  42:     if     9681 > 63119 goto 32_while_body
    movl    $63119, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_32_while_body     
    jmp     l_f2_30                 #  43:     goto   30
l_f2_32_while_body:
    jmp     l_f2_31_while_cond      #  45:     goto   31_while_cond
l_f2_30:
    jmp     l_f2_14                 #  47:     goto   14
l_f2_16_if_false:
l_f2_14:
    leal    -2324(%ebp), %eax       #  50:     &()    t8 <- v6
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  51:     param  1 <- t8
    pushl   %eax                   
    leal    -1148(%ebp), %eax       #  52:     &()    t9 <- v5
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  53:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  54:     call   t10 <- f0
    addl    $8, %esp               
    movb    %al, -13(%ebp)         

l_f2_exit:
    # epilogue
    addl    $2312, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    call    ReadInt                 #   2:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $80608, %eax            #   3:     div    t2 <- 80608, t1
    movl    -20(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v1 <- t2
    movl    %eax, v1               
    jmp     l_test_exit            
    jmp     l_test_4_if_true        #   6:     goto   4_if_true
    jmp     l_test_4_if_true        #   7:     goto   4_if_true
    jmp     l_test_4_if_true        #   8:     goto   4_if_true
    jmp     l_test_4_if_true        #   9:     goto   4_if_true
l_test_4_if_true:
    jmp     l_test_12_if_false      #  11:     goto   12_if_false
    jmp     l_test_10               #  12:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_3                #  15:     goto   3
l_test_3:
l_test_14_while_cond:
    jmp     l_test_13               #  18:     goto   13
    jmp     l_test_exit            
    movl    $97, %eax               #  20:     if     97 > 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_18_if_true      
    jmp     l_test_19_if_false      #  21:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  23:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_14_while_cond    #  26:     goto   14_while_cond
l_test_13:

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
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
