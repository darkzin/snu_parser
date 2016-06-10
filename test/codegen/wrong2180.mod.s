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
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t3       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t4       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 79 of <array 90 of <array 91 of <array 5 of <array 52 of <char>>>>>>> %ebp+8 ]
    #   -101(%ebp)   1  [ $v1       <char> %ebp-101 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -53(%ebp)         
    call    dummyProcedure          #   1:     call   dummyProcedure
    movl    $48556, %eax            #   2:     add    t3 <- 48556, 88083
    movl    $88083, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   3:     sub    t4 <- t3, 92732
    movl    $92732, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   4:     sub    t5 <- t4, 78185
    movl    $78185, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   5:     sub    t6 <- t5, 50554
    movl    $50554, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   6:     add    t7 <- t6, 37760
    movl    $37760, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $94426, %eax            #   7:     if     94426 > t7 goto 3_if_true
    movl    -92(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   8:     goto   4_if_false
l_f0_3_if_true:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  12:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $76034, %eax            #  13:     mul    t9 <- 76034, t8
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  14:     add    t10 <- t9, 21819
    movl    $21819, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  18:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t13 <- t12, 64075
    movl    $64075, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  23:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t16 <- t15, 22088
    movl    $22088, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     add    t19 <- t18, 70266
    movl    $70266, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  30:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  32:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  33:     add    t22 <- t20, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  34:     add    t23 <- v0, t22
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $97, %eax               #  35:     assign @t23 <- 97
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_8_while_cond:
    jmp     l_f0_8_while_cond       #  37:     goto   8_while_cond
    jmp     l_f0_2                  #  38:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $92, %esp               # remove locals
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
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t4       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t5       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t6       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t7       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <int> %ebp-120 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 88 of <array 37 of <array 95 of <array 41 of <array 82 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 94 of <array 8 of <array 80 of <array 76 of <array 88 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 40 of <array 70 of <array 6 of <array 86 of <array 12 of <int>>>>>>> %ebp+20 ]
    #   -124(%ebp)   4  [ $v4       <int> %ebp-124 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $112, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $28, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -56(%ebp)        
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   2:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   3:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -56(%ebp), %eax         #   4:     mul    t4 <- t2, t3
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   5:     add    t5 <- t4, 39381
    movl    $39381, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   7:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   8:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #   9:     mul    t7 <- t5, t6
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  10:     add    t8 <- t7, 87503
    movl    $87503, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  12:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  13:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  14:     mul    t10 <- t8, t9
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     add    t11 <- t10, 27143
    movl    $27143, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  17:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  18:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  19:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     add    t14 <- t13, 75994
    movl    $75994, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    20(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  23:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    20(%ebp), %eax          #  25:     add    t18 <- v3, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $82817, %eax            #  26:     assign @t18 <- 82817
    movl    -48(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $21241, %eax            #  27:     add    t19 <- 21241, 44661
    movl    $44661, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  28:     add    t20 <- t19, 44300
    movl    $44300, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  29:     add    t21 <- t20, 85669
    movl    $85669, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  30:     return t21
    jmp     l_f1_exit              
    movl    $69110, %eax            #  31:     mul    t22 <- 69110, 33517
    movl    $33517, %ebx           
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  32:     mul    t23 <- t22, 6619
    movl    $6619, %ebx            
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  33:     div    t24 <- t23, 99960
    movl    $99960, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  34:     add    t25 <- t24, 23843
    movl    $23843, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  35:     add    t26 <- t25, 25233
    movl    $25233, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  36:     sub    t27 <- t26, 65497
    movl    $65497, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  37:     sub    t28 <- t27, 70468
    movl    $70468, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  38:     return t28
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $112, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 40 of <array 70 of <array 6 of <array 86 of <array 12 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 94 of <array 8 of <array 80 of <array 76 of <array 88 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 88 of <array 37 of <array 95 of <array 41 of <array 82 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <bool> %ebp-41 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 21 of <array 31 of <array 43 of <array 20 of <char>>>>>>> %ebp+12 ]
    #   135231868(%ebp)  -135231912  [ $v2       <array 88 of <array 37 of <array 95 of <array 41 of <array 82 of <int>>>>>> %ebp+135231868 ]
    #   -1474168476(%ebp)  1609400344  [ $v3       <array 94 of <array 8 of <array 80 of <array 76 of <array 88 of <int>>>>>> %ebp-1474168476 ]
    #   -1543518900(%ebp)  69350424  [ $v4       <array 40 of <array 70 of <array 6 of <array 86 of <array 12 of <int>>>>>> %ebp-1543518900 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1543518888, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $385879722, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,135231868(%ebp)      # local array 'v2': 5 dimensions
    movl    $88,135231872(%ebp)     #   dimension 1: 88 elements
    movl    $37,135231876(%ebp)     #   dimension 2: 37 elements
    movl    $95,135231880(%ebp)     #   dimension 3: 95 elements
    movl    $41,135231884(%ebp)     #   dimension 4: 41 elements
    movl    $82,135231888(%ebp)     #   dimension 5: 82 elements
    movl    $5,-1474168476(%ebp)    # local array 'v3': 5 dimensions
    movl    $94,-1474168472(%ebp)   #   dimension 1: 94 elements
    movl    $8,-1474168468(%ebp)    #   dimension 2: 8 elements
    movl    $80,-1474168464(%ebp)   #   dimension 3: 80 elements
    movl    $76,-1474168460(%ebp)   #   dimension 4: 76 elements
    movl    $88,-1474168456(%ebp)   #   dimension 5: 88 elements
    movl    $5,-1543518900(%ebp)    # local array 'v4': 5 dimensions
    movl    $40,-1543518896(%ebp)   #   dimension 1: 40 elements
    movl    $70,-1543518892(%ebp)   #   dimension 2: 70 elements
    movl    $6,-1543518888(%ebp)    #   dimension 3: 6 elements
    movl    $86,-1543518884(%ebp)   #   dimension 4: 86 elements
    movl    $12,-1543518880(%ebp)   #   dimension 5: 12 elements

    # function body
    movl    $55156, %eax            #   0:     assign v0 <- 55156
    movl    %eax, 8(%ebp)          
    leal    -1543518900(%ebp), %eax #   1:     &()    t2 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  3 <- t2
    pushl   %eax                   
    leal    -1474168476(%ebp), %eax #   3:     &()    t3 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  2 <- t3
    pushl   %eax                   
    leal    135231868(%ebp), %eax   #   5:     &()    t4 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  1 <- t4
    pushl   %eax                   
    movl    $61608, %eax            #   7:     if     61608 >= 69118 goto 2
    movl    $69118, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2                 
    jmp     l_f2_3                  #   8:     goto   3
l_f2_2:
    movl    $1, %eax                #  10:     assign t5 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_4                  #  11:     goto   4
l_f2_3:
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -25(%ebp)         
l_f2_4:
    movzbl  -25(%ebp), %eax         #  15:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  16:     call   t6 <- f1
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     mul    t7 <- t6, 51783
    movl    $51783, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     div    t8 <- t7, 91305
    movl    $91305, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  19:     assign v0 <- t8
    movl    %eax, 8(%ebp)          
l_f2_7_while_cond:
    call    dummyBOOLfunc           #  21:     call   t9 <- dummyBOOLfunc
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  22:     if     t9 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #  23:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  25:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $1543518888, %esp       # remove locals
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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_1_if_true        #   1:     goto   1_if_true
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    call    ReadInt                 #   4:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $97075, %eax            #   8:     if     97075 >= 13221 goto 7_if_true
    movl    $13221, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_7_if_true       
    jmp     l_test_8_if_false       #   9:     goto   8_if_false
l_test_7_if_true:
    movl    $97, %eax               #  11:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_6                #  14:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_14_if_false      #  17:     goto   14_if_false
l_test_16_while_cond:
    call    dummyCHARfunc           #  19:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  20:     if     t1 <= 99 goto 17_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_17_while_body   
    jmp     l_test_15               #  21:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  23:     goto   16_while_cond
l_test_15:
    jmp     l_test_12               #  25:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_21_if_false      #  28:     goto   21_if_false
    jmp     l_test_21_if_false      #  29:     goto   21_if_false
l_test_26_while_cond:
    movl    $15341, %eax            #  31:     if     15341 >= 74190 goto 27_while_body
    movl    $74190, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_27_while_body   
    jmp     l_test_25               #  32:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  34:     goto   26_while_cond
l_test_25:
    jmp     l_test_exit            
    jmp     l_test_19               #  37:     goto   19
l_test_21_if_false:
l_test_19:
l_test_31_while_cond:
    jmp     l_test_30               #  41:     goto   30
    jmp     l_test_31_while_cond    #  42:     goto   31_while_cond
l_test_30:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
