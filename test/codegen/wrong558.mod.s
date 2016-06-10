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
    #    -49(%ebp)   1  [ $t19      <bool> %ebp-49 ]
    #    -50(%ebp)   1  [ $t2       <bool> %ebp-50 ]
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
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t36      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t37      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t38      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t39      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t4       <int> %ebp-140 ]
    #   -141(%ebp)   1  [ $t40      <bool> %ebp-141 ]
    #   -148(%ebp)   4  [ $t41      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t42      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t5       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t6       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t7       <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t8       <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t9       <int> %ebp-172 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 6 of <array 8 of <array 10 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 1 of <array 9 of <array 1 of <array 10 of <bool>>>>>>> %ebp+16 ]
    #   -173(%ebp)   1  [ $v3       <bool> %ebp-173 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $164, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $41, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     if     97 < 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   1:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   3:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $52327, %eax            #   6:     if     52327 # 7335 goto 9
    movl    $7335, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f0_9                 
    jmp     l_f0_10                 #   7:     goto   10
l_f0_9:
    movl    $1, %eax                #   9:     assign t2 <- 1
    movb    %al, -50(%ebp)         
    jmp     l_f0_11                 #  10:     goto   11
l_f0_10:
    movl    $0, %eax                #  12:     assign t2 <- 0
    movb    %al, -50(%ebp)         
l_f0_11:
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $46051, %eax            #  17:     mul    t4 <- 46051, t3
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  18:     add    t5 <- t4, 79737
    movl    $79737, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -160(%ebp)       
    movl    -156(%ebp), %eax        #  22:     mul    t7 <- t5, t6
    movl    -160(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  23:     add    t8 <- t7, 92828
    movl    $92828, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  26:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -172(%ebp)       
    movl    -168(%ebp), %eax        #  27:     mul    t10 <- t8, t9
    movl    -172(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  28:     add    t11 <- t10, 21358
    movl    $21358, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  30:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  31:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  32:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     add    t14 <- t13, 60090
    movl    $60090, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    16(%ebp), %eax          #  35:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  36:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  37:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  38:     add    t18 <- v2, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movzbl  -50(%ebp), %eax         #  39:     assign @t18 <- t2
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $31847, %eax            #  40:     if     31847 = 28010 goto 14
    movl    $28010, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_14                
    jmp     l_f0_15                 #  41:     goto   15
l_f0_14:
    movl    $1, %eax                #  43:     assign t19 <- 1
    movb    %al, -49(%ebp)         
    jmp     l_f0_16                 #  44:     goto   16
l_f0_15:
    movl    $0, %eax                #  46:     assign t19 <- 0
    movb    %al, -49(%ebp)         
l_f0_16:
    movl    $2, %eax                #  48:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  49:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  50:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $83510, %eax            #  51:     mul    t21 <- 83510, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  52:     add    t22 <- t21, 11975
    movl    $11975, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  53:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  54:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  55:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  56:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  57:     add    t25 <- t24, 91294
    movl    $91294, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  58:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  59:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  60:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  61:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  62:     add    t28 <- t27, 1756
    movl    $1756, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  63:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  64:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  65:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  66:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  67:     add    t31 <- t30, 77873
    movl    $77873, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  68:     mul    t32 <- t31, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    16(%ebp), %eax          #  69:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  70:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  71:     add    t34 <- t32, t33
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    16(%ebp), %eax          #  72:     add    t35 <- v2, t34
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movzbl  -49(%ebp), %eax         #  73:     assign @t35 <- t19
    movl    -120(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f0_0                  #  74:     goto   0
l_f0_0:
    movl    $35615, %eax            #  76:     div    t36 <- 35615, 90731
    movl    $90731, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  77:     div    t37 <- t36, 4966
    movl    $4966, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  78:     div    t38 <- t37, 86190
    movl    $86190, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  79:     mul    t39 <- t38, 97428
    movl    $97428, %ebx           
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    $18657, %eax            #  80:     if     18657 = t39 goto 19
    movl    -136(%ebp), %ebx       
    cmpl    %ebx, %eax             
    je      l_f0_19                
    jmp     l_f0_20                 #  81:     goto   20
l_f0_19:
    movl    $1, %eax                #  83:     assign t40 <- 1
    movb    %al, -141(%ebp)        
    jmp     l_f0_21                 #  84:     goto   21
l_f0_20:
    movl    $0, %eax                #  86:     assign t40 <- 0
    movb    %al, -141(%ebp)        
l_f0_21:
    movzbl  -141(%ebp), %eax        #  88:     return t40
    jmp     l_f0_exit              
    movl    $35192, %eax            #  89:     sub    t41 <- 35192, 25587
    movl    $25587, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  90:     add    t42 <- t41, 24538
    movl    $24538, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    $32714, %eax            #  91:     if     32714 < t42 goto 24_if_true
    movl    -152(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jl      l_f0_24_if_true        
    jmp     l_f0_25_if_false        #  92:     goto   25_if_false
l_f0_24_if_true:
    jmp     l_f0_23                 #  94:     goto   23
l_f0_25_if_false:
l_f0_23:

l_f0_exit:
    # epilogue
    addl    $164, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 1 of <array 2 of <array 9 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 9 of <array 6 of <array 9 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #    -48(%ebp)   4  [ $v2       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $95116, %eax            #   0:     div    t2 <- 95116, 60213
    movl    $60213, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t2
    movl    %eax, -48(%ebp)        
    movl    $44883, %eax            #   2:     div    t3 <- 44883, 86111
    movl    $86111, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     return t3
    jmp     l_f1_exit              
l_f1_3_while_cond:
    movl    $97, %eax               #   5:     if     97 >= 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_4_while_body      
    jmp     l_f1_2                  #   6:     goto   2
l_f1_4_while_body:
    movl    $56666, %eax            #   8:     assign v2 <- 56666
    movl    %eax, -48(%ebp)        
    movl    $32804, %eax            #   9:     mul    t4 <- 32804, 54260
    movl    $54260, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     mul    t5 <- t4, 84502
    movl    $84502, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     mul    t6 <- t5, 27268
    movl    $27268, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     mul    t7 <- t6, 23342
    movl    $23342, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  13:     div    t8 <- t7, 29035
    movl    $29035, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  14:     mul    t9 <- t8, 93474
    movl    $93474, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  15:     return t9
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #  16:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 10 of <array 9 of <array 6 of <array 9 of <array 2 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 6 of <array 1 of <array 2 of <array 9 of <array 5 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #   -592(%ebp)  564  [ $v0       <array 6 of <array 1 of <array 2 of <array 9 of <array 5 of <char>>>>>> %ebp-592 ]
    #   -10336(%ebp)  9744  [ $v1       <array 10 of <array 9 of <array 6 of <array 9 of <array 2 of <bool>>>>>> %ebp-10336 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $10324, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2581, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-592(%ebp)           # local array 'v0': 5 dimensions
    movl    $6,-588(%ebp)           #   dimension 1: 6 elements
    movl    $1,-584(%ebp)           #   dimension 2: 1 elements
    movl    $2,-580(%ebp)           #   dimension 3: 2 elements
    movl    $9,-576(%ebp)           #   dimension 4: 9 elements
    movl    $5,-572(%ebp)           #   dimension 5: 5 elements
    movl    $5,-10336(%ebp)         # local array 'v1': 5 dimensions
    movl    $10,-10332(%ebp)        #   dimension 1: 10 elements
    movl    $9,-10328(%ebp)         #   dimension 2: 9 elements
    movl    $6,-10324(%ebp)         #   dimension 3: 6 elements
    movl    $9,-10320(%ebp)         #   dimension 4: 9 elements
    movl    $2,-10316(%ebp)         #   dimension 5: 2 elements

    # function body
    leal    -10336(%ebp), %eax      #   0:     &()    t2 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t2
    pushl   %eax                   
    leal    -592(%ebp), %eax        #   2:     &()    t3 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #   4:     call   t4 <- f1
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #   5:     call   t5 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f2_7_if_false         #   6:     goto   7_if_false
    movl    $59942, %eax            #   7:     param  0 <- 59942
    pushl   %eax                   
    call    WriteInt                #   8:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_2                  #  12:     goto   2
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $10324, %esp            # remove locals
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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   5:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    movl    $97, %eax               #   8:     assign v0 <- 97
    movb    %al, v0                
    call    ReadInt                 #   9:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
