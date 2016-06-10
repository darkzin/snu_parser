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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 57 of <array 34 of <array 20 of <array 42 of <array 21 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
l_f0_1_while_cond:
    movl    $66495, %eax            #   1:     div    t5 <- 66495, 56377
    movl    $56377, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t5 <= 50705 goto 2_while_body
    movl    $50705, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $0, %eax                #   5:     assign v1 <- 0
    movb    %al, 12(%ebp)          
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   8:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   9:     if     t6 = 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  10:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #  12:     goto   5
l_f0_7_if_false:
l_f0_5:
    call    dummyCHARfunc           #  15:     call   t7 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  16:     assign v2 <- t7
    movb    %al, 16(%ebp)          

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 74 of <array 66 of <array 12 of <array 92 of <array 45 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 50 of <array 97 of <array 14 of <array 44 of <array 97 of <char>>>>>>> %ebp+16 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $78281, %eax            #   1:     return 78281
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyINTfunc            #   5:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $66230, %eax            #   6:     div    t6 <- 66230, t5
    movl    -16(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     return t6
    jmp     l_f1_exit              
l_f1_6_while_cond:
    movl    $97, %eax               #   9:     if     97 <= 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #  10:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  12:     goto   6_while_cond
l_f1_5:

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
    #   -129(%ebp)   1  [ $t39      <char> %ebp-129 ]
    #   -130(%ebp)   1  [ $t5       <char> %ebp-130 ]
    #   -131(%ebp)   1  [ $t6       <bool> %ebp-131 ]
    #   -136(%ebp)   4  [ $t7       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t8       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t9       <int> %ebp-144 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 35 of <array 54 of <array 42 of <array 79 of <array 70 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 57 of <array 43 of <array 95 of <array 58 of <array 26 of <bool>>>>>>> %ebp+12 ]
    #   -145(%ebp)   1  [ $v2       <char> %ebp-145 ]
    #   -146(%ebp)   1  [ $v3       <bool> %ebp-146 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $136, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $34, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -130(%ebp)        
    movzbl  -130(%ebp), %eax        #   1:     assign v2 <- t5
    movb    %al, -145(%ebp)        
    movl    $42375, %eax            #   2:     if     42375 <= 90425 goto 2_if_true
    movl    $90425, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    movl    $67727, %eax            #   5:     if     67727 <= 87346 goto 6
    movl    $87346, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_6                 
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -131(%ebp)        
    jmp     l_f2_8                  #   9:     goto   8
l_f2_7:
    movl    $0, %eax                #  11:     assign t6 <- 0
    movb    %al, -131(%ebp)        
l_f2_8:
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    $70655, %eax            #  16:     mul    t8 <- 70655, t7
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  17:     add    t9 <- t8, 93969
    movl    $93969, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -144(%ebp), %eax        #  21:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     add    t12 <- t11, 85273
    movl    $85273, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  26:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     add    t15 <- t14, 11641
    movl    $11641, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  31:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  32:     add    t18 <- t17, 83680
    movl    $83680, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  33:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  34:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  35:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  36:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  37:     add    t22 <- v1, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -131(%ebp), %eax        #  38:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $99, %eax               #  39:     return 99
    jmp     l_f2_exit              
l_f2_12_while_cond:
    movl    $36091, %eax            #  41:     if     36091 < 26843 goto 13_while_body
    movl    $26843, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_13_while_body     
    jmp     l_f2_11                 #  42:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  44:     goto   12_while_cond
l_f2_11:
    movl    $2, %eax                #  46:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  47:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  48:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $22678, %eax            #  49:     mul    t24 <- 22678, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  50:     add    t25 <- t24, 64584
    movl    $64584, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  51:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  52:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  53:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  54:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  55:     add    t28 <- t27, 93787
    movl    $93787, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  56:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  57:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  58:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  59:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  60:     add    t31 <- t30, 29826
    movl    $29826, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $5, %eax                #  61:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  62:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  63:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  64:     mul    t33 <- t31, t32
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  65:     add    t34 <- t33, 9278
    movl    $9278, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  66:     mul    t35 <- t34, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    12(%ebp), %eax          #  67:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  68:     call   t36 <- DOFS
    addl    $4, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  69:     add    t37 <- t35, t36
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    12(%ebp), %eax          #  70:     add    t38 <- v1, t37
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $1, %eax                #  71:     assign @t38 <- 1
    movl    -128(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f2_1                  #  72:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_19                 #  75:     goto   19
l_f2_19:
    call    dummyCHARfunc           #  77:     call   t39 <- dummyCHARfunc
    movb    %al, -129(%ebp)        
    jmp     l_f2_16                 #  78:     goto   16
l_f2_16:

l_f2_exit:
    # epilogue
    addl    $136, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]

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
    movl    $98, %eax               #   0:     if     98 >= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyCHARfunc           #   3:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_6_while_cond:
    movl    $99, %eax               #   5:     if     99 = 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_7_while_body    
    jmp     l_test_5                #   6:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
l_test_5:
l_test_10_while_cond:
    jmp     l_test_10_while_cond    #  11:     goto   10_while_cond
    jmp     l_test_exit            
    jmp     l_test_0                #  13:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #  16:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #  17:     if     1 # 0 goto 20_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_20_if_true      
    jmp     l_test_21_if_false      #  18:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  20:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_13               #  23:     goto   13
l_test_13:
    call    dummyCHARfunc           #  25:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  26:     if     t2 # 97 goto 24_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_24_if_true      
    jmp     l_test_25_if_false      #  27:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  29:     goto   23
l_test_25_if_false:
l_test_23:
l_test_28_while_cond:
    jmp     l_test_27               #  33:     goto   27
    jmp     l_test_32               #  34:     goto   32
l_test_32:
l_test_36_while_cond:
    jmp     l_test_36_while_cond    #  37:     goto   36_while_cond
    jmp     l_test_exit            
    jmp     l_test_28_while_cond    #  39:     goto   28_while_cond
l_test_27:
l_test_40_while_cond:
l_test_43_while_cond:
    movl    $84969, %eax            #  43:     if     84969 <= 56017 goto 44_while_body
    movl    $56017, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_44_while_body   
    jmp     l_test_42               #  44:     goto   42
l_test_44_while_body:
    jmp     l_test_43_while_cond    #  46:     goto   43_while_cond
l_test_42:
    movl    $1, %eax                #  48:     if     1 = 0 goto 47_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_47_if_true      
    jmp     l_test_48_if_false      #  49:     goto   48_if_false
l_test_47_if_true:
    jmp     l_test_46               #  51:     goto   46
l_test_48_if_false:
l_test_46:
    movl    $16649, %eax            #  54:     if     16649 # 9529 goto 51
    movl    $9529, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_51              
    jmp     l_test_52               #  55:     goto   52
l_test_51:
    movl    $1, %eax                #  57:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_53               #  58:     goto   53
l_test_52:
    movl    $0, %eax                #  60:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_53:
    movzbl  -16(%ebp), %eax         #  62:     assign v0 <- t3
    movb    %al, v0                
    jmp     l_test_40_while_cond    #  63:     goto   40_while_cond
    call    dummyINTfunc            #  64:     call   t4 <- dummyINTfunc
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
