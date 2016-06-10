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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]

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
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $100, %eax              #   2:     if     100 < 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    movl    $59669, %eax            #   5:     if     59669 # 56296 goto 6_if_true
    movl    $56296, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   6:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   8:     goto   5
l_f0_7_if_false:
l_f0_5:
    call    dummyINTfunc            #  11:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_2_while_cond       #  12:     goto   2_while_cond
l_f0_1:
l_f0_11_while_cond:
    jmp     l_f0_12_while_body      #  15:     goto   12_while_body
l_f0_12_while_body:
    movl    $99, %eax               #  17:     if     99 <= 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  18:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  20:     goto   14
l_f0_16_if_false:
l_f0_14:
    movl    $97, %eax               #  23:     if     97 <= 100 goto 19_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  24:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  26:     goto   18
l_f0_20_if_false:
l_f0_18:
    jmp     l_f0_11_while_cond      #  29:     goto   11_while_cond

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
    #   -117(%ebp)   1  [ $t36      <bool> %ebp-117 ]
    #   -118(%ebp)   1  [ $t37      <bool> %ebp-118 ]
    #   -124(%ebp)   4  [ $t38      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t39      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t4       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t40      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t41      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t42      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t43      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t44      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t45      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t46      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t47      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t48      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t49      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t5       <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t50      <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t51      <int> %ebp-184 ]
    #   -188(%ebp)   4  [ $t52      <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t53      <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t54      <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t55      <int> %ebp-200 ]
    #   -204(%ebp)   4  [ $t6       <int> %ebp-204 ]
    #   -208(%ebp)   4  [ $t7       <int> %ebp-208 ]
    #   -212(%ebp)   4  [ $t8       <int> %ebp-212 ]
    #   -216(%ebp)   4  [ $t9       <int> %ebp-216 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 9 of <array 1 of <array 8 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #   -217(%ebp)   1  [ $v2       <char> %ebp-217 ]
    #   -218(%ebp)   1  [ $v3       <bool> %ebp-218 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $0, %eax                #   2:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
l_f1_0:
    movl    $0, %eax                #   5:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_11_if_false        #   6:     goto   11_if_false
    jmp     l_f1_9                  #   7:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  12:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    $24312, %eax            #  13:     mul    t5 <- 24312, t4
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -176(%ebp)       
    movl    -176(%ebp), %eax        #  14:     add    t6 <- t5, 730
    movl    $730, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -204(%ebp)       
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -208(%ebp)       
    movl    -204(%ebp), %eax        #  18:     mul    t8 <- t6, t7
    movl    -208(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -212(%ebp)       
    movl    -212(%ebp), %eax        #  19:     add    t9 <- t8, 42219
    movl    $42219, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -216(%ebp)       
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -216(%ebp), %eax        #  23:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     add    t12 <- t11, 83802
    movl    $83802, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  28:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     add    t15 <- t14, 93540
    movl    $93540, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  32:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  33:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  34:     add    t19 <- v0, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $98, %eax               #  35:     assign @t19 <- 98
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $2, %eax                #  36:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  37:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  38:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $65018, %eax            #  39:     mul    t21 <- 65018, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  40:     add    t22 <- t21, 57544
    movl    $57544, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  41:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  42:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  43:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  44:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  45:     add    t25 <- t24, 80879
    movl    $80879, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  46:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  47:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  48:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  49:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  50:     add    t28 <- t27, 23544
    movl    $23544, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  51:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  52:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  53:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  54:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  55:     add    t31 <- t30, 16429
    movl    $16429, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  56:     mul    t32 <- t31, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    8(%ebp), %eax           #  57:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  58:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  59:     add    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    8(%ebp), %eax           #  60:     add    t35 <- v0, t34
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $99, %eax               #  61:     assign @t35 <- 99
    movl    -116(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $6653, %eax             #  62:     assign v1 <- 6653
    movl    %eax, 12(%ebp)         
    movl    $98, %eax               #  63:     if     98 > 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  64:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_15                 #  66:     goto   15
l_f1_17_if_false:
l_f1_15:
    movl    $100, %eax              #  69:     if     100 < 99 goto 20
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_20                
    jmp     l_f1_21                 #  70:     goto   21
l_f1_20:
    movl    $1, %eax                #  72:     assign t36 <- 1
    movb    %al, -117(%ebp)        
    jmp     l_f1_22                 #  73:     goto   22
l_f1_21:
    movl    $0, %eax                #  75:     assign t36 <- 0
    movb    %al, -117(%ebp)        
l_f1_22:
    movzbl  -117(%ebp), %eax        #  77:     assign v3 <- t36
    movb    %al, -218(%ebp)        
    call    dummyBOOLfunc           #  78:     call   t37 <- dummyBOOLfunc
    movb    %al, -118(%ebp)        
    jmp     l_f1_5                  #  79:     goto   5
l_f1_5:
    call    dummyINTfunc            #  81:     call   t38 <- dummyINTfunc
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  82:     sub    t39 <- t38, 21664
    movl    $21664, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $2, %eax                #  83:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  84:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  85:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    -128(%ebp), %eax        #  86:     mul    t41 <- t39, t40
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  87:     add    t42 <- t41, 69214
    movl    $69214, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $3, %eax                #  88:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  89:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  90:     call   t43 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  91:     mul    t44 <- t42, t43
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  92:     add    t45 <- t44, 52224
    movl    $52224, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $4, %eax                #  93:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  94:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  95:     call   t46 <- DIM
    addl    $8, %esp               
    movl    %eax, -160(%ebp)       
    movl    -156(%ebp), %eax        #  96:     mul    t47 <- t45, t46
    movl    -160(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  97:     add    t48 <- t47, 23290
    movl    $23290, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    $5, %eax                #  98:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  99:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     # 100:     call   t49 <- DIM
    addl    $8, %esp               
    movl    %eax, -172(%ebp)       
    movl    -168(%ebp), %eax        # 101:     mul    t50 <- t48, t49
    movl    -172(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        # 102:     add    t51 <- t50, 63531
    movl    $63531, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -184(%ebp)       
    movl    -184(%ebp), %eax        # 103:     mul    t52 <- t51, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -188(%ebp)       
    movl    8(%ebp), %eax           # 104:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    # 105:     call   t53 <- DOFS
    addl    $4, %esp               
    movl    %eax, -192(%ebp)       
    movl    -188(%ebp), %eax        # 106:     add    t54 <- t52, t53
    movl    -192(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -196(%ebp)       
    movl    8(%ebp), %eax           # 107:     add    t55 <- v0, t54
    movl    -196(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -200(%ebp)       
    movl    $97, %eax               # 108:     assign @t55 <- 97
    movl    -200(%ebp), %edi       
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $208, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    movl    $1, %eax                #   0:     assign v2 <- 1
    movb    %al, 16(%ebp)          
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t4
    jmp     l_f2_exit              
    call    f0                      #   3:     call   f0

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]

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
    movl    $1, %eax                #   0:     param  2 <- 1
    pushl   %eax                   
    movl    $99, %eax               #   1:     param  1 <- 99
    pushl   %eax                   
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #   4:     call   t1 <- f2
    addl    $12, %esp              
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #   5:     param  2 <- 1
    pushl   %eax                   
    movl    $99, %eax               #   6:     param  1 <- 99
    pushl   %eax                   
    movl    $100, %eax              #   7:     param  0 <- 100
    pushl   %eax                   
    call    f2                      #   8:     call   t2 <- f2
    addl    $12, %esp              
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #   9:     if     98 = t2 goto 2
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2               
    jmp     l_test_3                #  10:     goto   3
l_test_2:
    movl    $1, %eax                #  12:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_4                #  13:     goto   4
l_test_3:
    movl    $0, %eax                #  15:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_4:
    movzbl  -16(%ebp), %eax         #  17:     assign v0 <- t3
    movb    %al, v0                
    movl    $64479, %eax            #  18:     assign v1 <- 64479
    movl    %eax, v1               

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
