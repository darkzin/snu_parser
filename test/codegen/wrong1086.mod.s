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
    #    -73(%ebp)   1  [ $t25      <bool> %ebp-73 ]
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
    #   -141(%ebp)   1  [ $t42      <char> %ebp-141 ]
    #   -142(%ebp)   1  [ $t43      <bool> %ebp-142 ]
    #   -143(%ebp)   1  [ $t44      <char> %ebp-143 ]
    #   -148(%ebp)   4  [ $t45      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t9       <int> %ebp-152 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 55 of <array 80 of <array 52 of <array 73 of <array 79 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 36 of <array 19 of <array 25 of <array 94 of <array 43 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 90 of <array 57 of <array 14 of <array 23 of <array 3 of <char>>>>>>> %ebp+16 ]
    #   -153(%ebp)   1  [ $v5       <char> %ebp-153 ]
    #   -154(%ebp)   1  [ $v6       <bool> %ebp-154 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $144, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $36, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     if     99 > 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   4:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   5:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    $22372, %eax            #   6:     mul    t10 <- 22372, t9
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     add    t11 <- t10, 57800
    movl    $57800, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  11:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     add    t14 <- t13, 29257
    movl    $29257, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  16:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  17:     add    t17 <- t16, 24351
    movl    $24351, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  21:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t20 <- t19, 53415
    movl    $53415, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  25:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  26:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  27:     add    t24 <- v3, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $99, %eax               #  28:     assign @t24 <- 99
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_exit              
    jmp     l_f0_exit              
l_f0_8_while_cond:
    movl    $99, %eax               #  32:     if     99 <= 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_9_while_body      
    jmp     l_f0_7                  #  33:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  35:     goto   8_while_cond
l_f0_7:
l_f0_12_while_cond:
    jmp     l_f0_12_while_cond      #  38:     goto   12_while_cond
    movl    $99, %eax               #  39:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  40:     call   WriteChar
    addl    $4, %esp               
    movl    $100, %eax              #  41:     if     100 = 99 goto 16
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_16                
    jmp     l_f0_17                 #  42:     goto   17
l_f0_16:
    movl    $1, %eax                #  44:     assign t25 <- 1
    movb    %al, -73(%ebp)         
    jmp     l_f0_18                 #  45:     goto   18
l_f0_17:
    movl    $0, %eax                #  47:     assign t25 <- 0
    movb    %al, -73(%ebp)         
l_f0_18:
    movl    $2, %eax                #  49:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  50:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  51:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $2645, %eax             #  52:     mul    t27 <- 2645, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  53:     add    t28 <- t27, 28545
    movl    $28545, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  54:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  55:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  56:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  57:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  58:     add    t31 <- t30, 42397
    movl    $42397, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $4, %eax                #  59:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  60:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  61:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  62:     mul    t33 <- t31, t32
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  63:     add    t34 <- t33, 93800
    movl    $93800, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $5, %eax                #  64:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  65:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  66:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  67:     mul    t36 <- t34, t35
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  68:     add    t37 <- t36, 92080
    movl    $92080, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  69:     mul    t38 <- t37, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    8(%ebp), %eax           #  70:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  71:     call   t39 <- DOFS
    addl    $4, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  72:     add    t40 <- t38, t39
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    8(%ebp), %eax           #  73:     add    t41 <- v2, t40
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movzbl  -73(%ebp), %eax         #  74:     assign @t41 <- t25
    movl    -140(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f0_0                  #  75:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_21_while_cond:
    call    dummyCHARfunc           #  79:     call   t42 <- dummyCHARfunc
    movb    %al, -141(%ebp)        
    movzbl  -141(%ebp), %eax        #  80:     if     t42 = 97 goto 22_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_22_while_body     
    jmp     l_f0_20                 #  81:     goto   20
l_f0_22_while_body:
    jmp     l_f0_21_while_cond      #  83:     goto   21_while_cond
l_f0_20:
    jmp     l_f0_26_if_false        #  85:     goto   26_if_false
    movl    $99, %eax               #  86:     if     99 # 98 goto 28
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_28                
    jmp     l_f0_29                 #  87:     goto   29
l_f0_28:
    movl    $1, %eax                #  89:     assign t43 <- 1
    movb    %al, -142(%ebp)        
    jmp     l_f0_30                 #  90:     goto   30
l_f0_29:
    movl    $0, %eax                #  92:     assign t43 <- 0
    movb    %al, -142(%ebp)        
l_f0_30:
    movzbl  -142(%ebp), %eax        #  94:     assign v6 <- t43
    movb    %al, -154(%ebp)        
    call    dummyCHARfunc           #  95:     call   t44 <- dummyCHARfunc
    movb    %al, -143(%ebp)        
    call    dummyINTfunc            #  96:     call   t45 <- dummyINTfunc
    movl    %eax, -148(%ebp)       
    jmp     l_f0_24                 #  97:     goto   24
l_f0_26_if_false:
l_f0_24:

l_f0_exit:
    # epilogue
    addl    $144, %esp              # remove locals
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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 46 of <array 2 of <array 94 of <array 66 of <array 42 of <bool>>>>>>> %ebp+8 ]
    #    -29(%ebp)   1  [ $v3       <bool> %ebp-29 ]

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
    movl    $72487, %eax            #   0:     div    t9 <- 72487, 91311
    movl    $91311, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $7917, %eax             #   1:     add    t10 <- 7917, t9
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     return t10
    jmp     l_f1_exit              
    movl    $83151, %eax            #   3:     if     83151 >= 62648 goto 2_if_true
    movl    $62648, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_2_if_true:
    movl    $48092, %eax            #   6:     sub    t11 <- 48092, 46689
    movl    $46689, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     if     t11 # 15717 goto 6
    movl    $15717, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_6                 
    jmp     l_f1_7                  #   8:     goto   7
l_f1_6:
    movl    $1, %eax                #  10:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_8                  #  11:     goto   8
l_f1_7:
    movl    $0, %eax                #  13:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f1_8:
    movzbl  -21(%ebp), %eax         #  15:     assign v3 <- t12
    movb    %al, -29(%ebp)         
    jmp     l_f1_1                  #  16:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_11_while_cond:
    call    dummyCHARfunc           #  20:     call   t13 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $99, %eax               #  21:     if     99 <= t13 goto 12_while_body
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_12_while_body     
    jmp     l_f1_10                 #  22:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  24:     goto   11_while_cond
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
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
    movl    $12137, %eax            #   0:     add    t9 <- 12137, 76690
    movl    $76690, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     assign v2 <- t9
    movl    %eax, -36(%ebp)        
    movl    $85043, %eax            #   2:     div    t10 <- 85043, 14368
    movl    $14368, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     mul    t11 <- t10, 72626
    movl    $72626, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     div    t12 <- t11, 32529
    movl    $32529, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     return t12
    jmp     l_f2_exit              
l_f2_3_while_cond:
    movl    $31960, %eax            #   7:     sub    t13 <- 31960, 54825
    movl    $54825, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     if     t13 >= 23128 goto 4_while_body
    movl    $23128, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_4_while_body      
    jmp     l_f2_2                  #   9:     goto   2
l_f2_4_while_body:
    movl    $1, %eax                #  11:     assign v3 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_3_while_cond       #  12:     goto   3_while_cond
l_f2_2:

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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <char> %ebp-41 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $14445, %eax            #   1:     add    t1 <- 14445, t0
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   4:     if     t2 # 98 goto 2
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_2               
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $1, %eax                #   7:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_4                #   8:     goto   4
l_test_3:
    movl    $0, %eax                #  10:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_4:
    movzbl  -22(%ebp), %eax         #  12:     assign v1 <- t3
    movb    %al, v1                
    movl    $47912, %eax            #  13:     sub    t4 <- 47912, 58323
    movl    $58323, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     add    t5 <- t4, 81256
    movl    $81256, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     sub    t6 <- t5, 44944
    movl    $44944, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     add    t7 <- t6, 63887
    movl    $63887, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  17:     assign v0 <- t7
    movl    %eax, v0               
    movl    $100, %eax              #  18:     if     100 > 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_8_if_true       
    jmp     l_test_9_if_false       #  19:     goto   9_if_false
l_test_8_if_true:
    movl    $41335, %eax            #  21:     assign v0 <- 41335
    movl    %eax, v0               
l_test_13_while_cond:
    movl    $47193, %eax            #  23:     if     47193 >= 84515 goto 14_while_body
    movl    $84515, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_14_while_body   
    jmp     l_test_12               #  24:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  26:     goto   13_while_cond
l_test_12:
l_test_17_while_cond:
    movl    $62641, %eax            #  29:     if     62641 = 82417 goto 18_while_body
    movl    $82417, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_18_while_body   
    jmp     l_test_16               #  30:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  32:     goto   17_while_cond
l_test_16:
    call    dummyCHARfunc           #  34:     call   t8 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    jmp     l_test_7                #  35:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_exit            
    jmp     l_test_22               #  39:     goto   22
l_test_22:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
