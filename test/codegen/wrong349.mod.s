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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $25424, %eax            #   3:     assign v4 <- 25424
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -57(%ebp)   1  [ $t21      <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t36      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t37      <int> %ebp-124 ]
    #   -125(%ebp)   1  [ $t38      <bool> %ebp-125 ]
    #   -126(%ebp)   1  [ $t39      <char> %ebp-126 ]
    #   -127(%ebp)   1  [ $t4       <bool> %ebp-127 ]
    #   -132(%ebp)   4  [ $t5       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t6       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 9 of <array 6 of <array 10 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 4 of <array 8 of <array 9 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 2 of <array 6 of <array 8 of <array 2 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #   -152(%ebp)   4  [ $v5       <int> %ebp-152 ]

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
    movl    $99, %eax               #   0:     if     99 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $100, %eax              #   4:     if     100 = 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_6_while_body      
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    movl    $1830, %eax             #   9:     if     1830 > 91073 goto 9
    movl    $91073, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_9                 
    jmp     l_f1_10                 #  10:     goto   10
l_f1_9:
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -127(%ebp)        
    jmp     l_f1_11                 #  13:     goto   11
l_f1_10:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -127(%ebp)        
l_f1_11:
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    $28254, %eax            #  20:     mul    t6 <- 28254, t5
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  21:     add    t7 <- t6, 247
    movl    $247, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  25:     mul    t9 <- t7, t8
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  26:     add    t10 <- t9, 64941
    movl    $64941, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  29:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  30:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     add    t13 <- t12, 87219
    movl    $87219, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  33:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  34:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  35:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  36:     add    t16 <- t15, 83514
    movl    $83514, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  37:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  38:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  39:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  40:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  41:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movzbl  -127(%ebp), %eax        #  42:     assign @t20 <- t4
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_14_while_cond:
    jmp     l_f1_14_while_cond      #  44:     goto   14_while_cond
    movl    $97, %eax               #  45:     if     97 # 97 goto 17
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_17                
    jmp     l_f1_18                 #  46:     goto   18
l_f1_17:
    movl    $1, %eax                #  48:     assign t21 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f1_19                 #  49:     goto   19
l_f1_18:
    movl    $0, %eax                #  51:     assign t21 <- 0
    movb    %al, -57(%ebp)         
l_f1_19:
    movl    $2, %eax                #  53:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  54:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  55:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $7782, %eax             #  56:     mul    t23 <- 7782, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  57:     add    t24 <- t23, 31302
    movl    $31302, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  58:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  59:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  60:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  61:     mul    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  62:     add    t27 <- t26, 29824
    movl    $29824, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  63:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  64:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  65:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  66:     mul    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  67:     add    t30 <- t29, 92028
    movl    $92028, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $5, %eax                #  68:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  69:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  70:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  71:     mul    t32 <- t30, t31
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  72:     add    t33 <- t32, 28677
    movl    $28677, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  73:     mul    t34 <- t33, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    8(%ebp), %eax           #  74:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  75:     call   t35 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  76:     add    t36 <- t34, t35
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    8(%ebp), %eax           #  77:     add    t37 <- v1, t36
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movzbl  -57(%ebp), %eax         #  78:     assign @t37 <- t21
    movl    -124(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $39465, %eax            #  79:     assign v5 <- 39465
    movl    %eax, -152(%ebp)       
    jmp     l_f1_0                  #  80:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_exit              
l_f1_24_while_cond:
    movl    $97, %eax               #  85:     if     97 >= 98 goto 27
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_27                
    jmp     l_f1_28                 #  86:     goto   28
l_f1_27:
    movl    $1, %eax                #  88:     assign t38 <- 1
    movb    %al, -125(%ebp)        
    jmp     l_f1_29                 #  89:     goto   29
l_f1_28:
    movl    $0, %eax                #  91:     assign t38 <- 0
    movb    %al, -125(%ebp)        
l_f1_29:
    movzbl  -125(%ebp), %eax        #  93:     param  2 <- t38
    pushl   %eax                   
    movl    $1, %eax                #  94:     param  1 <- 1
    pushl   %eax                   
    movl    $100, %eax              #  95:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  96:     call   t39 <- f0
    addl    $12, %esp              
    movb    %al, -126(%ebp)        
    movzbl  -126(%ebp), %eax        #  97:     if     t39 # 99 goto 25_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_25_while_body     
    jmp     l_f1_23                 #  98:     goto   23
l_f1_25_while_body:
    jmp     l_f1_31                 # 100:     goto   31
l_f1_31:
l_f1_35_while_cond:
    movl    $99, %eax               # 103:     if     99 = 97 goto 36_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_36_while_body     
    jmp     l_f1_34                 # 104:     goto   34
l_f1_36_while_body:
    jmp     l_f1_35_while_cond      # 106:     goto   35_while_cond
l_f1_34:
    jmp     l_f1_exit              
    jmp     l_f1_24_while_cond      # 109:     goto   24_while_cond
l_f1_23:

l_f1_exit:
    # epilogue
    addl    $140, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 2 of <array 6 of <array 8 of <array 2 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 9 of <array 4 of <array 8 of <array 9 of <array 6 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <ptr(4) to <array 8 of <array 9 of <array 6 of <array 10 of <array 5 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $v1       <char> %ebp-29 ]
    #   -21656(%ebp)  21624  [ $v2       <array 8 of <array 9 of <array 6 of <array 10 of <array 5 of <bool>>>>>> %ebp-21656 ]
    #   -37232(%ebp)  15576  [ $v3       <array 9 of <array 4 of <array 8 of <array 9 of <array 6 of <bool>>>>>> %ebp-37232 ]
    #   -37448(%ebp)  216  [ $v4       <array 1 of <array 2 of <array 6 of <array 8 of <array 2 of <bool>>>>>> %ebp-37448 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $37436, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9359, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-21656(%ebp)         # local array 'v2': 5 dimensions
    movl    $8,-21652(%ebp)         #   dimension 1: 8 elements
    movl    $9,-21648(%ebp)         #   dimension 2: 9 elements
    movl    $6,-21644(%ebp)         #   dimension 3: 6 elements
    movl    $10,-21640(%ebp)        #   dimension 4: 10 elements
    movl    $5,-21636(%ebp)         #   dimension 5: 5 elements
    movl    $5,-37232(%ebp)         # local array 'v3': 5 dimensions
    movl    $9,-37228(%ebp)         #   dimension 1: 9 elements
    movl    $4,-37224(%ebp)         #   dimension 2: 4 elements
    movl    $8,-37220(%ebp)         #   dimension 3: 8 elements
    movl    $9,-37216(%ebp)         #   dimension 4: 9 elements
    movl    $6,-37212(%ebp)         #   dimension 5: 6 elements
    movl    $5,-37448(%ebp)         # local array 'v4': 5 dimensions
    movl    $1,-37444(%ebp)         #   dimension 1: 1 elements
    movl    $2,-37440(%ebp)         #   dimension 2: 2 elements
    movl    $6,-37436(%ebp)         #   dimension 3: 6 elements
    movl    $8,-37432(%ebp)         #   dimension 4: 8 elements
    movl    $2,-37428(%ebp)         #   dimension 5: 2 elements

    # function body
    movl    $98, %eax               #   0:     assign v1 <- 98
    movb    %al, -29(%ebp)         
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $0, %eax                #   2:     param  3 <- 0
    pushl   %eax                   
    leal    -37448(%ebp), %eax      #   3:     &()    t5 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  2 <- t5
    pushl   %eax                   
    leal    -37232(%ebp), %eax      #   5:     &()    t6 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  1 <- t6
    pushl   %eax                   
    leal    -21656(%ebp), %eax      #   7:     &()    t7 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #   9:     call   f1
    addl    $16, %esp              

l_f2_exit:
    # epilogue
    addl    $37436, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <char>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    movl    $100, %eax              #   0:     if     100 > 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    call    ReadInt                 #   9:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    leal    _str_1, %eax            #  11:     &()    t2 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_10_if_false      #  14:     goto   10_if_false
    movl    $11454, %eax            #  15:     assign v1 <- 11454
    movl    %eax, v1               
l_test_13_while_cond:
    movl    $1277, %eax             #  17:     if     1277 > 84788 goto 14_while_body
    movl    $84788, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_14_while_body   
    jmp     l_test_12               #  18:     goto   12
l_test_14_while_body:
    call    dummyINTfunc            #  20:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_test_13_while_cond    #  21:     goto   13_while_cond
l_test_12:
    jmp     l_test_8                #  23:     goto   8
l_test_10_if_false:
l_test_8:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
