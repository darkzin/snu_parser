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
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 5 of <array 5 of <array 5 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 8 of <array 4 of <array 6 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 10 of <array 5 of <array 10 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -92(%ebp)   4  [ $v4       <int> %ebp-92 ]

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
l_f0_1_while_cond:
l_f0_4_while_cond:
    movl    $98, %eax               #   2:     if     98 < 97 goto 5_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_5_while_body      
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_while_body:
l_f0_8_while_cond:
    movl    $98, %eax               #   6:     if     98 <= 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_9_while_body      
    jmp     l_f0_7                  #   7:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #   9:     goto   8_while_cond
l_f0_7:
l_f0_12_while_cond:
    jmp     l_f0_12_while_cond      #  12:     goto   12_while_cond
    jmp     l_f0_4_while_cond       #  13:     goto   4_while_cond
l_f0_3:
    jmp     l_f0_1_while_cond       #  15:     goto   1_while_cond
    call    dummyCHARfunc           #  16:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #  17:     return t2
    jmp     l_f0_exit              
    movl    $8414, %eax             #  18:     mul    t3 <- 8414, 85947
    movl    $85947, %ebx           
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    $48123, %eax            #  19:     add    t4 <- 48123, t3
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $48773, %eax            #  23:     mul    t6 <- 48773, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  24:     add    t7 <- t6, 33696
    movl    $33696, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  28:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  29:     add    t10 <- t9, 48724
    movl    $48724, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  33:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     add    t13 <- t12, 99235
    movl    $99235, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  36:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  37:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  38:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  39:     add    t16 <- t15, 73589
    movl    $73589, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  40:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  41:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  42:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  43:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  44:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -68(%ebp), %eax         #  45:     assign @t20 <- t4
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 10 of <array 5 of <array 10 of <array 6 of <bool>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t4       <ptr(4) to <array 1 of <array 8 of <array 4 of <array 6 of <array 8 of <int>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 5 of <array 5 of <array 5 of <array 8 of <int>>>>>>> %ebp-84 ]
    #    -85(%ebp)   1  [ $t6       <char> %ebp-85 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 3 of <array 6 of <array 2 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 2 of <array 8 of <array 9 of <array 8 of <char>>>>>>> %ebp+20 ]
    #   -101(%ebp)   1  [ $v4       <char> %ebp-101 ]
    #   -32128(%ebp)  32024  [ $v5       <array 8 of <array 5 of <array 5 of <array 5 of <array 8 of <int>>>>>> %ebp-32128 ]
    #   -38296(%ebp)  6168  [ $v6       <array 1 of <array 8 of <array 4 of <array 6 of <array 8 of <int>>>>>> %ebp-38296 ]
    #   -68320(%ebp)  30024  [ $v7       <array 10 of <array 10 of <array 5 of <array 10 of <array 6 of <bool>>>>>> %ebp-68320 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68308, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17077, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-32128(%ebp)         # local array 'v5': 5 dimensions
    movl    $8,-32124(%ebp)         #   dimension 1: 8 elements
    movl    $5,-32120(%ebp)         #   dimension 2: 5 elements
    movl    $5,-32116(%ebp)         #   dimension 3: 5 elements
    movl    $5,-32112(%ebp)         #   dimension 4: 5 elements
    movl    $8,-32108(%ebp)         #   dimension 5: 8 elements
    movl    $5,-38296(%ebp)         # local array 'v6': 5 dimensions
    movl    $1,-38292(%ebp)         #   dimension 1: 1 elements
    movl    $8,-38288(%ebp)         #   dimension 2: 8 elements
    movl    $4,-38284(%ebp)         #   dimension 3: 4 elements
    movl    $6,-38280(%ebp)         #   dimension 4: 6 elements
    movl    $8,-38276(%ebp)         #   dimension 5: 8 elements
    movl    $5,-68320(%ebp)         # local array 'v7': 5 dimensions
    movl    $10,-68316(%ebp)        #   dimension 1: 10 elements
    movl    $10,-68312(%ebp)        #   dimension 2: 10 elements
    movl    $5,-68308(%ebp)         #   dimension 3: 5 elements
    movl    $10,-68304(%ebp)        #   dimension 4: 10 elements
    movl    $6,-68300(%ebp)         #   dimension 5: 6 elements

    # function body
    movl    $99, %eax               #   0:     if     99 <= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f1_3:
    movzbl  -53(%ebp), %eax         #   8:     param  3 <- t2
    pushl   %eax                   
    leal    -68320(%ebp), %eax      #   9:     &()    t3 <- v7
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  10:     param  2 <- t3
    pushl   %eax                   
    leal    -38296(%ebp), %eax      #  11:     &()    t4 <- v6
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  12:     param  1 <- t4
    pushl   %eax                   
    leal    -32128(%ebp), %eax      #  13:     &()    t5 <- v5
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  14:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  15:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -85(%ebp)         
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  17:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  18:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $45460, %eax            #  19:     mul    t8 <- 45460, t7
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  20:     add    t9 <- t8, 45874
    movl    $45874, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $3, %eax                #  21:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  23:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -100(%ebp), %eax        #  24:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     add    t12 <- t11, 74405
    movl    $74405, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  26:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  27:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  28:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  29:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     add    t15 <- t14, 9087
    movl    $9087, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  31:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  32:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  33:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  34:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  35:     add    t18 <- t17, 96787
    movl    $96787, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  36:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  37:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  38:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  39:     add    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    20(%ebp), %eax          #  40:     add    t22 <- v3, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -85(%ebp), %eax         #  41:     assign @t22 <- t6
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    call    ReadInt                 #  42:     call   t23 <- ReadInt
    movl    %eax, -72(%ebp)        
    movl    $100, %eax              #  43:     assign v4 <- 100
    movb    %al, -101(%ebp)        

l_f1_exit:
    # epilogue
    addl    $68308, %esp            # remove locals
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
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 2 of <array 6 of <array 6 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #   -104(%ebp)   4  [ $v3       <int> %ebp-104 ]

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
    movl    $59922, %eax            #   0:     add    t2 <- 59922, 90733
    movl    $90733, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $64985, %eax            #   1:     sub    t3 <- 64985, 21630
    movl    $21630, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   2:     add    t4 <- t3, 90912
    movl    $90912, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   4:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   5:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #   6:     mul    t6 <- t4, t5
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   7:     add    t7 <- t6, 98990
    movl    $98990, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  11:     mul    t9 <- t7, t8
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  12:     add    t10 <- t9, 61672
    movl    $61672, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  16:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     add    t13 <- t12, 93423
    movl    $93423, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  21:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     add    t16 <- t15, 45851
    movl    $45851, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  25:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  26:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  27:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  28:     assign @t20 <- t2
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyINTfunc            #  29:     call   t21 <- dummyINTfunc
    movl    %eax, -64(%ebp)        
    movl    $91297, %eax            #  30:     mul    t22 <- 91297, 65586
    movl    $65586, %ebx           
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  31:     div    t23 <- t22, 83636
    movl    $83636, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  32:     assign v3 <- t23
    movl    %eax, -104(%ebp)       

l_f2_exit:
    # epilogue
    addl    $92, %esp               # remove locals
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
    movl    $81477, %eax            #   0:     mul    t0 <- 81477, 57553
    movl    $57553, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 50553
    movl    $50553, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t1 > 35531 goto 1_if_true
    movl    $35531, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   3:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $98, %eax               #  10:     if     98 < 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_10_if_true      
    jmp     l_test_11_if_false      #  11:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  13:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_5                #  16:     goto   5
l_test_5:
l_test_14_while_cond:
    jmp     l_test_13               #  19:     goto   13
    movl    $25205, %eax            #  20:     if     25205 < 84015 goto 17_if_true
    movl    $84015, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_17_if_true      
    jmp     l_test_18_if_false      #  21:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  23:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_exit            
    jmp     l_test_14_while_cond    #  27:     goto   14_while_cond
l_test_13:
l_test_22_while_cond:
    jmp     l_test_21               #  30:     goto   21
    jmp     l_test_exit            
    jmp     l_test_22_while_cond    #  32:     goto   22_while_cond
l_test_21:

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
