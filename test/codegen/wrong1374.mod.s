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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    call    ReadInt                 #   0:     call   t8 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t9 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #   2:     if     100 = t9 goto 2_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyProcedure          #   8:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t8
    jmp     l_f1_exit              
    movl    $97, %eax               #   2:     return 97
    jmp     l_f1_exit              
l_f1_3_while_cond:
    call    ReadInt                 #   4:     call   t9 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f1_8_if_false         #   5:     goto   8_if_false
    jmp     l_f1_6                  #   6:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_3_while_cond       #   9:     goto   3_while_cond

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
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
    #    -69(%ebp)   1  [ $t24      <char> %ebp-69 ]
    #    -70(%ebp)   1  [ $t25      <bool> %ebp-70 ]
    #    -71(%ebp)   1  [ $t26      <bool> %ebp-71 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t28      <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t29      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t30      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t31      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t32      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t33      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t34      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t35      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t36      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t37      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t38      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t39      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t40      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t41      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t42      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t43      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t44      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t45      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t8       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t9       <int> %ebp-156 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 56 of <array 56 of <array 73 of <array 58 of <array 53 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 73 of <array 82 of <array 29 of <array 30 of <array 32 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 19 of <array 85 of <array 12 of <array 87 of <array 90 of <bool>>>>>>> %ebp+20 ]
    #   -157(%ebp)   1  [ $v5       <char> %ebp-157 ]

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
    movl    $98, %eax               #   0:     if     98 >= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   4:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   5:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    $57012, %eax            #   6:     mul    t9 <- 57012, t8
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #   7:     add    t10 <- t9, 96399
    movl    $96399, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  11:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t13 <- t12, 23501
    movl    $23501, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  16:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     add    t16 <- t15, 90717
    movl    $90717, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  21:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     add    t19 <- t18, 87985
    movl    $87985, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  23:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  25:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  26:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  27:     add    t23 <- v1, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $98, %eax               #  28:     assign @t23 <- 98
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #  30:     goto   6_while_cond
    jmp     l_f2_0                  #  31:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  34:     call   t24 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movl    $58059, %eax            #  35:     if     58059 <= 11384 goto 13
    movl    $11384, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_13                
    jmp     l_f2_14                 #  36:     goto   14
l_f2_13:
    movl    $1, %eax                #  38:     assign t25 <- 1
    movb    %al, -70(%ebp)         
    jmp     l_f2_15                 #  39:     goto   15
l_f2_14:
    movl    $0, %eax                #  41:     assign t25 <- 0
    movb    %al, -70(%ebp)         
l_f2_15:
    movzbl  -70(%ebp), %eax         #  43:     assign v3 <- t25
    movb    %al, 16(%ebp)          
    movl    $20865, %eax            #  44:     if     20865 = 3323 goto 18_if_true
    movl    $3323, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  45:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  47:     goto   17
l_f2_19_if_false:
l_f2_17:
    movl    $88456, %eax            #  50:     if     88456 = 66128 goto 22_if_true
    movl    $66128, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_22_if_true        
    jmp     l_f2_23_if_false        #  51:     goto   23_if_false
l_f2_22_if_true:
    jmp     l_f2_21                 #  53:     goto   21
l_f2_23_if_false:
l_f2_21:
l_f2_26_while_cond:
    movl    $1, %eax                #  57:     if     1 # 1 goto 27_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_27_while_body     
    jmp     l_f2_25                 #  58:     goto   25
l_f2_27_while_body:
    jmp     l_f2_26_while_cond      #  60:     goto   26_while_cond
l_f2_25:
    movl    $0, %eax                #  62:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  63:     call   t26 <- f0
    addl    $4, %esp               
    movb    %al, -71(%ebp)         
    jmp     l_f2_8                  #  64:     goto   8
l_f2_8:
    movl    $3292, %eax             #  66:     add    t27 <- 3292, 75328
    movl    $75328, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  67:     if     t27 <= 66413 goto 31
    movl    $66413, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_31                
    jmp     l_f2_32                 #  68:     goto   32
l_f2_31:
    movl    $1, %eax                #  70:     assign t28 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f2_33                 #  71:     goto   33
l_f2_32:
    movl    $0, %eax                #  73:     assign t28 <- 0
    movb    %al, -77(%ebp)         
l_f2_33:
    movl    $2, %eax                #  75:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  76:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  77:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $15556, %eax            #  78:     mul    t30 <- 15556, t29
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  79:     add    t31 <- t30, 29564
    movl    $29564, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  80:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  81:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  82:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  83:     mul    t33 <- t31, t32
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  84:     add    t34 <- t33, 6434
    movl    $6434, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $4, %eax                #  85:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  86:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  87:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  88:     mul    t36 <- t34, t35
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  89:     add    t37 <- t36, 9014
    movl    $9014, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $5, %eax                #  90:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  91:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  92:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  93:     mul    t39 <- t37, t38
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    $88426, %eax            #  94:     add    t40 <- 88426, 72469
    movl    $72469, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  95:     add    t41 <- t39, t40
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  96:     mul    t42 <- t41, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    20(%ebp), %eax          #  97:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  98:     call   t43 <- DOFS
    addl    $4, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  99:     add    t44 <- t42, t43
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    20(%ebp), %eax          # 100:     add    t45 <- v4, t44
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movzbl  -77(%ebp), %eax         # 101:     assign @t45 <- t28
    movl    -148(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $148, %esp              # remove locals
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
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 19 of <array 85 of <array 12 of <array 87 of <array 90 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 73 of <array 82 of <array 29 of <array 30 of <array 32 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 56 of <array 56 of <array 73 of <array 58 of <array 53 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $1, %eax                #   0:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_2                #   1:     goto   2
l_test_2:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   4:     goto   4
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   7:     assign v0 <- t0
    movb    %al, v0                
l_test_8_while_cond:
    movl    $72100, %eax            #   9:     div    t1 <- 72100, 94137
    movl    $94137, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     div    t2 <- t1, 71545
    movl    $71545, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     div    t3 <- t2, 60190
    movl    $60190, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     if     t3 > 94168 goto 9_while_body
    movl    $94168, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_9_while_body    
    jmp     l_test_7                #  13:     goto   7
l_test_9_while_body:
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  16:     goto   12_while_cond
    jmp     l_test_8_while_cond     #  17:     goto   8_while_cond
l_test_7:
    jmp     l_test_exit            
    jmp     l_test_exit            
    leal    v4, %eax                #  21:     &()    t4 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     param  3 <- t4
    pushl   %eax                   
    movl    $1, %eax                #  23:     param  2 <- 1
    pushl   %eax                   
    leal    v3, %eax                #  24:     &()    t5 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     param  1 <- t5
    pushl   %eax                   
    leal    v2, %eax                #  26:     &()    t6 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  27:     param  0 <- t6
    pushl   %eax                   
    call    f2                      #  28:     call   t7 <- f2
    addl    $16, %esp              
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     assign v1 <- t7
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 56 of <array 56 of <array 73 of <array 58 of <array 53 of <char>>>>>>
    .long    5
    .long   56
    .long   56
    .long   73
    .long   58
    .long   53
    .skip 703724672
v3:                                 # <array 73 of <array 82 of <array 29 of <array 30 of <array 32 of <int>>>>>>
    .long    5
    .long   73
    .long   82
    .long   29
    .long   30
    .long   32
    .skip 666600960
v4:                                 # <array 19 of <array 85 of <array 12 of <array 87 of <array 90 of <bool>>>>>>
    .long    5
    .long   19
    .long   85
    .long   12
    .long   87
    .long   90
    .skip 151745400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
