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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
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
    #    -85(%ebp)   1  [ $t8       <char> %ebp-85 ]
    #    -86(%ebp)   1  [ $t9       <char> %ebp-86 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 47 of <array 26 of <array 75 of <array 92 of <char>>>>>>> %ebp+12 ]
    #    -92(%ebp)   4  [ $v2       <int> %ebp-92 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -85(%ebp)         
    movzbl  -85(%ebp), %eax         #   1:     return t8
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t9 <- dummyCHARfunc
    movb    %al, -86(%ebp)         
    call    dummyCHARfunc           #   3:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -86(%ebp), %eax         #   4:     if     t9 = t10 goto 2_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   5:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #   7:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $55357, %eax            #  10:     mul    t11 <- 55357, 77320
    movl    $77320, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  13:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $99410, %eax            #  14:     mul    t13 <- 99410, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     add    t14 <- t13, 20824
    movl    $20824, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  19:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  20:     add    t17 <- t16, 24033
    movl    $24033, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  23:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  24:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  25:     add    t20 <- t19, 63431
    movl    $63431, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  28:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  29:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  30:     add    t23 <- t22, 76845
    movl    $76845, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  31:     mul    t24 <- t23, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  32:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  33:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  34:     add    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    8(%ebp), %eax           #  35:     add    t27 <- v0, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -20(%ebp), %eax         #  36:     assign @t27 <- t11
    movl    -84(%ebp), %edi        
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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 96 of <array 47 of <array 26 of <array 75 of <array 92 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <ptr(4) to <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <ptr(4) to <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -113(%ebp)   1  [ $t35      <bool> %ebp-113 ]
    #   -120(%ebp)   4  [ $t8       <int> %ebp-120 ]
    #   -121(%ebp)   1  [ $t9       <bool> %ebp-121 ]
    #   -122(%ebp)   1  [ $v0       <bool> %ebp-122 ]
    #   -1141366948(%ebp)  1141366824  [ $v1       <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>> %ebp-1141366948 ]
    #   -1950819772(%ebp)  809452824  [ $v2       <array 96 of <array 47 of <array 26 of <array 75 of <array 92 of <char>>>>>> %ebp-1950819772 ]
    #   -1950819776(%ebp)   4  [ $v3       <int> %ebp-1950819776 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1950819764, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $487704941, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1141366948(%ebp)    # local array 'v1': 5 dimensions
    movl    $75,-1141366944(%ebp)   #   dimension 1: 75 elements
    movl    $94,-1141366940(%ebp)   #   dimension 2: 94 elements
    movl    $7,-1141366936(%ebp)    #   dimension 3: 7 elements
    movl    $98,-1141366932(%ebp)   #   dimension 4: 98 elements
    movl    $59,-1141366928(%ebp)   #   dimension 5: 59 elements
    movl    $5,-1950819772(%ebp)    # local array 'v2': 5 dimensions
    movl    $96,-1950819768(%ebp)   #   dimension 1: 96 elements
    movl    $47,-1950819764(%ebp)   #   dimension 2: 47 elements
    movl    $26,-1950819760(%ebp)   #   dimension 3: 26 elements
    movl    $75,-1950819756(%ebp)   #   dimension 4: 75 elements
    movl    $92,-1950819752(%ebp)   #   dimension 5: 92 elements

    # function body
l_f1_1_while_cond:
    movl    $15505, %eax            #   1:     mul    t8 <- 15505, 42423
    movl    $42423, %ebx           
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    $2948, %eax             #   2:     if     2948 = t8 goto 2_while_body
    movl    -120(%ebp), %ebx       
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
    movl    $97, %eax               #   7:     if     97 < 99 goto 8
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_8                 
    jmp     l_f1_9                  #   8:     goto   9
l_f1_8:
    movl    $1, %eax                #  10:     assign t9 <- 1
    movb    %al, -121(%ebp)        
    jmp     l_f1_10                 #  11:     goto   10
l_f1_9:
    movl    $0, %eax                #  13:     assign t9 <- 0
    movb    %al, -121(%ebp)        
l_f1_10:
    movzbl  -121(%ebp), %eax        #  15:     assign v0 <- t9
    movb    %al, -122(%ebp)        
    jmp     l_f1_12                 #  16:     goto   12
l_f1_12:
    jmp     l_f1_1_while_cond       #  18:     goto   1_while_cond
l_f1_0:
l_f1_16_while_cond:
    leal    -1950819772(%ebp), %eax #  21:     &()    t10 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     param  1 <- t10
    pushl   %eax                   
    leal    -1141366948(%ebp), %eax #  23:     &()    t11 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  25:     call   t12 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  26:     if     97 < t12 goto 17_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_17_while_body     
    jmp     l_f1_15                 #  27:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  29:     goto   16_while_cond
l_f1_15:
    movl    $44712, %eax            #  31:     if     44712 < 39236 goto 20_if_true
    movl    $39236, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  32:     goto   21_if_false
l_f1_20_if_true:
    movl    $11049, %eax            #  34:     if     11049 <= 30045 goto 24_if_true
    movl    $30045, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_24_if_true        
    jmp     l_f1_25_if_false        #  35:     goto   25_if_false
l_f1_24_if_true:
    jmp     l_f1_23                 #  37:     goto   23
l_f1_25_if_false:
l_f1_23:
    leal    -1141366948(%ebp), %eax #  40:     &()    t13 <- v1
    movl    %eax, -28(%ebp)        
    movl    $2, %eax                #  41:     param  1 <- 2
    pushl   %eax                   
    leal    -1141366948(%ebp), %eax #  42:     &()    t14 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  43:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  44:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    $4498, %eax             #  45:     mul    t16 <- 4498, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  46:     add    t17 <- t16, 7915
    movl    $7915, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  47:     param  1 <- 3
    pushl   %eax                   
    leal    -1141366948(%ebp), %eax #  48:     &()    t18 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  49:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  50:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  51:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  52:     add    t21 <- t20, 56806
    movl    $56806, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4, %eax                #  53:     param  1 <- 4
    pushl   %eax                   
    leal    -1141366948(%ebp), %eax #  54:     &()    t22 <- v1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  55:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  56:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  57:     mul    t24 <- t21, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  58:     add    t25 <- t24, 99484
    movl    $99484, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  59:     param  1 <- 5
    pushl   %eax                   
    leal    -1141366948(%ebp), %eax #  60:     &()    t26 <- v1
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  61:     param  0 <- t26
    pushl   %eax                   
    call    DIM                     #  62:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  63:     mul    t28 <- t25, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  64:     add    t29 <- t28, 95838
    movl    $95838, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  65:     mul    t30 <- t29, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    leal    -1141366948(%ebp), %eax #  66:     &()    t31 <- v1
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  67:     param  0 <- t31
    pushl   %eax                   
    call    DOFS                    #  68:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    -96(%ebp), %eax         #  69:     add    t33 <- t30, t32
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -28(%ebp), %eax         #  70:     add    t34 <- t13, t33
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $43851, %eax            #  71:     assign @t34 <- 43851
    movl    -112(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $97, %eax               #  72:     if     97 = 99 goto 29
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_29                
    jmp     l_f1_30                 #  73:     goto   30
l_f1_29:
    movl    $1, %eax                #  75:     assign t35 <- 1
    movb    %al, -113(%ebp)        
    jmp     l_f1_31                 #  76:     goto   31
l_f1_30:
    movl    $0, %eax                #  78:     assign t35 <- 0
    movb    %al, -113(%ebp)        
l_f1_31:
    movzbl  -113(%ebp), %eax        #  80:     assign v0 <- t35
    movb    %al, -122(%ebp)        
    jmp     l_f1_19                 #  81:     goto   19
l_f1_21_if_false:
l_f1_19:

l_f1_exit:
    # epilogue
    addl    $1950819764, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 96 of <array 47 of <array 26 of <array 75 of <array 92 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t8       <ptr(4) to <array 96 of <array 47 of <array 26 of <array 75 of <array 92 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <ptr(4) to <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>>> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 91 of <array 39 of <array 66 of <array 74 of <array 14 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 72 of <array 86 of <array 4 of <array 91 of <array 26 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 58 of <array 28 of <array 86 of <array 8 of <array 51 of <int>>>>>>> %ebp+16 ]
    #   -1141366860(%ebp)  1141366824  [ $v3       <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>> %ebp-1141366860 ]
    #   -1950819684(%ebp)  809452824  [ $v4       <array 96 of <array 47 of <array 26 of <array 75 of <array 92 of <char>>>>>> %ebp-1950819684 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1950819672, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $487704918, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1141366860(%ebp)    # local array 'v3': 5 dimensions
    movl    $75,-1141366856(%ebp)   #   dimension 1: 75 elements
    movl    $94,-1141366852(%ebp)   #   dimension 2: 94 elements
    movl    $7,-1141366848(%ebp)    #   dimension 3: 7 elements
    movl    $98,-1141366844(%ebp)   #   dimension 4: 98 elements
    movl    $59,-1141366840(%ebp)   #   dimension 5: 59 elements
    movl    $5,-1950819684(%ebp)    # local array 'v4': 5 dimensions
    movl    $96,-1950819680(%ebp)   #   dimension 1: 96 elements
    movl    $47,-1950819676(%ebp)   #   dimension 2: 47 elements
    movl    $26,-1950819672(%ebp)   #   dimension 3: 26 elements
    movl    $75,-1950819668(%ebp)   #   dimension 4: 75 elements
    movl    $92,-1950819664(%ebp)   #   dimension 5: 92 elements

    # function body
    leal    -1950819684(%ebp), %eax #   0:     &()    t8 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     param  1 <- t8
    pushl   %eax                   
    leal    -1141366860(%ebp), %eax #   2:     &()    t9 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #   4:     call   t10 <- f0
    addl    $8, %esp               
    movb    %al, -13(%ebp)         
    jmp     l_f2_exit              
l_f2_3_while_cond:
    leal    -1950819684(%ebp), %eax #   7:     &()    t11 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  1 <- t11
    pushl   %eax                   
    leal    -1141366860(%ebp), %eax #   9:     &()    t12 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  11:     call   t13 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    call    dummyCHARfunc           #  12:     call   t14 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movzbl  -25(%ebp), %eax         #  13:     if     t13 >= t14 goto 4_while_body
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_4_while_body      
    jmp     l_f2_2                  #  14:     goto   2
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #  16:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $1950819672, %esp       # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 96 of <array 47 of <array 26 of <array 75 of <array 92 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <char> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $12939, %eax            #   0:     add    t0 <- 12939, 27536
    movl    $27536, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 60922
    movl    $60922, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $95635, %eax            #   2:     sub    t2 <- 95635, 67392
    movl    $67392, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t1 <= t2 goto 1_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   4:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    call    ReadInt                 #  10:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
l_test_7_while_cond:
    jmp     l_test_6                #  12:     goto   6
    movl    $18654, %eax            #  13:     if     18654 # 2334 goto 10_if_true
    movl    $2334, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_10_if_true      
    jmp     l_test_11_if_false      #  14:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  16:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $51028, %eax            #  19:     if     51028 <= 46339 goto 14_if_true
    movl    $46339, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_14_if_true      
    jmp     l_test_15_if_false      #  20:     goto   15_if_false
l_test_14_if_true:
    call    dummyBOOLfunc           #  22:     call   t4 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_13               #  23:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_7_while_cond     #  26:     goto   7_while_cond
l_test_6:
    jmp     l_test_20_if_false      #  28:     goto   20_if_false
    jmp     l_test_20_if_false      #  29:     goto   20_if_false
    jmp     l_test_20_if_false      #  30:     goto   20_if_false
    jmp     l_test_18               #  31:     goto   18
l_test_20_if_false:
l_test_18:
    leal    v2, %eax                #  34:     &()    t5 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     param  1 <- t5
    pushl   %eax                   
    leal    v1, %eax                #  36:     &()    t6 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  37:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  38:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  39:     assign v0 <- t7
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v1:                                 # <array 75 of <array 94 of <array 7 of <array 98 of <array 59 of <int>>>>>>
    .long    5
    .long   75
    .long   94
    .long    7
    .long   98
    .long   59
    .skip 1141366800
v2:                                 # <array 96 of <array 47 of <array 26 of <array 75 of <array 92 of <char>>>>>>
    .long    5
    .long   96
    .long   47
    .long   26
    .long   75
    .long   92
    .skip 809452800








    # end of global data section
    #-----------------------------------------

    .end
##################################################
