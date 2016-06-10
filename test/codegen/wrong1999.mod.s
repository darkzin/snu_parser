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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 81 of <array 1 of <array 39 of <array 28 of <array 68 of <int>>>>>>> %ebp+8 ]
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
l_f0_1_while_cond:
    movl    $37067, %eax            #   1:     mul    t11 <- 37067, 85060
    movl    $85060, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t12 <- t11, 11123
    movl    $11123, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t13 <- t12, 61392
    movl    $61392, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t14 <- t13, 27513
    movl    $27513, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     sub    t15 <- t14, 40108
    movl    $40108, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $59278, %eax            #   6:     if     59278 # t15 goto 2_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   7:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
l_f0_0:
l_f0_5_while_cond:
    movl    $42739, %eax            #  12:     if     42739 >= 37291 goto 6_while_body
    movl    $37291, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_6_while_body      
    jmp     l_f0_4                  #  13:     goto   4
l_f0_6_while_body:
    movl    $97, %eax               #  15:     assign v3 <- 97
    movb    %al, -37(%ebp)         
    jmp     l_f0_5_while_cond       #  16:     goto   5_while_cond
l_f0_4:
    call    dummyINTfunc            #  18:     call   t16 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     if     t16 = 1329 goto 10_if_true
    movl    $1329, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  20:     goto   11_if_false
l_f0_10_if_true:
    movl    $97, %eax               #  22:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  23:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_9                  #  24:     goto   9
l_f0_11_if_false:
l_f0_9:

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
    #   -132(%ebp)   4  [ $t40      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t41      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t42      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t43      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t44      <int> %ebp-148 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 74 of <array 66 of <array 19 of <array 26 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $136, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $34, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $7333, %eax             #   0:     if     7333 <= 65076 goto 1_if_true
    movl    $65076, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   4:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   5:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $27803, %eax            #   6:     mul    t12 <- 27803, t11
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     add    t13 <- t12, 21589
    movl    $21589, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  11:     mul    t15 <- t13, t14
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     add    t16 <- t15, 93521
    movl    $93521, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  16:     mul    t18 <- t16, t17
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  17:     add    t19 <- t18, 16213
    movl    $16213, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  21:     mul    t21 <- t19, t20
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  22:     add    t22 <- t21, 46217
    movl    $46217, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  23:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  25:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  26:     add    t25 <- t23, t24
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  27:     add    t26 <- v3, t25
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $100, %eax              #  28:     assign @t26 <- 100
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $0, %eax                #  29:     if     0 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  30:     goto   7_if_false
l_f1_6_if_true:
    movl    $2, %eax                #  32:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  33:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  34:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $54502, %eax            #  35:     mul    t28 <- 54502, t27
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  36:     add    t29 <- t28, 32624
    movl    $32624, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  37:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  38:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  39:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  40:     mul    t31 <- t29, t30
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  41:     add    t32 <- t31, 78186
    movl    $78186, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $4, %eax                #  42:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  43:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  44:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  45:     mul    t34 <- t32, t33
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  46:     add    t35 <- t34, 37464
    movl    $37464, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $5, %eax                #  47:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  48:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  49:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  50:     mul    t37 <- t35, t36
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  51:     add    t38 <- t37, 21680
    movl    $21680, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  52:     mul    t39 <- t38, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    12(%ebp), %eax          #  53:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  54:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  55:     add    t41 <- t39, t40
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    12(%ebp), %eax          #  56:     add    t42 <- v3, t41
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $99, %eax               #  57:     assign @t42 <- 99
    movl    -140(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_5                  #  58:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_0                  #  61:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    ReadInt                 #  64:     call   t43 <- ReadInt
    movl    %eax, -144(%ebp)       
    movl    $71803, %eax            #  65:     add    t44 <- 71803, 34940
    movl    $34940, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  66:     return t44
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $136, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 6 of <array 74 of <array 66 of <array 19 of <array 26 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t13      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t14      <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t16      <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t17      <ptr(4) to <array 6 of <array 74 of <array 66 of <array 19 of <array 26 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <ptr(4) to <array 6 of <array 74 of <array 66 of <array 19 of <array 26 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <ptr(4) to <array 6 of <array 74 of <array 66 of <array 19 of <array 26 of <char>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <ptr(4) to <array 6 of <array 74 of <array 66 of <array 19 of <array 26 of <char>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t29      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t30      <ptr(4) to <array 6 of <array 74 of <array 66 of <array 19 of <array 26 of <char>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t31      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t32      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t33      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t34      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t35      <ptr(4) to <array 6 of <array 74 of <array 66 of <array 19 of <array 26 of <char>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t36      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t37      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t38      <int> %ebp-120 ]
    #   -14476320(%ebp)  14476200  [ $v2       <array 6 of <array 74 of <array 66 of <array 19 of <array 26 of <char>>>>>> %ebp-14476320 ]
    #   -14476321(%ebp)   1  [ $v3       <char> %ebp-14476321 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $14476312, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3619078, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-14476320(%ebp)      # local array 'v2': 5 dimensions
    movl    $6,-14476316(%ebp)      #   dimension 1: 6 elements
    movl    $74,-14476312(%ebp)     #   dimension 2: 74 elements
    movl    $66,-14476308(%ebp)     #   dimension 3: 66 elements
    movl    $19,-14476304(%ebp)     #   dimension 4: 19 elements
    movl    $26,-14476300(%ebp)     #   dimension 5: 26 elements

    # function body
l_f2_1_while_cond:
    movl    $50206, %eax            #   1:     if     50206 <= 2107 goto 2_while_body
    movl    $2107, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    call    dummyBOOLfunc           #   4:     call   t11 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    movl    $99, %eax               #   7:     param  2 <- 99
    pushl   %eax                   
    leal    -14476320(%ebp), %eax   #   8:     &()    t12 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  1 <- t12
    pushl   %eax                   
    call    dummyCHARfunc           #  10:     call   t13 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  11:     if     t13 > 98 goto 6
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_6                 
    jmp     l_f2_7                  #  12:     goto   7
l_f2_6:
    movl    $1, %eax                #  14:     assign t14 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_8                  #  15:     goto   8
l_f2_7:
    movl    $0, %eax                #  17:     assign t14 <- 0
    movb    %al, -22(%ebp)         
l_f2_8:
    movzbl  -22(%ebp), %eax         #  19:     param  0 <- t14
    pushl   %eax                   
    call    f1                      #  20:     call   t15 <- f1
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  21:     call   t16 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    leal    -14476320(%ebp), %eax   #  22:     &()    t17 <- v2
    movl    %eax, -36(%ebp)        
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    leal    -14476320(%ebp), %eax   #  24:     &()    t18 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  25:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  26:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    $32966, %eax            #  27:     mul    t20 <- 32966, t19
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  28:     add    t21 <- t20, 16284
    movl    $16284, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    leal    -14476320(%ebp), %eax   #  30:     &()    t22 <- v2
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  31:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  32:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  33:     mul    t24 <- t21, t23
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  34:     add    t25 <- t24, 55546
    movl    $55546, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    leal    -14476320(%ebp), %eax   #  36:     &()    t26 <- v2
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  37:     param  0 <- t26
    pushl   %eax                   
    call    DIM                     #  38:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  39:     mul    t28 <- t25, t27
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  40:     add    t29 <- t28, 60674
    movl    $60674, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    leal    -14476320(%ebp), %eax   #  42:     &()    t30 <- v2
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  43:     param  0 <- t30
    pushl   %eax                   
    call    DIM                     #  44:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  45:     mul    t32 <- t29, t31
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  46:     add    t33 <- t32, 50473
    movl    $50473, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  47:     mul    t34 <- t33, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    leal    -14476320(%ebp), %eax   #  48:     &()    t35 <- v2
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  49:     param  0 <- t35
    pushl   %eax                   
    call    DOFS                    #  50:     call   t36 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -104(%ebp), %eax        #  51:     add    t37 <- t34, t36
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -36(%ebp), %eax         #  52:     add    t38 <- t17, t37
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movzbl  -29(%ebp), %eax         #  53:     assign @t38 <- t16
    movl    -120(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $14476312, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 6 of <array 74 of <array 66 of <array 19 of <array 26 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t2       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
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
    jmp     l_test_exit            
    movl    $33943, %eax            #   1:     assign v0 <- 33943
    movl    %eax, v0               
l_test_6_while_cond:
    movl    $1, %eax                #   3:     if     1 # 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_7_while_body    
    jmp     l_test_5                #   4:     goto   5
l_test_7_while_body:
    movl    $100, %eax              #   6:     assign v1 <- 100
    movb    %al, v1                
l_test_11_while_cond:
    movl    $69430, %eax            #   8:     if     69430 >= 21379 goto 12_while_body
    movl    $21379, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_12_while_body   
    jmp     l_test_10               #   9:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  11:     goto   11_while_cond
l_test_10:
    call    dummyBOOLfunc           #  13:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_6_while_cond     #  14:     goto   6_while_cond
l_test_5:
    jmp     l_test_0                #  16:     goto   0
l_test_0:
    jmp     l_test_exit            
l_test_17_while_cond:
    movl    $100, %eax              #  20:     param  2 <- 100
    pushl   %eax                   
    leal    v2, %eax                #  21:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  1 <- t1
    pushl   %eax                   
    jmp     l_test_20               #  23:     goto   20
l_test_20:
    movl    $1, %eax                #  25:     assign t2 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_22               #  26:     goto   22
    movl    $0, %eax                #  27:     assign t2 <- 0
    movb    %al, -22(%ebp)         
l_test_22:
    movzbl  -22(%ebp), %eax         #  29:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  30:     call   t3 <- f1
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
    movl    $96238, %eax            #  31:     add    t4 <- 96238, 3722
    movl    $3722, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     sub    t5 <- t4, 91388
    movl    $91388, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     sub    t6 <- t5, 30534
    movl    $30534, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     sub    t7 <- t6, 36411
    movl    $36411, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  35:     add    t8 <- t7, 38347
    movl    $38347, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -28(%ebp), %eax         #  36:     if     t3 < t8 goto 18_while_body
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_18_while_body   
    jmp     l_test_16               #  37:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  39:     goto   17_while_cond
l_test_16:
l_test_25_while_cond:
    call    dummyBOOLfunc           #  42:     call   t9 <- dummyBOOLfunc
    movb    %al, -49(%ebp)         
    movzbl  -49(%ebp), %eax         #  43:     if     t9 = 1 goto 26_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_26_while_body   
    jmp     l_test_24               #  44:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  46:     goto   25_while_cond
l_test_24:
    jmp     l_test_32_if_false      #  48:     goto   32_if_false
    jmp     l_test_30               #  49:     goto   30
l_test_32_if_false:
l_test_30:
    jmp     l_test_35_if_false      #  52:     goto   35_if_false
    jmp     l_test_33               #  53:     goto   33
l_test_35_if_false:
l_test_33:
    movl    $98, %eax               #  56:     if     98 >= 99 goto 37
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_37              
    jmp     l_test_38               #  57:     goto   38
l_test_37:
    movl    $1, %eax                #  59:     assign t10 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_39               #  60:     goto   39
l_test_38:
    movl    $0, %eax                #  62:     assign t10 <- 0
    movb    %al, -21(%ebp)         
l_test_39:
    movzbl  -21(%ebp), %eax         #  64:     assign v3 <- t10
    movb    %al, v3                
    jmp     l_test_43_if_false      #  65:     goto   43_if_false
    jmp     l_test_41               #  66:     goto   41
l_test_43_if_false:
l_test_41:
l_test_45_while_cond:
    movl    $97, %eax               #  70:     if     97 <= 99 goto 46_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_46_while_body   
    jmp     l_test_44               #  71:     goto   44
l_test_46_while_body:
    jmp     l_test_45_while_cond    #  73:     goto   45_while_cond
l_test_44:
    jmp     l_test_50_if_false      #  75:     goto   50_if_false
    jmp     l_test_48               #  76:     goto   48
l_test_50_if_false:
l_test_48:
    jmp     l_test_27               #  79:     goto   27
l_test_27:

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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 6 of <array 74 of <array 66 of <array 19 of <array 26 of <char>>>>>>
    .long    5
    .long    6
    .long   74
    .long   66
    .long   19
    .long   26
    .skip 14476176
v3:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
