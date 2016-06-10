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
    #   -132(%ebp)   4  [ $t6       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t7       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t8       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t9       <int> %ebp-144 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 5 of <array 6 of <array 5 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 9 of <array 5 of <array 4 of <array 9 of <char>>>>>>> %ebp+12 ]
    #   -145(%ebp)   1  [ $v2       <char> %ebp-145 ]

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
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     if     98 # 97 goto 8
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_8                 
    jmp     l_f0_0                  #   2:     goto   0
l_f0_8:
    jmp     l_f0_0                  #   4:     goto   0
    jmp     l_f0_0                  #   5:     goto   0
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
l_f0_11_while_cond:
    jmp     l_f0_12_while_body      #   9:     goto   12_while_body
l_f0_12_while_body:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    $69638, %eax            #  14:     mul    t7 <- 69638, t6
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  15:     add    t8 <- t7, 39937
    movl    $39937, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  19:     mul    t10 <- t8, t9
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     add    t11 <- t10, 92688
    movl    $92688, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  24:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t14 <- t13, 54416
    movl    $54416, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     add    t17 <- t16, 73765
    movl    $73765, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  32:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  33:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  34:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  35:     add    t21 <- v1, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $100, %eax              #  36:     assign @t21 <- 100
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $23350, %eax            #  37:     if     23350 > 55261 goto 16_if_true
    movl    $55261, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  38:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_15                 #  40:     goto   15
l_f0_17_if_false:
l_f0_15:
    movl    $98, %eax               #  43:     if     98 < 97 goto 20_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_20_if_true        
    jmp     l_f0_21_if_false        #  44:     goto   21_if_false
l_f0_20_if_true:
    jmp     l_f0_19                 #  46:     goto   19
l_f0_21_if_false:
l_f0_19:
    jmp     l_f0_11_while_cond      #  49:     goto   11_while_cond
    movl    $2, %eax                #  50:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  51:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  52:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $80122, %eax            #  53:     mul    t23 <- 80122, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    $60051, %eax            #  54:     add    t24 <- 60051, 52033
    movl    $52033, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  55:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  56:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  57:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  58:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  59:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  60:     add    t28 <- t27, 60807
    movl    $60807, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  61:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  62:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  63:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  64:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  65:     add    t31 <- t30, 8365
    movl    $8365, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $5, %eax                #  66:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  67:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  68:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  69:     mul    t33 <- t31, t32
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  70:     add    t34 <- t33, 26650
    movl    $26650, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  71:     mul    t35 <- t34, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    12(%ebp), %eax          #  72:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  73:     call   t36 <- DOFS
    addl    $4, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  74:     add    t37 <- t35, t36
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    12(%ebp), %eax          #  75:     add    t38 <- v1, t37
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $100, %eax              #  76:     assign @t38 <- 100
    movl    -128(%ebp), %edi       
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $136, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 6 of <array 5 of <array 1 of <array 8 of <char>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t6 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_5_while_cond:
    jmp     l_f1_6_while_body       #   8:     goto   6_while_body
    jmp     l_f1_6_while_body       #   9:     goto   6_while_body
    jmp     l_f1_4                  #  10:     goto   4
l_f1_6_while_body:
l_f1_11_while_cond:
    movl    $16584, %eax            #  13:     if     16584 = 78005 goto 12_while_body
    movl    $78005, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_12_while_body     
    jmp     l_f1_10                 #  14:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  16:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_16_if_false        #  18:     goto   16_if_false
    jmp     l_f1_14                 #  19:     goto   14
l_f1_16_if_false:
l_f1_14:
    movl    $100, %eax              #  22:     if     100 >= 97 goto 18_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  23:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  25:     goto   17
l_f1_19_if_false:
l_f1_17:
    movl    $97, %eax               #  28:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_5_while_cond       #  29:     goto   5_while_cond
l_f1_4:
    call    ReadInt                 #  31:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t6       <ptr(4) to <array 10 of <array 6 of <array 5 of <array 1 of <array 8 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #   -2444(%ebp)  2424  [ $v1       <array 10 of <array 6 of <array 5 of <array 1 of <array 8 of <char>>>>>> %ebp-2444 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2432, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $608, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2444(%ebp)          # local array 'v1': 5 dimensions
    movl    $10,-2440(%ebp)         #   dimension 1: 10 elements
    movl    $6,-2436(%ebp)          #   dimension 2: 6 elements
    movl    $5,-2432(%ebp)          #   dimension 3: 5 elements
    movl    $1,-2428(%ebp)          #   dimension 4: 1 elements
    movl    $8,-2424(%ebp)          #   dimension 5: 8 elements

    # function body
    movl    $16045, %eax            #   0:     if     16045 # 39017 goto 1_if_true
    movl    $39017, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $30440, %eax            #   4:     if     30440 > 83196 goto 6_while_body
    movl    $83196, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    leal    -2444(%ebp), %eax       #   9:     &()    t6 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  1 <- t6
    pushl   %eax                   
    movl    $97, %eax               #  11:     param  0 <- 97
    pushl   %eax                   
    call    f1                      #  12:     call   t7 <- f1
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    jmp     l_f2_0                  #  13:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_10_while_cond:
    movl    $97, %eax               #  17:     if     97 < 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_11_while_body     
    jmp     l_f2_9                  #  18:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  20:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_14                 #  22:     goto   14
    jmp     l_f2_15                 #  23:     goto   15
l_f2_14:
    movl    $1, %eax                #  25:     assign t8 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_16                 #  26:     goto   16
l_f2_15:
    movl    $0, %eax                #  28:     assign t8 <- 0
    movb    %al, -18(%ebp)         
l_f2_16:
    movzbl  -18(%ebp), %eax         #  30:     return t8
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $2432, %esp             # remove locals
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
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]

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
l_test_1_while_cond:
    movl    $7650, %eax             #   1:     sub    t0 <- 7650, 98721
    movl    $98721, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t1 <- t0, 65777
    movl    $65777, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 84360
    movl    $84360, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t3 <- t2, 84164
    movl    $84164, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $15975, %eax            #   5:     if     15975 >= t3 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   6:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    call    dummyCHARfunc           #  11:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movl    $98, %eax               #  12:     if     98 > t4 goto 6_while_body
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_6_while_body    
    jmp     l_test_4                #  13:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #  15:     goto   5_while_cond
l_test_4:
    jmp     l_test_10               #  17:     goto   10
    jmp     l_test_10               #  18:     goto   10
    movl    $1, %eax                #  19:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_11               #  20:     goto   11
l_test_10:
    movl    $0, %eax                #  22:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_test_11:
    movzbl  -30(%ebp), %eax         #  24:     assign v0 <- t5
    movb    %al, v0                

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
