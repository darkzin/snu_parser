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
    #    -16(%ebp)   4  [ $t27      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t28      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t29      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t30      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t31      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t32      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t33      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t34      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t35      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t36      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t37      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t38      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t39      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t40      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t41      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t42      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t43      <char> %ebp-77 ]
    #    -78(%ebp)   1  [ $t44      <bool> %ebp-78 ]
    #    -84(%ebp)   4  [ $t45      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t46      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t47      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t48      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t49      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t50      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t51      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t52      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t53      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t54      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t55      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t56      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t57      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t58      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t59      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t60      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t61      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t62      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t63      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t64      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t65      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t66      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t67      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t68      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t69      <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t70      <int> %ebp-184 ]
    #   -188(%ebp)   4  [ $t71      <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t72      <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t73      <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t74      <int> %ebp-200 ]
    #   -204(%ebp)   4  [ $t75      <int> %ebp-204 ]
    #   -208(%ebp)   4  [ $t76      <int> %ebp-208 ]
    #   -212(%ebp)   4  [ $t77      <int> %ebp-212 ]
    #   -216(%ebp)   4  [ $t78      <int> %ebp-216 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 3 of <array 8 of <array 9 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 7 of <array 8 of <array 6 of <array 2 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $204, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $51, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $97, %eax               #   1:     if     97 = 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   5:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   6:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $92321, %eax            #   7:     mul    t28 <- 92321, t27
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t29 <- t28, 34791
    movl    $34791, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  12:     mul    t31 <- t29, t30
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     add    t32 <- t31, 52168
    movl    $52168, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  17:     mul    t34 <- t32, t33
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  18:     add    t35 <- t34, 3028
    movl    $3028, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t37 <- t35, t36
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     add    t38 <- t37, 21229
    movl    $21229, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  24:     mul    t39 <- t38, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  26:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  27:     add    t41 <- t39, t40
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  28:     add    t42 <- v2, t41
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $49988, %eax            #  29:     assign @t42 <- 49988
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  30:     call   t43 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    jmp     l_f0_1_while_cond       #  31:     goto   1_while_cond
l_f0_0:
l_f0_7_while_cond:
    movl    $97, %eax               #  34:     if     97 <= 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_8_while_body      
    jmp     l_f0_6                  #  35:     goto   6
l_f0_8_while_body:
    movl    $75952, %eax            #  37:     return 75952
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  38:     call   t44 <- dummyBOOLfunc
    movb    %al, -78(%ebp)         
    movl    $2, %eax                #  39:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  40:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  41:     call   t45 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $98493, %eax            #  42:     mul    t46 <- 98493, t45
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  43:     add    t47 <- t46, 6917
    movl    $6917, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  44:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  45:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  46:     call   t48 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  47:     mul    t49 <- t47, t48
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  48:     add    t50 <- t49, 48644
    movl    $48644, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $4, %eax                #  49:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  50:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  51:     call   t51 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  52:     mul    t52 <- t50, t51
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  53:     add    t53 <- t52, 30597
    movl    $30597, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $5, %eax                #  54:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  55:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  56:     call   t54 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  57:     mul    t55 <- t53, t54
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  58:     add    t56 <- t55, 78726
    movl    $78726, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  59:     mul    t57 <- t56, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    16(%ebp), %eax          #  60:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  61:     call   t58 <- DOFS
    addl    $4, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  62:     add    t59 <- t57, t58
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    16(%ebp), %eax          #  63:     add    t60 <- v2, t59
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $91623, %eax            #  64:     assign @t60 <- 91623
    movl    -144(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $100, %eax              #  65:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  66:     call   WriteChar
    addl    $4, %esp               
    movl    $2, %eax                #  67:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  68:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  69:     call   t61 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    $69089, %eax            #  70:     mul    t62 <- 69089, t61
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  71:     add    t63 <- t62, 6070
    movl    $6070, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $3, %eax                #  72:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  73:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  74:     call   t64 <- DIM
    addl    $8, %esp               
    movl    %eax, -160(%ebp)       
    movl    -156(%ebp), %eax        #  75:     mul    t65 <- t63, t64
    movl    -160(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  76:     add    t66 <- t65, 7137
    movl    $7137, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    $4, %eax                #  77:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  78:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  79:     call   t67 <- DIM
    addl    $8, %esp               
    movl    %eax, -172(%ebp)       
    movl    -168(%ebp), %eax        #  80:     mul    t68 <- t66, t67
    movl    -172(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -176(%ebp)       
    movl    -176(%ebp), %eax        #  81:     add    t69 <- t68, 93457
    movl    $93457, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -180(%ebp)       
    movl    $5, %eax                #  82:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  83:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  84:     call   t70 <- DIM
    addl    $8, %esp               
    movl    %eax, -184(%ebp)       
    movl    -180(%ebp), %eax        #  85:     mul    t71 <- t69, t70
    movl    -184(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -188(%ebp)       
    movl    -188(%ebp), %eax        #  86:     add    t72 <- t71, 39683
    movl    $39683, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -192(%ebp)       
    movl    -192(%ebp), %eax        #  87:     mul    t73 <- t72, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -196(%ebp)       
    movl    16(%ebp), %eax          #  88:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  89:     call   t74 <- DOFS
    addl    $4, %esp               
    movl    %eax, -200(%ebp)       
    movl    -196(%ebp), %eax        #  90:     add    t75 <- t73, t74
    movl    -200(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -204(%ebp)       
    movl    16(%ebp), %eax          #  91:     add    t76 <- v2, t75
    movl    -204(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -208(%ebp)       
    movl    $89375, %eax            #  92:     assign @t76 <- 89375
    movl    -208(%ebp), %edi       
    movl    %eax, (%edi)           
l_f0_16_while_cond:
    jmp     l_f0_15                 #  94:     goto   15
    jmp     l_f0_16_while_cond      #  95:     goto   16_while_cond
l_f0_15:
    movl    $83367, %eax            #  97:     param  0 <- 83367
    pushl   %eax                   
    call    WriteInt                #  98:     call   WriteInt
    addl    $4, %esp               
l_f0_20_while_cond:
    movl    $98, %eax               # 100:     if     98 >= 98 goto 21_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_21_while_body     
    jmp     l_f0_19                 # 101:     goto   19
l_f0_21_while_body:
    jmp     l_f0_20_while_cond      # 103:     goto   20_while_cond
l_f0_19:
    jmp     l_f0_7_while_cond       # 105:     goto   7_while_cond
l_f0_6:
    movl    $44153, %eax            # 107:     add    t77 <- 44153, 9772
    movl    $9772, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -212(%ebp)       
    movl    -212(%ebp), %eax        # 108:     sub    t78 <- t77, 26231
    movl    $26231, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -216(%ebp)       
    movl    -216(%ebp), %eax        # 109:     assign v3 <- t78
    movl    %eax, 20(%ebp)         

l_f0_exit:
    # epilogue
    addl    $204, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t27      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t28      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t29      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t30      <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 6 of <array 6 of <array 6 of <array 1 of <bool>>>>>>> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t27 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $79688, %eax            #   1:     mul    t28 <- 79688, 63938
    movl    $63938, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t29 <- t28, 70076
    movl    $70076, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t29
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   4:     call   t30 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t27      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t28      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t29      <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 10 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 1 of <array 5 of <array 3 of <array 8 of <int>>>>>>> %ebp+12 ]

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
    movl    $100, %eax              #   0:     if     100 < 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t27 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t27 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     return t27
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   9:     call   t28 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  10:     if     98 <= 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  11:     goto   8_if_false
l_f2_7_if_true:
    call    dummyBOOLfunc           #  13:     call   t29 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f2_6                  #  14:     goto   6
l_f2_8_if_false:
l_f2_6:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 2 of <array 1 of <array 5 of <array 3 of <array 8 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 10 of <array 3 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 10 of <array 2 of <array 9 of <array 10 of <array 3 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 10 of <array 2 of <array 9 of <array 10 of <array 3 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <ptr(4) to <array 10 of <array 2 of <array 9 of <array 10 of <array 3 of <char>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t2       <bool> %ebp-61 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 10 of <array 2 of <array 9 of <array 10 of <array 3 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 10 of <array 3 of <char>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t4       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t5       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t6       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 10 of <array 3 of <char>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t7       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <int> %ebp-120 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $108, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $27, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    jmp     l_test_exit            
    leal    v1, %eax                #   2:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  1 <- t0
    pushl   %eax                   
    leal    v0, %eax                #   4:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #   6:     call   t2 <- f2
    addl    $8, %esp               
    movb    %al, -61(%ebp)         
    leal    v0, %eax                #   7:     &()    t3 <- v0
    movl    %eax, -96(%ebp)        
    movl    $8515, %eax             #   8:     div    t4 <- 8515, 9559
    movl    $9559, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   9:     div    t5 <- t4, 96246
    movl    $96246, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  11:     &()    t6 <- v0
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  12:     param  0 <- t6
    pushl   %eax                   
    call    DIM                     #  13:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -104(%ebp), %eax        #  14:     mul    t8 <- t5, t7
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  15:     add    t9 <- t8, 91373
    movl    $91373, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  17:     &()    t10 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  19:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -120(%ebp), %eax        #  20:     mul    t12 <- t9, t11
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t13 <- t12, 51904
    movl    $51904, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  23:     &()    t14 <- v0
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  25:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  26:     mul    t16 <- t13, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  27:     add    t17 <- t16, 14521
    movl    $14521, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  29:     &()    t18 <- v0
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  30:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  31:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  32:     mul    t20 <- t17, t19
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  33:     add    t21 <- t20, 22938
    movl    $22938, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  34:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    leal    v0, %eax                #  35:     &()    t23 <- v0
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  36:     param  0 <- t23
    pushl   %eax                   
    call    DOFS                    #  37:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  38:     add    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -96(%ebp), %eax         #  39:     add    t26 <- t3, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $97, %eax               #  40:     assign @t26 <- 97
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            

l_test_exit:
    # epilogue
    addl    $108, %esp              # remove locals
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
v0:                                 # <array 10 of <array 2 of <array 9 of <array 10 of <array 3 of <char>>>>>>
    .long    5
    .long   10
    .long    2
    .long    9
    .long   10
    .long    3
    .skip 5400
v1:                                 # <array 2 of <array 1 of <array 5 of <array 3 of <array 8 of <int>>>>>>
    .long    5
    .long    2
    .long    1
    .long    5
    .long    3
    .long    8
    .skip  960
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
