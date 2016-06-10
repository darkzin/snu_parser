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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 39 of <array 99 of <array 50 of <array 58 of <array 55 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 100 of <array 99 of <array 84 of <array 75 of <array 72 of <int>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t2 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_5                 
l_f0_5:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_7                  #   6:     goto   7
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f0_7:
    movl    $1, %eax                #   9:     if     1 = t3 goto 3_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #  10:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  12:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
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
    #   -128(%ebp)   4  [ $t35      <ptr(4) to <array 100 of <array 99 of <array 84 of <array 75 of <array 72 of <int>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t36      <ptr(4) to <array 39 of <array 99 of <array 50 of <array 58 of <array 55 of <int>>>>>>> %ebp-132 ]
    #   -136(%ebp)   4  [ $t4       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t5       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t6       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t7       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t8       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t9       <int> %ebp-156 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 76 of <array 44 of <array 42 of <array 94 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 75 of <array 96 of <array 59 of <array 14 of <array 65 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 64 of <array 25 of <array 36 of <array 64 of <array 17 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 64 of <array 33 of <array 87 of <array 37 of <array 57 of <char>>>>>>> %ebp+20 ]
    #   -157(%ebp)   1  [ $v4       <bool> %ebp-157 ]
    #   -164(%ebp)   4  [ $v5       <int> %ebp-164 ]
    #   1831649108(%ebp)  -1831649272  [ $v6       <array 39 of <array 99 of <array 50 of <array 58 of <array 55 of <int>>>>>> %ebp+1831649108 ]
    #   1048958268(%ebp)  782690840  [ $v7       <array 100 of <array 99 of <array 84 of <array 75 of <array 72 of <int>>>>>> %ebp+1048958268 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1048958280, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-262239570, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,1831649108(%ebp)     # local array 'v6': 5 dimensions
    movl    $39,1831649112(%ebp)    #   dimension 1: 39 elements
    movl    $99,1831649116(%ebp)    #   dimension 2: 99 elements
    movl    $50,1831649120(%ebp)    #   dimension 3: 50 elements
    movl    $58,1831649124(%ebp)    #   dimension 4: 58 elements
    movl    $55,1831649128(%ebp)    #   dimension 5: 55 elements
    movl    $5,1048958268(%ebp)     # local array 'v7': 5 dimensions
    movl    $100,1048958272(%ebp)   #   dimension 1: 100 elements
    movl    $99,1048958276(%ebp)    #   dimension 2: 99 elements
    movl    $84,1048958280(%ebp)    #   dimension 3: 84 elements
    movl    $75,1048958284(%ebp)    #   dimension 4: 75 elements
    movl    $72,1048958288(%ebp)    #   dimension 5: 72 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   2:     goto   3_while_body
    jmp     l_f1_3_while_body       #   3:     goto   3_while_body
    jmp     l_f1_3_while_body       #   4:     goto   3_while_body
l_f1_3_while_body:
l_f1_9_while_cond:
    movl    $10755, %eax            #   7:     if     10755 < 99485 goto 10_while_body
    movl    $99485, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_10_while_body     
    jmp     l_f1_8                  #   8:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  10:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_2_while_cond       #  12:     goto   2_while_cond
    movl    $99, %eax               #  13:     if     99 = 98 goto 16_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  14:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_15                 #  16:     goto   15
l_f1_17_if_false:
l_f1_15:
l_f1_20_while_cond:
    movl    $71202, %eax            #  20:     if     71202 >= 44147 goto 21_while_body
    movl    $44147, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_21_while_body     
    jmp     l_f1_19                 #  21:     goto   19
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  23:     goto   20_while_cond
l_f1_19:
    movl    $98, %eax               #  25:     return 98
    jmp     l_f1_exit              
    movl    $97, %eax               #  26:     if     97 > 100 goto 25
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_25                
    jmp     l_f1_26                 #  27:     goto   26
l_f1_25:
    movl    $1, %eax                #  29:     assign t2 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f1_27                 #  30:     goto   27
l_f1_26:
    movl    $0, %eax                #  32:     assign t2 <- 0
    movb    %al, -57(%ebp)         
l_f1_27:
    movl    $2, %eax                #  34:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  35:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  36:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    $87514, %eax            #  37:     mul    t4 <- 87514, t3
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  38:     add    t5 <- t4, 65744
    movl    $65744, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $3, %eax                #  39:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  40:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  41:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  42:     mul    t7 <- t5, t6
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  43:     add    t8 <- t7, 29161
    movl    $29161, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    $4, %eax                #  44:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  45:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  46:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -156(%ebp)       
    movl    -152(%ebp), %eax        #  47:     mul    t10 <- t8, t9
    movl    -156(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  48:     add    t11 <- t10, 88746
    movl    $88746, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  49:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  50:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  51:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  52:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  53:     add    t14 <- t13, 83379
    movl    $83379, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  54:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    16(%ebp), %eax          #  55:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  56:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  57:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  58:     add    t18 <- v2, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -57(%ebp), %eax         #  59:     assign @t18 <- t2
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $98, %eax               #  60:     if     98 >= 98 goto 30_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_30_if_true        
    jmp     l_f1_31_if_false        #  61:     goto   31_if_false
l_f1_30_if_true:
    jmp     l_f1_29                 #  63:     goto   29
l_f1_31_if_false:
l_f1_29:
    movl    $2, %eax                #  66:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  67:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  68:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $98994, %eax            #  69:     mul    t20 <- 98994, t19
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  70:     add    t21 <- t20, 33993
    movl    $33993, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  71:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  72:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  73:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  74:     mul    t23 <- t21, t22
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  75:     add    t24 <- t23, 9415
    movl    $9415, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  76:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  77:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  78:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  79:     mul    t26 <- t24, t25
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  80:     add    t27 <- t26, 76528
    movl    $76528, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $5, %eax                #  81:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  82:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  83:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  84:     mul    t29 <- t27, t28
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  85:     add    t30 <- t29, 35464
    movl    $35464, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  86:     mul    t31 <- t30, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    12(%ebp), %eax          #  87:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  88:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  89:     add    t33 <- t31, t32
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    12(%ebp), %eax          #  90:     add    t34 <- v1, t33
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $12576, %eax            #  91:     assign @t34 <- 12576
    movl    -124(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $0, %eax                #  92:     assign v4 <- 0
    movb    %al, -157(%ebp)        
    leal    1048958268(%ebp), %eax  #  93:     &()    t35 <- v7
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  94:     param  1 <- t35
    pushl   %eax                   
    leal    1831649108(%ebp), %eax  #  95:     &()    t36 <- v6
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  96:     param  0 <- t36
    pushl   %eax                   
    call    f0                      #  97:     call   f0
    addl    $8, %esp               
    jmp     l_f1_12                 #  98:     goto   12
l_f1_12:

l_f1_exit:
    # epilogue
    addl    $-1048958280, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 64 of <array 33 of <array 87 of <array 37 of <array 57 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 64 of <array 25 of <array 36 of <array 64 of <array 17 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 75 of <array 96 of <array 59 of <array 14 of <array 65 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 76 of <array 44 of <array 42 of <array 94 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 64 of <array 44 of <array 62 of <array 69 of <array 19 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 59 of <array 41 of <array 80 of <array 28 of <array 37 of <int>>>>>>> %ebp+20 ]
    #   -79212732(%ebp)  79212696  [ $v4       <array 6 of <array 76 of <array 44 of <array 42 of <array 94 of <char>>>>>> %ebp-79212732 ]
    #   -1625484756(%ebp)  1546272024  [ $v5       <array 75 of <array 96 of <array 59 of <array 14 of <array 65 of <int>>>>>> %ebp-1625484756 ]
    #   -1688153580(%ebp)  62668824  [ $v6       <array 64 of <array 25 of <array 36 of <array 64 of <array 17 of <bool>>>>>> %ebp-1688153580 ]
    #   -2075669700(%ebp)  387516120  [ $v7       <array 64 of <array 33 of <array 87 of <array 37 of <array 57 of <char>>>>>> %ebp-2075669700 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2075669688, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $518917422, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-79212732(%ebp)      # local array 'v4': 5 dimensions
    movl    $6,-79212728(%ebp)      #   dimension 1: 6 elements
    movl    $76,-79212724(%ebp)     #   dimension 2: 76 elements
    movl    $44,-79212720(%ebp)     #   dimension 3: 44 elements
    movl    $42,-79212716(%ebp)     #   dimension 4: 42 elements
    movl    $94,-79212712(%ebp)     #   dimension 5: 94 elements
    movl    $5,-1625484756(%ebp)    # local array 'v5': 5 dimensions
    movl    $75,-1625484752(%ebp)   #   dimension 1: 75 elements
    movl    $96,-1625484748(%ebp)   #   dimension 2: 96 elements
    movl    $59,-1625484744(%ebp)   #   dimension 3: 59 elements
    movl    $14,-1625484740(%ebp)   #   dimension 4: 14 elements
    movl    $65,-1625484736(%ebp)   #   dimension 5: 65 elements
    movl    $5,-1688153580(%ebp)    # local array 'v6': 5 dimensions
    movl    $64,-1688153576(%ebp)   #   dimension 1: 64 elements
    movl    $25,-1688153572(%ebp)   #   dimension 2: 25 elements
    movl    $36,-1688153568(%ebp)   #   dimension 3: 36 elements
    movl    $64,-1688153564(%ebp)   #   dimension 4: 64 elements
    movl    $17,-1688153560(%ebp)   #   dimension 5: 17 elements
    movl    $5,-2075669700(%ebp)    # local array 'v7': 5 dimensions
    movl    $64,-2075669696(%ebp)   #   dimension 1: 64 elements
    movl    $33,-2075669692(%ebp)   #   dimension 2: 33 elements
    movl    $87,-2075669688(%ebp)   #   dimension 3: 87 elements
    movl    $37,-2075669684(%ebp)   #   dimension 4: 37 elements
    movl    $57,-2075669680(%ebp)   #   dimension 5: 57 elements

    # function body
    leal    -2075669700(%ebp), %eax #   0:     &()    t1 <- v7
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t1
    pushl   %eax                   
    leal    -1688153580(%ebp), %eax #   2:     &()    t2 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t2
    pushl   %eax                   
    leal    -1625484756(%ebp), %eax #   4:     &()    t3 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  1 <- t3
    pushl   %eax                   
    leal    -79212732(%ebp), %eax   #   6:     &()    t4 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #   8:     call   t5 <- f1
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   9:     return t5
    jmp     l_f2_exit              
    movl    $98, %eax               #  10:     assign v0 <- 98
    movb    %al, 8(%ebp)           
    call    dummyINTfunc            #  11:     call   t6 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     assign v1 <- t6
    movl    %eax, 12(%ebp)         

l_f2_exit:
    # epilogue
    addl    $2075669688, %esp       # remove locals
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
    movl    $21737, %eax            #   2:     if     21737 # 82788 goto 3_while_body
    movl    $82788, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    movl    $60503, %eax            #   5:     assign v0 <- 60503
    movl    %eax, v0               
    jmp     l_test_6                #   6:     goto   6
l_test_6:
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
l_test_10_while_cond:
    jmp     l_test_13               #  11:     goto   13
l_test_13:
    movl    $1, %eax                #  13:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_15               #  14:     goto   15
    movl    $0, %eax                #  15:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_15:
    movzbl  -13(%ebp), %eax         #  17:     if     t0 = 0 goto 11_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  18:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  20:     goto   10_while_cond
l_test_9:

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
