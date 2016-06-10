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
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t3       <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t36      <int> %ebp-124 ]
    #   -125(%ebp)   1  [ $t4       <bool> %ebp-125 ]
    #   -132(%ebp)   4  [ $t5       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t6       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 5 of <array 6 of <array 4 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 1 of <array 6 of <array 8 of <array 7 of <int>>>>>>> %ebp+16 ]
    #   -149(%ebp)   1  [ $v3       <char> %ebp-149 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -93(%ebp)         
    movl    $100, %eax              #   2:     if     100 > t3 goto 2_while_body
    movzbl  -93(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
l_f0_5_while_cond:
    movl    $46413, %eax            #   8:     if     46413 < 641 goto 6_while_body
    movl    $641, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_6_while_body      
    jmp     l_f0_4                  #   9:     goto   4
l_f0_6_while_body:
    movl    $99, %eax               #  11:     if     99 >= 97 goto 9
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_9                 
    jmp     l_f0_10                 #  12:     goto   10
l_f0_9:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -125(%ebp)        
    jmp     l_f0_11                 #  15:     goto   11
l_f0_10:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -125(%ebp)        
l_f0_11:
    movzbl  -125(%ebp), %eax        #  19:     assign v0 <- t4
    movb    %al, 8(%ebp)           
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    $17569, %eax            #  23:     mul    t6 <- 17569, t5
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  24:     add    t7 <- t6, 13794
    movl    $13794, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  28:     mul    t9 <- t7, t8
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  29:     add    t10 <- t9, 83482
    movl    $83482, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  33:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     add    t13 <- t12, 96818
    movl    $96818, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  36:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  37:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  38:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  39:     add    t16 <- t15, 33370
    movl    $33370, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  40:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  41:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  42:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  43:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  44:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $100, %eax              #  45:     assign @t20 <- 100
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_15_while_cond:
    jmp     l_f0_15_while_cond      #  47:     goto   15_while_cond
    jmp     l_f0_5_while_cond       #  48:     goto   5_while_cond
l_f0_4:
l_f0_21_while_cond:
    movl    $98, %eax               #  51:     if     98 > 99 goto 22_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_22_while_body     
    jmp     l_f0_20                 #  52:     goto   20
l_f0_22_while_body:
    jmp     l_f0_21_while_cond      #  54:     goto   21_while_cond
l_f0_20:
    movl    $2, %eax                #  56:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  57:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  58:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $28398, %eax            #  59:     mul    t22 <- 28398, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  60:     add    t23 <- t22, 17480
    movl    $17480, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  61:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  62:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  63:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  64:     mul    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  65:     add    t26 <- t25, 43863
    movl    $43863, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  66:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  67:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  68:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  69:     mul    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  70:     add    t29 <- t28, 68297
    movl    $68297, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $5, %eax                #  71:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  72:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  73:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  74:     mul    t31 <- t29, t30
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  75:     add    t32 <- t31, 9040
    movl    $9040, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  76:     mul    t33 <- t32, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    12(%ebp), %eax          #  77:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  78:     call   t34 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  79:     add    t35 <- t33, t34
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    12(%ebp), %eax          #  80:     add    t36 <- v1, t35
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $99, %eax               #  81:     assign @t36 <- 99
    movl    -124(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f0_27_if_false        #  82:     goto   27_if_false
    jmp     l_f0_25                 #  83:     goto   25
l_f0_27_if_false:
l_f0_25:
    jmp     l_f0_17                 #  86:     goto   17
l_f0_17:

l_f0_exit:
    # epilogue
    addl    $140, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
l_f1_5_while_cond:
    movl    $100, %eax              #   4:     if     100 # 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_6_while_body      
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
l_f1_9_while_cond:
    jmp     l_f1_9_while_cond       #  10:     goto   9_while_cond
    jmp     l_f1_2_while_cond       #  11:     goto   2_while_cond
l_f1_1:
    movl    $98, %eax               #  13:     if     98 >= 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  14:     goto   13_if_false
l_f1_12_if_true:
    call    WriteLn                 #  16:     call   WriteLn
    jmp     l_f1_11                 #  17:     goto   11
l_f1_13_if_false:
l_f1_11:

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
    #    -65(%ebp)   1  [ $t3       <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t4       <bool> %ebp-66 ]
    #    -67(%ebp)   1  [ $t5       <bool> %ebp-67 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 3 of <array 6 of <array 7 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 5 of <array 10 of <array 3 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -88(%ebp)   4  [ $v3       <int> %ebp-88 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_5                  #   0:     goto   5
    jmp     l_f2_5                  #   1:     goto   5
l_f2_5:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f2_7                  #   4:     goto   7
    movl    $0, %eax                #   5:     assign t3 <- 0
    movb    %al, -65(%ebp)         
l_f2_7:
    jmp     l_f2_12                 #   7:     goto   12
    jmp     l_f2_12                 #   8:     goto   12
    jmp     l_f2_13                 #   9:     goto   13
l_f2_12:
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -66(%ebp)         
    jmp     l_f2_14                 #  12:     goto   14
l_f2_13:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -66(%ebp)         
l_f2_14:
    movzbl  -65(%ebp), %eax         #  16:     if     t3 = t4 goto 1
    movzbl  -66(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #  17:     goto   2
l_f2_1:
    movl    $1, %eax                #  19:     assign t5 <- 1
    movb    %al, -67(%ebp)         
    jmp     l_f2_3                  #  20:     goto   3
l_f2_2:
    movl    $0, %eax                #  22:     assign t5 <- 0
    movb    %al, -67(%ebp)         
l_f2_3:
    movzbl  -67(%ebp), %eax         #  24:     assign v2 <- t5
    movb    %al, 16(%ebp)          
l_f2_18_while_cond:
    jmp     l_f2_17                 #  26:     goto   17
    movl    $0, %eax                #  27:     assign v2 <- 0
    movb    %al, 16(%ebp)          
    movl    $78185, %eax            #  28:     return 78185
    jmp     l_f2_exit              
    movl    $2, %eax                #  29:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  31:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $96693, %eax            #  32:     mul    t7 <- 96693, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  33:     add    t8 <- t7, 13933
    movl    $13933, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  34:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  36:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  37:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  38:     add    t11 <- t10, 50989
    movl    $50989, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  39:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  40:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  41:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  42:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  43:     add    t14 <- t13, 97330
    movl    $97330, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  44:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  45:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  46:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  47:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  48:     add    t17 <- t16, 47617
    movl    $47617, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  49:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  50:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  51:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  52:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  53:     add    t21 <- v0, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $32254, %eax            #  54:     assign @t21 <- 32254
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_18_while_cond      #  55:     goto   18_while_cond
l_f2_17:
    movl    $79931, %eax            #  57:     add    t22 <- 79931, 70935
    movl    $70935, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  58:     return t22
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    jmp     l_test_exit            
    movl    $24341, %eax            #   1:     add    t0 <- 24341, 75640
    movl    $75640, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $6397, %eax             #   2:     mul    t1 <- 6397, 64148
    movl    $64148, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t0 <= t1 goto 2
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2               
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_4                #   7:     goto   4
l_test_3:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_4:
    movzbl  -21(%ebp), %eax         #  11:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
