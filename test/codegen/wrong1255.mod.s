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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <bool> %ebp-16 ]

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
    jmp     l_f0_1                  #   0:     goto   1
l_f0_1:
    movl    $1, %eax                #   2:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v0 <- t1
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #   7:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f0_7_while_cond:
    movl    $53293, %eax            #   9:     if     53293 > 38496 goto 8_while_body
    movl    $38496, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_8_while_body      
    jmp     l_f0_6                  #  10:     goto   6
l_f0_8_while_body:
    movl    $100, %eax              #  12:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  13:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #  14:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  15:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #  16:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_7_while_cond       #  17:     goto   7_while_cond
l_f0_6:

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
    #    -77(%ebp)   1  [ $t24      <char> %ebp-77 ]
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
    #   -128(%ebp)   4  [ $t35      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t36      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t37      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t38      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t39      <int> %ebp-144 ]
    #   -145(%ebp)   1  [ $t4       <bool> %ebp-145 ]
    #   -152(%ebp)   4  [ $t40      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t41      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t42      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t43      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t44      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t5       <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t6       <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t7       <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t8       <int> %ebp-184 ]
    #   -188(%ebp)   4  [ $t9       <int> %ebp-188 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 28 of <array 25 of <array 65 of <array 69 of <array 87 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #   -189(%ebp)   1  [ $v3       <bool> %ebp-189 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $180, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $45, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $34878, %eax            #   0:     div    t1 <- 34878, 15566
    movl    $15566, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t2 <- t1, 22413
    movl    $22413, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   2:     mul    t3 <- t2, 99797
    movl    $99797, %ebx           
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    $65722, %eax            #   3:     if     65722 = t3 goto 1
    movl    -104(%ebp), %ebx       
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   4:     goto   2
l_f1_1:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -145(%ebp)        
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -145(%ebp)        
l_f1_3:
    movl    $1628, %eax             #  11:     sub    t5 <- 1628, 41902
    movl    $41902, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #  12:     sub    t6 <- t5, 16048
    movl    $16048, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -176(%ebp)       
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -180(%ebp)       
    movl    -176(%ebp), %eax        #  16:     mul    t8 <- t6, t7
    movl    -180(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -184(%ebp)       
    movl    -184(%ebp), %eax        #  17:     add    t9 <- t8, 3827
    movl    $3827, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -188(%ebp)       
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -188(%ebp), %eax        #  21:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t12 <- t11, 75857
    movl    $75857, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  26:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t15 <- t14, 88341
    movl    $88341, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  31:     mul    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t18 <- t17, 78373
    movl    $78373, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  33:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  34:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  35:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  36:     add    t21 <- t19, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  37:     add    t22 <- v1, t21
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -145(%ebp), %eax        #  38:     assign @t22 <- t4
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyINTfunc            #  39:     call   t23 <- dummyINTfunc
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  40:     if     t23 = 12426 goto 6_if_true
    movl    $12426, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  41:     goto   7_if_false
l_f1_6_if_true:
l_f1_10_while_cond:
    movl    $100, %eax              #  44:     if     100 < 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_11_while_body     
    jmp     l_f1_9                  #  45:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  47:     goto   10_while_cond
l_f1_9:
l_f1_14_while_cond:
    movl    $99, %eax               #  50:     if     99 = 99 goto 15_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_15_while_body     
    jmp     l_f1_13                 #  51:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  53:     goto   14_while_cond
l_f1_13:
    movl    $89999, %eax            #  55:     param  0 <- 89999
    pushl   %eax                   
    call    WriteInt                #  56:     call   WriteInt
    addl    $4, %esp               
l_f1_19_while_cond:
    jmp     l_f1_19_while_cond      #  58:     goto   19_while_cond
l_f1_22_while_cond:
    movl    $99, %eax               #  60:     if     99 < 98 goto 23_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_23_while_body     
    jmp     l_f1_21                 #  61:     goto   21
l_f1_23_while_body:
    jmp     l_f1_22_while_cond      #  63:     goto   22_while_cond
l_f1_21:
    call    dummyCHARfunc           #  65:     call   t24 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    movl    $71833, %eax            #  66:     if     71833 >= 91767 goto 27_if_true
    movl    $91767, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_27_if_true        
    jmp     l_f1_28_if_false        #  67:     goto   28_if_false
l_f1_27_if_true:
    jmp     l_f1_26                 #  69:     goto   26
l_f1_28_if_false:
l_f1_26:
    movl    $59383, %eax            #  72:     param  0 <- 59383
    pushl   %eax                   
    call    WriteInt                #  73:     call   WriteInt
    addl    $4, %esp               
l_f1_32_while_cond:
    jmp     l_f1_31                 #  75:     goto   31
    jmp     l_f1_32_while_cond      #  76:     goto   32_while_cond
l_f1_31:
    jmp     l_f1_5                  #  78:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $99, %eax               #  81:     if     99 > 100 goto 35_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_35_if_true        
    jmp     l_f1_36_if_false        #  82:     goto   36_if_false
l_f1_35_if_true:
    jmp     l_f1_40_if_false        #  84:     goto   40_if_false
    jmp     l_f1_38                 #  85:     goto   38
l_f1_40_if_false:
l_f1_38:
    movl    $8242, %eax             #  88:     div    t25 <- 8242, 7065
    movl    $7065, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  89:     mul    t26 <- t25, 1659
    movl    $1659, %ebx            
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  90:     mul    t27 <- t26, 78752
    movl    $78752, %ebx           
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  91:     mul    t28 <- t27, 53942
    movl    $53942, %ebx           
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  92:     param  0 <- t28
    pushl   %eax                   
    call    WriteInt                #  93:     call   WriteInt
    addl    $4, %esp               
    movl    $2, %eax                #  94:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  95:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  96:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    $51865, %eax            #  97:     mul    t30 <- 51865, t29
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  98:     add    t31 <- t30, 97673
    movl    $97673, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $3, %eax                #  99:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          # 100:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     # 101:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        # 102:     mul    t33 <- t31, t32
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        # 103:     add    t34 <- t33, 17174
    movl    $17174, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $4, %eax                # 104:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          # 105:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     # 106:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        # 107:     mul    t36 <- t34, t35
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        # 108:     add    t37 <- t36, 77656
    movl    $77656, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $5, %eax                # 109:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          # 110:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     # 111:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        # 112:     mul    t39 <- t37, t38
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        # 113:     add    t40 <- t39, 90841
    movl    $90841, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        # 114:     mul    t41 <- t40, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    12(%ebp), %eax          # 115:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    # 116:     call   t42 <- DOFS
    addl    $4, %esp               
    movl    %eax, -160(%ebp)       
    movl    -156(%ebp), %eax        # 117:     add    t43 <- t41, t42
    movl    -160(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -164(%ebp)       
    movl    12(%ebp), %eax          # 118:     add    t44 <- v1, t43
    movl    -164(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    $0, %eax                # 119:     assign @t44 <- 0
    movl    -168(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_34                 # 120:     goto   34
l_f1_36_if_false:
l_f1_34:

l_f1_exit:
    # epilogue
    addl    $180, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <ptr(4) to <array 28 of <array 25 of <array 65 of <array 69 of <array 87 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <ptr(4) to <array 28 of <array 25 of <array 65 of <array 69 of <array 87 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <ptr(4) to <array 28 of <array 25 of <array 65 of <array 69 of <array 87 of <bool>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <ptr(4) to <array 28 of <array 25 of <array 65 of <array 69 of <array 87 of <bool>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <ptr(4) to <array 28 of <array 25 of <array 65 of <array 69 of <array 87 of <bool>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <ptr(4) to <array 28 of <array 25 of <array 65 of <array 69 of <array 87 of <bool>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t31      <ptr(4) to <array 28 of <array 25 of <array 65 of <array 69 of <array 87 of <bool>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t32      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t33      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t34      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t4       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t5       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t6       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <char>>> %ebp-148 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -273136672(%ebp)  273136524  [ $v3       <array 28 of <array 25 of <array 65 of <array 69 of <array 87 of <bool>>>>>> %ebp-273136672 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $273136660, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $68284165, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-273136672(%ebp)     # local array 'v3': 5 dimensions
    movl    $28,-273136668(%ebp)    #   dimension 1: 28 elements
    movl    $25,-273136664(%ebp)    #   dimension 2: 25 elements
    movl    $65,-273136660(%ebp)    #   dimension 3: 65 elements
    movl    $69,-273136656(%ebp)    #   dimension 4: 69 elements
    movl    $87,-273136652(%ebp)    #   dimension 5: 87 elements

    # function body
    movl    $22190, %eax            #   0:     add    t1 <- 22190, 15040
    movl    $15040, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t2 <- t1, 72531
    movl    $72531, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   2:     param  2 <- t2
    pushl   %eax                   
    leal    -273136672(%ebp), %eax  #   3:     &()    t3 <- v3
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   4:     param  1 <- t3
    pushl   %eax                   
    movl    $40691, %eax            #   5:     add    t4 <- 40691, 85542
    movl    $85542, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #   6:     add    t5 <- t4, 52420
    movl    $52420, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    call    f0                      #   7:     call   t6 <- f0
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #   8:     sub    t7 <- t5, t6
    movl    -136(%ebp), %ebx       
    subl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #   9:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  10:     call   t8 <- f1
    addl    $12, %esp              
    movl    %eax, -144(%ebp)       
    leal    _str_1, %eax            #  11:     &()    t9 <- _str_1
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  12:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               
l_f2_3_while_cond:
    movl    $41450, %eax            #  15:     sub    t10 <- 41450, 18469
    movl    $18469, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t11 <- t10, 49642
    movl    $49642, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     add    t12 <- t11, 74029
    movl    $74029, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $74118, %eax            #  18:     if     74118 <= t12 goto 4_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_4_while_body      
    jmp     l_f2_2                  #  19:     goto   2
l_f2_4_while_body:
    leal    -273136672(%ebp), %eax  #  21:     &()    t13 <- v3
    movl    %eax, -32(%ebp)        
    movl    $2, %eax                #  22:     param  1 <- 2
    pushl   %eax                   
    leal    -273136672(%ebp), %eax  #  23:     &()    t14 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  25:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    $27630, %eax            #  26:     mul    t16 <- 27630, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  27:     add    t17 <- t16, 91371
    movl    $91371, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    leal    -273136672(%ebp), %eax  #  29:     &()    t18 <- v3
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  30:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  31:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  32:     mul    t20 <- t17, t19
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  33:     add    t21 <- t20, 86389
    movl    $86389, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    leal    -273136672(%ebp), %eax  #  35:     &()    t22 <- v3
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  36:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  37:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  38:     mul    t24 <- t21, t23
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  39:     add    t25 <- t24, 29222
    movl    $29222, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    leal    -273136672(%ebp), %eax  #  41:     &()    t26 <- v3
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  42:     param  0 <- t26
    pushl   %eax                   
    call    DIM                     #  43:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  44:     mul    t28 <- t25, t27
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  45:     add    t29 <- t28, 59817
    movl    $59817, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  46:     mul    t30 <- t29, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    leal    -273136672(%ebp), %eax  #  47:     &()    t31 <- v3
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  48:     param  0 <- t31
    pushl   %eax                   
    call    DOFS                    #  49:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -108(%ebp), %eax        #  50:     add    t33 <- t30, t32
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -32(%ebp), %eax         #  51:     add    t34 <- t13, t33
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $0, %eax                #  52:     assign @t34 <- 0
    movl    -124(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f2_3_while_cond       #  53:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $273136660, %esp        # remove locals
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
    movl    $99, %eax               #   2:     if     99 # 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    call    dummyBOOLfunc           #   8:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
