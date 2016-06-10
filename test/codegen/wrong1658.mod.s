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
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 83 of <array 42 of <array 60 of <array 47 of <array 2 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t6       <bool> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 37 of <array 19 of <array 61 of <array 72 of <array 28 of <int>>>>>>> %ebp+8 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

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
l_f1_1_while_cond:
    movl    $43376, %eax            #   1:     mul    t2 <- 43376, 39157
    movl    $39157, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $35802, %eax            #   2:     if     35802 # t2 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $63827, %eax            #   5:     if     63827 < 52774 goto 5
    movl    $52774, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_5                 
    jmp     l_f1_6                  #   6:     goto   6
l_f1_5:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_7                  #   9:     goto   7
l_f1_6:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f1_7:
    movzbl  -17(%ebp), %eax         #  13:     assign v2 <- t3
    movb    %al, -21(%ebp)         
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
l_f1_0:
l_f1_10_while_cond:
    jmp     l_f1_11_while_body      #  17:     goto   11_while_body
    jmp     l_f1_11_while_body      #  18:     goto   11_while_body
l_f1_11_while_body:
    movl    $85278, %eax            #  20:     if     85278 <= 80740 goto 15
    movl    $80740, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_15                
    jmp     l_f1_16                 #  21:     goto   16
l_f1_15:
    movl    $1, %eax                #  23:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_17                 #  24:     goto   17
l_f1_16:
    movl    $0, %eax                #  26:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f1_17:
    movzbl  -18(%ebp), %eax         #  28:     assign v2 <- t4
    movb    %al, -21(%ebp)         
    jmp     l_f1_10_while_cond      #  29:     goto   10_while_cond
    call    dummyBOOLfunc           #  30:     call   t5 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  31:     if     t5 = 1 goto 23
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_23                
    jmp     l_f1_21                 #  32:     goto   21
l_f1_23:
    movl    $1, %eax                #  34:     assign t6 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f1_22                 #  35:     goto   22
l_f1_21:
    movl    $0, %eax                #  37:     assign t6 <- 0
    movb    %al, -20(%ebp)         
l_f1_22:
    movzbl  -20(%ebp), %eax         #  39:     return t6
    jmp     l_f1_exit              

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
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 37 of <array 19 of <array 61 of <array 72 of <array 28 of <int>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <ptr(4) to <array 37 of <array 19 of <array 61 of <array 72 of <array 28 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <ptr(4) to <array 37 of <array 19 of <array 61 of <array 72 of <array 28 of <int>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t3       <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t31      <ptr(4) to <array 37 of <array 19 of <array 61 of <array 72 of <array 28 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t32      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t33      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t34      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t35      <ptr(4) to <array 37 of <array 19 of <array 61 of <array 72 of <array 28 of <int>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t36      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t37      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t38      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t39      <ptr(4) to <array 37 of <array 19 of <array 61 of <array 72 of <array 28 of <int>>>>>>> %ebp-140 ]
    #   -144(%ebp)   4  [ $t4       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t40      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t41      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t42      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t43      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t44      <ptr(4) to <array 37 of <array 19 of <array 61 of <array 72 of <array 28 of <int>>>>>>> %ebp-164 ]
    #   -168(%ebp)   4  [ $t45      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t46      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t47      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t48      <ptr(4) to <array 37 of <array 19 of <array 61 of <array 72 of <array 28 of <int>>>>>>> %ebp-180 ]
    #   -181(%ebp)   1  [ $t49      <bool> %ebp-181 ]
    #   -188(%ebp)   4  [ $t5       <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t6       <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t7       <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t8       <int> %ebp-200 ]
    #   -204(%ebp)   4  [ $t9       <int> %ebp-204 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 49 of <array 36 of <array 23 of <array 39 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 30 of <array 31 of <array 51 of <array 10 of <array 80 of <bool>>>>>>> %ebp+16 ]
    #   -345808740(%ebp)  345808536  [ $v4       <array 37 of <array 19 of <array 61 of <array 72 of <array 28 of <int>>>>>> %ebp-345808740 ]
    #   -345808744(%ebp)   4  [ $v5       <int> %ebp-345808744 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $345808732, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $86452183, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-345808740(%ebp)     # local array 'v4': 5 dimensions
    movl    $37,-345808736(%ebp)    #   dimension 1: 37 elements
    movl    $19,-345808732(%ebp)    #   dimension 2: 19 elements
    movl    $61,-345808728(%ebp)    #   dimension 3: 61 elements
    movl    $72,-345808724(%ebp)    #   dimension 4: 72 elements
    movl    $28,-345808720(%ebp)    #   dimension 5: 28 elements

    # function body
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 # 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    leal    -345808740(%ebp), %eax  #   4:     &()    t2 <- v4
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   5:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #   6:     call   t3 <- f1
    addl    $4, %esp               
    movb    %al, -97(%ebp)         
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    $66211, %eax            #  10:     mul    t5 <- 66211, t4
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -188(%ebp)       
    movl    -188(%ebp), %eax        #  11:     add    t6 <- t5, 20798
    movl    $20798, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -192(%ebp)       
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -196(%ebp)       
    movl    -192(%ebp), %eax        #  15:     mul    t8 <- t6, t7
    movl    -196(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -200(%ebp)       
    movl    -200(%ebp), %eax        #  16:     add    t9 <- t8, 77043
    movl    $77043, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -204(%ebp)       
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -204(%ebp), %eax        #  20:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     add    t12 <- t11, 40055
    movl    $40055, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  25:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t15 <- t14, 73751
    movl    $73751, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     mul    t16 <- t15, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  28:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  29:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  30:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  31:     add    t19 <- v1, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $47913, %eax            #  32:     assign @t19 <- 47913
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_1_while_cond       #  33:     goto   1_while_cond
l_f2_0:
    movl    $49082, %eax            #  35:     sub    t20 <- 49082, 46312
    movl    $46312, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    leal    -345808740(%ebp), %eax  #  36:     &()    t21 <- v4
    movl    %eax, -64(%ebp)        
    movl    $92507, %eax            #  37:     mul    t22 <- 92507, 80224
    movl    $80224, %ebx           
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  38:     mul    t23 <- t22, 74572
    movl    $74572, %ebx           
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     mul    t24 <- t23, 18041
    movl    $18041, %ebx           
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  40:     div    t25 <- t24, 99299
    movl    $99299, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  41:     div    t26 <- t25, 41962
    movl    $41962, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #  42:     param  1 <- 2
    pushl   %eax                   
    leal    -345808740(%ebp), %eax  #  43:     &()    t27 <- v4
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  44:     param  0 <- t27
    pushl   %eax                   
    call    DIM                     #  45:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  46:     mul    t29 <- t26, t28
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  47:     add    t30 <- t29, 74943
    movl    $74943, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $3, %eax                #  48:     param  1 <- 3
    pushl   %eax                   
    leal    -345808740(%ebp), %eax  #  49:     &()    t31 <- v4
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  50:     param  0 <- t31
    pushl   %eax                   
    call    DIM                     #  51:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -104(%ebp), %eax        #  52:     mul    t33 <- t30, t32
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  53:     add    t34 <- t33, 12975
    movl    $12975, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $4, %eax                #  54:     param  1 <- 4
    pushl   %eax                   
    leal    -345808740(%ebp), %eax  #  55:     &()    t35 <- v4
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  56:     param  0 <- t35
    pushl   %eax                   
    call    DIM                     #  57:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -120(%ebp), %eax        #  58:     mul    t37 <- t34, t36
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  59:     add    t38 <- t37, 79113
    movl    $79113, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $5, %eax                #  60:     param  1 <- 5
    pushl   %eax                   
    leal    -345808740(%ebp), %eax  #  61:     &()    t39 <- v4
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  62:     param  0 <- t39
    pushl   %eax                   
    call    DIM                     #  63:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -136(%ebp), %eax        #  64:     mul    t41 <- t38, t40
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  65:     add    t42 <- t41, 35344
    movl    $35344, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  66:     mul    t43 <- t42, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -160(%ebp)       
    leal    -345808740(%ebp), %eax  #  67:     &()    t44 <- v4
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  68:     param  0 <- t44
    pushl   %eax                   
    call    DOFS                    #  69:     call   t45 <- DOFS
    addl    $4, %esp               
    movl    %eax, -168(%ebp)       
    movl    -160(%ebp), %eax        #  70:     add    t46 <- t43, t45
    movl    -168(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    -64(%ebp), %eax         #  71:     add    t47 <- t21, t46
    movl    -172(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -176(%ebp)       
    movl    -60(%ebp), %eax         #  72:     assign @t47 <- t20
    movl    -176(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $38998, %eax            #  73:     if     38998 >= 35271 goto 8_if_true
    movl    $35271, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #  74:     goto   9_if_false
l_f2_8_if_true:
    movl    $98, %eax               #  76:     return 98
    jmp     l_f2_exit              
    leal    -345808740(%ebp), %eax  #  77:     &()    t48 <- v4
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        #  78:     param  0 <- t48
    pushl   %eax                   
    call    f1                      #  79:     call   t49 <- f1
    addl    $4, %esp               
    movb    %al, -181(%ebp)        
    jmp     l_f2_7                  #  80:     goto   7
l_f2_9_if_false:
l_f2_7:

l_f2_exit:
    # epilogue
    addl    $345808732, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
l_test_1_while_cond:
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $97862, %eax            #   2:     assign v0 <- 97862
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
l_test_6_while_cond:
    movl    $100, %eax              #   5:     if     100 <= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_7_while_body    
    jmp     l_test_5                #   6:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
l_test_5:
l_test_10_while_cond:
    jmp     l_test_14               #  11:     goto   14
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_15               #  13:     goto   15
l_test_14:
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_15:
    movl    $1, %eax                #  17:     if     1 = t1 goto 11_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  18:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  20:     goto   10_while_cond
l_test_9:
l_test_20_while_cond:
    movl    $98, %eax               #  23:     if     98 <= 97 goto 22
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_22              
    jmp     l_test_19               #  24:     goto   19
l_test_22:
    jmp     l_test_19               #  26:     goto   19
    jmp     l_test_20_while_cond    #  27:     goto   20_while_cond
l_test_19:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
