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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   2:     goto   3_while_body
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    movl    $100, %eax              #   5:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
    call    dummyCHARfunc           #   8:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t6
    movb    %al, -15(%ebp)         

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
l_f1_1_while_cond:
    call    ReadInt                 #   1:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t6 <- t5, 95006
    movl    $95006, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $38427, %eax            #   3:     if     38427 # t6 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   9:     goto   4
    call    dummyBOOLfunc           #  10:     call   t7 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movl    $0, %eax                #  11:     if     0 # 1 goto 10_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  12:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_5_while_cond       #  17:     goto   5_while_cond
l_f1_4:
l_f1_14_while_cond:
    call    dummyBOOLfunc           #  20:     call   t8 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  21:     if     t8 = 1 goto 18
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_18                
    jmp     l_f1_13                 #  22:     goto   13
l_f1_18:
    jmp     l_f1_13                 #  24:     goto   13
    jmp     l_f1_14_while_cond      #  25:     goto   14_while_cond
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t25      <bool> %ebp-73 ]
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
    #   -128(%ebp)   4  [ $t38      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t39      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t40      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t41      <int> %ebp-140 ]
    #   -141(%ebp)   1  [ $t42      <char> %ebp-141 ]
    #   -142(%ebp)   1  [ $t43      <bool> %ebp-142 ]
    #   -143(%ebp)   1  [ $t44      <bool> %ebp-143 ]
    #   -144(%ebp)   1  [ $t5       <bool> %ebp-144 ]
    #   -145(%ebp)   1  [ $t6       <char> %ebp-145 ]
    #   -152(%ebp)   4  [ $t7       <int> %ebp-152 ]
    #   -153(%ebp)   1  [ $t8       <bool> %ebp-153 ]
    #   -160(%ebp)   4  [ $t9       <int> %ebp-160 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 8 of <array 9 of <array 5 of <array 6 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 1 of <array 1 of <array 3 of <array 5 of <bool>>>>>>> %ebp+16 ]
    #   -161(%ebp)   1  [ $v3       <bool> %ebp-161 ]
    #   -162(%ebp)   1  [ $v4       <char> %ebp-162 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $152, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $38, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    movl    $7457, %eax             #   1:     if     7457 # 14781 goto 9
    movl    $14781, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_9                 
    jmp     l_f2_10                 #   2:     goto   10
l_f2_9:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -144(%ebp)        
    jmp     l_f2_11                 #   5:     goto   11
l_f2_10:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -144(%ebp)        
l_f2_11:
    movzbl  -144(%ebp), %eax        #   9:     param  1 <- t5
    pushl   %eax                   
    call    dummyCHARfunc           #  10:     call   t6 <- dummyCHARfunc
    movb    %al, -145(%ebp)        
    movzbl  -145(%ebp), %eax        #  11:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  12:     call   t7 <- f1
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  13:     if     t7 > 77057 goto 5
    movl    $77057, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #  14:     goto   6
l_f2_5:
    movl    $1, %eax                #  16:     assign t8 <- 1
    movb    %al, -153(%ebp)        
    jmp     l_f2_7                  #  17:     goto   7
l_f2_6:
    movl    $0, %eax                #  19:     assign t8 <- 0
    movb    %al, -153(%ebp)        
l_f2_7:
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -160(%ebp)       
    movl    $27194, %eax            #  24:     mul    t10 <- 27194, t9
    movl    -160(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     add    t11 <- t10, 95647
    movl    $95647, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  26:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  29:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     add    t14 <- t13, 42328
    movl    $42328, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  33:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  34:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  35:     add    t17 <- t16, 6456
    movl    $6456, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  38:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  39:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  40:     add    t20 <- t19, 46152
    movl    $46152, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  41:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  42:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  43:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  44:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  45:     add    t24 <- v2, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -153(%ebp), %eax        #  46:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_0                  #  47:     goto   0
l_f2_0:
l_f2_14_while_cond:
    movl    $80285, %eax            #  50:     if     80285 <= 16957 goto 15_while_body
    movl    $16957, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_15_while_body     
    jmp     l_f2_13                 #  51:     goto   13
l_f2_15_while_body:
    movl    $3760, %eax             #  53:     if     3760 >= 63499 goto 18
    movl    $63499, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_18                
    jmp     l_f2_19                 #  54:     goto   19
l_f2_18:
    movl    $1, %eax                #  56:     assign t25 <- 1
    movb    %al, -73(%ebp)         
    jmp     l_f2_20                 #  57:     goto   20
l_f2_19:
    movl    $0, %eax                #  59:     assign t25 <- 0
    movb    %al, -73(%ebp)         
l_f2_20:
    movzbl  -73(%ebp), %eax         #  61:     return t25
    jmp     l_f2_exit              
    movl    $2, %eax                #  62:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  63:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  64:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $33919, %eax            #  65:     mul    t27 <- 33919, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  66:     add    t28 <- t27, 62615
    movl    $62615, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  67:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  68:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  69:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  70:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  71:     add    t31 <- t30, 53867
    movl    $53867, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $4, %eax                #  72:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  73:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  74:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  75:     mul    t33 <- t31, t32
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  76:     add    t34 <- t33, 74503
    movl    $74503, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $5, %eax                #  77:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  78:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  79:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  80:     mul    t36 <- t34, t35
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  81:     add    t37 <- t36, 46433
    movl    $46433, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  82:     mul    t38 <- t37, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    12(%ebp), %eax          #  83:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  84:     call   t39 <- DOFS
    addl    $4, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  85:     add    t40 <- t38, t39
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    12(%ebp), %eax          #  86:     add    t41 <- v1, t40
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $98, %eax               #  87:     assign @t41 <- 98
    movl    -140(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $99, %eax               #  88:     assign v4 <- 99
    movb    %al, -162(%ebp)        
    jmp     l_f2_24                 #  89:     goto   24
l_f2_24:
    call    dummyCHARfunc           #  91:     call   t42 <- dummyCHARfunc
    movb    %al, -141(%ebp)        
l_f2_32_while_cond:
    jmp     l_f2_32_while_cond      #  93:     goto   32_while_cond
    jmp     l_f2_27                 #  94:     goto   27
l_f2_27:
    jmp     l_f2_14_while_cond      #  96:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_39                 #  98:     goto   39
l_f2_39:
    movl    $1, %eax                # 100:     assign t43 <- 1
    movb    %al, -142(%ebp)        
    jmp     l_f2_41                 # 101:     goto   41
    movl    $0, %eax                # 102:     assign t43 <- 0
    movb    %al, -142(%ebp)        
l_f2_41:
    movl    $0, %eax                # 104:     if     0 = t43 goto 35
    movzbl  -142(%ebp), %ebx       
    cmpl    %ebx, %eax             
    je      l_f2_35                
    jmp     l_f2_36                 # 105:     goto   36
l_f2_35:
    movl    $1, %eax                # 107:     assign t44 <- 1
    movb    %al, -143(%ebp)        
    jmp     l_f2_37                 # 108:     goto   37
l_f2_36:
    movl    $0, %eax                # 110:     assign t44 <- 0
    movb    %al, -143(%ebp)        
l_f2_37:
    movzbl  -143(%ebp), %eax        # 112:     return t44
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $152, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    movl    $100, %eax              #   8:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_7_if_false       #   9:     goto   7_if_false
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
    jmp     l_test_7_if_false       #  11:     goto   7_if_false
    jmp     l_test_5                #  12:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $82033, %eax            #  15:     sub    t2 <- 82033, 8645
    movl    $8645, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     sub    t3 <- t2, 96616
    movl    $96616, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     sub    t4 <- t3, 26451
    movl    $26451, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     assign v1 <- t4
    movl    %eax, v1               

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
