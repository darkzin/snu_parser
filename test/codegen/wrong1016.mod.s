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
    #   -140(%ebp)   4  [ $t37      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t38      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t39      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t4       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t40      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t41      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t42      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t43      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t44      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t45      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t46      <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t47      <int> %ebp-184 ]
    #   -188(%ebp)   4  [ $t48      <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t49      <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t5       <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t50      <int> %ebp-200 ]
    #   -204(%ebp)   4  [ $t6       <int> %ebp-204 ]
    #   -208(%ebp)   4  [ $t7       <int> %ebp-208 ]
    #   -212(%ebp)   4  [ $t8       <int> %ebp-212 ]
    #   -216(%ebp)   4  [ $t9       <int> %ebp-216 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 38 of <array 1 of <array 56 of <array 90 of <array 59 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 20 of <array 72 of <array 100 of <array 44 of <array 35 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 62 of <array 56 of <array 64 of <array 39 of <array 97 of <int>>>>>>> %ebp+16 ]
    #   -220(%ebp)   4  [ $v3       <int> %ebp-220 ]
    #   -221(%ebp)   1  [ $v4       <char> %ebp-221 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $212, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $53, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   4:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $54406, %eax            #   5:     mul    t2 <- 54406, t1
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   6:     add    t3 <- t2, 22695
    movl    $22695, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -108(%ebp), %eax        #  10:     mul    t5 <- t3, t4
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -196(%ebp)       
    movl    -196(%ebp), %eax        #  11:     add    t6 <- t5, 43715
    movl    $43715, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -204(%ebp)       
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -208(%ebp)       
    movl    -204(%ebp), %eax        #  15:     mul    t8 <- t6, t7
    movl    -208(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -212(%ebp)       
    movl    -212(%ebp), %eax        #  16:     add    t9 <- t8, 58264
    movl    $58264, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -216(%ebp)       
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -216(%ebp), %eax        #  20:     mul    t11 <- t9, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     add    t12 <- t11, 59559
    movl    $59559, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     mul    t13 <- t12, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t14 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  25:     add    t15 <- t13, t14
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t16 <- v1, t15
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $83783, %eax            #  27:     assign @t16 <- 83783
    movl    -48(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $2, %eax                #  28:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  30:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $62744, %eax            #  31:     mul    t18 <- 62744, t17
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  32:     add    t19 <- t18, 61197
    movl    $61197, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  35:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  36:     mul    t21 <- t19, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  37:     add    t22 <- t21, 89918
    movl    $89918, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  38:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  40:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  41:     mul    t24 <- t22, t23
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  42:     add    t25 <- t24, 95420
    movl    $95420, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  43:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  45:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  46:     mul    t27 <- t25, t26
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  47:     add    t28 <- t27, 6155
    movl    $6155, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  48:     mul    t29 <- t28, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    8(%ebp), %eax           #  49:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  50:     call   t30 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -104(%ebp), %eax        #  51:     add    t31 <- t29, t30
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    8(%ebp), %eax           #  52:     add    t32 <- v0, t31
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $98, %eax               #  53:     assign @t32 <- 98
    movl    -120(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $97730, %eax            #  54:     return 97730
    jmp     l_f0_exit              
    movl    $2, %eax                #  55:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  56:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  57:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    $61694, %eax            #  58:     mul    t34 <- 61694, t33
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  59:     add    t35 <- t34, 34574
    movl    $34574, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $3, %eax                #  60:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  61:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  62:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  63:     mul    t37 <- t35, t36
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  64:     add    t38 <- t37, 70417
    movl    $70417, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $4, %eax                #  65:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  66:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  67:     call   t39 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  68:     mul    t40 <- t38, t39
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  69:     add    t41 <- t40, 78214
    movl    $78214, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    $5, %eax                #  70:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  71:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  72:     call   t42 <- DIM
    addl    $8, %esp               
    movl    %eax, -164(%ebp)       
    movl    -160(%ebp), %eax        #  73:     mul    t43 <- t41, t42
    movl    -164(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #  74:     add    t44 <- t43, 78688
    movl    $78688, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #  75:     mul    t45 <- t44, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -176(%ebp)       
    movl    8(%ebp), %eax           #  76:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  77:     call   t46 <- DOFS
    addl    $4, %esp               
    movl    %eax, -180(%ebp)       
    movl    -176(%ebp), %eax        #  78:     add    t47 <- t45, t46
    movl    -180(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -184(%ebp)       
    movl    8(%ebp), %eax           #  79:     add    t48 <- v0, t47
    movl    -184(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -188(%ebp)       
    movl    $100, %eax              #  80:     assign @t48 <- 100
    movl    -188(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f0_1                  #  81:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $25427, %eax            #  84:     mul    t49 <- 25427, 62705
    movl    $62705, %ebx           
    imull   %ebx                   
    movl    %eax, -192(%ebp)       
    movl    -192(%ebp), %eax        #  85:     div    t50 <- t49, 97042
    movl    $97042, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -200(%ebp)       
    movl    -200(%ebp), %eax        #  86:     return t50
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $212, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 83 of <array 64 of <array 90 of <array 91 of <array 82 of <int>>>>>>> %ebp+16 ]

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
    movl    $97, %eax               #   0:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    movl    $33001, %eax            #   2:     param  0 <- 33001
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #   4:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 83 of <array 64 of <array 90 of <array 91 of <array 82 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 62 of <array 56 of <array 64 of <array 39 of <array 97 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 20 of <array 72 of <array 100 of <array 44 of <array 35 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 38 of <array 1 of <array 56 of <array 90 of <array 59 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 87 of <array 49 of <array 55 of <array 66 of <array 31 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 58 of <array 63 of <array 77 of <array 15 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 68 of <array 4 of <array 42 of <array 30 of <array 71 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 86 of <array 85 of <array 52 of <array 68 of <array 62 of <int>>>>>>> %ebp+20 ]
    #    -45(%ebp)   1  [ $v4       <bool> %ebp-45 ]
    #   -1384830024(%ebp)  1384829976  [ $v5       <array 83 of <array 64 of <array 90 of <array 91 of <array 82 of <int>>>>>> %ebp-1384830024 ]
    #   -1384830028(%ebp)   4  [ $v6       <int> %ebp-1384830028 ]
    #   -1396129732(%ebp)  11299704  [ $v7       <array 38 of <array 1 of <array 56 of <array 90 of <array 59 of <char>>>>>> %ebp-1396129732 ]
    #   2011797540(%ebp)  887040024  [ $v8       <array 20 of <array 72 of <array 100 of <array 44 of <array 35 of <int>>>>>> %ebp+2011797540 ]
    #   -1350653940(%ebp)  -932515816  [ $v9       <array 62 of <array 56 of <array 64 of <array 39 of <array 97 of <int>>>>>> %ebp-1350653940 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1350653928, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $337663482, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1384830024(%ebp)    # local array 'v5': 5 dimensions
    movl    $83,-1384830020(%ebp)   #   dimension 1: 83 elements
    movl    $64,-1384830016(%ebp)   #   dimension 2: 64 elements
    movl    $90,-1384830012(%ebp)   #   dimension 3: 90 elements
    movl    $91,-1384830008(%ebp)   #   dimension 4: 91 elements
    movl    $82,-1384830004(%ebp)   #   dimension 5: 82 elements
    movl    $5,-1396129732(%ebp)    # local array 'v7': 5 dimensions
    movl    $38,-1396129728(%ebp)   #   dimension 1: 38 elements
    movl    $1,-1396129724(%ebp)    #   dimension 2: 1 elements
    movl    $56,-1396129720(%ebp)   #   dimension 3: 56 elements
    movl    $90,-1396129716(%ebp)   #   dimension 4: 90 elements
    movl    $59,-1396129712(%ebp)   #   dimension 5: 59 elements
    movl    $5,2011797540(%ebp)     # local array 'v8': 5 dimensions
    movl    $20,2011797544(%ebp)    #   dimension 1: 20 elements
    movl    $72,2011797548(%ebp)    #   dimension 2: 72 elements
    movl    $100,2011797552(%ebp)   #   dimension 3: 100 elements
    movl    $44,2011797556(%ebp)    #   dimension 4: 44 elements
    movl    $35,2011797560(%ebp)    #   dimension 5: 35 elements
    movl    $5,-1350653940(%ebp)    # local array 'v9': 5 dimensions
    movl    $62,-1350653936(%ebp)   #   dimension 1: 62 elements
    movl    $56,-1350653932(%ebp)   #   dimension 2: 56 elements
    movl    $64,-1350653928(%ebp)   #   dimension 3: 64 elements
    movl    $39,-1350653924(%ebp)   #   dimension 4: 39 elements
    movl    $97,-1350653920(%ebp)   #   dimension 5: 97 elements

    # function body
    movl    $35537, %eax            #   0:     div    t0 <- 35537, 38659
    movl    $38659, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 9782
    movl    $9782, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t1
    jmp     l_f2_exit              
l_f2_2_while_cond:
    leal    -1384830024(%ebp), %eax #   4:     &()    t2 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  2 <- t2
    pushl   %eax                   
    movl    $98, %eax               #   6:     if     98 < 98 goto 5
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_5                 
    jmp     l_f2_6                  #   7:     goto   6
l_f2_5:
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_7                  #  10:     goto   7
l_f2_6:
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_f2_7:
    movzbl  -25(%ebp), %eax         #  14:     param  1 <- t3
    pushl   %eax                   
    movl    $0, %eax                #  15:     param  0 <- 0
    pushl   %eax                   
    call    f1                      #  16:     call   t4 <- f1
    addl    $12, %esp              
    movb    %al, -26(%ebp)         
    movl    $99, %eax               #  17:     if     99 >= t4 goto 3_while_body
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #  18:     goto   1
l_f2_3_while_body:
l_f2_10_while_cond:
    jmp     l_f2_10_while_cond      #  21:     goto   10_while_cond
    movl    $83196, %eax            #  22:     return 83196
    jmp     l_f2_exit              
    jmp     l_f2_13                 #  23:     goto   13
l_f2_13:
l_f2_17_while_cond:
    jmp     l_f2_17_while_cond      #  26:     goto   17_while_cond
    movl    $36016, %eax            #  27:     return 36016
    jmp     l_f2_exit              
    movl    $0, %eax                #  28:     assign v4 <- 0
    movb    %al, -45(%ebp)         
    movl    $99, %eax               #  29:     if     99 = 98 goto 22_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_22_if_true        
    jmp     l_f2_23_if_false        #  30:     goto   23_if_false
l_f2_22_if_true:
    jmp     l_f2_21                 #  32:     goto   21
l_f2_23_if_false:
l_f2_21:
    jmp     l_f2_27_if_false        #  35:     goto   27_if_false
    jmp     l_f2_25                 #  36:     goto   25
l_f2_27_if_false:
l_f2_25:
    jmp     l_f2_2_while_cond       #  39:     goto   2_while_cond
l_f2_1:
    movl    $99, %eax               #  41:     if     99 >= 97 goto 29_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_29_if_true        
    jmp     l_f2_30_if_false        #  42:     goto   30_if_false
l_f2_29_if_true:
    movl    $87796, %eax            #  44:     return 87796
    jmp     l_f2_exit              
    movl    $78778, %eax            #  45:     assign v6 <- 78778
    movl    %eax, -1384830028(%ebp)
    leal    -1350653940(%ebp), %eax #  46:     &()    t5 <- v9
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  47:     param  2 <- t5
    pushl   %eax                   
    leal    2011797540(%ebp), %eax  #  48:     &()    t6 <- v8
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  49:     param  1 <- t6
    pushl   %eax                   
    leal    -1396129732(%ebp), %eax #  50:     &()    t7 <- v7
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  51:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  52:     call   t8 <- f0
    addl    $12, %esp              
    movl    %eax, -44(%ebp)        
    jmp     l_f2_28                 #  53:     goto   28
l_f2_30_if_false:
l_f2_28:

l_f2_exit:
    # epilogue
    addl    $1350653928, %esp       # remove locals
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
l_test_1_while_cond:
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   2:     goto   5_while_cond
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
    jmp     l_test_exit            
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
