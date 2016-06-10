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
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]

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
l_f0_1_while_cond:
    movl    $97, %eax               #   1:     if     97 < 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_if_false:
l_f0_4:
    call    dummyINTfunc            #   8:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
l_f0_0:
l_f0_9_while_cond:
    call    dummyCHARfunc           #  12:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $97, %eax               #  13:     if     97 > t5 goto 10_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_10_while_body     
    jmp     l_f0_8                  #  14:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  16:     goto   9_while_cond
l_f0_8:
    call    dummyBOOLfunc           #  18:     call   t6 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         

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
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t23      <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t25      <bool> %ebp-73 ]
    #    -74(%ebp)   1  [ $t26      <bool> %ebp-74 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t30      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t31      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t32      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t33      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t34      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t35      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t36      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t37      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t38      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t39      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-132 ]
    #   -136(%ebp)   4  [ $t40      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t41      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t42      <int> %ebp-144 ]
    #   -145(%ebp)   1  [ $t5       <bool> %ebp-145 ]
    #   -146(%ebp)   1  [ $t6       <bool> %ebp-146 ]
    #   -152(%ebp)   4  [ $t7       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t8       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t9       <int> %ebp-160 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 75 of <array 87 of <array 87 of <array 47 of <array 72 of <bool>>>>>>> %ebp+12 ]
    #   -161(%ebp)   1  [ $v2       <char> %ebp-161 ]
    #   -168(%ebp)   4  [ $v3       <int> %ebp-168 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $156, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $39, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $99, %eax               #   1:     if     99 # 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $100, %eax              #   4:     assign v2 <- 100
    movb    %al, -161(%ebp)        
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $98, %eax               #   7:     if     98 = 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   8:     goto   7_if_false
l_f1_6_if_true:
    movl    $99, %eax               #  10:     assign v2 <- 99
    movb    %al, -161(%ebp)        
    leal    _str_1, %eax            #  11:     &()    t4 <- _str_1
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  12:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               
    movl    $97, %eax               #  14:     if     97 > 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  15:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  17:     goto   11
l_f1_13_if_false:
l_f1_11:
    movl    $66562, %eax            #  20:     assign v3 <- 66562
    movl    %eax, -168(%ebp)       
    call    WriteLn                 #  21:     call   WriteLn
    movl    $91104, %eax            #  22:     if     91104 < 14863 goto 18_if_true
    movl    $14863, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  23:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  25:     goto   17
l_f1_19_if_false:
l_f1_17:
l_f1_22_while_cond:
    movl    $97, %eax               #  29:     if     97 >= 97 goto 23_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_23_while_body     
    jmp     l_f1_21                 #  30:     goto   21
l_f1_23_while_body:
    jmp     l_f1_22_while_cond      #  32:     goto   22_while_cond
l_f1_21:
    call    f0                      #  34:     call   t5 <- f0
    movb    %al, -145(%ebp)        
    movl    $97, %eax               #  35:     if     97 >= 99 goto 27
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_27                
    jmp     l_f1_28                 #  36:     goto   28
l_f1_27:
    movl    $1, %eax                #  38:     assign t6 <- 1
    movb    %al, -146(%ebp)        
    jmp     l_f1_29                 #  39:     goto   29
l_f1_28:
    movl    $0, %eax                #  41:     assign t6 <- 0
    movb    %al, -146(%ebp)        
l_f1_29:
    movl    $2, %eax                #  43:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  44:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  45:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    $27233, %eax            #  46:     mul    t8 <- 27233, t7
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  47:     add    t9 <- t8, 10099
    movl    $10099, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    $3, %eax                #  48:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  49:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  50:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -160(%ebp), %eax        #  51:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  52:     add    t12 <- t11, 82849
    movl    $82849, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  53:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  54:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  55:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  56:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  57:     add    t15 <- t14, 62729
    movl    $62729, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  58:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  59:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  60:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  61:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  62:     add    t18 <- t17, 29922
    movl    $29922, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  63:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  64:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  65:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  66:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  67:     add    t22 <- v1, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -146(%ebp), %eax        #  68:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_31                 #  69:     goto   31
l_f1_31:
    movl    $97, %eax               #  71:     if     97 <= 100 goto 35
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_35                
    jmp     l_f1_36                 #  72:     goto   36
l_f1_35:
    movl    $1, %eax                #  74:     assign t23 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f1_37                 #  75:     goto   37
l_f1_36:
    movl    $0, %eax                #  77:     assign t23 <- 0
    movb    %al, -65(%ebp)         
l_f1_37:
    movzbl  -65(%ebp), %eax         #  79:     return t23
    jmp     l_f1_exit              
    call    ReadInt                 #  80:     call   t24 <- ReadInt
    movl    %eax, -72(%ebp)        
    movl    $32853, %eax            #  81:     assign v3 <- 32853
    movl    %eax, -168(%ebp)       
    jmp     l_f1_5                  #  82:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_42_while_cond:
    movl    $1, %eax                #  86:     assign t25 <- 1
    movb    %al, -73(%ebp)         
    jmp     l_f1_47                 #  87:     goto   47
    movl    $0, %eax                #  88:     assign t25 <- 0
    movb    %al, -73(%ebp)         
l_f1_47:
    movl    $0, %eax                #  90:     if     0 = t25 goto 43_while_body
    movzbl  -73(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_43_while_body     
    jmp     l_f1_41                 #  91:     goto   41
l_f1_43_while_body:
    movl    $100, %eax              #  93:     if     100 > 99 goto 50
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_50                
    jmp     l_f1_51                 #  94:     goto   51
l_f1_50:
    movl    $1, %eax                #  96:     assign t26 <- 1
    movb    %al, -74(%ebp)         
    jmp     l_f1_52                 #  97:     goto   52
l_f1_51:
    movl    $0, %eax                #  99:     assign t26 <- 0
    movb    %al, -74(%ebp)         
l_f1_52:
    movzbl  -74(%ebp), %eax         # 101:     return t26
    jmp     l_f1_exit              
    jmp     l_f1_56_if_false        # 102:     goto   56_if_false
    jmp     l_f1_54                 # 103:     goto   54
l_f1_56_if_false:
l_f1_54:
    movl    $2, %eax                # 106:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          # 107:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     # 108:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $98958, %eax            # 109:     mul    t28 <- 98958, t27
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         # 110:     add    t29 <- t28, 83170
    movl    $83170, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                # 111:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          # 112:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     # 113:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         # 114:     mul    t31 <- t29, t30
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         # 115:     add    t32 <- t31, 78063
    movl    $78063, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $4, %eax                # 116:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          # 117:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     # 118:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        # 119:     mul    t34 <- t32, t33
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        # 120:     add    t35 <- t34, 17523
    movl    $17523, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $5, %eax                # 121:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          # 122:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     # 123:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        # 124:     mul    t37 <- t35, t36
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        # 125:     add    t38 <- t37, 70671
    movl    $70671, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        # 126:     mul    t39 <- t38, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    12(%ebp), %eax          # 127:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    # 128:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -136(%ebp)       
    movl    -128(%ebp), %eax        # 129:     add    t41 <- t39, t40
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    12(%ebp), %eax          # 130:     add    t42 <- v1, t41
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $1, %eax                # 131:     assign @t42 <- 1
    movl    -144(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $16507, %eax            # 132:     if     16507 >= 11497 goto 59_if_true
    movl    $11497, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_59_if_true        
    jmp     l_f1_60_if_false        # 133:     goto   60_if_false
l_f1_59_if_true:
    jmp     l_f1_58                 # 135:     goto   58
l_f1_60_if_false:
l_f1_58:
    jmp     l_f1_42_while_cond      # 138:     goto   42_while_cond
l_f1_41:

l_f1_exit:
    # epilogue
    addl    $156, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v0       <bool> %ebp-22 ]

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
    movl    $41943, %eax            #   0:     sub    t4 <- 41943, 86494
    movl    $86494, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 44922
    movl    $44922, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t5
    jmp     l_f2_exit              
    movl    $0, %eax                #   3:     assign v0 <- 0
    movb    %al, -22(%ebp)         
    call    dummyBOOLfunc           #   4:     call   t6 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   5:     if     t6 = 1 goto 3_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   6:     goto   4_if_false
l_f2_3_if_true:
    jmp     l_f2_2                  #   8:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
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
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_3_while_cond:
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     if     t0 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_4_while_body    
l_test_4_while_body:
    jmp     l_test_3_while_cond     #   6:     goto   3_while_cond
l_test_7_while_cond:
    call    f2                      #   8:     call   t1 <- f2
    movl    %eax, -20(%ebp)        
    movl    $43524, %eax            #   9:     div    t2 <- 43524, t1
    movl    -20(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     if     t2 <= 3863 goto 8_while_body
    movl    $3863, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_8_while_body    
    jmp     l_test_6                #  11:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  13:     goto   7_while_cond
l_test_6:
    movl    $37355, %eax            #  15:     sub    t3 <- 37355, 12324
    movl    $12324, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     if     t3 < 61621 goto 11_if_true
    movl    $61621, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #  17:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  19:     goto   10
l_test_12_if_false:
l_test_10:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
