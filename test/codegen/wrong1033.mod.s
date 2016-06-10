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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f0_exit              
    movl    $1, %eax                #   2:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   3:     goto   7
    movl    $0, %eax                #   4:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movl    $1, %eax                #   6:     if     1 = t5 goto 2_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   7:     goto   3_if_false
l_f0_2_if_true:
    movl    $97, %eax               #   9:     return 97
    jmp     l_f0_exit              
l_f0_11_while_cond:
    jmp     l_f0_10                 #  11:     goto   10
    jmp     l_f0_11_while_cond      #  12:     goto   11_while_cond
l_f0_10:
    movl    $97, %eax               #  14:     if     97 > 100 goto 14_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  15:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  17:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_1                  #  20:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyBOOLfunc           #  23:     call   t6 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

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
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
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
    #   -140(%ebp)   4  [ $t5       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t6       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t7       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t8       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t9       <int> %ebp-156 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 94 of <array 13 of <array 3 of <array 33 of <array 42 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 68 of <array 58 of <array 66 of <array 82 of <array 27 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 76 of <array 97 of <array 19 of <array 91 of <array 91 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 26 of <array 41 of <array 65 of <array 62 of <array 63 of <bool>>>>>>> %ebp+20 ]
    #   -157(%ebp)   1  [ $v4       <char> %ebp-157 ]
    #   -158(%ebp)   1  [ $v5       <bool> %ebp-158 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -133(%ebp)        
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   2:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   3:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    $27402, %eax            #   4:     mul    t6 <- 27402, t5
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #   5:     add    t7 <- t6, 20415
    movl    $20415, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   8:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #   9:     mul    t9 <- t7, t8
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  10:     add    t10 <- t9, 62639
    movl    $62639, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  13:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  14:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     add    t13 <- t12, 17775
    movl    $17775, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  19:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     add    t16 <- t15, 14129
    movl    $14129, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  23:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  24:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  25:     add    t20 <- v0, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movzbl  -133(%ebp), %eax        #  26:     assign @t20 <- t4
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    call    ReadInt                 #  27:     call   t21 <- ReadInt
    movl    %eax, -60(%ebp)        
    jmp     l_f1_4_if_false         #  28:     goto   4_if_false
    jmp     l_f1_exit              
    movl    $12730, %eax            #  30:     if     12730 > 45211 goto 7
    movl    $45211, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7                 
    jmp     l_f1_8                  #  31:     goto   8
l_f1_7:
    movl    $1, %eax                #  33:     assign t22 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_f1_9                  #  34:     goto   9
l_f1_8:
    movl    $0, %eax                #  36:     assign t22 <- 0
    movb    %al, -61(%ebp)         
l_f1_9:
    movl    $2, %eax                #  38:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  39:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  40:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $36904, %eax            #  41:     mul    t24 <- 36904, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  42:     add    t25 <- t24, 79737
    movl    $79737, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  43:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  44:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  45:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  46:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  47:     add    t28 <- t27, 63343
    movl    $63343, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  48:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  49:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  50:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  51:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  52:     add    t31 <- t30, 64006
    movl    $64006, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $5, %eax                #  53:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  54:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  55:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  56:     mul    t33 <- t31, t32
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  57:     add    t34 <- t33, 38640
    movl    $38640, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  58:     mul    t35 <- t34, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    20(%ebp), %eax          #  59:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  60:     call   t36 <- DOFS
    addl    $4, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  61:     add    t37 <- t35, t36
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    20(%ebp), %eax          #  62:     add    t38 <- v3, t37
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movzbl  -61(%ebp), %eax         #  63:     assign @t38 <- t22
    movl    -128(%ebp), %edi       
    movb    %al, (%edi)            
    call    ReadInt                 #  64:     call   t39 <- ReadInt
    movl    %eax, -132(%ebp)       
l_f1_13_while_cond:
    movl    $99, %eax               #  66:     if     99 < 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_14_while_body     
    jmp     l_f1_12                 #  67:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  69:     goto   13_while_cond
l_f1_12:
    movl    $1, %eax                #  71:     if     1 # 0 goto 17_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  72:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  74:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_2                  #  77:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $148, %esp              # remove locals
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
    #    -29(%ebp)   1  [ $t8       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t9       <char> %ebp-30 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -31(%ebp)   1  [ $v2       <bool> %ebp-31 ]

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
    movl    $9546, %eax             #   0:     if     9546 > 27806 goto 1_if_true
    movl    $27806, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $29195, %eax            #   3:     if     29195 <= 38990 goto 5
    movl    $38990, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_5                 
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   7:     goto   7
l_f2_6:
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  11:     assign v2 <- t4
    movb    %al, -31(%ebp)         
    call    ReadInt                 #  12:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $83100, %eax            #  13:     assign v1 <- 83100
    movl    %eax, 12(%ebp)         
    jmp     l_f2_0                  #  14:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $20381, %eax            #  17:     mul    t6 <- 20381, 65112
    movl    $65112, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     div    t7 <- t6, 6741
    movl    $6741, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  20:     call   t8 <- f0
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  21:     return t8
    jmp     l_f2_exit              
    movl    $65443, %eax            #  22:     param  0 <- 65443
    pushl   %eax                   
    call    f0                      #  23:     call   t9 <- f0
    addl    $4, %esp               
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  24:     return t9
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 > 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    movl    $53996, %eax            #   8:     sub    t1 <- 53996, 29524
    movl    $29524, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     assign v0 <- t1
    movl    %eax, v0               
l_test_7_while_cond:
    movl    $15820, %eax            #  11:     sub    t2 <- 15820, 93871
    movl    $93871, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     if     t2 >= 99958 goto 8_while_body
    movl    $99958, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_8_while_body    
    jmp     l_test_6                #  13:     goto   6
l_test_8_while_body:
    jmp     l_test_exit            
    jmp     l_test_7_while_cond     #  16:     goto   7_while_cond
l_test_6:
    call    ReadInt                 #  18:     call   t3 <- ReadInt
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
