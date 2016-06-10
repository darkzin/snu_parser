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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 54 of <array 20 of <array 47 of <array 29 of <array 24 of <int>>>>>>> %ebp+8 ]
    #    -29(%ebp)   1  [ $v1       <bool> %ebp-29 ]

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
l_f0_1_while_cond:
    movl    $74195, %eax            #   1:     sub    t1 <- 74195, 61793
    movl    $61793, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t2 <- t1, 82025
    movl    $82025, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t3 <- t2, 51789
    movl    $51789, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t4 <- t3, 1355
    movl    $1355, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $9432, %eax             #   5:     if     9432 > t4 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   9:     goto   5_while_cond
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
l_f0_8_while_cond:
    jmp     l_f0_7                  #  13:     goto   7
    jmp     l_f0_12_if_false        #  14:     goto   12_if_false
    movl    $0, %eax                #  15:     assign v1 <- 0
    movb    %al, -29(%ebp)         
    jmp     l_f0_10                 #  16:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_8_while_cond       #  19:     goto   8_while_cond
l_f0_7:
    movl    $99, %eax               #  21:     return 99
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
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
    #    -53(%ebp)   1  [ $t19      <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t20      <bool> %ebp-61 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t31      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t32      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t33      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t34      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t35      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t36      <int> %ebp-132 ]
    #   -133(%ebp)   1  [ $t37      <bool> %ebp-133 ]
    #   -140(%ebp)   4  [ $t38      <ptr(4) to <array 5 of <char>>> %ebp-140 ]
    #   -144(%ebp)   4  [ $t4       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t5       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t6       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t7       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t8       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t9       <int> %ebp-164 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 28 of <array 68 of <array 80 of <array 40 of <array 16 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 38 of <array 67 of <array 61 of <array 94 of <array 56 of <char>>>>>>> %ebp+16 ]
    #   -165(%ebp)   1  [ $v3       <char> %ebp-165 ]
    #   -172(%ebp)   4  [ $v4       <int> %ebp-172 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $160, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $40, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $67258, %eax            #   0:     add    t1 <- 67258, 29680
    movl    $29680, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 65629
    movl    $65629, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   3:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   4:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -60(%ebp), %eax         #   5:     mul    t4 <- t2, t3
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #   6:     add    t5 <- t4, 53180
    movl    $53180, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   8:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   9:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #  10:     mul    t7 <- t5, t6
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  11:     add    t8 <- t7, 49677
    movl    $49677, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -164(%ebp)       
    movl    -160(%ebp), %eax        #  15:     mul    t10 <- t8, t9
    movl    -164(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t11 <- t10, 82665
    movl    $82665, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  20:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t14 <- t13, 71559
    movl    $71559, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    16(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  24:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  25:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  26:     add    t18 <- v2, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $100, %eax              #  27:     assign @t18 <- 100
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $30450, %eax            #  28:     if     30450 # 63105 goto 2_if_true
    movl    $63105, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #  29:     goto   3_if_false
l_f1_2_if_true:
    movl    $8574, %eax             #  31:     assign v4 <- 8574
    movl    %eax, -172(%ebp)       
    call    dummyCHARfunc           #  32:     call   t19 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    jmp     l_f1_1                  #  33:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_9_if_false         #  36:     goto   9_if_false
    movl    $98, %eax               #  37:     if     98 >= 98 goto 11
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_11                
    jmp     l_f1_12                 #  38:     goto   12
l_f1_11:
    movl    $1, %eax                #  40:     assign t20 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_f1_13                 #  41:     goto   13
l_f1_12:
    movl    $0, %eax                #  43:     assign t20 <- 0
    movb    %al, -61(%ebp)         
l_f1_13:
    movzbl  -61(%ebp), %eax         #  45:     assign v0 <- t20
    movb    %al, 8(%ebp)           
l_f1_16_while_cond:
    jmp     l_f1_15                 #  47:     goto   15
    jmp     l_f1_16_while_cond      #  48:     goto   16_while_cond
l_f1_15:
    movl    $98, %eax               #  50:     return 98
    jmp     l_f1_exit              
    movl    $100, %eax              #  51:     assign v3 <- 100
    movb    %al, -165(%ebp)        
    movl    $2, %eax                #  52:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  53:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  54:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $6067, %eax             #  55:     mul    t22 <- 6067, t21
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  56:     add    t23 <- t22, 65950
    movl    $65950, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  57:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  58:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  59:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  60:     mul    t25 <- t23, t24
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  61:     add    t26 <- t25, 90317
    movl    $90317, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  62:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  63:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  64:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  65:     mul    t28 <- t26, t27
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  66:     add    t29 <- t28, 24420
    movl    $24420, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $5, %eax                #  67:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  68:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  69:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -100(%ebp), %eax        #  70:     mul    t31 <- t29, t30
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  71:     add    t32 <- t31, 90626
    movl    $90626, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  72:     mul    t33 <- t32, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    12(%ebp), %eax          #  73:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  74:     call   t34 <- DOFS
    addl    $4, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  75:     add    t35 <- t33, t34
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    12(%ebp), %eax          #  76:     add    t36 <- v1, t35
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $100, %eax              #  77:     assign @t36 <- 100
    movl    -132(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $11956, %eax            #  78:     if     11956 >= 47770 goto 22
    movl    $47770, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_22                
    jmp     l_f1_23                 #  79:     goto   23
l_f1_22:
    movl    $1, %eax                #  81:     assign t37 <- 1
    movb    %al, -133(%ebp)        
    jmp     l_f1_24                 #  82:     goto   24
l_f1_23:
    movl    $0, %eax                #  84:     assign t37 <- 0
    movb    %al, -133(%ebp)        
l_f1_24:
    movzbl  -133(%ebp), %eax        #  86:     assign v0 <- t37
    movb    %al, 8(%ebp)           
    movl    $97, %eax               #  87:     return 97
    jmp     l_f1_exit              
    leal    _str_1, %eax            #  88:     &()    t38 <- _str_1
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  89:     param  0 <- t38
    pushl   %eax                   
    call    WriteStr                #  90:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_7                  #  91:     goto   7
l_f1_9_if_false:
l_f1_7:

l_f1_exit:
    # epilogue
    addl    $160, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 54 of <array 20 of <array 47 of <array 29 of <array 24 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 72 of <array 60 of <array 47 of <array 34 of <array 15 of <bool>>>>>>> %ebp+12 ]
    #    -26(%ebp)   1  [ $v2       <char> %ebp-26 ]
    #   -141315892(%ebp)  141315864  [ $v3       <array 54 of <array 20 of <array 47 of <array 29 of <array 24 of <int>>>>>> %ebp-141315892 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $141315880, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $35328970, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-141315892(%ebp)     # local array 'v3': 5 dimensions
    movl    $54,-141315888(%ebp)    #   dimension 1: 54 elements
    movl    $20,-141315884(%ebp)    #   dimension 2: 20 elements
    movl    $47,-141315880(%ebp)    #   dimension 3: 47 elements
    movl    $29,-141315876(%ebp)    #   dimension 4: 29 elements
    movl    $24,-141315872(%ebp)    #   dimension 5: 24 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    leal    -141315892(%ebp), %eax  #   2:     &()    t3 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   4:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   5:     assign v2 <- t4
    movb    %al, -26(%ebp)         

l_f2_exit:
    # epilogue
    addl    $141315880, %esp        # remove locals
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
    jmp     l_test_exit            
l_test_2_while_cond:
l_test_5_while_cond:
    movl    $99, %eax               #   3:     if     99 <= 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_6_while_body    
    jmp     l_test_4                #   4:     goto   4
l_test_6_while_body:
    movl    $97, %eax               #   6:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
    movl    $99, %eax               #  10:     if     99 <= 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_10_if_true      
    jmp     l_test_11_if_false      #  11:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_13               #  13:     goto   13
l_test_13:
    movl    $9806, %eax             #  15:     assign v1 <- 9806
    movl    %eax, v1               
    jmp     l_test_9                #  16:     goto   9
l_test_11_if_false:
l_test_9:
    call    dummyBOOLfunc           #  19:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
