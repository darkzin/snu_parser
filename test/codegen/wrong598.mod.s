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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v3       <char> %ebp-29 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $28623, %eax            #   1:     assign v2 <- 28623
    movl    %eax, -28(%ebp)        
    call    ReadInt                 #   2:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $99, %eax               #   3:     if     99 > 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $28015, %eax            #  12:     add    t6 <- 28015, 37910
    movl    $37910, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_12_if_false        #  14:     goto   12_if_false
    movl    $80203, %eax            #  15:     return 80203
    jmp     l_f0_exit              
    movl    $24094, %eax            #  16:     return 24094
    jmp     l_f0_exit              
    movl    $92337, %eax            #  17:     return 92337
    jmp     l_f0_exit              
    movl    $53728, %eax            #  18:     return 53728
    jmp     l_f0_exit              
    movl    $98, %eax               #  19:     assign v3 <- 98
    movb    %al, -29(%ebp)         
    movl    $35041, %eax            #  20:     assign v2 <- 35041
    movl    %eax, -28(%ebp)        
    movl    $99, %eax               #  21:     if     99 = 98 goto 20_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_20_if_true        
    jmp     l_f0_21_if_false        #  22:     goto   21_if_false
l_f0_20_if_true:
    jmp     l_f0_19                 #  24:     goto   19
l_f0_21_if_false:
l_f0_19:
    call    dummyCHARfunc           #  27:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $93154, %eax            #  28:     return 93154
    jmp     l_f0_exit              
    jmp     l_f0_25                 #  29:     goto   25
l_f0_25:
l_f0_29_while_cond:
    movl    $95225, %eax            #  32:     if     95225 > 10441 goto 30_while_body
    movl    $10441, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_30_while_body     
    jmp     l_f0_28                 #  33:     goto   28
l_f0_30_while_body:
    jmp     l_f0_29_while_cond      #  35:     goto   29_while_cond
l_f0_28:
    movl    $1, %eax                #  37:     assign v1 <- 1
    movb    %al, 8(%ebp)           
    movl    $5193, %eax             #  38:     return 5193
    jmp     l_f0_exit              
    jmp     l_f0_10                 #  39:     goto   10
l_f0_12_if_false:
l_f0_10:

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
    #   -120(%ebp)   4  [ $t36      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t37      <int> %ebp-124 ]
    #   -125(%ebp)   1  [ $t5       <char> %ebp-125 ]
    #   -132(%ebp)   4  [ $t6       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t7       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t8       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t9       <int> %ebp-144 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 10 of <array 1 of <array 10 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #   -145(%ebp)   1  [ $v2       <bool> %ebp-145 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $136, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $34, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f1_exit              
l_f1_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -125(%ebp)        
    movl    $98, %eax               #   3:     if     98 < t5 goto 3_while_body
    movzbl  -125(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jl      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   8:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    $23987, %eax            #   9:     mul    t7 <- 23987, t6
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  10:     add    t8 <- t7, 43546
    movl    $43546, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  14:     mul    t10 <- t8, t9
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     add    t11 <- t10, 67283
    movl    $67283, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  19:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     add    t14 <- t13, 86298
    movl    $86298, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  24:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  25:     add    t17 <- t16, 93468
    movl    $93468, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  26:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  27:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  28:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  29:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  30:     add    t21 <- v1, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $1, %eax                #  31:     assign @t21 <- 1
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_exit              
    movl    $2, %eax                #  33:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $94318, %eax            #  36:     mul    t23 <- 94318, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  37:     add    t24 <- t23, 44429
    movl    $44429, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  38:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  40:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  41:     mul    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  42:     add    t27 <- t26, 80153
    movl    $80153, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  43:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  44:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  45:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  46:     mul    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  47:     add    t30 <- t29, 58956
    movl    $58956, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $5, %eax                #  48:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  49:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  50:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  51:     mul    t32 <- t30, t31
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  52:     add    t33 <- t32, 54456
    movl    $54456, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  53:     mul    t34 <- t33, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    8(%ebp), %eax           #  54:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  55:     call   t35 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  56:     add    t36 <- t34, t35
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    8(%ebp), %eax           #  57:     add    t37 <- v1, t36
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $1, %eax                #  58:     assign @t37 <- 1
    movl    -124(%ebp), %edi       
    movb    %al, (%edi)            
l_f1_9_while_cond:
    movl    $74203, %eax            #  60:     if     74203 <= 78682 goto 10_while_body
    movl    $78682, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_10_while_body     
    jmp     l_f1_8                  #  61:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  63:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_2_while_cond       #  65:     goto   2_while_cond
l_f1_1:
l_f1_13_while_cond:
    movl    $1, %eax                #  68:     if     1 # 0 goto 14_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_14_while_body     
    jmp     l_f1_12                 #  69:     goto   12
l_f1_14_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_13_while_cond      #  72:     goto   13_while_cond
l_f1_12:

l_f1_exit:
    # epilogue
    addl    $136, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 9 of <array 3 of <array 7 of <array 1 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -16(%ebp)   1  [ $v5       <char> %ebp-16 ]

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
    movl    $31958, %eax            #   0:     if     31958 >= 83257 goto 1
    movl    $83257, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t5
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   9:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     assign v5 <- t6
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  11:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    call    dummyINTfunc            #   2:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_3_while_cond:
    movl    $53427, %eax            #   4:     if     53427 > 24198 goto 6
    movl    $24198, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6               
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_8                #   8:     goto   8
l_test_7:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_8:
    movzbl  -21(%ebp), %eax         #  12:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  13:     call   t3 <- f0
    addl    $4, %esp               
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  14:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
l_test_12_while_cond:
    jmp     l_test_11               #  16:     goto   11
    movl    $0, %eax                #  17:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_12_while_cond    #  19:     goto   12_while_cond
l_test_11:
    jmp     l_test_3_while_cond     #  21:     goto   3_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
