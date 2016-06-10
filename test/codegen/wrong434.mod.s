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
    #    -16(%ebp)   4  [ $t17      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t18      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t19      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t20      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t21      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t22      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t23      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t24      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t25      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t26      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t27      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t28      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t29      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t30      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t31      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t32      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t33      <bool> %ebp-77 ]
    #    -78(%ebp)   1  [ $t34      <bool> %ebp-78 ]
    #    -84(%ebp)   4  [ $t35      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t36      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t37      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t38      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t39      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t40      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t41      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t42      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t43      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t44      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t45      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t46      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t47      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t48      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t49      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t50      <int> %ebp-144 ]
    #   -145(%ebp)   1  [ $t51      <bool> %ebp-145 ]
    #   -146(%ebp)   1  [ $t52      <bool> %ebp-146 ]
    #   -147(%ebp)   1  [ $t53      <bool> %ebp-147 ]
    #   -148(%ebp)   1  [ $t54      <bool> %ebp-148 ]
    #   -149(%ebp)   1  [ $t55      <bool> %ebp-149 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 6 of <array 4 of <array 6 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 2 of <array 5 of <array 5 of <array 4 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 9 of <array 7 of <array 8 of <array 9 of <char>>>>>>> %ebp+16 ]
    #   -150(%ebp)   1  [ $v4       <char> %ebp-150 ]
    #   -156(%ebp)   4  [ $v5       <int> %ebp-156 ]
    #   -157(%ebp)   1  [ $v6       <bool> %ebp-157 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $148, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $37, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $59200, %eax            #   0:     if     59200 > 42635 goto 1_if_true
    movl    $42635, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   4:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   5:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $4916, %eax             #   6:     mul    t18 <- 4916, t17
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     add    t19 <- t18, 4066
    movl    $4066, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  11:     mul    t21 <- t19, t20
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     add    t22 <- t21, 3554
    movl    $3554, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  16:     mul    t24 <- t22, t23
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  17:     add    t25 <- t24, 36188
    movl    $36188, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  21:     mul    t27 <- t25, t26
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  22:     add    t28 <- t27, 56044
    movl    $56044, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  23:     mul    t29 <- t28, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  25:     call   t30 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  26:     add    t31 <- t29, t30
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  27:     add    t32 <- v3, t31
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $98, %eax               #  28:     assign @t32 <- 98
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $92665, %eax            #  29:     if     92665 > 70042 goto 6
    movl    $70042, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_6                 
    jmp     l_f0_7                  #  30:     goto   7
l_f0_6:
    movl    $1, %eax                #  32:     assign t33 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f0_8                  #  33:     goto   8
l_f0_7:
    movl    $0, %eax                #  35:     assign t33 <- 0
    movb    %al, -77(%ebp)         
l_f0_8:
    movzbl  -77(%ebp), %eax         #  37:     return t33
    jmp     l_f0_exit              
    movl    $98, %eax               #  38:     if     98 # 99 goto 11
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_11                
    jmp     l_f0_12                 #  39:     goto   12
l_f0_11:
    movl    $1, %eax                #  41:     assign t34 <- 1
    movb    %al, -78(%ebp)         
    jmp     l_f0_13                 #  42:     goto   13
l_f0_12:
    movl    $0, %eax                #  44:     assign t34 <- 0
    movb    %al, -78(%ebp)         
l_f0_13:
    movzbl  -78(%ebp), %eax         #  46:     return t34
    jmp     l_f0_exit              
    movl    $2, %eax                #  47:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  48:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  49:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $63060, %eax            #  50:     mul    t36 <- 63060, t35
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  51:     add    t37 <- t36, 99684
    movl    $99684, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  52:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  53:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  54:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  55:     mul    t39 <- t37, t38
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  56:     add    t40 <- t39, 85210
    movl    $85210, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $4, %eax                #  57:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  58:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  59:     call   t41 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  60:     mul    t42 <- t40, t41
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  61:     add    t43 <- t42, 59308
    movl    $59308, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $5, %eax                #  62:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  63:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  64:     call   t44 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  65:     mul    t45 <- t43, t44
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  66:     add    t46 <- t45, 49871
    movl    $49871, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  67:     mul    t47 <- t46, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    8(%ebp), %eax           #  68:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  69:     call   t48 <- DOFS
    addl    $4, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  70:     add    t49 <- t47, t48
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    8(%ebp), %eax           #  71:     add    t50 <- v1, t49
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $79805, %eax            #  72:     assign @t50 <- 79805
    movl    -144(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $45113, %eax            #  73:     assign v5 <- 45113
    movl    %eax, -156(%ebp)       
    call    dummyBOOLfunc           #  74:     call   t51 <- dummyBOOLfunc
    movb    %al, -145(%ebp)        
    movl    $0, %eax                #  75:     if     0 # 1 goto 19
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_19                
    jmp     l_f0_20                 #  76:     goto   20
l_f0_19:
    movl    $1, %eax                #  78:     assign t52 <- 1
    movb    %al, -146(%ebp)        
    jmp     l_f0_21                 #  79:     goto   21
l_f0_20:
    movl    $0, %eax                #  81:     assign t52 <- 0
    movb    %al, -146(%ebp)        
l_f0_21:
    movzbl  -146(%ebp), %eax        #  83:     return t52
    jmp     l_f0_exit              
    movl    $0, %eax                #  84:     if     0 # 1 goto 24
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_24                
    jmp     l_f0_25                 #  85:     goto   25
l_f0_24:
    movl    $1, %eax                #  87:     assign t53 <- 1
    movb    %al, -147(%ebp)        
    jmp     l_f0_26                 #  88:     goto   26
l_f0_25:
    movl    $0, %eax                #  90:     assign t53 <- 0
    movb    %al, -147(%ebp)        
l_f0_26:
    movzbl  -147(%ebp), %eax        #  92:     assign v6 <- t53
    movb    %al, -157(%ebp)        
    movl    $0, %eax                #  93:     if     0 = 0 goto 29
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_29                
    jmp     l_f0_30                 #  94:     goto   30
l_f0_29:
    movl    $1, %eax                #  96:     assign t54 <- 1
    movb    %al, -148(%ebp)        
    jmp     l_f0_31                 #  97:     goto   31
l_f0_30:
    movl    $0, %eax                #  99:     assign t54 <- 0
    movb    %al, -148(%ebp)        
l_f0_31:
    movzbl  -148(%ebp), %eax        # 101:     return t54
    jmp     l_f0_exit              
    jmp     l_f0_0                  # 102:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_34_while_cond:
    movl    $56088, %eax            # 106:     if     56088 <= 99115 goto 35_while_body
    movl    $99115, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_35_while_body     
    jmp     l_f0_33                 # 107:     goto   33
l_f0_35_while_body:
    movl    $24262, %eax            # 109:     assign v5 <- 24262
    movl    %eax, -156(%ebp)       
l_f0_39_while_cond:
    movl    $36373, %eax            # 111:     if     36373 = 48637 goto 40_while_body
    movl    $48637, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_40_while_body     
    jmp     l_f0_38                 # 112:     goto   38
l_f0_40_while_body:
    jmp     l_f0_39_while_cond      # 114:     goto   39_while_cond
l_f0_38:
    jmp     l_f0_34_while_cond      # 116:     goto   34_while_cond
l_f0_33:
l_f0_43_while_cond:
    jmp     l_f0_47                 # 119:     goto   47
    jmp     l_f0_47                 # 120:     goto   47
    movl    $1, %eax                # 121:     assign t55 <- 1
    movb    %al, -149(%ebp)        
    jmp     l_f0_48                 # 122:     goto   48
l_f0_47:
    movl    $0, %eax                # 124:     assign t55 <- 0
    movb    %al, -149(%ebp)        
l_f0_48:
    movl    $1, %eax                # 126:     if     1 # t55 goto 44_while_body
    movzbl  -149(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jne     l_f0_44_while_body     
    jmp     l_f0_42                 # 127:     goto   42
l_f0_44_while_body:
l_f0_51_while_cond:
    jmp     l_f0_51_while_cond      # 130:     goto   51_while_cond
    movl    $1, %eax                # 131:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_43_while_cond      # 132:     goto   43_while_cond
l_f0_42:

l_f0_exit:
    # epilogue
    addl    $148, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t17      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t18      <ptr(4) to <array 3 of <array 9 of <array 7 of <array 8 of <array 9 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t19      <ptr(4) to <array 7 of <array 2 of <array 5 of <array 5 of <array 4 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t20      <ptr(4) to <array 7 of <array 6 of <array 4 of <array 6 of <array 6 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t21      <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t22      <ptr(4) to <array 3 of <array 9 of <array 7 of <array 8 of <array 9 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t23      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t24      <ptr(4) to <array 3 of <array 9 of <array 7 of <array 8 of <array 9 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t25      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t26      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t27      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t28      <ptr(4) to <array 3 of <array 9 of <array 7 of <array 8 of <array 9 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t29      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t30      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t31      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t32      <ptr(4) to <array 3 of <array 9 of <array 7 of <array 8 of <array 9 of <char>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t33      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t34      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t35      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t36      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t37      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t38      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t39      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t40      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t41      <ptr(4) to <array 3 of <array 9 of <array 7 of <array 8 of <array 9 of <char>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t42      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t43      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t44      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t45      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t46      <ptr(4) to <array 3 of <array 9 of <array 7 of <array 8 of <array 9 of <char>>>>>>> %ebp-132 ]
    #   -136(%ebp)   4  [ $t47      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t48      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t49      <int> %ebp-144 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 4 of <array 5 of <array 6 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #   -24360(%ebp)  24216  [ $v4       <array 7 of <array 6 of <array 4 of <array 6 of <array 6 of <int>>>>>> %ebp-24360 ]
    #   -29984(%ebp)  5624  [ $v5       <array 7 of <array 2 of <array 5 of <array 5 of <array 4 of <int>>>>>> %ebp-29984 ]
    #   -43616(%ebp)  13632  [ $v6       <array 3 of <array 9 of <array 7 of <array 8 of <array 9 of <char>>>>>> %ebp-43616 ]
    #   -43617(%ebp)   1  [ $v7       <char> %ebp-43617 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $43608, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10902, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-24360(%ebp)         # local array 'v4': 5 dimensions
    movl    $7,-24356(%ebp)         #   dimension 1: 7 elements
    movl    $6,-24352(%ebp)         #   dimension 2: 6 elements
    movl    $4,-24348(%ebp)         #   dimension 3: 4 elements
    movl    $6,-24344(%ebp)         #   dimension 4: 6 elements
    movl    $6,-24340(%ebp)         #   dimension 5: 6 elements
    movl    $5,-29984(%ebp)         # local array 'v5': 5 dimensions
    movl    $7,-29980(%ebp)         #   dimension 1: 7 elements
    movl    $2,-29976(%ebp)         #   dimension 2: 2 elements
    movl    $5,-29972(%ebp)         #   dimension 3: 5 elements
    movl    $5,-29968(%ebp)         #   dimension 4: 5 elements
    movl    $4,-29964(%ebp)         #   dimension 5: 4 elements
    movl    $5,-43616(%ebp)         # local array 'v6': 5 dimensions
    movl    $3,-43612(%ebp)         #   dimension 1: 3 elements
    movl    $9,-43608(%ebp)         #   dimension 2: 9 elements
    movl    $7,-43604(%ebp)         #   dimension 3: 7 elements
    movl    $8,-43600(%ebp)         #   dimension 4: 8 elements
    movl    $9,-43596(%ebp)         #   dimension 5: 9 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t17 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t17
    jmp     l_f1_exit              
    movl    $98327, %eax            #   2:     if     98327 >= 41912 goto 2_if_true
    movl    $41912, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    leal    -43616(%ebp), %eax      #   5:     &()    t18 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  2 <- t18
    pushl   %eax                   
    leal    -29984(%ebp), %eax      #   7:     &()    t19 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     param  1 <- t19
    pushl   %eax                   
    leal    -24360(%ebp), %eax      #   9:     &()    t20 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     param  0 <- t20
    pushl   %eax                   
    call    f0                      #  11:     call   t21 <- f0
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movl    $99, %eax               #  12:     return 99
    jmp     l_f1_exit              
    jmp     l_f1_1                  #  13:     goto   1
l_f1_3_if_false:
l_f1_1:
    leal    -43616(%ebp), %eax      #  16:     &()    t22 <- v6
    movl    %eax, -36(%ebp)        
    movl    $60324, %eax            #  17:     div    t23 <- 60324, 47575
    movl    $47575, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    leal    -43616(%ebp), %eax      #  19:     &()    t24 <- v6
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     param  0 <- t24
    pushl   %eax                   
    call    DIM                     #  21:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  22:     mul    t26 <- t23, t25
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  23:     add    t27 <- t26, 31602
    movl    $31602, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    leal    -43616(%ebp), %eax      #  25:     &()    t28 <- v6
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  26:     param  0 <- t28
    pushl   %eax                   
    call    DIM                     #  27:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  28:     mul    t30 <- t27, t29
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  29:     add    t31 <- t30, 53690
    movl    $53690, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    leal    -43616(%ebp), %eax      #  31:     &()    t32 <- v6
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  32:     param  0 <- t32
    pushl   %eax                   
    call    DIM                     #  33:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  34:     mul    t34 <- t31, t33
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    $53710, %eax            #  35:     mul    t35 <- 53710, 65817
    movl    $65817, %ebx           
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  36:     mul    t36 <- t35, 28797
    movl    $28797, %ebx           
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  37:     mul    t37 <- t36, 75655
    movl    $75655, %ebx           
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  38:     div    t38 <- t37, 97138
    movl    $97138, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  39:     div    t39 <- t38, 85694
    movl    $85694, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -84(%ebp), %eax         #  40:     add    t40 <- t34, t39
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    leal    -43616(%ebp), %eax      #  42:     &()    t41 <- v6
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  43:     param  0 <- t41
    pushl   %eax                   
    call    DIM                     #  44:     call   t42 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -108(%ebp), %eax        #  45:     mul    t43 <- t40, t42
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  46:     add    t44 <- t43, 28838
    movl    $28838, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  47:     mul    t45 <- t44, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    leal    -43616(%ebp), %eax      #  48:     &()    t46 <- v6
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  49:     param  0 <- t46
    pushl   %eax                   
    call    DOFS                    #  50:     call   t47 <- DOFS
    addl    $4, %esp               
    movl    %eax, -136(%ebp)       
    movl    -128(%ebp), %eax        #  51:     add    t48 <- t45, t47
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    -36(%ebp), %eax         #  52:     add    t49 <- t22, t48
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $98, %eax               #  53:     assign @t49 <- 98
    movl    -144(%ebp), %edi       
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $43608, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t17      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t18      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t19      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t20      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t21      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t22      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t23      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t24      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t25      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t26      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t27      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t28      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t29      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t30      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t31      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t32      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t33      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t34      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t35      <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $t36      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t37      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t38      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t39      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t40      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t41      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t42      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t43      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t44      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t45      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t46      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t47      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t48      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t49      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t50      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t51      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t52      <int> %ebp-152 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 7 of <array 1 of <array 4 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #   -153(%ebp)   1  [ $v3       <bool> %ebp-153 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $144, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $36, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
    call    dummyCHARfunc           #   6:     call   t17 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $30445, %eax            #   7:     if     30445 < 83044 goto 9
    movl    $83044, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_9                 
    jmp     l_f2_10                 #   8:     goto   10
l_f2_9:
    movl    $1, %eax                #  10:     assign t18 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_11                 #  11:     goto   11
l_f2_10:
    movl    $0, %eax                #  13:     assign t18 <- 0
    movb    %al, -14(%ebp)         
l_f2_11:
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $6549, %eax             #  18:     mul    t20 <- 6549, t19
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t21 <- t20, 34690
    movl    $34690, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  23:     mul    t23 <- t21, t22
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t24 <- t23, 76609
    movl    $76609, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t26 <- t24, t25
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     add    t27 <- t26, 9718
    movl    $9718, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  33:     mul    t29 <- t27, t28
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  34:     add    t30 <- t29, 18331
    movl    $18331, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  35:     mul    t31 <- t30, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  36:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  37:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  38:     add    t33 <- t31, t32
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  39:     add    t34 <- v1, t33
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -14(%ebp), %eax         #  40:     assign @t34 <- t18
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_1_while_cond       #  41:     goto   1_while_cond
l_f2_0:
    movl    $97, %eax               #  43:     if     97 <= 100 goto 14
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_14                
l_f2_14:
    movl    $1, %eax                #  45:     assign t35 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_16                 #  46:     goto   16
    movl    $0, %eax                #  47:     assign t35 <- 0
    movb    %al, -81(%ebp)         
l_f2_16:
    movl    $2, %eax                #  49:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  50:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  51:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $93425, %eax            #  52:     mul    t37 <- 93425, t36
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  53:     add    t38 <- t37, 67856
    movl    $67856, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  54:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  55:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  56:     call   t39 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  57:     mul    t40 <- t38, t39
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  58:     add    t41 <- t40, 98420
    movl    $98420, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $4, %eax                #  59:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  60:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  61:     call   t42 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  62:     mul    t43 <- t41, t42
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  63:     add    t44 <- t43, 89339
    movl    $89339, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $5, %eax                #  64:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  65:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  66:     call   t45 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  67:     mul    t46 <- t44, t45
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  68:     add    t47 <- t46, 4536
    movl    $4536, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  69:     mul    t48 <- t47, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    8(%ebp), %eax           #  70:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  71:     call   t49 <- DOFS
    addl    $4, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  72:     add    t50 <- t48, t49
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    8(%ebp), %eax           #  73:     add    t51 <- v1, t50
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movzbl  -81(%ebp), %eax         #  74:     assign @t51 <- t35
    movl    -148(%ebp), %edi       
    movb    %al, (%edi)            
    call    ReadInt                 #  75:     call   t52 <- ReadInt
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  76:     assign v2 <- t52
    movl    %eax, 12(%ebp)         

l_f2_exit:
    # epilogue
    addl    $144, %esp              # remove locals
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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t16      <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t2       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $60641, %eax            #   0:     add    t0 <- 60641, 97896
    movl    $97896, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 83454
    movl    $83454, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 29323
    movl    $29323, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   3:     add    t3 <- t2, 58088
    movl    $58088, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   4:     sub    t4 <- t3, 18444
    movl    $18444, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   5:     add    t5 <- t4, 92125
    movl    $92125, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   6:     assign v0 <- t5
    movl    %eax, v0               
    movl    $75061, %eax            #   7:     add    t6 <- 75061, 22640
    movl    $22640, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   8:     add    t7 <- t6, 98131
    movl    $98131, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   9:     add    t8 <- t7, 98850
    movl    $98850, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  10:     sub    t9 <- t8, 46431
    movl    $46431, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  11:     add    t10 <- t9, 39999
    movl    $39999, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $48207, %eax            #  12:     sub    t11 <- 48207, 26144
    movl    $26144, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     sub    t12 <- t11, 48145
    movl    $48145, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     add    t13 <- t12, 41219
    movl    $41219, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -24(%ebp), %eax         #  15:     if     t10 = t13 goto 2_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #  16:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_1                #  18:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $94106, %eax            #  21:     if     94106 < 45140 goto 6_if_true
    movl    $45140, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #  22:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_exit            
    jmp     l_test_5                #  25:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $100, %eax              #  28:     if     100 > 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_11_if_true      
    jmp     l_test_12_if_false      #  29:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_14               #  31:     goto   14
l_test_14:
    jmp     l_test_exit            
    jmp     l_test_10               #  34:     goto   10
l_test_12_if_false:
l_test_10:
    call    ReadInt                 #  37:     call   t14 <- ReadInt
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  38:     add    t15 <- t14, 86259
    movl    $86259, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $55887, %eax            #  39:     if     55887 <= t15 goto 19
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_19              
    jmp     l_test_20               #  40:     goto   20
l_test_19:
    movl    $1, %eax                #  42:     assign t16 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_test_21               #  43:     goto   21
l_test_20:
    movl    $0, %eax                #  45:     assign t16 <- 0
    movb    %al, -45(%ebp)         
l_test_21:
    movzbl  -45(%ebp), %eax         #  47:     assign v1 <- t16
    movb    %al, v1                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $68, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
