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
    #    -49(%ebp)   1  [ $t19      <char> %ebp-49 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 39 of <array 31 of <array 65 of <array 73 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 76 of <array 54 of <array 79 of <array 85 of <array 44 of <bool>>>>>>> %ebp+12 ]
    #    -85(%ebp)   1  [ $v2       <char> %ebp-85 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   1:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   2:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $86655, %eax            #   3:     mul    t3 <- 86655, t2
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   4:     add    t4 <- t3, 32444
    movl    $32444, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   6:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   7:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #   8:     mul    t6 <- t4, t5
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   9:     add    t7 <- t6, 93572
    movl    $93572, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  10:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  12:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  13:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  14:     add    t10 <- t9, 13586
    movl    $13586, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $5, %eax                #  15:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  18:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t13 <- t12, 21914
    movl    $21914, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  22:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  23:     add    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  24:     add    t17 <- v0, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $100, %eax              #  25:     assign @t17 <- 100
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyINTfunc            #  26:     call   t18 <- dummyINTfunc
    movl    %eax, -48(%ebp)        
    movl    $97, %eax               #  27:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  28:     goto   0
l_f0_0:
    call    dummyCHARfunc           #  30:     call   t19 <- dummyCHARfunc
    movb    %al, -49(%ebp)         
    movzbl  -49(%ebp), %eax         #  31:     return t19
    jmp     l_f0_exit              
    movl    $100, %eax              #  32:     return 100
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 76 of <array 54 of <array 79 of <array 85 of <array 44 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 39 of <array 31 of <array 65 of <array 73 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <ptr(4) to <array 76 of <array 54 of <array 79 of <array 85 of <array 44 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 10 of <array 39 of <array 31 of <array 65 of <array 73 of <char>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <char> %ebp-41 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 35 of <array 51 of <array 72 of <array 18 of <array 14 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -57367116(%ebp)  57367074  [ $v3       <array 10 of <array 39 of <array 31 of <array 65 of <array 73 of <char>>>>>> %ebp-57367116 ]
    #   -1269934980(%ebp)  1212567864  [ $v4       <array 76 of <array 54 of <array 79 of <array 85 of <array 44 of <bool>>>>>> %ebp-1269934980 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1269934968, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $317483742, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-57367116(%ebp)      # local array 'v3': 5 dimensions
    movl    $10,-57367112(%ebp)     #   dimension 1: 10 elements
    movl    $39,-57367108(%ebp)     #   dimension 2: 39 elements
    movl    $31,-57367104(%ebp)     #   dimension 3: 31 elements
    movl    $65,-57367100(%ebp)     #   dimension 4: 65 elements
    movl    $73,-57367096(%ebp)     #   dimension 5: 73 elements
    movl    $5,-1269934980(%ebp)    # local array 'v4': 5 dimensions
    movl    $76,-1269934976(%ebp)   #   dimension 1: 76 elements
    movl    $54,-1269934972(%ebp)   #   dimension 2: 54 elements
    movl    $79,-1269934968(%ebp)   #   dimension 3: 79 elements
    movl    $85,-1269934964(%ebp)   #   dimension 4: 85 elements
    movl    $44,-1269934960(%ebp)   #   dimension 5: 44 elements

    # function body
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
l_f1_2_while_body:
    movl    $98, %eax               #   4:     assign v1 <- 98
    movb    %al, 12(%ebp)          
    leal    -1269934980(%ebp), %eax #   5:     &()    t2 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  1 <- t2
    pushl   %eax                   
    leal    -57367116(%ebp), %eax   #   7:     &()    t3 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   9:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_f1_1_while_cond       #  10:     goto   1_while_cond
    movl    $40540, %eax            #  11:     mul    t5 <- 40540, 69916
    movl    $69916, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     add    t6 <- t5, 29349
    movl    $29349, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     return t6
    jmp     l_f1_exit              
    leal    -1269934980(%ebp), %eax #  14:     &()    t7 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     param  1 <- t7
    pushl   %eax                   
    leal    -57367116(%ebp), %eax   #  16:     &()    t8 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  17:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  18:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  19:     assign v1 <- t9
    movb    %al, 12(%ebp)          

l_f1_exit:
    # epilogue
    addl    $1269934968, %esp       # remove locals
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
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 76 of <array 54 of <array 79 of <array 85 of <array 44 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 39 of <array 31 of <array 65 of <array 73 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t31      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t32      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t33      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t34      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t35      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t36      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t37      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t38      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t39      <int> %ebp-140 ]
    #   -141(%ebp)   1  [ $t4       <char> %ebp-141 ]
    #   -148(%ebp)   4  [ $t40      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t41      <int> %ebp-152 ]
    #   -153(%ebp)   1  [ $t5       <bool> %ebp-153 ]
    #   -160(%ebp)   4  [ $t6       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t7       <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t8       <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t9       <int> %ebp-172 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 72 of <array 80 of <array 32 of <array 11 of <array 68 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 94 of <array 23 of <array 86 of <array 49 of <array 61 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 88 of <array 69 of <array 31 of <array 63 of <array 46 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 85 of <array 44 of <array 48 of <array 90 of <array 33 of <bool>>>>>>> %ebp+20 ]
    #   -173(%ebp)   1  [ $v4       <bool> %ebp-173 ]
    #   -57367248(%ebp)  57367074  [ $v5       <array 10 of <array 39 of <array 31 of <array 65 of <array 73 of <char>>>>>> %ebp-57367248 ]
    #   -1269935112(%ebp)  1212567864  [ $v6       <array 76 of <array 54 of <array 79 of <array 85 of <array 44 of <bool>>>>>> %ebp-1269935112 ]
    #   -1269935116(%ebp)   4  [ $v7       <int> %ebp-1269935116 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1269935104, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $317483776, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-57367248(%ebp)      # local array 'v5': 5 dimensions
    movl    $10,-57367244(%ebp)     #   dimension 1: 10 elements
    movl    $39,-57367240(%ebp)     #   dimension 2: 39 elements
    movl    $31,-57367236(%ebp)     #   dimension 3: 31 elements
    movl    $65,-57367232(%ebp)     #   dimension 4: 65 elements
    movl    $73,-57367228(%ebp)     #   dimension 5: 73 elements
    movl    $5,-1269935112(%ebp)    # local array 'v6': 5 dimensions
    movl    $76,-1269935108(%ebp)   #   dimension 1: 76 elements
    movl    $54,-1269935104(%ebp)   #   dimension 2: 54 elements
    movl    $79,-1269935100(%ebp)   #   dimension 3: 79 elements
    movl    $85,-1269935096(%ebp)   #   dimension 4: 85 elements
    movl    $44,-1269935092(%ebp)   #   dimension 5: 44 elements

    # function body
    leal    -1269935112(%ebp), %eax #   0:     &()    t2 <- v6
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   1:     param  1 <- t2
    pushl   %eax                   
    leal    -57367248(%ebp), %eax   #   2:     &()    t3 <- v5
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   3:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   4:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -141(%ebp)        
    movl    $99, %eax               #   5:     if     99 < t4 goto 1
    movzbl  -141(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   6:     goto   2
l_f2_1:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -153(%ebp)        
    jmp     l_f2_3                  #   9:     goto   3
l_f2_2:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -153(%ebp)        
l_f2_3:
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -160(%ebp)       
    movl    $98171, %eax            #  16:     mul    t7 <- 98171, t6
    movl    -160(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  17:     add    t8 <- t7, 89170
    movl    $89170, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -172(%ebp)       
    movl    -168(%ebp), %eax        #  21:     mul    t10 <- t8, t9
    movl    -172(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $57196, %eax            #  22:     div    t11 <- 57196, 85619
    movl    $85619, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     mul    t12 <- t11, 53854
    movl    $53854, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #  24:     add    t13 <- t10, t12
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t16 <- t15, 90418
    movl    $90418, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  31:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  32:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  33:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  34:     add    t19 <- t18, 92153
    movl    $92153, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  35:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  37:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  38:     add    t22 <- t20, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  39:     add    t23 <- v2, t22
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -153(%ebp), %eax        #  40:     assign @t23 <- t5
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $97, %eax               #  41:     if     97 < 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  42:     goto   7_if_false
l_f2_6_if_true:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  45:     goto   9
    jmp     l_f2_10_while_cond      #  46:     goto   10_while_cond
l_f2_9:
    movl    $78426, %eax            #  48:     return 78426
    jmp     l_f2_exit              
    jmp     l_f2_5                  #  49:     goto   5
l_f2_7_if_false:
l_f2_5:
    call    ReadInt                 #  52:     call   t24 <- ReadInt
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  53:     add    t25 <- t24, 69105
    movl    $69105, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $2, %eax                #  54:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  55:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  56:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $32683, %eax            #  57:     mul    t27 <- 32683, t26
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  58:     add    t28 <- t27, 76720
    movl    $76720, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  59:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  60:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  61:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  62:     mul    t30 <- t28, t29
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  63:     add    t31 <- t30, 32554
    movl    $32554, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $4, %eax                #  64:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  65:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  66:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  67:     mul    t33 <- t31, t32
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  68:     add    t34 <- t33, 67872
    movl    $67872, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $5, %eax                #  69:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  70:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  71:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  72:     mul    t36 <- t34, t35
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  73:     add    t37 <- t36, 27530
    movl    $27530, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  74:     mul    t38 <- t37, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    12(%ebp), %eax          #  75:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  76:     call   t39 <- DOFS
    addl    $4, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  77:     add    t40 <- t38, t39
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    12(%ebp), %eax          #  78:     add    t41 <- v1, t40
    movl    -148(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    -80(%ebp), %eax         #  79:     assign @t41 <- t25
    movl    -152(%ebp), %edi       
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $1269935104, %esp       # remove locals
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
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_6_while_cond:
    movl    $10569, %eax            #   3:     if     10569 # 28606 goto 7_while_body
    movl    $28606, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_7_while_body    
    jmp     l_test_5                #   4:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
l_test_5:
    jmp     l_test_1                #   8:     goto   1
l_test_1:
    call    dummyCHARfunc           #  10:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
l_test_12_while_cond:
    jmp     l_test_11               #  13:     goto   11
    jmp     l_test_11               #  14:     goto   11
    jmp     l_test_11               #  15:     goto   11
    jmp     l_test_12_while_cond    #  16:     goto   12_while_cond
l_test_11:
    call    dummyINTfunc            #  18:     call   t1 <- dummyINTfunc
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
