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
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -121(%ebp)   1  [ $t36      <bool> %ebp-121 ]
    #   -128(%ebp)   4  [ $t4       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t5       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t6       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 19 of <array 92 of <array 51 of <array 87 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 34 of <array 44 of <array 34 of <array 69 of <array 35 of <bool>>>>>>> %ebp+16 ]
    #   -149(%ebp)   1  [ $v3       <bool> %ebp-149 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $140, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $35, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   1:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   2:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $15321, %eax            #   3:     mul    t4 <- 15321, t3
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #   4:     add    t5 <- t4, 6110
    movl    $6110, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   7:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #   8:     mul    t7 <- t5, t6
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #   9:     add    t8 <- t7, 51119
    movl    $51119, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $4, %eax                #  10:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  13:     mul    t10 <- t8, t9
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     add    t11 <- t10, 50489
    movl    $50489, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  15:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  18:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     add    t14 <- t13, 88602
    movl    $88602, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  22:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  23:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  24:     add    t18 <- v1, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $98, %eax               #  25:     assign @t18 <- 98
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    call    ReadInt                 #  26:     call   t19 <- ReadInt
    movl    %eax, -52(%ebp)        
    movl    $2, %eax                #  27:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  28:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  29:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  30:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  31:     add    t22 <- t21, 71985
    movl    $71985, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  32:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  33:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  34:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  35:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  36:     add    t25 <- t24, 47299
    movl    $47299, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  37:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  38:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  39:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  40:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  41:     add    t28 <- t27, 34675
    movl    $34675, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  42:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  43:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  44:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  45:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  46:     add    t31 <- t30, 26409
    movl    $26409, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  47:     mul    t32 <- t31, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    16(%ebp), %eax          #  48:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  49:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  50:     add    t34 <- t32, t33
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    16(%ebp), %eax          #  51:     add    t35 <- v2, t34
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $0, %eax                #  52:     assign @t35 <- 0
    movl    -120(%ebp), %edi       
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  53:     call   t36 <- dummyBOOLfunc
    movb    %al, -121(%ebp)        

l_f0_exit:
    # epilogue
    addl    $140, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 16 of <array 100 of <array 78 of <array 95 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $97082, %eax            #   0:     if     97082 < 41172 goto 1_if_true
    movl    $41172, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   4:     goto   5_while_cond
l_f1_8_while_cond:
    jmp     l_f1_8_while_cond       #   6:     goto   8_while_cond
l_f1_11_while_cond:
    movl    $19890, %eax            #   8:     if     19890 # 86185 goto 12_while_body
    movl    $86185, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_12_while_body     
    jmp     l_f1_10                 #   9:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  11:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_0                  #  13:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $97, %eax               #  16:     if     97 >= 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  17:     goto   16_if_false
l_f1_15_if_true:
    call    dummyCHARfunc           #  19:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #  20:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_14                 #  22:     goto   14
l_f1_16_if_false:
l_f1_14:
    movl    $12397, %eax            #  25:     div    t5 <- 12397, 44151
    movl    $44151, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $95781, %eax            #  26:     div    t6 <- 95781, 7660
    movl    $7660, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  27:     add    t7 <- t5, t6
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #  29:     call   WriteInt
    addl    $4, %esp               

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
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t22      <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t23      <bool> %ebp-62 ]
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t5       <char> %ebp-73 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 99 of <array 22 of <array 93 of <array 98 of <array 36 of <char>>>>>>> %ebp+12 ]
    #    -96(%ebp)   4  [ $v2       <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $v3       <char> %ebp-97 ]

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
l_f2_1_while_cond:
    movl    $54884, %eax            #   1:     add    t3 <- 54884, 46179
    movl    $46179, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   2:     sub    t4 <- t3, 40837
    movl    $40837, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $72052, %eax            #   3:     if     72052 > t4 goto 2_while_body
    movl    -72(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_while_body:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_4:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
    movl    $0, %eax                #  10:     assign v0 <- 0
    movb    %al, 8(%ebp)           
    movl    $88801, %eax            #  11:     assign v2 <- 88801
    movl    %eax, -96(%ebp)        
    call    dummyCHARfunc           #  12:     call   t5 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $11965, %eax            #  16:     mul    t7 <- 11965, t6
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  17:     add    t8 <- t7, 80683
    movl    $80683, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  21:     mul    t10 <- t8, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     add    t11 <- t10, 45469
    movl    $45469, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  26:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t14 <- t13, 26455
    movl    $26455, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  31:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     add    t17 <- t16, 58059
    movl    $58059, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  33:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  34:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  35:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  36:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  37:     add    t21 <- v1, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $97, %eax               #  38:     assign @t21 <- 97
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_7                  #  39:     goto   7
l_f2_7:
l_f2_15_while_cond:
    movl    $98, %eax               #  42:     if     98 <= 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_16_while_body     
    jmp     l_f2_14                 #  43:     goto   14
l_f2_16_while_body:
    call    dummyCHARfunc           #  45:     call   t22 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movl    $99, %eax               #  46:     if     99 >= t22 goto 19
    movzbl  -61(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_19                
    jmp     l_f2_20                 #  47:     goto   20
l_f2_19:
    movl    $1, %eax                #  49:     assign t23 <- 1
    movb    %al, -62(%ebp)         
    jmp     l_f2_21                 #  50:     goto   21
l_f2_20:
    movl    $0, %eax                #  52:     assign t23 <- 0
    movb    %al, -62(%ebp)         
l_f2_21:
    movzbl  -62(%ebp), %eax         #  54:     return t23
    jmp     l_f2_exit              
    jmp     l_f2_15_while_cond      #  55:     goto   15_while_cond
l_f2_14:

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
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
    movl    $1556, %eax             #   0:     div    t0 <- 1556, 2057
    movl    $2057, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t0 # 56109 goto 1
    movl    $56109, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyINTfunc            #  11:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
