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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t13      <bool> %ebp-21 ]
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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 67 of <array 94 of <array 41 of <array 18 of <array 20 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 44 of <array 73 of <array 90 of <array 28 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 76 of <array 90 of <array 27 of <array 8 of <array 33 of <char>>>>>>> %ebp+20 ]
    #    -89(%ebp)   1  [ $v4       <char> %ebp-89 ]
    #    -96(%ebp)   4  [ $v5       <int> %ebp-96 ]

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
    movl    $20950, %eax            #   0:     if     20950 < 99428 goto 1_if_true
    movl    $99428, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $100, %eax              #   3:     if     100 < 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $36200, %eax            #   9:     if     36200 = 92270 goto 9
    movl    $92270, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_10                 #  10:     goto   10
l_f0_9:
    movl    $1, %eax                #  12:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_11                 #  13:     goto   11
l_f0_10:
    movl    $0, %eax                #  15:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f0_11:
    movzbl  -13(%ebp), %eax         #  17:     return t11
    jmp     l_f0_exit              
l_f0_14_while_cond:
    movl    $100, %eax              #  19:     if     100 < 98 goto 15_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_15_while_body     
    jmp     l_f0_13                 #  20:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  22:     goto   14_while_cond
l_f0_13:
    movl    $72491, %eax            #  24:     if     72491 <= 10799 goto 18_if_true
    movl    $10799, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  25:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  27:     goto   17
l_f0_19_if_false:
l_f0_17:
l_f0_22_while_cond:
    movl    $28112, %eax            #  31:     if     28112 >= 37390 goto 23_while_body
    movl    $37390, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_23_while_body     
    jmp     l_f0_21                 #  32:     goto   21
l_f0_23_while_body:
    jmp     l_f0_22_while_cond      #  34:     goto   22_while_cond
l_f0_21:
    movl    $0, %eax                #  36:     if     0 = 0 goto 26_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_26_if_true        
    jmp     l_f0_27_if_false        #  37:     goto   27_if_false
l_f0_26_if_true:
    jmp     l_f0_25                 #  39:     goto   25
l_f0_27_if_false:
l_f0_25:
l_f0_30_while_cond:
    jmp     l_f0_30_while_cond      #  43:     goto   30_while_cond
l_f0_33_while_cond:
    jmp     l_f0_33_while_cond      #  45:     goto   33_while_cond
    jmp     l_f0_0                  #  46:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    ReadInt                 #  49:     call   t12 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f0_37_while_cond:
    call    dummyBOOLfunc           #  51:     call   t13 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  52:     if     t13 = 1 goto 38_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_38_while_body     
    jmp     l_f0_36                 #  53:     goto   36
l_f0_38_while_body:
    movl    $2, %eax                #  55:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  56:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  57:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $49731, %eax            #  58:     mul    t15 <- 49731, t14
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  59:     add    t16 <- t15, 90972
    movl    $90972, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  60:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  61:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  62:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  63:     mul    t18 <- t16, t17
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  64:     add    t19 <- t18, 54576
    movl    $54576, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  65:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  66:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  67:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  68:     mul    t21 <- t19, t20
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  69:     add    t22 <- t21, 30396
    movl    $30396, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  70:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  71:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  72:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  73:     mul    t24 <- t22, t23
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  74:     add    t25 <- t24, 47485
    movl    $47485, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  75:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    20(%ebp), %eax          #  76:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  77:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  78:     add    t28 <- t26, t27
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    20(%ebp), %eax          #  79:     add    t29 <- v3, t28
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $98, %eax               #  80:     assign @t29 <- 98
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $75073, %eax            #  81:     assign v5 <- 75073
    movl    %eax, -96(%ebp)        
    movl    $99, %eax               #  82:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  83:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_37_while_cond      #  84:     goto   37_while_cond
l_f0_36:

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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 32 of <array 5 of <array 19 of <array 63 of <array 14 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 71 of <array 86 of <array 92 of <array 44 of <array 66 of <int>>>>>>> %ebp+20 ]
    #    -52(%ebp)   4  [ $v4       <int> %ebp-52 ]

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
    movl    $90789, %eax            #   0:     mul    t11 <- 90789, 23893
    movl    $23893, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v4 <- t11
    movl    %eax, -52(%ebp)        
    movl    $55743, %eax            #   2:     add    t12 <- 55743, 10905
    movl    $10905, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $83685, %eax            #   3:     div    t13 <- 83685, 91338
    movl    $91338, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     div    t14 <- t13, 40955
    movl    $40955, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     div    t15 <- t14, 63629
    movl    $63629, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -20(%ebp), %eax         #   6:     add    t16 <- t12, t15
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     return t16
    jmp     l_f1_exit              
l_f1_3_while_cond:
    movl    $62343, %eax            #   9:     add    t17 <- 62343, 36259
    movl    $36259, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     add    t18 <- t17, 59052
    movl    $59052, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  11:     sub    t19 <- t18, 53632
    movl    $53632, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $471, %eax              #  12:     if     471 < t19 goto 4_while_body
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_4_while_body      
    jmp     l_f1_2                  #  13:     goto   2
l_f1_4_while_body:
    movl    $54109, %eax            #  15:     return 54109
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #  16:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t11      <ptr(4) to <array 71 of <array 86 of <array 92 of <array 44 of <array 66 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 32 of <array 5 of <array 19 of <array 63 of <array 14 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t14      <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 64 of <array 33 of <array 75 of <array 9 of <array 33 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 97 of <array 71 of <array 2 of <array 96 of <array 31 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #   -10725172(%ebp)  10725144  [ $v4       <array 32 of <array 5 of <array 19 of <array 63 of <array 14 of <int>>>>>> %ebp-10725172 ]
    #   2053898164(%ebp)  -2064623336  [ $v5       <array 71 of <array 86 of <array 92 of <array 44 of <array 66 of <int>>>>>> %ebp+2053898164 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-2053898176, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-513474544, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-10725172(%ebp)      # local array 'v4': 5 dimensions
    movl    $32,-10725168(%ebp)     #   dimension 1: 32 elements
    movl    $5,-10725164(%ebp)      #   dimension 2: 5 elements
    movl    $19,-10725160(%ebp)     #   dimension 3: 19 elements
    movl    $63,-10725156(%ebp)     #   dimension 4: 63 elements
    movl    $14,-10725152(%ebp)     #   dimension 5: 14 elements
    movl    $5,2053898164(%ebp)     # local array 'v5': 5 dimensions
    movl    $71,2053898168(%ebp)    #   dimension 1: 71 elements
    movl    $86,2053898172(%ebp)    #   dimension 2: 86 elements
    movl    $92,2053898176(%ebp)    #   dimension 3: 92 elements
    movl    $44,2053898180(%ebp)    #   dimension 4: 44 elements
    movl    $66,2053898184(%ebp)    #   dimension 5: 66 elements

    # function body
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    leal    2053898164(%ebp), %eax  #   4:     &()    t11 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  3 <- t11
    pushl   %eax                   
    movl    $99, %eax               #   6:     param  2 <- 99
    pushl   %eax                   
    leal    -10725172(%ebp), %eax   #   7:     &()    t12 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  1 <- t12
    pushl   %eax                   
    movl    $97, %eax               #   9:     param  0 <- 97
    pushl   %eax                   
    call    f1                      #  10:     call   t13 <- f1
    addl    $16, %esp              
    movl    %eax, -24(%ebp)        
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  13:     call   t14 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $99, %eax               #  14:     if     99 >= t14 goto 6_if_true
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  15:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  17:     goto   5
l_f2_7_if_false:
l_f2_5:
l_f2_10_while_cond:
    jmp     l_f2_11_while_body      #  21:     goto   11_while_body
    jmp     l_f2_9                  #  22:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  24:     goto   10_while_cond
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $-2053898176, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 71 of <array 86 of <array 92 of <array 44 of <array 66 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 32 of <array 5 of <array 19 of <array 63 of <array 14 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t2       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 76 of <array 90 of <array 27 of <array 8 of <array 33 of <char>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 96 of <array 44 of <array 73 of <array 90 of <array 28 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <ptr(4) to <array 67 of <array 94 of <array 41 of <array 18 of <array 20 of <char>>>>>>> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
l_test_2_while_cond:
    leal    v1, %eax                #   2:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  3 <- t0
    pushl   %eax                   
    movl    $99, %eax               #   4:     param  2 <- 99
    pushl   %eax                   
    leal    v0, %eax                #   5:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  1 <- t1
    pushl   %eax                   
    call    dummyCHARfunc           #   7:     call   t2 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #   8:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #   9:     call   t3 <- f1
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     if     t3 > 47136 goto 3_while_body
    movl    $47136, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_3_while_body    
    jmp     l_test_1                #  11:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    movl    $100, %eax              #  14:     if     100 = 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_7_while_body    
    jmp     l_test_5                #  15:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  17:     goto   6_while_cond
l_test_5:
    jmp     l_test_2_while_cond     #  19:     goto   2_while_cond
l_test_1:
    jmp     l_test_11_if_false      #  21:     goto   11_if_false
    call    dummyBOOLfunc           #  22:     call   t4 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_exit            
    movl    $35467, %eax            #  24:     if     35467 >= 8053 goto 15
    movl    $8053, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_15              
    jmp     l_test_16               #  25:     goto   16
l_test_15:
    movl    $1, %eax                #  27:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_17               #  28:     goto   17
l_test_16:
    movl    $0, %eax                #  30:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_test_17:
    movzbl  -30(%ebp), %eax         #  32:     assign v2 <- t5
    movb    %al, v2                
    jmp     l_test_9                #  33:     goto   9
l_test_11_if_false:
l_test_9:
    leal    v5, %eax                #  36:     &()    t6 <- v5
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  37:     param  3 <- t6
    pushl   %eax                   
    movl    $1, %eax                #  38:     if     1 = 1 goto 23
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_23              
    jmp     l_test_24               #  39:     goto   24
l_test_23:
    movl    $1, %eax                #  41:     assign t7 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_25               #  42:     goto   25
l_test_24:
    movl    $0, %eax                #  44:     assign t7 <- 0
    movb    %al, -37(%ebp)         
l_test_25:
    movzbl  -37(%ebp), %eax         #  46:     param  2 <- t7
    pushl   %eax                   
    leal    v4, %eax                #  47:     &()    t8 <- v4
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  48:     param  1 <- t8
    pushl   %eax                   
    leal    v3, %eax                #  49:     &()    t9 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  50:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  51:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_19               #  53:     goto   19
l_test_19:

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
v0:                                 # <array 32 of <array 5 of <array 19 of <array 63 of <array 14 of <int>>>>>>
    .long    5
    .long   32
    .long    5
    .long   19
    .long   63
    .long   14
    .skip 10725120
v1:                                 # <array 71 of <array 86 of <array 92 of <array 44 of <array 66 of <int>>>>>>
    .long    5
    .long   71
    .long   86
    .long   92
    .long   44
    .long   66
    .skip -2064623360
v2:                                 # <bool>
    .skip    1
    .align   4
v3:                                 # <array 67 of <array 94 of <array 41 of <array 18 of <array 20 of <char>>>>>>
    .long    5
    .long   67
    .long   94
    .long   41
    .long   18
    .long   20
    .skip 92958480
v4:                                 # <array 96 of <array 44 of <array 73 of <array 90 of <array 28 of <char>>>>>>
    .long    5
    .long   96
    .long   44
    .long   73
    .long   90
    .long   28
    .skip 777047040
v5:                                 # <array 76 of <array 90 of <array 27 of <array 8 of <array 33 of <char>>>>>>
    .long    5
    .long   76
    .long   90
    .long   27
    .long    8
    .long   33
    .skip 48755520








    # end of global data section
    #-----------------------------------------

    .end
##################################################
