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
    #   -136(%ebp)   4  [ $t40      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 7 of <array 5 of <array 6 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 8 of <array 6 of <array 6 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 4 of <array 8 of <array 10 of <array 1 of <bool>>>>>>> %ebp+20 ]
    #   -152(%ebp)   4  [ $v4       <int> %ebp-152 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $140, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $35, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   1:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   2:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    $74938, %eax            #   3:     mul    t8 <- 74938, t7
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #   4:     add    t9 <- t8, 39209
    movl    $39209, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   6:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   7:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -148(%ebp), %eax        #   8:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t12 <- t11, 73397
    movl    $73397, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  10:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  12:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  13:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     add    t15 <- t14, 6707
    movl    $6707, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  15:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  18:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  19:     add    t18 <- t17, 77824
    movl    $77824, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  20:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  22:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  23:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  24:     add    t22 <- v0, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $97, %eax               #  25:     assign @t22 <- 97
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyINTfunc            #  26:     call   t23 <- dummyINTfunc
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #  27:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  28:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  29:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  30:     mul    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    $28553, %eax            #  31:     add    t26 <- 28553, 64659
    movl    $64659, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  32:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  36:     mul    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  37:     add    t30 <- t29, 86933
    movl    $86933, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $4, %eax                #  38:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  39:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  40:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  41:     mul    t32 <- t30, t31
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  42:     add    t33 <- t32, 16893
    movl    $16893, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $5, %eax                #  43:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  44:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  45:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  46:     mul    t35 <- t33, t34
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  47:     add    t36 <- t35, 25178
    movl    $25178, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  48:     mul    t37 <- t36, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    12(%ebp), %eax          #  49:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  50:     call   t38 <- DOFS
    addl    $4, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  51:     add    t39 <- t37, t38
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    12(%ebp), %eax          #  52:     add    t40 <- v1, t39
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $5600, %eax             #  53:     assign @t40 <- 5600
    movl    -136(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $1, %eax                #  54:     if     1 = 1 goto 3_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #  55:     goto   4_if_false
l_f0_3_if_true:
    movl    $97, %eax               #  57:     return 97
    jmp     l_f0_exit              
    movl    $100, %eax              #  58:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_2                  #  59:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $140, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 9 of <array 1 of <array 8 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_1_while_cond       #   2:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #   4:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   5:     if     1 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $1, %eax                #   8:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_8                  #   9:     goto   8
l_f1_7:
    movl    $0, %eax                #  11:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f1_8:
    movzbl  -14(%ebp), %eax         #  13:     assign v1 <- t8
    movb    %al, 12(%ebp)          

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 4 of <array 4 of <array 8 of <array 10 of <array 1 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 9 of <array 8 of <array 6 of <array 6 of <array 6 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <array 7 of <array 5 of <array 6 of <array 1 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $v0       <bool> %ebp-29 ]
    #   -1104(%ebp)  1074  [ $v1       <array 5 of <array 7 of <array 5 of <array 6 of <array 1 of <char>>>>>> %ebp-1104 ]
    #   -63336(%ebp)  62232  [ $v2       <array 9 of <array 8 of <array 6 of <array 6 of <array 6 of <int>>>>>> %ebp-63336 ]
    #   -64640(%ebp)  1304  [ $v3       <array 4 of <array 4 of <array 8 of <array 10 of <array 1 of <bool>>>>>> %ebp-64640 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $64628, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $16157, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1104(%ebp)          # local array 'v1': 5 dimensions
    movl    $5,-1100(%ebp)          #   dimension 1: 5 elements
    movl    $7,-1096(%ebp)          #   dimension 2: 7 elements
    movl    $5,-1092(%ebp)          #   dimension 3: 5 elements
    movl    $6,-1088(%ebp)          #   dimension 4: 6 elements
    movl    $1,-1084(%ebp)          #   dimension 5: 1 elements
    movl    $5,-63336(%ebp)         # local array 'v2': 5 dimensions
    movl    $9,-63332(%ebp)         #   dimension 1: 9 elements
    movl    $8,-63328(%ebp)         #   dimension 2: 8 elements
    movl    $6,-63324(%ebp)         #   dimension 3: 6 elements
    movl    $6,-63320(%ebp)         #   dimension 4: 6 elements
    movl    $6,-63316(%ebp)         #   dimension 5: 6 elements
    movl    $5,-64640(%ebp)         # local array 'v3': 5 dimensions
    movl    $4,-64636(%ebp)         #   dimension 1: 4 elements
    movl    $4,-64632(%ebp)         #   dimension 2: 4 elements
    movl    $8,-64628(%ebp)         #   dimension 3: 8 elements
    movl    $10,-64624(%ebp)        #   dimension 4: 10 elements
    movl    $1,-64620(%ebp)         #   dimension 5: 1 elements

    # function body
    leal    -64640(%ebp), %eax      #   0:     &()    t7 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     param  3 <- t7
    pushl   %eax                   
    movl    $100, %eax              #   2:     param  2 <- 100
    pushl   %eax                   
    leal    -63336(%ebp), %eax      #   3:     &()    t8 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  1 <- t8
    pushl   %eax                   
    leal    -1104(%ebp), %eax       #   5:     &()    t9 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #   7:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     if     t10 # 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   9:     goto   2
l_f2_1:
    movl    $1, %eax                #  11:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #  12:     goto   3
l_f2_2:
    movl    $0, %eax                #  14:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  16:     assign v0 <- t11
    movb    %al, -29(%ebp)         
l_f2_6_while_cond:
    jmp     l_f2_9                  #  18:     goto   9
    jmp     l_f2_9                  #  19:     goto   9
l_f2_9:
    movl    $1, %eax                #  21:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_11                 #  22:     goto   11
    movl    $0, %eax                #  23:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f2_11:
    movl    $0, %eax                #  25:     if     0 # t12 goto 7_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #  26:     goto   5
l_f2_7_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_6_while_cond       #  29:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $64628, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 4 of <array 4 of <array 8 of <array 10 of <array 1 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 9 of <array 8 of <array 6 of <array 6 of <array 6 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <array 7 of <array 5 of <array 6 of <array 1 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <char> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    movl    $99, %eax               #   1:     if     99 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $33815, %eax            #   7:     if     33815 <= 54149 goto 6_if_true
    movl    $54149, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_6_if_true       
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_9                #  10:     goto   9
l_test_9:
    jmp     l_test_exit            
    movl    $99, %eax               #  13:     if     99 = 97 goto 14
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_14              
    jmp     l_test_15               #  14:     goto   15
l_test_14:
    movl    $1, %eax                #  16:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_16               #  17:     goto   16
l_test_15:
    movl    $0, %eax                #  19:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_16:
    movzbl  -13(%ebp), %eax         #  21:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_18               #  22:     goto   18
l_test_18:
    call    dummyBOOLfunc           #  24:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  26:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
l_test_25_while_cond:
    movl    $100, %eax              #  28:     if     100 # 99 goto 26_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_26_while_body   
    jmp     l_test_24               #  29:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  31:     goto   25_while_cond
l_test_24:
    jmp     l_test_5                #  33:     goto   5
l_test_7_if_false:
l_test_5:
    leal    v3, %eax                #  36:     &()    t3 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  37:     param  3 <- t3
    pushl   %eax                   
    movl    $98, %eax               #  38:     param  2 <- 98
    pushl   %eax                   
    leal    v2, %eax                #  39:     &()    t4 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  40:     param  1 <- t4
    pushl   %eax                   
    leal    v1, %eax                #  41:     &()    t5 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  42:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  43:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <array 5 of <array 7 of <array 5 of <array 6 of <array 1 of <char>>>>>>
    .long    5
    .long    5
    .long    7
    .long    5
    .long    6
    .long    1
    .skip 1050
    .align   4
v2:                                 # <array 9 of <array 8 of <array 6 of <array 6 of <array 6 of <int>>>>>>
    .long    5
    .long    9
    .long    8
    .long    6
    .long    6
    .long    6
    .skip 62208
v3:                                 # <array 4 of <array 4 of <array 8 of <array 10 of <array 1 of <bool>>>>>>
    .long    5
    .long    4
    .long    4
    .long    8
    .long   10
    .long    1
    .skip 1280








    # end of global data section
    #-----------------------------------------

    .end
##################################################
