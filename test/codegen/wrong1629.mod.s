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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 15 of <array 13 of <array 36 of <array 56 of <array 33 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 77 of <array 63 of <array 50 of <array 62 of <array 76 of <bool>>>>>>> %ebp+16 ]
    #    -22(%ebp)   1  [ $v4       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $v5       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $97, %eax               #   0:     assign v4 <- 97
    movb    %al, -22(%ebp)         
    call    ReadInt                 #   1:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t7 <- t6, 64048
    movl    $64048, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v5 <- t7
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #   4:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 77 of <array 63 of <array 50 of <array 62 of <array 76 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 15 of <array 13 of <array 36 of <array 56 of <array 33 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t14      <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t15      <char> %ebp-24 ]
    #    -25(%ebp)   1  [ $t16      <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t17      <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t18      <char> %ebp-27 ]
    #    -28(%ebp)   1  [ $t19      <bool> %ebp-28 ]
    #    -32(%ebp)   4  [ $t20      <ptr(4) to <array 15 of <array 13 of <array 36 of <array 56 of <array 33 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t21      <ptr(4) to <array 15 of <array 13 of <array 36 of <array 56 of <array 33 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t22      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t23      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t24      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t25      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t26      <ptr(4) to <array 15 of <array 13 of <array 36 of <array 56 of <array 33 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t27      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t28      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t29      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t30      <ptr(4) to <array 15 of <array 13 of <array 36 of <array 56 of <array 33 of <bool>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t31      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t32      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t33      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t34      <ptr(4) to <array 15 of <array 13 of <array 36 of <array 56 of <array 33 of <bool>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t35      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t36      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t37      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t38      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t39      <ptr(4) to <array 15 of <array 13 of <array 36 of <array 56 of <array 33 of <bool>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t40      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t41      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t42      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t6       <ptr(4) to <array 77 of <array 63 of <array 50 of <array 62 of <array 76 of <bool>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t7       <ptr(4) to <array 15 of <array 13 of <array 36 of <array 56 of <array 33 of <bool>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t8       <ptr(4) to <array 77 of <array 63 of <array 50 of <array 62 of <array 76 of <bool>>>>>>> %ebp-132 ]
    #   -136(%ebp)   4  [ $t9       <ptr(4) to <array 15 of <array 13 of <array 36 of <array 56 of <array 33 of <bool>>>>>>> %ebp-136 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 49 of <array 12 of <array 52 of <array 45 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #   -12973120(%ebp)  12972984  [ $v3       <array 15 of <array 13 of <array 36 of <array 56 of <array 33 of <bool>>>>>> %ebp-12973120 ]
    #   -1155868744(%ebp)  1142895624  [ $v4       <array 77 of <array 63 of <array 50 of <array 62 of <array 76 of <bool>>>>>> %ebp-1155868744 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1155868732, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $288967183, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-12973120(%ebp)      # local array 'v3': 5 dimensions
    movl    $15,-12973116(%ebp)     #   dimension 1: 15 elements
    movl    $13,-12973112(%ebp)     #   dimension 2: 13 elements
    movl    $36,-12973108(%ebp)     #   dimension 3: 36 elements
    movl    $56,-12973104(%ebp)     #   dimension 4: 56 elements
    movl    $33,-12973100(%ebp)     #   dimension 5: 33 elements
    movl    $5,-1155868744(%ebp)    # local array 'v4': 5 dimensions
    movl    $77,-1155868740(%ebp)   #   dimension 1: 77 elements
    movl    $63,-1155868736(%ebp)   #   dimension 2: 63 elements
    movl    $50,-1155868732(%ebp)   #   dimension 3: 50 elements
    movl    $62,-1155868728(%ebp)   #   dimension 4: 62 elements
    movl    $76,-1155868724(%ebp)   #   dimension 5: 76 elements

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
    leal    -1155868744(%ebp), %eax #   1:     &()    t6 <- v4
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #   2:     param  2 <- t6
    pushl   %eax                   
    leal    -12973120(%ebp), %eax   #   3:     &()    t7 <- v3
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #   4:     param  1 <- t7
    pushl   %eax                   
    leal    -1155868744(%ebp), %eax #   5:     &()    t8 <- v4
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #   6:     param  2 <- t8
    pushl   %eax                   
    leal    -12973120(%ebp), %eax   #   7:     &()    t9 <- v3
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #   8:     param  1 <- t9
    pushl   %eax                   
    leal    -1155868744(%ebp), %eax #   9:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  2 <- t10
    pushl   %eax                   
    leal    -12973120(%ebp), %eax   #  11:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  1 <- t11
    pushl   %eax                   
    jmp     l_f1_10                 #  13:     goto   10
    jmp     l_f1_10                 #  14:     goto   10
    jmp     l_f1_11                 #  15:     goto   11
l_f1_10:
    movl    $1, %eax                #  17:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_12                 #  18:     goto   12
l_f1_11:
    movl    $0, %eax                #  20:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f1_12:
    movzbl  -21(%ebp), %eax         #  22:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  23:     call   t13 <- f0
    addl    $12, %esp              
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  24:     if     t13 <= 100 goto 6
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_6                 
    jmp     l_f1_7                  #  25:     goto   7
l_f1_6:
    movl    $1, %eax                #  27:     assign t14 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f1_8                  #  28:     goto   8
l_f1_7:
    movl    $0, %eax                #  30:     assign t14 <- 0
    movb    %al, -23(%ebp)         
l_f1_8:
    movzbl  -23(%ebp), %eax         #  32:     param  0 <- t14
    pushl   %eax                   
    call    f0                      #  33:     call   t15 <- f0
    addl    $12, %esp              
    movb    %al, -24(%ebp)         
    call    dummyCHARfunc           #  34:     call   t16 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -24(%ebp), %eax         #  35:     if     t15 >= t16 goto 2
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2                 
    jmp     l_f1_3                  #  36:     goto   3
l_f1_2:
    movl    $1, %eax                #  38:     assign t17 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_4                  #  39:     goto   4
l_f1_3:
    movl    $0, %eax                #  41:     assign t17 <- 0
    movb    %al, -26(%ebp)         
l_f1_4:
    movzbl  -26(%ebp), %eax         #  43:     param  0 <- t17
    pushl   %eax                   
    call    f0                      #  44:     call   t18 <- f0
    addl    $12, %esp              
    movb    %al, -27(%ebp)         
    movl    $34504, %eax            #  45:     if     34504 = 5201 goto 16
    movl    $5201, %ebx            
    cmpl    %ebx, %eax             
    je      l_f1_16                
    jmp     l_f1_17                 #  46:     goto   17
l_f1_16:
    movl    $1, %eax                #  48:     assign t19 <- 1
    movb    %al, -28(%ebp)         
    jmp     l_f1_18                 #  49:     goto   18
l_f1_17:
    movl    $0, %eax                #  51:     assign t19 <- 0
    movb    %al, -28(%ebp)         
l_f1_18:
    leal    -12973120(%ebp), %eax   #  53:     &()    t20 <- v3
    movl    %eax, -32(%ebp)        
    movl    $2, %eax                #  54:     param  1 <- 2
    pushl   %eax                   
    leal    -12973120(%ebp), %eax   #  55:     &()    t21 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  56:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  57:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    $33537, %eax            #  58:     mul    t23 <- 33537, t22
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    call    dummyINTfunc            #  59:     call   t24 <- dummyINTfunc
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  60:     add    t25 <- t23, t24
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $3, %eax                #  61:     param  1 <- 3
    pushl   %eax                   
    leal    -12973120(%ebp), %eax   #  62:     &()    t26 <- v3
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  63:     param  0 <- t26
    pushl   %eax                   
    call    DIM                     #  64:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  65:     mul    t28 <- t25, t27
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  66:     add    t29 <- t28, 84320
    movl    $84320, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  67:     param  1 <- 4
    pushl   %eax                   
    leal    -12973120(%ebp), %eax   #  68:     &()    t30 <- v3
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  69:     param  0 <- t30
    pushl   %eax                   
    call    DIM                     #  70:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  71:     mul    t32 <- t29, t31
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  72:     add    t33 <- t32, 8313
    movl    $8313, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $5, %eax                #  73:     param  1 <- 5
    pushl   %eax                   
    leal    -12973120(%ebp), %eax   #  74:     &()    t34 <- v3
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  75:     param  0 <- t34
    pushl   %eax                   
    call    DIM                     #  76:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  77:     mul    t36 <- t33, t35
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  78:     add    t37 <- t36, 96367
    movl    $96367, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  79:     mul    t38 <- t37, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    leal    -12973120(%ebp), %eax   #  80:     &()    t39 <- v3
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  81:     param  0 <- t39
    pushl   %eax                   
    call    DOFS                    #  82:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -104(%ebp), %eax        #  83:     add    t41 <- t38, t40
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -32(%ebp), %eax         #  84:     add    t42 <- t20, t41
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movzbl  -28(%ebp), %eax         #  85:     assign @t42 <- t19
    movl    -120(%ebp), %edi       
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $1155868732, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 77 of <array 63 of <array 50 of <array 62 of <array 76 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 15 of <array 13 of <array 36 of <array 56 of <array 33 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <char> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 49 of <array 21 of <array 88 of <array 13 of <array 63 of <char>>>>>>> %ebp+20 ]
    #   -12973012(%ebp)  12972984  [ $v5       <array 15 of <array 13 of <array 36 of <array 56 of <array 33 of <bool>>>>>> %ebp-12973012 ]
    #   -1155868636(%ebp)  1142895624  [ $v6       <array 77 of <array 63 of <array 50 of <array 62 of <array 76 of <bool>>>>>> %ebp-1155868636 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1155868624, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $288967156, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-12973012(%ebp)      # local array 'v5': 5 dimensions
    movl    $15,-12973008(%ebp)     #   dimension 1: 15 elements
    movl    $13,-12973004(%ebp)     #   dimension 2: 13 elements
    movl    $36,-12973000(%ebp)     #   dimension 3: 36 elements
    movl    $56,-12972996(%ebp)     #   dimension 4: 56 elements
    movl    $33,-12972992(%ebp)     #   dimension 5: 33 elements
    movl    $5,-1155868636(%ebp)    # local array 'v6': 5 dimensions
    movl    $77,-1155868632(%ebp)   #   dimension 1: 77 elements
    movl    $63,-1155868628(%ebp)   #   dimension 2: 63 elements
    movl    $50,-1155868624(%ebp)   #   dimension 3: 50 elements
    movl    $62,-1155868620(%ebp)   #   dimension 4: 62 elements
    movl    $76,-1155868616(%ebp)   #   dimension 5: 76 elements

    # function body
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_1_while_cond       #   2:     goto   1_while_cond
l_f2_5_while_cond:
    movl    $61882, %eax            #   4:     if     61882 > 62277 goto 8_if_true
    movl    $62277, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   5:     goto   9_if_false
l_f2_8_if_true:
l_f2_12_while_cond:
    movl    $79115, %eax            #   8:     if     79115 # 78097 goto 13_while_body
    movl    $78097, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_13_while_body     
    jmp     l_f2_11                 #   9:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  11:     goto   12_while_cond
l_f2_11:
l_f2_16_while_cond:
    movl    $4041, %eax             #  14:     if     4041 >= 30985 goto 17_while_body
    movl    $30985, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_17_while_body     
    jmp     l_f2_15                 #  15:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  17:     goto   16_while_cond
l_f2_15:
    jmp     l_f2_7                  #  19:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_5_while_cond       #  22:     goto   5_while_cond
    leal    -1155868636(%ebp), %eax #  23:     &()    t7 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  2 <- t7
    pushl   %eax                   
    leal    -12973012(%ebp), %eax   #  25:     &()    t8 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     param  1 <- t8
    pushl   %eax                   
    movl    $0, %eax                #  27:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  28:     call   t9 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         

l_f2_exit:
    # epilogue
    addl    $1155868624, %esp       # remove locals
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
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]

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
    movl    $30170, %eax            #   0:     mul    t0 <- 30170, 26654
    movl    $26654, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 87548
    movl    $87548, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 46828
    movl    $46828, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $76184, %eax            #   3:     sub    t3 <- 76184, t2
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v0 <- t3
    movl    %eax, v0               
    movl    $97, %eax               #   5:     if     97 < 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2               
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $1, %eax                #   8:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_4                #   9:     goto   4
l_test_3:
    movl    $0, %eax                #  11:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_4:
    movzbl  -29(%ebp), %eax         #  13:     assign v1 <- t4
    movb    %al, v1                
    movl    $99, %eax               #  14:     if     99 >= 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_7_if_true       
    jmp     l_test_8_if_false       #  15:     goto   8_if_false
l_test_7_if_true:
l_test_11_while_cond:
    jmp     l_test_10               #  18:     goto   10
    jmp     l_test_11_while_cond    #  19:     goto   11_while_cond
l_test_10:
    movl    $98, %eax               #  21:     assign v2 <- 98
    movb    %al, v2                
    jmp     l_test_exit            
    jmp     l_test_6                #  23:     goto   6
l_test_8_if_false:
l_test_6:
    call    dummyCHARfunc           #  26:     call   t5 <- dummyCHARfunc
    movb    %al, -30(%ebp)         

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
