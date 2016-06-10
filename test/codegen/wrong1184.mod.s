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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 75 of <array 40 of <array 94 of <array 39 of <array 29 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 19 of <array 89 of <array 16 of <array 11 of <array 16 of <bool>>>>>>> %ebp+16 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v4       <char> %ebp-21 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $1, %eax                #   1:     return 1
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_6_while_cond:
    movl    $39048, %eax            #   7:     assign v3 <- 39048
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #   8:     if     98 <= 98 goto 10
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_10                
    jmp     l_f0_11                 #   9:     goto   11
l_f0_10:
    movl    $1, %eax                #  11:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_12                 #  12:     goto   12
l_f0_11:
    movl    $0, %eax                #  14:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f0_12:
    movzbl  -14(%ebp), %eax         #  16:     assign v0 <- t7
    movb    %al, 8(%ebp)           
    jmp     l_f0_6_while_cond       #  17:     goto   6_while_cond
    movl    $24161, %eax            #  18:     if     24161 > 33272 goto 15_if_true
    movl    $33272, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  19:     goto   16_if_false
l_f0_15_if_true:
    movl    $71063, %eax            #  21:     if     71063 < 42656 goto 19
    movl    $42656, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_19                
    jmp     l_f0_20                 #  22:     goto   20
l_f0_19:
    movl    $1, %eax                #  24:     assign t8 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_21                 #  25:     goto   21
l_f0_20:
    movl    $0, %eax                #  27:     assign t8 <- 0
    movb    %al, -15(%ebp)         
l_f0_21:
    movzbl  -15(%ebp), %eax         #  29:     return t8
    jmp     l_f0_exit              
    movl    $100, %eax              #  30:     assign v4 <- 100
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #  31:     if     100 > 97 goto 25_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_25_if_true        
    jmp     l_f0_26_if_false        #  32:     goto   26_if_false
l_f0_25_if_true:
    jmp     l_f0_24                 #  34:     goto   24
l_f0_26_if_false:
l_f0_24:
    jmp     l_f0_14                 #  37:     goto   14
l_f0_16_if_false:
l_f0_14:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t13      <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <ptr(4) to <array 19 of <array 89 of <array 16 of <array 11 of <array 16 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <ptr(4) to <array 19 of <array 89 of <array 16 of <array 11 of <array 16 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t17      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t18      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t19      <ptr(4) to <array 19 of <array 89 of <array 16 of <array 11 of <array 16 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t20      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t21      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t22      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t23      <ptr(4) to <array 19 of <array 89 of <array 16 of <array 11 of <array 16 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t24      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t25      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t26      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t27      <ptr(4) to <array 19 of <array 89 of <array 16 of <array 11 of <array 16 of <bool>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t28      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t29      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t30      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t31      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t32      <ptr(4) to <array 19 of <array 89 of <array 16 of <array 11 of <array 16 of <bool>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t33      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t34      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t35      <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $t36      <bool> %ebp-105 ]
    #   -106(%ebp)   1  [ $t37      <char> %ebp-106 ]
    #   -112(%ebp)   4  [ $t6       <ptr(4) to <array 19 of <array 89 of <array 16 of <array 11 of <array 16 of <bool>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t7       <ptr(4) to <array 75 of <array 40 of <array 94 of <array 39 of <array 29 of <int>>>>>>> %ebp-116 ]
    #   -117(%ebp)   1  [ $t8       <bool> %ebp-117 ]
    #   -118(%ebp)   1  [ $t9       <bool> %ebp-118 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 60 of <array 64 of <array 74 of <array 33 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #   -1275768144(%ebp)  1275768024  [ $v2       <array 75 of <array 40 of <array 94 of <array 39 of <array 29 of <int>>>>>> %ebp-1275768144 ]
    #   -1280530024(%ebp)  4761880  [ $v3       <array 19 of <array 89 of <array 16 of <array 11 of <array 16 of <bool>>>>>> %ebp-1280530024 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1280530012, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $320132503, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1275768144(%ebp)    # local array 'v2': 5 dimensions
    movl    $75,-1275768140(%ebp)   #   dimension 1: 75 elements
    movl    $40,-1275768136(%ebp)   #   dimension 2: 40 elements
    movl    $94,-1275768132(%ebp)   #   dimension 3: 94 elements
    movl    $39,-1275768128(%ebp)   #   dimension 4: 39 elements
    movl    $29,-1275768124(%ebp)   #   dimension 5: 29 elements
    movl    $5,-1280530024(%ebp)    # local array 'v3': 5 dimensions
    movl    $19,-1280530020(%ebp)   #   dimension 1: 19 elements
    movl    $89,-1280530016(%ebp)   #   dimension 2: 89 elements
    movl    $16,-1280530012(%ebp)   #   dimension 3: 16 elements
    movl    $11,-1280530008(%ebp)   #   dimension 4: 11 elements
    movl    $16,-1280530004(%ebp)   #   dimension 5: 16 elements

    # function body
    leal    -1280530024(%ebp), %eax #   0:     &()    t6 <- v3
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   1:     param  2 <- t6
    pushl   %eax                   
    leal    -1275768144(%ebp), %eax #   2:     &()    t7 <- v2
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #   3:     param  1 <- t7
    pushl   %eax                   
    movl    $100, %eax              #   4:     if     100 < 98 goto 4
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_4                 
    jmp     l_f1_5                  #   5:     goto   5
l_f1_4:
    movl    $1, %eax                #   7:     assign t8 <- 1
    movb    %al, -117(%ebp)        
    jmp     l_f1_6                  #   8:     goto   6
l_f1_5:
    movl    $0, %eax                #  10:     assign t8 <- 0
    movb    %al, -117(%ebp)        
l_f1_6:
    movzbl  -117(%ebp), %eax        #  12:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  13:     call   t9 <- f0
    addl    $12, %esp              
    movb    %al, -118(%ebp)        
    call    WriteLn                 #  14:     call   WriteLn
    jmp     l_f1_0                  #  15:     goto   0
l_f1_0:
    jmp     l_f1_11_if_false        #  17:     goto   11_if_false
    movl    $500, %eax              #  18:     if     500 >= 7318 goto 13
    movl    $7318, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_13                
    jmp     l_f1_14                 #  19:     goto   14
l_f1_13:
    movl    $1, %eax                #  21:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_15                 #  22:     goto   15
l_f1_14:
    movl    $0, %eax                #  24:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_15:
    movzbl  -13(%ebp), %eax         #  26:     return t10
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  27:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $43531, %eax            #  28:     if     43531 # 77828 goto 19
    movl    $77828, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_19                
    jmp     l_f1_20                 #  29:     goto   20
l_f1_19:
    movl    $1, %eax                #  31:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_21                 #  32:     goto   21
l_f1_20:
    movl    $0, %eax                #  34:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f1_21:
    movzbl  -15(%ebp), %eax         #  36:     return t12
    jmp     l_f1_exit              
    movl    $0, %eax                #  37:     if     0 = 1 goto 24
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_24                
    jmp     l_f1_25                 #  38:     goto   25
l_f1_24:
    movl    $1, %eax                #  40:     assign t13 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_26                 #  41:     goto   26
l_f1_25:
    movl    $0, %eax                #  43:     assign t13 <- 0
    movb    %al, -16(%ebp)         
l_f1_26:
    leal    -1280530024(%ebp), %eax #  45:     &()    t14 <- v3
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  46:     param  1 <- 2
    pushl   %eax                   
    leal    -1280530024(%ebp), %eax #  47:     &()    t15 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  48:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  49:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $54218, %eax            #  50:     mul    t17 <- 54218, t16
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  51:     add    t18 <- t17, 51184
    movl    $51184, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  52:     param  1 <- 3
    pushl   %eax                   
    leal    -1280530024(%ebp), %eax #  53:     &()    t19 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  54:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  55:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  56:     mul    t21 <- t18, t20
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  57:     add    t22 <- t21, 98492
    movl    $98492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  58:     param  1 <- 4
    pushl   %eax                   
    leal    -1280530024(%ebp), %eax #  59:     &()    t23 <- v3
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  60:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  61:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  62:     mul    t25 <- t22, t24
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  63:     add    t26 <- t25, 84959
    movl    $84959, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  64:     param  1 <- 5
    pushl   %eax                   
    leal    -1280530024(%ebp), %eax #  65:     &()    t27 <- v3
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  66:     param  0 <- t27
    pushl   %eax                   
    call    DIM                     #  67:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  68:     mul    t29 <- t26, t28
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  69:     add    t30 <- t29, 99056
    movl    $99056, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  70:     mul    t31 <- t30, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    leal    -1280530024(%ebp), %eax #  71:     &()    t32 <- v3
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  72:     param  0 <- t32
    pushl   %eax                   
    call    DOFS                    #  73:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  74:     add    t34 <- t31, t33
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -20(%ebp), %eax         #  75:     add    t35 <- t14, t34
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movzbl  -16(%ebp), %eax         #  76:     assign @t35 <- t13
    movl    -104(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $19521, %eax            #  77:     if     19521 = 55225 goto 29
    movl    $55225, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_29                
    jmp     l_f1_30                 #  78:     goto   30
l_f1_29:
    movl    $1, %eax                #  80:     assign t36 <- 1
    movb    %al, -105(%ebp)        
    jmp     l_f1_31                 #  81:     goto   31
l_f1_30:
    movl    $0, %eax                #  83:     assign t36 <- 0
    movb    %al, -105(%ebp)        
l_f1_31:
    movzbl  -105(%ebp), %eax        #  85:     assign v1 <- t36
    movb    %al, 12(%ebp)          
    jmp     l_f1_33                 #  86:     goto   33
l_f1_33:
    movl    $0, %eax                #  88:     return 0
    jmp     l_f1_exit              
    movl    $100, %eax              #  89:     if     100 > 100 goto 38_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_38_if_true        
    jmp     l_f1_39_if_false        #  90:     goto   39_if_false
l_f1_38_if_true:
    jmp     l_f1_37                 #  92:     goto   37
l_f1_39_if_false:
l_f1_37:
    jmp     l_f1_9                  #  95:     goto   9
l_f1_11_if_false:
l_f1_9:
    call    dummyCHARfunc           #  98:     call   t37 <- dummyCHARfunc
    movb    %al, -106(%ebp)        
    movl    $98, %eax               #  99:     if     98 <= t37 goto 42_if_true
    movzbl  -106(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jle     l_f1_42_if_true        
    jmp     l_f1_43_if_false        # 100:     goto   43_if_false
l_f1_42_if_true:
    jmp     l_f1_41                 # 102:     goto   41
l_f1_43_if_false:
l_f1_41:

l_f1_exit:
    # epilogue
    addl    $1280530012, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    jmp     l_f2_1                  #   0:     goto   1
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t6
    movb    %al, 12(%ebp)          
    leal    _str_1, %eax            #   9:     &()    t7 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #  11:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #  12:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  13:     return t8
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]

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
    jmp     l_test_4                #   0:     goto   4
    jmp     l_test_5                #   1:     goto   5
l_test_4:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   4:     goto   6
l_test_5:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movzbl  -13(%ebp), %eax         #   8:     if     t0 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   9:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $1, %eax                #  14:     param  1 <- 1
    pushl   %eax                   
    movl    $33350, %eax            #  15:     param  0 <- 33350
    pushl   %eax                   
    call    f2                      #  16:     call   t1 <- f2
    addl    $8, %esp               
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  17:     assign v0 <- t1
    movb    %al, v0                
    movl    $99, %eax               #  18:     if     99 < 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_13_if_true      
    jmp     l_test_14_if_false      #  19:     goto   14_if_false
l_test_13_if_true:
l_test_17_while_cond:
    call    dummyCHARfunc           #  22:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #  23:     if     99 < t2 goto 18_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_18_while_body   
    jmp     l_test_16               #  24:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  26:     goto   17_while_cond
l_test_16:
    jmp     l_test_12               #  28:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $92333, %eax            #  31:     div    t3 <- 92333, 9185
    movl    $9185, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $74420, %eax            #  32:     add    t4 <- 74420, t3
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     sub    t5 <- t4, 50825
    movl    $50825, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  34:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #  35:     call   WriteInt
    addl    $4, %esp               

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
