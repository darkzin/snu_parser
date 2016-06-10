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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 44 of <array 19 of <array 42 of <array 6 of <array 34 of <char>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    movl    $95768, %eax            #   2:     sub    t1 <- 95768, 43683
    movl    $43683, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t2 <- t1, 9394
    movl    $9394, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t3 <- t2, 45241
    movl    $45241, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     if     t3 <= 35967 goto 3_while_body
    movl    $35967, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_3_while_body      
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   8:     goto   2_while_cond
l_f0_1:
    movl    $66082, %eax            #  10:     add    t4 <- 66082, 97840
    movl    $97840, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     sub    t5 <- t4, 72066
    movl    $72066, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     if     t5 > 30916 goto 6_if_true
    movl    $30916, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  13:     goto   7_if_false
l_f0_6_if_true:
    movl    $98, %eax               #  15:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_5                  #  16:     goto   5
l_f0_7_if_false:
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
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
    #    -57(%ebp)   1  [ $t2       <bool> %ebp-57 ]
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
    #   -124(%ebp)   4  [ $t34      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t4       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t5       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t6       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 78 of <array 66 of <array 85 of <array 22 of <array 86 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 61 of <array 18 of <array 83 of <array 24 of <array 44 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 34 of <array 53 of <array 39 of <array 98 of <array 59 of <bool>>>>>>> %ebp+20 ]
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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t0
    jmp     l_f1_exit              
    movl    $57152, %eax            #   2:     if     57152 <= 36810 goto 2_if_true
    movl    $36810, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    movl    $97, %eax               #   5:     return 97
    jmp     l_f1_exit              
    movl    $97, %eax               #   6:     return 97
    jmp     l_f1_exit              
l_f1_8_while_cond:
    jmp     l_f1_7                  #   8:     goto   7
    jmp     l_f1_8_while_cond       #   9:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_1                  #  11:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_11_while_cond:
    call    dummyCHARfunc           #  15:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #  16:     if     99 <= 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  17:     goto   16_if_false
l_f1_15_if_true:
    movl    $97, %eax               #  19:     if     97 # 98 goto 19
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_19                
    jmp     l_f1_20                 #  20:     goto   20
l_f1_19:
    movl    $1, %eax                #  22:     assign t2 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f1_21                 #  23:     goto   21
l_f1_20:
    movl    $0, %eax                #  25:     assign t2 <- 0
    movb    %al, -57(%ebp)         
l_f1_21:
    movl    $2, %eax                #  27:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  28:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  29:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    $57623, %eax            #  30:     mul    t4 <- 57623, t3
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  31:     add    t5 <- t4, 83738
    movl    $83738, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $3, %eax                #  32:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  33:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  34:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  35:     mul    t7 <- t5, t6
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  36:     add    t8 <- t7, 98165
    movl    $98165, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $4, %eax                #  37:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  38:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  39:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  40:     mul    t10 <- t8, t9
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  41:     add    t11 <- t10, 11124
    movl    $11124, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  42:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  43:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  44:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  45:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  46:     add    t14 <- t13, 66214
    movl    $66214, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  47:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  48:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  49:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  50:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  51:     add    t18 <- v4, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -57(%ebp), %eax         #  52:     assign @t18 <- t2
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $100, %eax              #  53:     return 100
    jmp     l_f1_exit              
    movl    $97, %eax               #  54:     return 97
    jmp     l_f1_exit              
    movl    $2, %eax                #  55:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  56:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  57:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $64077, %eax            #  58:     mul    t20 <- 64077, t19
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  59:     add    t21 <- t20, 61948
    movl    $61948, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  60:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  61:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  62:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  63:     mul    t23 <- t21, t22
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  64:     add    t24 <- t23, 77997
    movl    $77997, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  65:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  66:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  67:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  68:     mul    t26 <- t24, t25
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  69:     add    t27 <- t26, 60549
    movl    $60549, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $5, %eax                #  70:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  71:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  72:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  73:     mul    t29 <- t27, t28
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  74:     add    t30 <- t29, 74992
    movl    $74992, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  75:     mul    t31 <- t30, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    8(%ebp), %eax           #  76:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  77:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  78:     add    t33 <- t31, t32
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    8(%ebp), %eax           #  79:     add    t34 <- v1, t33
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $29211, %eax            #  80:     assign @t34 <- 29211
    movl    -124(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_f1_14                 #  81:     goto   14
l_f1_16_if_false:
l_f1_14:
    jmp     l_f1_11_while_cond      #  84:     goto   11_while_cond

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
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f2_4_while_cond:
    jmp     l_f2_4_while_cond       #   1:     goto   4_while_cond
    movl    $97, %eax               #   2:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
l_f2_8_while_cond:
    movl    $99, %eax               #   5:     if     99 # 98 goto 9_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_9_while_body      
    jmp     l_f2_7                  #   6:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #   8:     goto   8_while_cond
l_f2_7:
    jmp     l_f2_0                  #  10:     goto   0
l_f2_0:
    jmp     l_f2_13_if_false        #  12:     goto   13_if_false
    jmp     l_f2_14                 #  13:     goto   14
l_f2_14:
    jmp     l_f2_19_if_false        #  15:     goto   19_if_false
    jmp     l_f2_17                 #  16:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_20                 #  19:     goto   20
l_f2_20:
l_f2_24_while_cond:
    jmp     l_f2_24_while_cond      #  22:     goto   24_while_cond
    jmp     l_f2_11                 #  23:     goto   11
l_f2_13_if_false:
l_f2_11:
    movl    $99, %eax               #  26:     if     99 < 99 goto 27_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_27_if_true        
    jmp     l_f2_28_if_false        #  27:     goto   28_if_false
l_f2_27_if_true:
    jmp     l_f2_26                 #  29:     goto   26
l_f2_28_if_false:
l_f2_26:

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $100, %eax              #   0:     if     100 <= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $1, %eax                #   3:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    call    WriteLn                 #   7:     call   WriteLn
    jmp     l_test_exit            
    movl    $98, %eax               #   9:     assign v1 <- 98
    movb    %al, v1                
l_test_9_while_cond:
    jmp     l_test_10_while_body    #  11:     goto   10_while_body
    jmp     l_test_10_while_body    #  12:     goto   10_while_body
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  14:     goto   9_while_cond
    jmp     l_test_15_if_false      #  15:     goto   15_if_false
    movl    $100, %eax              #  16:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  17:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_13               #  18:     goto   13
l_test_15_if_false:
l_test_13:

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
