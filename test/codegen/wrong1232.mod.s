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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t32      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t33      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t34      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t35      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t36      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t4       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t5       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t6       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t7       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t8       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t9       <int> %ebp-160 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 79 of <array 4 of <array 49 of <array 52 of <array 31 of <int>>>>>>> %ebp+20 ]
    #   -164(%ebp)   4  [ $v4       <int> %ebp-164 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_1_if_true          #   1:     goto   1_if_true
l_f0_1_if_true:
l_f0_7_while_cond:
    movl    $79701, %eax            #   4:     if     79701 < 15166 goto 8_while_body
    movl    $15166, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_8_while_body      
    jmp     l_f0_6                  #   5:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #   7:     goto   7_while_cond
l_f0_6:
    call    dummyBOOLfunc           #   9:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #  10:     goto   0
l_f0_0:
    movl    $61309, %eax            #  12:     sub    t1 <- 61309, 73221
    movl    $73221, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     sub    t2 <- t1, 68863
    movl    $68863, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  15:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  16:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    $62932, %eax            #  17:     mul    t4 <- 62932, t3
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  18:     add    t5 <- t4, 16391
    movl    $16391, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  20:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  21:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  22:     mul    t7 <- t5, t6
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  23:     add    t8 <- t7, 30852
    movl    $30852, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  25:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  26:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -160(%ebp)       
    movl    -156(%ebp), %eax        #  27:     mul    t10 <- t8, t9
    movl    -160(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     add    t11 <- t10, 81451
    movl    $81451, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  30:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  31:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  32:     mul    t13 <- t11, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     add    t14 <- t13, 70611
    movl    $70611, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    20(%ebp), %eax          #  35:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  36:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  37:     add    t17 <- t15, t16
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  38:     add    t18 <- v3, t17
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -64(%ebp), %eax         #  39:     assign @t18 <- t2
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
    call    ReadInt                 #  40:     call   t19 <- ReadInt
    movl    %eax, -60(%ebp)        
    movl    $68356, %eax            #  41:     sub    t20 <- 68356, t19
    movl    -60(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #  42:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  43:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  44:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $48472, %eax            #  45:     mul    t22 <- 48472, t21
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  46:     add    t23 <- t22, 40739
    movl    $40739, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  47:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  48:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  49:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  50:     mul    t25 <- t23, t24
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  51:     add    t26 <- t25, 72475
    movl    $72475, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  52:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  53:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  54:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  55:     mul    t28 <- t26, t27
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  56:     add    t29 <- t28, 28191
    movl    $28191, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $5, %eax                #  57:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  58:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  59:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -104(%ebp), %eax        #  60:     mul    t31 <- t29, t30
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  61:     add    t32 <- t31, 48053
    movl    $48053, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  62:     mul    t33 <- t32, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    20(%ebp), %eax          #  63:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  64:     call   t34 <- DOFS
    addl    $4, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  65:     add    t35 <- t33, t34
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    20(%ebp), %eax          #  66:     add    t36 <- v3, t35
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    -68(%ebp), %eax         #  67:     assign @t36 <- t20
    movl    -136(%ebp), %edi       
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $152, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
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
l_f1_4_while_cond:
    jmp     l_f1_3                  #   1:     goto   3
    jmp     l_f1_4_while_cond       #   2:     goto   4_while_cond
l_f1_3:
    movl    $1, %eax                #   4:     return 1
    jmp     l_f1_exit              
    movl    $0, %eax                #   5:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_10_if_false        #   6:     goto   10_if_false
    jmp     l_f1_8                  #   7:     goto   8
l_f1_10_if_false:
l_f1_8:
l_f1_12_while_cond:
    movl    $17425, %eax            #  11:     if     17425 < 57062 goto 13_while_body
    movl    $57062, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_13_while_body     
    jmp     l_f1_11                 #  12:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  14:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_0                  #  16:     goto   0
l_f1_0:
    jmp     l_f1_21                 #  18:     goto   21
    movl    $1, %eax                #  19:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_22                 #  20:     goto   22
l_f1_21:
    movl    $0, %eax                #  22:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_22:
    jmp     l_f1_24                 #  24:     goto   24
    jmp     l_f1_24                 #  25:     goto   24
l_f1_24:
    movl    $1, %eax                #  27:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_26                 #  28:     goto   26
    movl    $0, %eax                #  29:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f1_26:
    movzbl  -13(%ebp), %eax         #  31:     if     t0 = t1 goto 16
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_16                
    jmp     l_f1_17                 #  32:     goto   17
l_f1_16:
    movl    $1, %eax                #  34:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_18                 #  35:     goto   18
l_f1_17:
    movl    $0, %eax                #  37:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_f1_18:
    movzbl  -15(%ebp), %eax         #  39:     return t2
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  40:     call   t3 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  41:     if     t3 = 1 goto 34
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_34                
    jmp     l_f1_32_if_false        #  42:     goto   32_if_false
l_f1_34:
    jmp     l_f1_30                 #  44:     goto   30
l_f1_32_if_false:
l_f1_30:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t19      <bool> %ebp-57 ]
    #    -58(%ebp)   1  [ $t2       <bool> %ebp-58 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 69 of <array 9 of <array 94 of <array 90 of <array 9 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -89(%ebp)   1  [ $v4       <char> %ebp-89 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $53586, %eax            #   1:     add    t1 <- 53586, 37936
    movl    $37936, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 >= t1 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -58(%ebp)         
l_f2_3:
    movzbl  -58(%ebp), %eax         #  10:     assign v1 <- t2
    movb    %al, 12(%ebp)          
    movl    $99, %eax               #  11:     if     99 <= 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  12:     goto   7_if_false
l_f2_6_if_true:
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $50522, %eax            #  17:     mul    t4 <- 50522, t3
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  18:     add    t5 <- t4, 14801
    movl    $14801, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  22:     mul    t7 <- t5, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  23:     add    t8 <- t7, 43227
    movl    $43227, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  26:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  27:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     add    t11 <- t10, 90297
    movl    $90297, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  30:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  31:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  32:     mul    t13 <- t11, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     add    t14 <- t13, 36261
    movl    $36261, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  35:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  36:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  37:     add    t17 <- t15, t16
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  38:     add    t18 <- v2, t17
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $98, %eax               #  39:     assign @t18 <- 98
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_5                  #  40:     goto   5
l_f2_7_if_false:
l_f2_5:
    call    f1                      #  43:     call   t19 <- f1
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #  44:     if     t19 = 1 goto 13
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_13                
    jmp     l_f2_12_if_false        #  45:     goto   12_if_false
l_f2_13:
    jmp     l_f2_12_if_false        #  47:     goto   12_if_false
    jmp     l_f2_10                 #  48:     goto   10
l_f2_12_if_false:
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    movl    $97, %eax               #   0:     if     97 < 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_6_if_false       #   3:     goto   6_if_false
    jmp     l_test_4                #   4:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_0                #   7:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $100, %eax              #  10:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
