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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
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
    #   -128(%ebp)   4  [ $t38      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t39      <int> %ebp-132 ]
    #   -133(%ebp)   1  [ $t4       <char> %ebp-133 ]
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
    #   -184(%ebp)   4  [ $t6       <int> %ebp-184 ]
    #   -188(%ebp)   4  [ $t7       <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t8       <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t9       <int> %ebp-196 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 3 of <array 8 of <array 2 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 2 of <array 2 of <array 3 of <array 10 of <char>>>>>>> %ebp+20 ]
    #   -197(%ebp)   1  [ $v5       <bool> %ebp-197 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $188, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $47, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -133(%ebp)        
    movl    $100, %eax              #   2:     if     100 >= t4 goto 2_while_body
    movzbl  -133(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    call    dummyINTfunc            #   5:     call   t5 <- dummyINTfunc
    movl    %eax, -180(%ebp)       
l_f0_6_while_cond:
    movl    $97, %eax               #   7:     if     97 > 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_7_while_body      
    jmp     l_f0_5                  #   8:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  10:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
l_f0_0:
    movl    $98334, %eax            #  14:     sub    t6 <- 98334, 36625
    movl    $36625, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -184(%ebp)       
    movl    -184(%ebp), %eax        #  15:     add    t7 <- t6, 38848
    movl    $38848, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -188(%ebp)       
    movl    -188(%ebp), %eax        #  16:     add    t8 <- t7, 26647
    movl    $26647, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -192(%ebp)       
    movl    -192(%ebp), %eax        #  17:     add    t9 <- t8, 99839
    movl    $99839, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -196(%ebp)       
    movl    -196(%ebp), %eax        #  18:     if     t9 < 28343 goto 10
    movl    $28343, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_10                
    jmp     l_f0_11                 #  19:     goto   11
l_f0_10:
    movl    $1, %eax                #  21:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_12                 #  22:     goto   12
l_f0_11:
    movl    $0, %eax                #  24:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_12:
    movl    $2, %eax                #  26:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $43262, %eax            #  29:     mul    t12 <- 43262, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $29083, %eax            #  30:     sub    t13 <- 29083, 87526
    movl    $87526, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  31:     sub    t14 <- t13, 78134
    movl    $78134, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     sub    t15 <- t14, 83302
    movl    $83302, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     add    t16 <- t15, 15965
    movl    $15965, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -24(%ebp), %eax         #  34:     add    t17 <- t12, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  35:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  38:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  39:     add    t20 <- t19, 87543
    movl    $87543, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  40:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  41:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  42:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  43:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  44:     add    t23 <- t22, 99161
    movl    $99161, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  45:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  46:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  47:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  48:     mul    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  49:     add    t26 <- t25, 58517
    movl    $58517, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  50:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    12(%ebp), %eax          #  51:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  52:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  53:     add    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    12(%ebp), %eax          #  54:     add    t30 <- v2, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movzbl  -13(%ebp), %eax         #  55:     assign @t30 <- t10
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $61434, %eax            #  56:     sub    t31 <- 61434, 76437
    movl    $76437, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  57:     sub    t32 <- t31, 27751
    movl    $27751, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $2, %eax                #  58:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  59:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  60:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  61:     mul    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    call    dummyINTfunc            #  62:     call   t35 <- dummyINTfunc
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  63:     add    t36 <- t34, t35
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $3, %eax                #  64:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  65:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  66:     call   t37 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  67:     mul    t38 <- t36, t37
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  68:     add    t39 <- t38, 89552
    movl    $89552, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $4, %eax                #  69:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  70:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  71:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -132(%ebp), %eax        #  72:     mul    t41 <- t39, t40
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  73:     add    t42 <- t41, 21561
    movl    $21561, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $5, %eax                #  74:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  75:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  76:     call   t43 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #  77:     mul    t44 <- t42, t43
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  78:     add    t45 <- t44, 28488
    movl    $28488, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  79:     mul    t46 <- t45, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    12(%ebp), %eax          #  80:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  81:     call   t47 <- DOFS
    addl    $4, %esp               
    movl    %eax, -168(%ebp)       
    movl    -164(%ebp), %eax        #  82:     add    t48 <- t46, t47
    movl    -168(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    12(%ebp), %eax          #  83:     add    t49 <- v2, t48
    movl    -172(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -176(%ebp)       
    movl    $1, %eax                #  84:     assign @t49 <- 1
    movl    -176(%ebp), %edi       
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $188, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 10 of <array 5 of <array 8 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 7 of <array 2 of <array 9 of <array 1 of <char>>>>>>> %ebp+12 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
    movl    $14167, %eax            #   0:     if     14167 < 50426 goto 1
    movl    $50426, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v3 <- t4
    movb    %al, -21(%ebp)         
    leal    _str_1, %eax            #   9:     &()    t5 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #  11:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_9                  #  12:     goto   9
l_f1_9:
    movl    $98, %eax               #  14:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_6                  #  15:     goto   6
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 8 of <array 10 of <array 4 of <array 1 of <char>>>>>>> %ebp+8 ]
    #    -36(%ebp)   4  [ $v2       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v3       <bool> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $85245, %eax            #   0:     assign v2 <- 85245
    movl    %eax, -36(%ebp)        
    jmp     l_f2_2                  #   1:     goto   2
l_f2_2:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_4                  #   4:     goto   4
    movl    $0, %eax                #   5:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_4:
    movzbl  -13(%ebp), %eax         #   7:     assign v3 <- t4
    movb    %al, -37(%ebp)         
l_f2_7_while_cond:
    movl    $960, %eax              #   9:     div    t5 <- 960, 6179
    movl    $6179, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     mul    t6 <- t5, 54282
    movl    $54282, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     add    t7 <- t6, 43342
    movl    $43342, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     add    t8 <- t7, 70740
    movl    $70740, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     if     t8 > 15953 goto 8_while_body
    movl    $15953, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_8_while_body      
    jmp     l_f2_6                  #  14:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  16:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    movl    $32891, %eax            #   0:     mul    t0 <- 32891, 97449
    movl    $97449, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 46390
    movl    $46390, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t2 <- t1, 49140
    movl    $49140, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v0 <- t2
    movl    %eax, v0               
l_test_2_while_cond:
    movl    $97, %eax               #   5:     if     97 >= 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
    jmp     l_test_1                #   6:     goto   1
l_test_3_while_body:
    jmp     l_test_5                #   8:     goto   5
l_test_5:
    movl    $98, %eax               #  10:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_exit            
l_test_11_while_cond:
    movl    $24412, %eax            #  13:     if     24412 = 858 goto 12_while_body
    movl    $858, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_12_while_body   
    jmp     l_test_10               #  14:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  16:     goto   11_while_cond
l_test_10:
    jmp     l_test_2_while_cond     #  18:     goto   2_while_cond
l_test_1:
    movl    $98, %eax               #  20:     assign v1 <- 98
    movb    %al, v1                
    call    ReadInt                 #  21:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
