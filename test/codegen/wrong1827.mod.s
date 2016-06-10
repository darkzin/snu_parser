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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <bool> %ebp-37 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -38(%ebp)   1  [ $v2       <bool> %ebp-38 ]

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
    movl    $99475, %eax            #   0:     add    t2 <- 99475, 70777
    movl    $70777, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t3 <- t2, 99668
    movl    $99668, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t4 <- t3, 35705
    movl    $35705, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t5 <- t4, 25585
    movl    $25585, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t6 <- t5, 77455
    movl    $77455, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     add    t7 <- t6, 36036
    movl    $36036, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     assign v1 <- t7
    movl    %eax, 12(%ebp)         
l_f0_2_while_cond:
    movl    $100, %eax              #   8:     if     100 > 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_while_body:
    movl    $97, %eax               #  11:     if     97 >= 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  12:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_9                  #  14:     goto   9
l_f0_9:
    movl    $100, %eax              #  16:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  17:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_5                  #  18:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_2_while_cond       #  21:     goto   2_while_cond
l_f0_1:
    movl    $1, %eax                #  23:     assign t8 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f0_16                 #  24:     goto   16
    movl    $0, %eax                #  25:     assign t8 <- 0
    movb    %al, -37(%ebp)         
l_f0_16:
    movzbl  -37(%ebp), %eax         #  27:     assign v2 <- t8
    movb    %al, -38(%ebp)         

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 86 of <array 91 of <array 48 of <array 14 of <array 98 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 78 of <array 3 of <array 46 of <array 17 of <array 64 of <bool>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f1_1_while_cond:
l_f1_4_while_cond:
    movl    $76320, %eax            #   2:     if     76320 > 30210 goto 5_while_body
    movl    $30210, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_5_while_body      
    jmp     l_f1_3                  #   3:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   5:     goto   4_while_cond
l_f1_3:
l_f1_8_while_cond:
    movl    $48085, %eax            #   8:     if     48085 <= 48035 goto 9_while_body
    movl    $48035, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_9_while_body      
    jmp     l_f1_7                  #   9:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  11:     goto   8_while_cond
l_f1_7:
l_f1_12_while_cond:
    movl    $94714, %eax            #  14:     if     94714 >= 7479 goto 13_while_body
    movl    $7479, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_13_while_body     
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  17:     goto   12_while_cond
l_f1_11:
l_f1_16_while_cond:
    jmp     l_f1_15                 #  20:     goto   15
    jmp     l_f1_16_while_cond      #  21:     goto   16_while_cond
l_f1_15:
    jmp     l_f1_18                 #  23:     goto   18
l_f1_18:
    jmp     l_f1_1_while_cond       #  25:     goto   1_while_cond
l_f1_25_while_cond:
    jmp     l_f1_24                 #  27:     goto   24
    jmp     l_f1_25_while_cond      #  28:     goto   25_while_cond
l_f1_24:
    jmp     l_f1_21                 #  30:     goto   21
l_f1_21:
    movl    $99, %eax               #  32:     if     99 >= 100 goto 28_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_28_if_true        
    jmp     l_f1_29_if_false        #  33:     goto   29_if_false
l_f1_28_if_true:
    movl    $100, %eax              #  35:     return 100
    jmp     l_f1_exit              
    movl    $97, %eax               #  36:     if     97 = 100 goto 33_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_33_if_true        
    jmp     l_f1_34_if_false        #  37:     goto   34_if_false
l_f1_33_if_true:
    jmp     l_f1_32                 #  39:     goto   32
l_f1_34_if_false:
l_f1_32:
    jmp     l_f1_27                 #  42:     goto   27
l_f1_29_if_false:
l_f1_27:

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 78 of <array 3 of <array 46 of <array 17 of <array 64 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t3       <ptr(4) to <array 86 of <array 91 of <array 48 of <array 14 of <array 98 of <bool>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t31      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t32      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t33      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t34      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t35      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t36      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t37      <ptr(4) to <array 78 of <array 3 of <array 46 of <array 17 of <array 64 of <bool>>>>>>> %ebp-132 ]
    #   -136(%ebp)   4  [ $t38      <ptr(4) to <array 86 of <array 91 of <array 48 of <array 14 of <array 98 of <bool>>>>>>> %ebp-136 ]
    #   -137(%ebp)   1  [ $t39      <char> %ebp-137 ]
    #   -138(%ebp)   1  [ $t4       <char> %ebp-138 ]
    #   -144(%ebp)   4  [ $t5       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t6       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t7       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t8       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t9       <int> %ebp-160 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 83 of <array 98 of <array 37 of <array 68 of <array 44 of <int>>>>>>> %ebp+16 ]
    #   -515389240(%ebp)  515389080  [ $v3       <array 86 of <array 91 of <array 48 of <array 14 of <array 98 of <bool>>>>>> %ebp-515389240 ]
    #   -527100496(%ebp)  11711256  [ $v4       <array 78 of <array 3 of <array 46 of <array 17 of <array 64 of <bool>>>>>> %ebp-527100496 ]
    #   -527100500(%ebp)   4  [ $v5       <int> %ebp-527100500 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $527100488, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $131775122, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-515389240(%ebp)     # local array 'v3': 5 dimensions
    movl    $86,-515389236(%ebp)    #   dimension 1: 86 elements
    movl    $91,-515389232(%ebp)    #   dimension 2: 91 elements
    movl    $48,-515389228(%ebp)    #   dimension 3: 48 elements
    movl    $14,-515389224(%ebp)    #   dimension 4: 14 elements
    movl    $98,-515389220(%ebp)    #   dimension 5: 98 elements
    movl    $5,-527100496(%ebp)     # local array 'v4': 5 dimensions
    movl    $78,-527100492(%ebp)    #   dimension 1: 78 elements
    movl    $3,-527100488(%ebp)     #   dimension 2: 3 elements
    movl    $46,-527100484(%ebp)    #   dimension 3: 46 elements
    movl    $17,-527100480(%ebp)    #   dimension 4: 17 elements
    movl    $64,-527100476(%ebp)    #   dimension 5: 64 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_3                  #   2:     goto   3
l_f2_3:
    leal    -527100496(%ebp), %eax  #   4:     &()    t2 <- v4
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   5:     param  1 <- t2
    pushl   %eax                   
    leal    -515389240(%ebp), %eax  #   6:     &()    t3 <- v3
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   7:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #   8:     call   t4 <- f1
    addl    $8, %esp               
    movb    %al, -138(%ebp)        
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    $6641, %eax             #  12:     mul    t6 <- 6641, t5
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  13:     add    t7 <- t6, 61866
    movl    $61866, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -156(%ebp)       
    movl    -152(%ebp), %eax        #  17:     mul    t9 <- t7, t8
    movl    -156(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  18:     add    t10 <- t9, 92698
    movl    $92698, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  22:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t13 <- t12, 36329
    movl    $36329, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  26:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  27:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     add    t16 <- t15, 59068
    movl    $59068, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  29:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  30:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  31:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  32:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  33:     add    t20 <- v2, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $35748, %eax            #  34:     assign @t20 <- 35748
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $2, %eax                #  35:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $77882, %eax            #  38:     mul    t22 <- 77882, t21
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  39:     add    t23 <- t22, 76584
    movl    $76584, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  40:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  41:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  42:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  43:     mul    t25 <- t23, t24
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  44:     add    t26 <- t25, 21101
    movl    $21101, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  45:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  46:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  47:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  48:     mul    t28 <- t26, t27
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  49:     add    t29 <- t28, 8542
    movl    $8542, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $5, %eax                #  50:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  51:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  52:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -96(%ebp), %eax         #  53:     mul    t31 <- t29, t30
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  54:     add    t32 <- t31, 42942
    movl    $42942, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  55:     mul    t33 <- t32, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    16(%ebp), %eax          #  56:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  57:     call   t34 <- DOFS
    addl    $4, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  58:     add    t35 <- t33, t34
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    16(%ebp), %eax          #  59:     add    t36 <- v2, t35
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $50534, %eax            #  60:     assign @t36 <- 50534
    movl    -128(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $39146, %eax            #  61:     assign v5 <- 39146
    movl    %eax, -527100500(%ebp) 
    jmp     l_f2_1_while_cond       #  62:     goto   1_while_cond
l_f2_0:
l_f2_11_while_cond:
    movl    $97, %eax               #  65:     if     97 <= 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_12_while_body     
    jmp     l_f2_10                 #  66:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  68:     goto   11_while_cond
l_f2_10:
    leal    -527100496(%ebp), %eax  #  70:     &()    t37 <- v4
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  71:     param  1 <- t37
    pushl   %eax                   
    leal    -515389240(%ebp), %eax  #  72:     &()    t38 <- v3
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  73:     param  0 <- t38
    pushl   %eax                   
    call    f1                      #  74:     call   t39 <- f1
    addl    $8, %esp               
    movb    %al, -137(%ebp)        

l_f2_exit:
    # epilogue
    addl    $527100488, %esp        # remove locals
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
    movl    $76459, %eax            #   0:     if     76459 < 7983 goto 1_if_true
    movl    $7983, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $97, %eax               #   3:     if     97 >= 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $39016, %eax            #   9:     if     39016 < 30891 goto 9_if_true
    movl    $30891, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_9_if_true       
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  12:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_exit            
    movl    $43054, %eax            #  16:     if     43054 # 27790 goto 14
    movl    $27790, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_14              
    jmp     l_test_15               #  17:     goto   15
l_test_14:
    movl    $1, %eax                #  19:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_16               #  20:     goto   16
l_test_15:
    movl    $0, %eax                #  22:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_16:
    movzbl  -13(%ebp), %eax         #  24:     assign v0 <- t0
    movb    %al, v0                
    movl    $73790, %eax            #  25:     assign v1 <- 73790
    movl    %eax, v1               
    jmp     l_test_0                #  26:     goto   0
l_test_2_if_false:
l_test_0:
l_test_20_while_cond:
    movl    $100, %eax              #  30:     if     100 < 100 goto 21_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_21_while_body   
    jmp     l_test_19               #  31:     goto   19
l_test_21_while_body:
    movl    $100, %eax              #  33:     assign v2 <- 100
    movb    %al, v2                
    movl    $100, %eax              #  34:     if     100 < 100 goto 25
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_25              
    jmp     l_test_26               #  35:     goto   26
l_test_25:
    movl    $1, %eax                #  37:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_27               #  38:     goto   27
l_test_26:
    movl    $0, %eax                #  40:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_27:
    movzbl  -14(%ebp), %eax         #  42:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $98, %eax               #  44:     assign v2 <- 98
    movb    %al, v2                
    jmp     l_test_33_if_false      #  45:     goto   33_if_false
    jmp     l_test_31               #  46:     goto   31
l_test_33_if_false:
l_test_31:
    movl    $99, %eax               #  49:     if     99 = 100 goto 35_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_35_if_true      
    jmp     l_test_36_if_false      #  50:     goto   36_if_false
l_test_35_if_true:
    jmp     l_test_34               #  52:     goto   34
l_test_36_if_false:
l_test_34:
    jmp     l_test_40_if_false      #  55:     goto   40_if_false
    jmp     l_test_38               #  56:     goto   38
l_test_40_if_false:
l_test_38:
    jmp     l_test_20_while_cond    #  59:     goto   20_while_cond
l_test_19:
    jmp     l_test_43_if_false      #  61:     goto   43_if_false
    movl    $100, %eax              #  62:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  63:     call   WriteChar
    addl    $4, %esp               
l_test_46_while_cond:
    jmp     l_test_45               #  65:     goto   45
    jmp     l_test_46_while_cond    #  66:     goto   46_while_cond
l_test_45:
    jmp     l_test_48               #  68:     goto   48
l_test_48:
    movl    $0, %eax                #  70:     if     0 # 1 goto 52_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_52_if_true      
    jmp     l_test_53_if_false      #  71:     goto   53_if_false
l_test_52_if_true:
    jmp     l_test_51               #  73:     goto   51
l_test_53_if_false:
l_test_51:
    jmp     l_test_41               #  76:     goto   41
l_test_43_if_false:
l_test_41:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
