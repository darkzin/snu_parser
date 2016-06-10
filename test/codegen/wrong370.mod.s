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
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t20      <char> %ebp-53 ]
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
    #   -128(%ebp)   4  [ $t38      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t39      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t4       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t40      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t41      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t42      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t43      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t44      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t45      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t46      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t47      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t48      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t49      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t5       <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t50      <int> %ebp-184 ]
    #   -188(%ebp)   4  [ $t51      <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t52      <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t6       <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t7       <int> %ebp-200 ]
    #   -204(%ebp)   4  [ $t8       <int> %ebp-204 ]
    #   -208(%ebp)   4  [ $t9       <int> %ebp-208 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 5 of <array 10 of <array 1 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 2 of <array 9 of <array 2 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 3 of <array 5 of <array 10 of <array 2 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 8 of <array 3 of <array 4 of <array 9 of <int>>>>>>> %ebp+20 ]
    #   -212(%ebp)   4  [ $v4       <int> %ebp-212 ]
    #   -213(%ebp)   1  [ $v5       <bool> %ebp-213 ]
    #   -214(%ebp)   1  [ $v6       <char> %ebp-214 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_1_if_true          #   1:     goto   1_if_true
l_f0_1_if_true:
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   4:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   5:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    $95202, %eax            #   6:     mul    t5 <- 95202, t4
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        #   7:     add    t6 <- t5, 14576
    movl    $14576, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -196(%ebp)       
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -200(%ebp)       
    movl    -196(%ebp), %eax        #  11:     mul    t8 <- t6, t7
    movl    -200(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -204(%ebp)       
    movl    -204(%ebp), %eax        #  12:     add    t9 <- t8, 60270
    movl    $60270, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -208(%ebp)       
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -208(%ebp), %eax        #  16:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t12 <- t11, 37581
    movl    $37581, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  21:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     add    t15 <- t14, 12728
    movl    $12728, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     mul    t16 <- t15, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  25:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  26:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  27:     add    t19 <- v3, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $99730, %eax            #  28:     assign @t19 <- 99730
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_0                  #  29:     goto   0
l_f0_0:
l_f0_8_while_cond:
    movl    $99, %eax               #  32:     if     99 # 99 goto 9_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_9_while_body      
    jmp     l_f0_7                  #  33:     goto   7
l_f0_9_while_body:
    call    dummyCHARfunc           #  35:     call   t20 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movl    $2, %eax                #  36:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  37:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  38:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $34344, %eax            #  39:     mul    t22 <- 34344, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  40:     add    t23 <- t22, 34681
    movl    $34681, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  41:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  42:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  43:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  44:     mul    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  45:     add    t26 <- t25, 80023
    movl    $80023, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  46:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  47:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  48:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  49:     mul    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  50:     add    t29 <- t28, 76954
    movl    $76954, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $5, %eax                #  51:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  52:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  53:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  54:     mul    t31 <- t29, t30
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  55:     add    t32 <- t31, 65442
    movl    $65442, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  56:     mul    t33 <- t32, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    8(%ebp), %eax           #  57:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  58:     call   t34 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  59:     add    t35 <- t33, t34
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    8(%ebp), %eax           #  60:     add    t36 <- v0, t35
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $0, %eax                #  61:     assign @t36 <- 0
    movl    -120(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $2, %eax                #  62:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  63:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  64:     call   t37 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    $71372, %eax            #  65:     mul    t38 <- 71372, t37
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  66:     add    t39 <- t38, 55951
    movl    $55951, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $3, %eax                #  67:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  68:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  69:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -132(%ebp), %eax        #  70:     mul    t41 <- t39, t40
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  71:     add    t42 <- t41, 12139
    movl    $12139, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $4, %eax                #  72:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  73:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  74:     call   t43 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #  75:     mul    t44 <- t42, t43
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  76:     add    t45 <- t44, 30746
    movl    $30746, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    $5, %eax                #  77:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  78:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  79:     call   t46 <- DIM
    addl    $8, %esp               
    movl    %eax, -164(%ebp)       
    movl    -160(%ebp), %eax        #  80:     mul    t47 <- t45, t46
    movl    -164(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #  81:     add    t48 <- t47, 74323
    movl    $74323, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #  82:     mul    t49 <- t48, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -176(%ebp)       
    movl    16(%ebp), %eax          #  83:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  84:     call   t50 <- DOFS
    addl    $4, %esp               
    movl    %eax, -184(%ebp)       
    movl    -176(%ebp), %eax        #  85:     add    t51 <- t49, t50
    movl    -184(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -188(%ebp)       
    movl    16(%ebp), %eax          #  86:     add    t52 <- v2, t51
    movl    -188(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -192(%ebp)       
    movl    $94437, %eax            #  87:     assign @t52 <- 94437
    movl    -192(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_f0_8_while_cond       #  88:     goto   8_while_cond
l_f0_7:
    movl    $98, %eax               #  90:     assign v6 <- 98
    movb    %al, -214(%ebp)        

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 8 of <array 7 of <array 9 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
    movl    $99, %eax               #   0:     assign v3 <- 99
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t4
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   3:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     return t5
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 2 of <array 5 of <array 10 of <array 1 of <array 3 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 2 of <array 5 of <array 10 of <array 1 of <array 3 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <ptr(4) to <array 2 of <array 5 of <array 10 of <array 1 of <array 3 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <ptr(4) to <array 2 of <array 5 of <array 10 of <array 1 of <array 3 of <bool>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <ptr(4) to <array 2 of <array 5 of <array 10 of <array 1 of <array 3 of <bool>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <ptr(4) to <array 2 of <array 5 of <array 10 of <array 1 of <array 3 of <bool>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 8 of <array 3 of <array 4 of <array 9 of <int>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 3 of <array 5 of <array 10 of <array 2 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 2 of <array 9 of <array 2 of <array 6 of <int>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t7       <ptr(4) to <array 2 of <array 5 of <array 10 of <array 1 of <array 3 of <bool>>>>>>> %ebp-116 ]
    #   -117(%ebp)   1  [ $t8       <bool> %ebp-117 ]
    #   -118(%ebp)   1  [ $t9       <bool> %ebp-118 ]
    #   -444(%ebp)  324  [ $v0       <array 2 of <array 5 of <array 10 of <array 1 of <array 3 of <bool>>>>>> %ebp-444 ]
    #   -2196(%ebp)  1752  [ $v1       <array 2 of <array 2 of <array 9 of <array 2 of <array 6 of <int>>>>>> %ebp-2196 ]
    #   -3420(%ebp)  1224  [ $v2       <array 1 of <array 3 of <array 5 of <array 10 of <array 2 of <int>>>>>> %ebp-3420 ]
    #   -10356(%ebp)  6936  [ $v3       <array 2 of <array 8 of <array 3 of <array 4 of <array 9 of <int>>>>>> %ebp-10356 ]
    #   -10357(%ebp)   1  [ $v4       <bool> %ebp-10357 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $10348, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2587, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-444(%ebp)           # local array 'v0': 5 dimensions
    movl    $2,-440(%ebp)           #   dimension 1: 2 elements
    movl    $5,-436(%ebp)           #   dimension 2: 5 elements
    movl    $10,-432(%ebp)          #   dimension 3: 10 elements
    movl    $1,-428(%ebp)           #   dimension 4: 1 elements
    movl    $3,-424(%ebp)           #   dimension 5: 3 elements
    movl    $5,-2196(%ebp)          # local array 'v1': 5 dimensions
    movl    $2,-2192(%ebp)          #   dimension 1: 2 elements
    movl    $2,-2188(%ebp)          #   dimension 2: 2 elements
    movl    $9,-2184(%ebp)          #   dimension 3: 9 elements
    movl    $2,-2180(%ebp)          #   dimension 4: 2 elements
    movl    $6,-2176(%ebp)          #   dimension 5: 6 elements
    movl    $5,-3420(%ebp)          # local array 'v2': 5 dimensions
    movl    $1,-3416(%ebp)          #   dimension 1: 1 elements
    movl    $3,-3412(%ebp)          #   dimension 2: 3 elements
    movl    $5,-3408(%ebp)          #   dimension 3: 5 elements
    movl    $10,-3404(%ebp)         #   dimension 4: 10 elements
    movl    $2,-3400(%ebp)          #   dimension 5: 2 elements
    movl    $5,-10356(%ebp)         # local array 'v3': 5 dimensions
    movl    $2,-10352(%ebp)         #   dimension 1: 2 elements
    movl    $8,-10348(%ebp)         #   dimension 2: 8 elements
    movl    $3,-10344(%ebp)         #   dimension 3: 3 elements
    movl    $4,-10340(%ebp)         #   dimension 4: 4 elements
    movl    $9,-10336(%ebp)         #   dimension 5: 9 elements

    # function body
    leal    -10356(%ebp), %eax      #   0:     &()    t4 <- v3
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   1:     param  3 <- t4
    pushl   %eax                   
    leal    -3420(%ebp), %eax       #   2:     &()    t5 <- v2
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   3:     param  2 <- t5
    pushl   %eax                   
    leal    -2196(%ebp), %eax       #   4:     &()    t6 <- v1
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   5:     param  1 <- t6
    pushl   %eax                   
    leal    -444(%ebp), %eax        #   6:     &()    t7 <- v0
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #   7:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #   8:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -117(%ebp)        
    jmp     l_f2_3_if_false         #   9:     goto   3_if_false
    jmp     l_f2_3_if_false         #  10:     goto   3_if_false
    jmp     l_f2_3_if_false         #  11:     goto   3_if_false
l_f2_13_while_cond:
    jmp     l_f2_12                 #  13:     goto   12
    jmp     l_f2_13_while_cond      #  14:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_1                  #  16:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $0, %eax                #  19:     if     0 # 0 goto 16
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_16                
    jmp     l_f2_17                 #  20:     goto   17
l_f2_16:
    movl    $1, %eax                #  22:     assign t9 <- 1
    movb    %al, -118(%ebp)        
    jmp     l_f2_18                 #  23:     goto   18
l_f2_17:
    movl    $0, %eax                #  25:     assign t9 <- 0
    movb    %al, -118(%ebp)        
l_f2_18:
    leal    -444(%ebp), %eax        #  27:     &()    t10 <- v0
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  28:     param  1 <- 2
    pushl   %eax                   
    leal    -444(%ebp), %eax        #  29:     &()    t11 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  31:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $86319, %eax            #  32:     mul    t13 <- 86319, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     add    t14 <- t13, 81647
    movl    $81647, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  34:     param  1 <- 3
    pushl   %eax                   
    leal    -444(%ebp), %eax        #  35:     &()    t15 <- v0
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  36:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  37:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  38:     mul    t17 <- t14, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  39:     add    t18 <- t17, 65403
    movl    $65403, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  40:     param  1 <- 4
    pushl   %eax                   
    leal    -444(%ebp), %eax        #  41:     &()    t19 <- v0
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  42:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  43:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  44:     mul    t21 <- t18, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  45:     add    t22 <- t21, 41057
    movl    $41057, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  46:     param  1 <- 5
    pushl   %eax                   
    leal    -444(%ebp), %eax        #  47:     &()    t23 <- v0
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  48:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  49:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -64(%ebp), %eax         #  50:     mul    t25 <- t22, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  51:     add    t26 <- t25, 25495
    movl    $25495, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  52:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    leal    -444(%ebp), %eax        #  53:     &()    t28 <- v0
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  54:     param  0 <- t28
    pushl   %eax                   
    call    DOFS                    #  55:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  56:     add    t30 <- t27, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -16(%ebp), %eax         #  57:     add    t31 <- t10, t30
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movzbl  -118(%ebp), %eax        #  58:     assign @t31 <- t9
    movl    -100(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $10348, %esp            # remove locals
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
    movl    $88725, %eax            #   0:     div    t0 <- 88725, 33804
    movl    $33804, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 25341
    movl    $25341, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 30931
    movl    $30931, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     mul    t3 <- t2, 59205
    movl    $59205, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     if     t3 <= 29103 goto 1_if_true
    movl    $29103, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   5:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   7:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_6_if_false       #  10:     goto   6_if_false
    movl    $98, %eax               #  11:     if     98 = 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_8_if_true       
    jmp     l_test_9_if_false       #  12:     goto   9_if_false
l_test_8_if_true:
    movl    $38786, %eax            #  14:     assign v0 <- 38786
    movl    %eax, v0               
    jmp     l_test_7                #  15:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_4                #  18:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_exit            
    movl    $26159, %eax            #  22:     assign v0 <- 26159
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
