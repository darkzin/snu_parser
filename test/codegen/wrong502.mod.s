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
    #   -121(%ebp)   1  [ $t34      <bool> %ebp-121 ]
    #   -128(%ebp)   4  [ $t35      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t36      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t37      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t38      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t39      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t4       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t40      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t41      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t42      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t43      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t44      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t45      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t46      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t47      <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t48      <int> %ebp-184 ]
    #   -188(%ebp)   4  [ $t49      <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t5       <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t50      <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t51      <int> %ebp-200 ]
    #   -204(%ebp)   4  [ $t6       <int> %ebp-204 ]
    #   -208(%ebp)   4  [ $t7       <int> %ebp-208 ]
    #   -212(%ebp)   4  [ $t8       <int> %ebp-212 ]
    #   -216(%ebp)   4  [ $t9       <int> %ebp-216 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 8 of <array 6 of <array 5 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 7 of <array 3 of <array 6 of <array 10 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 5 of <array 2 of <array 4 of <array 7 of <bool>>>>>>> %ebp+20 ]
    #   -217(%ebp)   1  [ $v4       <char> %ebp-217 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $208, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $52, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $4224, %eax             #   1:     add    t1 <- 4224, 2809
    movl    $2809, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $81029, %eax            #   2:     if     81029 <= t1 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $100, %eax              #   7:     if     100 >= 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   8:     goto   6_if_false
l_f0_5_if_true:
l_f0_9_while_cond:
    movl    $98, %eax               #  11:     if     98 >= 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_10_while_body     
    jmp     l_f0_8                  #  12:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  14:     goto   9_while_cond
l_f0_8:
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $42402, %eax            #  19:     mul    t3 <- 42402, t2
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  20:     add    t4 <- t3, 90359
    movl    $90359, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $3, %eax                #  21:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -192(%ebp)       
    movl    -148(%ebp), %eax        #  24:     mul    t6 <- t4, t5
    movl    -192(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -204(%ebp)       
    movl    -204(%ebp), %eax        #  25:     add    t7 <- t6, 89229
    movl    $89229, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -208(%ebp)       
    movl    $4, %eax                #  26:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -212(%ebp)       
    movl    -208(%ebp), %eax        #  29:     mul    t9 <- t7, t8
    movl    -212(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -216(%ebp)       
    movl    -216(%ebp), %eax        #  30:     add    t10 <- t9, 1976
    movl    $1976, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  31:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  33:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  34:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  35:     add    t13 <- t12, 79243
    movl    $79243, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  36:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    16(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  38:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  39:     add    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  40:     add    t17 <- v2, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $99, %eax               #  41:     assign @t17 <- 99
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $2, %eax                #  42:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  43:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  44:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $66169, %eax            #  45:     mul    t19 <- 66169, t18
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  46:     add    t20 <- t19, 86471
    movl    $86471, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  47:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  48:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  49:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  50:     mul    t22 <- t20, t21
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  51:     add    t23 <- t22, 98773
    movl    $98773, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  52:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  53:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  54:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  55:     mul    t25 <- t23, t24
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  56:     add    t26 <- t25, 97139
    movl    $97139, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  57:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  58:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  59:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  60:     mul    t28 <- t26, t27
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  61:     add    t29 <- t28, 52273
    movl    $52273, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  62:     mul    t30 <- t29, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    16(%ebp), %eax          #  63:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  64:     call   t31 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  65:     add    t32 <- t30, t31
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    16(%ebp), %eax          #  66:     add    t33 <- v2, t32
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $100, %eax              #  67:     assign @t33 <- 100
    movl    -120(%ebp), %edi       
    movb    %al, (%edi)            
l_f0_15_while_cond:
    movl    $99, %eax               #  69:     if     99 < 97 goto 16_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_16_while_body     
    jmp     l_f0_14                 #  70:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  72:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_4                  #  74:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $1, %eax                #  77:     if     1 # 0 goto 19
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_19                
    jmp     l_f0_20                 #  78:     goto   20
l_f0_19:
    movl    $1, %eax                #  80:     assign t34 <- 1
    movb    %al, -121(%ebp)        
    jmp     l_f0_21                 #  81:     goto   21
l_f0_20:
    movl    $0, %eax                #  83:     assign t34 <- 0
    movb    %al, -121(%ebp)        
l_f0_21:
    movl    $17680, %eax            #  85:     div    t35 <- 17680, 60809
    movl    $60809, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    $2, %eax                #  86:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  87:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  88:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  89:     mul    t37 <- t35, t36
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  90:     add    t38 <- t37, 35257
    movl    $35257, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $3, %eax                #  91:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  92:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  93:     call   t39 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  94:     mul    t40 <- t38, t39
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  95:     add    t41 <- t40, 21263
    movl    $21263, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $4, %eax                #  96:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  97:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  98:     call   t42 <- DIM
    addl    $8, %esp               
    movl    %eax, -160(%ebp)       
    movl    -156(%ebp), %eax        #  99:     mul    t43 <- t41, t42
    movl    -160(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        # 100:     add    t44 <- t43, 80351
    movl    $80351, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    $5, %eax                # 101:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          # 102:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     # 103:     call   t45 <- DIM
    addl    $8, %esp               
    movl    %eax, -172(%ebp)       
    movl    -168(%ebp), %eax        # 104:     mul    t46 <- t44, t45
    movl    -172(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -176(%ebp)       
    movl    -176(%ebp), %eax        # 105:     add    t47 <- t46, 86156
    movl    $86156, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        # 106:     mul    t48 <- t47, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -184(%ebp)       
    movl    20(%ebp), %eax          # 107:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    # 108:     call   t49 <- DOFS
    addl    $4, %esp               
    movl    %eax, -188(%ebp)       
    movl    -184(%ebp), %eax        # 109:     add    t50 <- t48, t49
    movl    -188(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -196(%ebp)       
    movl    20(%ebp), %eax          # 110:     add    t51 <- v3, t50
    movl    -196(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -200(%ebp)       
    movzbl  -121(%ebp), %eax        # 111:     assign @t51 <- t34
    movl    -200(%ebp), %edi       
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $208, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    movl    $1, %eax                #   0:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   1:     goto   3
    movl    $0, %eax                #   2:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   4:     return t1
    jmp     l_f1_exit              
l_f1_6_while_cond:
    movl    $97, %eax               #   6:     if     97 > 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_while_body:
    jmp     l_f1_10                 #   9:     goto   10
    jmp     l_f1_11                 #  10:     goto   11
l_f1_10:
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #  13:     goto   12
l_f1_11:
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -14(%ebp), %eax         #  17:     return t2
    jmp     l_f1_exit              
    jmp     l_f1_6_while_cond       #  18:     goto   6_while_cond
l_f1_5:
    call    dummyProcedure          #  20:     call   dummyProcedure

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <bool> %ebp-14 ]

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    movl    $0, %eax                #   1:     assign v2 <- 0
    movb    %al, -14(%ebp)         
    movl    $50383, %eax            #   2:     if     50383 >= 17582 goto 8_if_true
    movl    $17582, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   3:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #   5:     goto   7
l_f2_9_if_false:
l_f2_7:
    call    dummyCHARfunc           #   8:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_1                  #   9:     goto   1
l_f2_1:
l_f2_13_while_cond:
    movl    $99, %eax               #  12:     if     99 > 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  13:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  15:     goto   16
l_f2_18_if_false:
l_f2_16:
    jmp     l_f2_13_while_cond      #  18:     goto   13_while_cond

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    call    dummyProcedure          #   1:     call   dummyProcedure
    call    dummyINTfunc            #   2:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     assign v0 <- t0
    movl    %eax, v0               
    jmp     l_test_6                #   4:     goto   6
l_test_6:
    jmp     l_test_3                #   6:     goto   3
l_test_3:
l_test_9_while_cond:
    jmp     l_test_8                #   9:     goto   8
    jmp     l_test_8                #  10:     goto   8
    jmp     l_test_8                #  11:     goto   8
    jmp     l_test_8                #  12:     goto   8
    jmp     l_test_8                #  13:     goto   8
    movl    $87273, %eax            #  14:     assign v0 <- 87273
    movl    %eax, v0               
    jmp     l_test_9_while_cond     #  15:     goto   9_while_cond
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

    # scope: test
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
