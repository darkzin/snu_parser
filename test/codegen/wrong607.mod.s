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
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t3       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t4       <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $t5       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t6       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t7       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 4 of <array 7 of <array 9 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -84(%ebp)        
    jmp     l_f0_exit              
    movl    $59017, %eax            #   2:     if     59017 < 20588 goto 3
    movl    $20588, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_3                 
    jmp     l_f0_4                  #   3:     goto   4
l_f0_3:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f0_5                  #   6:     goto   5
l_f0_4:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -85(%ebp)         
l_f0_5:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $15421, %eax            #  13:     mul    t6 <- 15421, t5
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  14:     add    t7 <- t6, 69593
    movl    $69593, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  18:     mul    t9 <- t7, t8
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    $44143, %eax            #  19:     div    t10 <- 44143, 10147
    movl    $10147, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     mul    t11 <- t10, 85916
    movl    $85916, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     div    t12 <- t11, 93661
    movl    $93661, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     mul    t13 <- t12, 88566
    movl    $88566, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     div    t14 <- t13, 73424
    movl    $73424, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     mul    t15 <- t14, 50564
    movl    $50564, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -108(%ebp), %eax        #  25:     add    t16 <- t9, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  26:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  29:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     add    t19 <- t18, 61602
    movl    $61602, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  31:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  33:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  34:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  35:     add    t22 <- t21, 23934
    movl    $23934, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  36:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  38:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  39:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    16(%ebp), %eax          #  40:     add    t26 <- v2, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -85(%ebp), %eax         #  41:     assign @t26 <- t4
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $96, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    movl    $6727, %eax             #   0:     sub    t3 <- 6727, 20124
    movl    $20124, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $12012, %eax            #   1:     mul    t4 <- 12012, 48205
    movl    $48205, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t5 <- t3, t4
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t5
    jmp     l_f1_exit              
    call    ReadInt                 #   4:     call   t6 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     return t6
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   6:     call   t7 <- dummyCHARfunc
    movb    %al, -29(%ebp)         

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -49(%ebp)   1  [ $t19      <bool> %ebp-49 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t21      <char> %ebp-57 ]
    #    -58(%ebp)   1  [ $t22      <bool> %ebp-58 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t3       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t36      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t37      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t38      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t39      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t4       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t5       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t6       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t7       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t8       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t9       <int> %ebp-156 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 8 of <array 5 of <array 6 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 2 of <array 2 of <array 3 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 2 of <array 4 of <array 5 of <array 6 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $144, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $36, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     if     97 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $99, %eax               #   4:     if     99 < 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   9:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $77683, %eax            #  10:     mul    t4 <- 77683, t3
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  11:     add    t5 <- t4, 63541
    movl    $63541, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  15:     mul    t7 <- t5, t6
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  16:     add    t8 <- t7, 83740
    movl    $83740, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -156(%ebp)       
    movl    -152(%ebp), %eax        #  20:     mul    t10 <- t8, t9
    movl    -156(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     add    t11 <- t10, 87548
    movl    $87548, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  25:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t14 <- t13, 19685
    movl    $19685, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  29:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  30:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  31:     add    t18 <- v0, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $0, %eax                #  32:     assign @t18 <- 0
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $66243, %eax            #  33:     return 66243
    jmp     l_f2_exit              
    movl    $24087, %eax            #  34:     return 24087
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  35:     call   t19 <- dummyBOOLfunc
    movb    %al, -49(%ebp)         
    call    dummyINTfunc            #  36:     call   t20 <- dummyINTfunc
    movl    %eax, -56(%ebp)        
    movl    $68834, %eax            #  37:     return 68834
    jmp     l_f2_exit              
    jmp     l_f2_16_if_false        #  38:     goto   16_if_false
    jmp     l_f2_14                 #  39:     goto   14
l_f2_16_if_false:
l_f2_14:
    movl    $0, %eax                #  42:     if     0 # 0 goto 18_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  43:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  45:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_5_while_cond       #  48:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_0                  #  50:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  53:     call   t21 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #  54:     if     t21 = 98 goto 22
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_22                
    jmp     l_f2_23                 #  55:     goto   23
l_f2_22:
    movl    $1, %eax                #  57:     assign t22 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f2_24                 #  58:     goto   24
l_f2_23:
    movl    $0, %eax                #  60:     assign t22 <- 0
    movb    %al, -58(%ebp)         
l_f2_24:
    movl    $2, %eax                #  62:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  63:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  64:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $10445, %eax            #  65:     mul    t24 <- 10445, t23
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  66:     add    t25 <- t24, 9166
    movl    $9166, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  67:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  68:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  69:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  70:     mul    t27 <- t25, t26
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  71:     add    t28 <- t27, 79180
    movl    $79180, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  72:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  73:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  74:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  75:     mul    t30 <- t28, t29
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  76:     add    t31 <- t30, 31957
    movl    $31957, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $5, %eax                #  77:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  78:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  79:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  80:     mul    t33 <- t31, t32
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  81:     add    t34 <- t33, 45688
    movl    $45688, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  82:     mul    t35 <- t34, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    8(%ebp), %eax           #  83:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  84:     call   t36 <- DOFS
    addl    $4, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  85:     add    t37 <- t35, t36
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    8(%ebp), %eax           #  86:     add    t38 <- v0, t37
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movzbl  -58(%ebp), %eax         #  87:     assign @t38 <- t22
    movl    -128(%ebp), %edi       
    movb    %al, (%edi)            
    call    ReadInt                 #  88:     call   t39 <- ReadInt
    movl    %eax, -132(%ebp)       

l_f2_exit:
    # epilogue
    addl    $144, %esp              # remove locals
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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    WriteLn                 #   1:     call   WriteLn
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     assign v0 <- t1
    movb    %al, v0                
l_test_4_while_cond:
    jmp     l_test_5_while_body     #   5:     goto   5_while_body
    jmp     l_test_5_while_body     #   6:     goto   5_while_body
    jmp     l_test_5_while_body     #   7:     goto   5_while_body
l_test_5_while_body:
    call    ReadInt                 #   9:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_test_4_while_cond     #  10:     goto   4_while_cond
l_test_17_while_cond:
    movl    $92688, %eax            #  12:     if     92688 >= 54792 goto 18_while_body
    movl    $54792, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_18_while_body   
    jmp     l_test_16               #  13:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  15:     goto   17_while_cond
l_test_16:
    jmp     l_test_10               #  17:     goto   10
l_test_10:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
