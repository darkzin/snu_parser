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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     if     98 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   4:     goto   4
    movl    $0, %eax                #   5:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  11:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #  12:     if     99 >= t1 goto 9
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_9                 
    jmp     l_f0_10                 #  13:     goto   10
l_f0_9:
    movl    $1, %eax                #  15:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_11                 #  16:     goto   11
l_f0_10:
    movl    $0, %eax                #  18:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_11:
    movzbl  -14(%ebp), %eax         #  20:     return t2
    jmp     l_f0_exit              
l_f0_14_while_cond:
    movl    $79582, %eax            #  22:     div    t3 <- 79582, 1131
    movl    $1131, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     div    t4 <- t3, 2322
    movl    $2322, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t5 <- t4, 40525
    movl    $40525, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t6 <- t5, 83747
    movl    $83747, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     sub    t7 <- t6, 82541
    movl    $82541, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     if     t7 >= 20820 goto 15_while_body
    movl    $20820, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_15_while_body     
    jmp     l_f0_13                 #  28:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  30:     goto   14_while_cond
l_f0_13:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t3       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t4       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t6       <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 67 of <array 64 of <array 27 of <array 49 of <array 52 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 50 of <array 90 of <array 64 of <array 22 of <array 23 of <char>>>>>>> %ebp+20 ]
    #   -101(%ebp)   1  [ $v6       <char> %ebp-101 ]

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
    leal    _str_1, %eax            #   0:     &()    t1 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $68489, %eax            #   3:     div    t2 <- 68489, 95355
    movl    $95355, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   4:     mul    t3 <- t2, 66910
    movl    $66910, %ebx           
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   5:     add    t4 <- t3, 39363
    movl    $39363, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   6:     sub    t5 <- t4, 42008
    movl    $42008, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   7:     if     t5 > 95239 goto 2
    movl    $95239, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2                 
    jmp     l_f1_3                  #   8:     goto   3
l_f1_2:
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f1_4                  #  11:     goto   4
l_f1_3:
    movl    $0, %eax                #  13:     assign t6 <- 0
    movb    %al, -85(%ebp)         
l_f1_4:
    movzbl  -85(%ebp), %eax         #  15:     return t6
    jmp     l_f1_exit              
l_f1_7_while_cond:
    jmp     l_f1_6                  #  17:     goto   6
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $22908, %eax            #  21:     mul    t8 <- 22908, t7
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  22:     add    t9 <- t8, 11623
    movl    $11623, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -100(%ebp), %eax        #  26:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     add    t12 <- t11, 93542
    movl    $93542, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  31:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     add    t15 <- t14, 71252
    movl    $71252, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  35:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  36:     mul    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  37:     add    t18 <- t17, 30148
    movl    $30148, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  38:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  39:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  40:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  41:     add    t21 <- t19, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  42:     add    t22 <- v2, t21
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $100, %eax              #  43:     assign @t22 <- 100
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_7_while_cond       #  44:     goto   7_while_cond
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <ptr(4) to <array 50 of <array 90 of <array 64 of <array 22 of <array 23 of <char>>>>>>> %ebp-80 ]
    #    -81(%ebp)   1  [ $t25      <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $t26      <ptr(4) to <array 67 of <array 64 of <array 27 of <array 49 of <array 52 of <char>>>>>>> %ebp-88 ]
    #    -89(%ebp)   1  [ $t27      <bool> %ebp-89 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t4       <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $t5       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t6       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t7       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <int> %ebp-120 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 66 of <array 63 of <array 44 of <array 88 of <array 58 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #   -294997392(%ebp)  294997272  [ $v4       <array 67 of <array 64 of <array 27 of <array 49 of <array 52 of <char>>>>>> %ebp-294997392 ]
    #   -440725416(%ebp)  145728024  [ $v5       <array 50 of <array 90 of <array 64 of <array 22 of <array 23 of <char>>>>>> %ebp-440725416 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $440725404, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $110181351, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-294997392(%ebp)     # local array 'v4': 5 dimensions
    movl    $67,-294997388(%ebp)    #   dimension 1: 67 elements
    movl    $64,-294997384(%ebp)    #   dimension 2: 64 elements
    movl    $27,-294997380(%ebp)    #   dimension 3: 27 elements
    movl    $49,-294997376(%ebp)    #   dimension 4: 49 elements
    movl    $52,-294997372(%ebp)    #   dimension 5: 52 elements
    movl    $5,-440725416(%ebp)     # local array 'v5': 5 dimensions
    movl    $50,-440725412(%ebp)    #   dimension 1: 50 elements
    movl    $90,-440725408(%ebp)    #   dimension 2: 90 elements
    movl    $64,-440725404(%ebp)    #   dimension 3: 64 elements
    movl    $22,-440725400(%ebp)    #   dimension 4: 22 elements
    movl    $23,-440725396(%ebp)    #   dimension 5: 23 elements

    # function body
    movl    $45587, %eax            #   0:     sub    t1 <- 45587, 61862
    movl    $61862, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t2 <- t1, 48359
    movl    $48359, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   2:     add    t3 <- t2, 65600
    movl    $65600, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $65550, %eax            #   3:     if     65550 < t3 goto 1
    movl    -96(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   4:     goto   2
l_f2_1:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -97(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -97(%ebp)         
l_f2_3:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    $23099, %eax            #  14:     mul    t6 <- 23099, t5
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  15:     add    t7 <- t6, 10908
    movl    $10908, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  19:     mul    t9 <- t7, t8
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  20:     add    t10 <- t9, 77694
    movl    $77694, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  24:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $25497, %eax            #  25:     add    t13 <- 25497, 58238
    movl    $58238, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     sub    t14 <- t13, 74684
    movl    $74684, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     sub    t15 <- t14, 51153
    movl    $51153, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -28(%ebp), %eax         #  28:     add    t16 <- t12, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  31:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  32:     mul    t18 <- t16, t17
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  33:     add    t19 <- t18, 17262
    movl    $17262, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  34:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  35:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  36:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  37:     add    t22 <- t20, t21
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  38:     add    t23 <- v2, t22
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -97(%ebp), %eax         #  39:     assign @t23 <- t4
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_6_while_cond:
    movl    $97, %eax               #  41:     if     97 # 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  43:     goto   6_while_cond
l_f2_11_while_cond:
    leal    -440725416(%ebp), %eax  #  45:     &()    t24 <- v5
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  46:     param  3 <- t24
    pushl   %eax                   
    movl    $42966, %eax            #  47:     param  2 <- 42966
    pushl   %eax                   
    movl    $74529, %eax            #  48:     if     74529 < 1975 goto 17
    movl    $1975, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_17                
    jmp     l_f2_18                 #  49:     goto   18
l_f2_17:
    movl    $1, %eax                #  51:     assign t25 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_19                 #  52:     goto   19
l_f2_18:
    movl    $0, %eax                #  54:     assign t25 <- 0
    movb    %al, -81(%ebp)         
l_f2_19:
    movzbl  -81(%ebp), %eax         #  56:     param  1 <- t25
    pushl   %eax                   
    leal    -294997392(%ebp), %eax  #  57:     &()    t26 <- v4
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  58:     param  0 <- t26
    pushl   %eax                   
    call    f1                      #  59:     call   t27 <- f1
    addl    $16, %esp              
    movb    %al, -89(%ebp)         
    movzbl  -89(%ebp), %eax         #  60:     if     t27 = 1 goto 12_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_12_while_body     
    jmp     l_f2_12_while_body      #  61:     goto   12_while_body
    jmp     l_f2_10                 #  62:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  64:     goto   11_while_cond
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $440725404, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    movl    $7231, %eax             #   2:     if     7231 <= 85005 goto 4_if_true
    movl    $85005, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_4_if_true       
    jmp     l_test_5_if_false       #   3:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   5:     goto   3
l_test_5_if_false:
l_test_3:
l_test_8_while_cond:
    movl    $99, %eax               #   9:     if     99 >= 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_9_while_body    
    jmp     l_test_7                #  10:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  12:     goto   8_while_cond
l_test_7:
    movl    $72053, %eax            #  14:     if     72053 < 24163 goto 12
    movl    $24163, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_12              
    jmp     l_test_13               #  15:     goto   13
l_test_12:
    movl    $1, %eax                #  17:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_14               #  18:     goto   14
l_test_13:
    movl    $0, %eax                #  20:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_14:
    movzbl  -13(%ebp), %eax         #  22:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_1_while_cond     #  23:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_18_while_cond:
    movl    $97, %eax               #  27:     if     97 >= 100 goto 19_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_19_while_body   
    jmp     l_test_17               #  28:     goto   17
l_test_19_while_body:
    movl    $99, %eax               #  30:     if     99 # 100 goto 22_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_22_if_true      
    jmp     l_test_23_if_false      #  31:     goto   23_if_false
l_test_22_if_true:
    movl    $27352, %eax            #  33:     if     27352 >= 25947 goto 26_if_true
    movl    $25947, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_26_if_true      
    jmp     l_test_27_if_false      #  34:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  36:     goto   25
l_test_27_if_false:
l_test_25:
    movl    $3251, %eax             #  39:     assign v1 <- 3251
    movl    %eax, v1               
    movl    $42838, %eax            #  40:     if     42838 < 22732 goto 31_if_true
    movl    $22732, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_31_if_true      
    jmp     l_test_32_if_false      #  41:     goto   32_if_false
l_test_31_if_true:
    jmp     l_test_30               #  43:     goto   30
l_test_32_if_false:
l_test_30:
    jmp     l_test_21               #  46:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_18_while_cond    #  49:     goto   18_while_cond
l_test_17:
    jmp     l_test_36_if_false      #  51:     goto   36_if_false
l_test_38_while_cond:
    movl    $99, %eax               #  53:     if     99 <= 100 goto 39_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_39_while_body   
    jmp     l_test_37               #  54:     goto   37
l_test_39_while_body:
l_test_42_while_cond:
    jmp     l_test_42_while_cond    #  57:     goto   42_while_cond
    jmp     l_test_38_while_cond    #  58:     goto   38_while_cond
l_test_37:
    jmp     l_test_34               #  60:     goto   34
l_test_36_if_false:
l_test_34:
    jmp     l_test_exit            
    jmp     l_test_exit            

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
