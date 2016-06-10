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
    #    -65(%ebp)   1  [ $t23      <char> %ebp-65 ]
    #    -66(%ebp)   1  [ $t3       <char> %ebp-66 ]
    #    -67(%ebp)   1  [ $t4       <bool> %ebp-67 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 47 of <array 39 of <array 85 of <array 84 of <array 33 of <bool>>>>>>> %ebp+8 ]
    #    -89(%ebp)   1  [ $v1       <bool> %ebp-89 ]
    #    -90(%ebp)   1  [ $v2       <char> %ebp-90 ]

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
    movl    $98, %eax               #   1:     if     98 # 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -66(%ebp)         
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_9                  #   9:     goto   9
    jmp     l_f0_9                  #  10:     goto   9
    jmp     l_f0_10                 #  11:     goto   10
l_f0_9:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -67(%ebp)         
    jmp     l_f0_11                 #  14:     goto   11
l_f0_10:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -67(%ebp)         
l_f0_11:
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $5974, %eax             #  21:     mul    t6 <- 5974, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  22:     add    t7 <- t6, 54204
    movl    $54204, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  26:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    $22139, %eax            #  27:     add    t10 <- 22139, 30649
    movl    $30649, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  28:     sub    t11 <- t10, 77609
    movl    $77609, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -88(%ebp), %eax         #  29:     add    t12 <- t9, t11
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  33:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     add    t15 <- t14, 80837
    movl    $80837, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  37:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  38:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  39:     add    t18 <- t17, 96542
    movl    $96542, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  40:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  41:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  42:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  43:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  44:     add    t22 <- v0, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -67(%ebp), %eax         #  45:     assign @t22 <- t4
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  46:     call   t23 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    movzbl  -65(%ebp), %eax         #  47:     assign v2 <- t23
    movb    %al, -90(%ebp)         

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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t3       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t4       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t6       <bool> %ebp-85 ]
    #    -86(%ebp)   1  [ $t7       <bool> %ebp-86 ]
    #    -87(%ebp)   1  [ $t8       <bool> %ebp-87 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 50 of <array 33 of <array 96 of <array 26 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 98 of <array 68 of <array 42 of <array 16 of <array 20 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 5 of <array 30 of <array 48 of <array 75 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -93(%ebp)   1  [ $v4       <bool> %ebp-93 ]

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
    movl    $13142, %eax            #   0:     div    t3 <- 13142, 66628
    movl    $66628, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   1:     add    t4 <- t3, 73079
    movl    $73079, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   2:     sub    t5 <- t4, 82683
    movl    $82683, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $6796, %eax             #   3:     if     6796 >= t5 goto 1
    movl    -84(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   4:     goto   2
l_f1_1:
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -85(%ebp)         
l_f1_3:
    movzbl  -85(%ebp), %eax         #  11:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_6_if_true          #  12:     goto   6_if_true
l_f1_6_if_true:
l_f1_10_while_cond:
    movl    $82115, %eax            #  15:     if     82115 < 69366 goto 11_while_body
    movl    $69366, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_11_while_body     
    jmp     l_f1_9                  #  16:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  18:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_5                  #  20:     goto   5
l_f1_5:
    jmp     l_f1_15_if_false        #  22:     goto   15_if_false
    movl    $0, %eax                #  23:     return 0
    jmp     l_f1_exit              
    movl    $97, %eax               #  24:     assign v3 <- 97
    movb    %al, 20(%ebp)          
    jmp     l_f1_18                 #  25:     goto   18
l_f1_18:
l_f1_22_while_cond:
    movl    $34893, %eax            #  28:     if     34893 = 81920 goto 23_while_body
    movl    $81920, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_23_while_body     
    jmp     l_f1_21                 #  29:     goto   21
l_f1_23_while_body:
    jmp     l_f1_22_while_cond      #  31:     goto   22_while_cond
l_f1_21:
    movl    $79081, %eax            #  33:     if     79081 < 78893 goto 26
    movl    $78893, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_26                
    jmp     l_f1_27                 #  34:     goto   27
l_f1_26:
    movl    $1, %eax                #  36:     assign t7 <- 1
    movb    %al, -86(%ebp)         
    jmp     l_f1_28                 #  37:     goto   28
l_f1_27:
    movl    $0, %eax                #  39:     assign t7 <- 0
    movb    %al, -86(%ebp)         
l_f1_28:
    movzbl  -86(%ebp), %eax         #  41:     return t7
    jmp     l_f1_exit              
    movl    $97, %eax               #  42:     if     97 <= 97 goto 31
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_31                
    jmp     l_f1_32                 #  43:     goto   32
l_f1_31:
    movl    $1, %eax                #  45:     assign t8 <- 1
    movb    %al, -87(%ebp)         
    jmp     l_f1_33                 #  46:     goto   33
l_f1_32:
    movl    $0, %eax                #  48:     assign t8 <- 0
    movb    %al, -87(%ebp)         
l_f1_33:
    movl    $2, %eax                #  50:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  51:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  52:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $14647, %eax            #  53:     mul    t10 <- 14647, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  54:     add    t11 <- t10, 65561
    movl    $65561, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  55:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  56:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  57:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  58:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  59:     add    t14 <- t13, 25418
    movl    $25418, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  60:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  61:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  62:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  63:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  64:     add    t17 <- t16, 22798
    movl    $22798, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  65:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  66:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  67:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  68:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  69:     add    t20 <- t19, 21610
    movl    $21610, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  70:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  71:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  72:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  73:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  74:     add    t24 <- v2, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -87(%ebp), %eax         #  75:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_13                 #  76:     goto   13
l_f1_15_if_false:
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $68222, %eax            #   3:     if     68222 <= 97115 goto 6
    movl    $97115, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_6                 
    jmp     l_f2_7                  #   4:     goto   7
l_f2_6:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_8                  #   7:     goto   8
l_f2_7:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_8:
    movzbl  -13(%ebp), %eax         #  11:     return t3
    jmp     l_f2_exit              
    movl    $98, %eax               #  12:     if     98 # 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  13:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  15:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_0                  #  18:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $1, %eax                #  21:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_17                 #  22:     goto   17
    movl    $0, %eax                #  23:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_17:
    movzbl  -14(%ebp), %eax         #  25:     return t4
    jmp     l_f2_exit              
l_f2_21_while_cond:
    jmp     l_f2_22_while_body      #  27:     goto   22_while_body
    jmp     l_f2_22_while_body      #  28:     goto   22_while_body
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  30:     goto   21_while_cond

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   2:     if     98 >= t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    movl    $98, %eax               #   8:     if     98 <= 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_6_while_body    
    jmp     l_test_4                #   9:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #  11:     goto   5_while_cond
l_test_4:
l_test_9_while_cond:
    call    f2                      #  14:     call   t1 <- f2
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  15:     if     t1 = 1 goto 12
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_12              
    jmp     l_test_13               #  16:     goto   13
l_test_12:
    movl    $1, %eax                #  18:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_14               #  19:     goto   14
l_test_13:
    movl    $0, %eax                #  21:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_14:
    movzbl  -15(%ebp), %eax         #  23:     if     t2 = 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  24:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  26:     goto   9_while_cond
l_test_8:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
