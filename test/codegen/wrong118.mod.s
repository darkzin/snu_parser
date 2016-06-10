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
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 10 of <array 10 of <array 7 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   1:     if     t9 = 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   9:     return t10
    jmp     l_f0_exit              
    movl    $70298, %eax            #  10:     assign v2 <- 70298
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #  11:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  12:     goto   6
l_f0_6:

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
    #   -140(%ebp)   4  [ $t41      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t42      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t43      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t44      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t45      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t46      <int> %ebp-160 ]
    #   -161(%ebp)   1  [ $t47      <bool> %ebp-161 ]
    #   -168(%ebp)   4  [ $t9       <int> %ebp-168 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 9 of <array 4 of <array 2 of <array 6 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 5 of <array 9 of <array 1 of <array 9 of <int>>>>>>> %ebp+16 ]
    #   -172(%ebp)   4  [ $v3       <int> %ebp-172 ]
    #   -173(%ebp)   1  [ $v4       <char> %ebp-173 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $164, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $41, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $99, %eax               #   1:     if     99 # 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   5:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   6:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -168(%ebp)       
    movl    $45880, %eax            #   7:     mul    t10 <- 45880, t9
    movl    -168(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     add    t11 <- t10, 45686
    movl    $45686, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  12:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     add    t14 <- t13, 55525
    movl    $55525, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  17:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  18:     add    t17 <- t16, 73198
    movl    $73198, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  22:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  23:     add    t20 <- t19, 21741
    movl    $21741, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  24:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  26:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  27:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  28:     add    t24 <- v2, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $97483, %eax            #  29:     assign @t24 <- 97483
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_1_while_cond       #  30:     goto   1_while_cond
l_f1_0:
l_f1_6_while_cond:
    jmp     l_f1_5                  #  33:     goto   5
    movl    $2, %eax                #  34:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  35:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  36:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $60753, %eax            #  37:     mul    t26 <- 60753, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  38:     add    t27 <- t26, 91406
    movl    $91406, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  39:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  40:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  41:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  42:     mul    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  43:     add    t30 <- t29, 72124
    movl    $72124, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $4, %eax                #  44:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  45:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  46:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  47:     mul    t32 <- t30, t31
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  48:     add    t33 <- t32, 32115
    movl    $32115, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $5, %eax                #  49:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  50:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  51:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  52:     mul    t35 <- t33, t34
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  53:     add    t36 <- t35, 9135
    movl    $9135, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  54:     mul    t37 <- t36, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    12(%ebp), %eax          #  55:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  56:     call   t38 <- DOFS
    addl    $4, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  57:     add    t39 <- t37, t38
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    12(%ebp), %eax          #  58:     add    t40 <- v1, t39
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $99, %eax               #  59:     assign @t40 <- 99
    movl    -136(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $45417, %eax            #  60:     param  0 <- 45417
    pushl   %eax                   
    call    WriteInt                #  61:     call   WriteInt
    addl    $4, %esp               
l_f1_11_while_cond:
    movl    $52436, %eax            #  63:     sub    t41 <- 52436, 35006
    movl    $35006, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  64:     add    t42 <- t41, 26591
    movl    $26591, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  65:     sub    t43 <- t42, 9809
    movl    $9809, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  66:     if     t43 < 30116 goto 12_while_body
    movl    $30116, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_12_while_body     
    jmp     l_f1_10                 #  67:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  69:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_6_while_cond       #  71:     goto   6_while_cond
l_f1_5:
    movl    $51533, %eax            #  73:     mul    t44 <- 51533, 71698
    movl    $71698, %ebx           
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    $11888, %eax            #  74:     add    t45 <- 11888, 58571
    movl    $58571, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  75:     sub    t46 <- t45, 58466
    movl    $58466, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    -152(%ebp), %eax        #  76:     if     t44 < t46 goto 15
    movl    -160(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jl      l_f1_15                
    jmp     l_f1_16                 #  77:     goto   16
l_f1_15:
    movl    $1, %eax                #  79:     assign t47 <- 1
    movb    %al, -161(%ebp)        
    jmp     l_f1_17                 #  80:     goto   17
l_f1_16:
    movl    $0, %eax                #  82:     assign t47 <- 0
    movb    %al, -161(%ebp)        
l_f1_17:
    movzbl  -161(%ebp), %eax        #  84:     return t47
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $164, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

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
    jmp     l_f2_exit              
    movl    $98, %eax               #   1:     if     98 # 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    movl    $44860, %eax            #   6:     assign v0 <- 44860
    movl    %eax, -24(%ebp)        
l_f2_9_while_cond:
    movl    $84431, %eax            #   8:     if     84431 < 41047 goto 10_while_body
    movl    $41047, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_10_while_body     
    jmp     l_f2_8                  #   9:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  11:     goto   9_while_cond
l_f2_8:
l_f2_13_while_cond:
    movl    $98, %eax               #  14:     if     98 = 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_14_while_body     
    jmp     l_f2_12                 #  15:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  17:     goto   13_while_cond
l_f2_12:
    movl    $98, %eax               #  19:     if     98 >= 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  20:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  22:     goto   16
l_f2_18_if_false:
l_f2_16:
    call    ReadInt                 #  25:     call   t9 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f2_1                  #  26:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    ReadInt                 #  29:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    call    dummyINTfunc            #   8:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $52935, %eax            #   9:     mul    t1 <- 52935, 29851
    movl    $29851, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     mul    t2 <- t1, 90905
    movl    $90905, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     mul    t3 <- t2, 7144
    movl    $7144, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     div    t4 <- t3, 47281
    movl    $47281, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     assign v0 <- t4
    movl    %eax, v0               
l_test_9_while_cond:
    movl    $14975, %eax            #  15:     add    t5 <- 14975, 19688
    movl    $19688, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     add    t6 <- t5, 42332
    movl    $42332, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  17:     add    t7 <- t6, 46729
    movl    $46729, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  18:     add    t8 <- t7, 50118
    movl    $50118, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  19:     if     t8 < 10936 goto 10_while_body
    movl    $10936, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_10_while_body   
    jmp     l_test_8                #  20:     goto   8
l_test_10_while_body:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_9_while_cond     #  24:     goto   9_while_cond
l_test_8:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
