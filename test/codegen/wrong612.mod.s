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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 1 of <array 1 of <array 6 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #    -29(%ebp)   1  [ $v2       <char> %ebp-29 ]

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
l_f0_1_while_cond:
    movl    $97, %eax               #   1:     if     97 = 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $62083, %eax            #   4:     if     62083 >= 96925 goto 5_if_true
    movl    $96925, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
    movl    $100, %eax              #   7:     assign v2 <- 100
    movb    %al, -29(%ebp)         
l_f0_10_while_cond:
    movl    $16886, %eax            #   9:     if     16886 >= 32330 goto 11_while_body
    movl    $32330, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_11_while_body     
    jmp     l_f0_9                  #  10:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  12:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_4                  #  14:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_1_while_cond       #  17:     goto   1_while_cond
l_f0_0:
l_f0_14_while_cond:
    movl    $75, %eax               #  20:     add    t8 <- 75, 86915
    movl    $86915, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     add    t9 <- t8, 64132
    movl    $64132, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     if     t9 < 48755 goto 15_while_body
    movl    $48755, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_15_while_body     
    jmp     l_f0_13                 #  23:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  25:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_19_if_false        #  27:     goto   19_if_false
    call    dummyINTfunc            #  28:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $0, %eax                #  29:     return 0
    jmp     l_f0_exit              
    movl    $41003, %eax            #  30:     if     41003 > 84806 goto 23
    movl    $84806, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_23                
    jmp     l_f0_24                 #  31:     goto   24
l_f0_23:
    movl    $1, %eax                #  33:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_25                 #  34:     goto   25
l_f0_24:
    movl    $0, %eax                #  36:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f0_25:
    movzbl  -17(%ebp), %eax         #  38:     return t11
    jmp     l_f0_exit              
    jmp     l_f0_17                 #  39:     goto   17
l_f0_19_if_false:
l_f0_17:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -73(%ebp)   1  [ $t25      <char> %ebp-73 ]
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
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 5 of <array 10 of <array 3 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 10 of <array 10 of <array 4 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 6 of <array 10 of <array 2 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #   -152(%ebp)   4  [ $v5       <int> %ebp-152 ]
    #   -153(%ebp)   1  [ $v6       <char> %ebp-153 ]

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
    movl    $22228, %eax            #   0:     assign v5 <- 22228
    movl    %eax, -152(%ebp)       
l_f1_5_while_cond:
    jmp     l_f1_4                  #   2:     goto   4
    jmp     l_f1_5_while_cond       #   3:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_7                  #   5:     goto   7
l_f1_7:
    movl    $1, %eax                #   7:     if     1 # 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #   8:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  10:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    $84217, %eax            #  16:     mul    t9 <- 84217, t8
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  17:     add    t10 <- t9, 16306
    movl    $16306, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  21:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t13 <- t12, 25579
    movl    $25579, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  26:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t16 <- t15, 74040
    movl    $74040, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  31:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t19 <- t18, 51222
    movl    $51222, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  33:     mul    t20 <- t19, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  35:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  36:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  37:     add    t23 <- v2, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $21206, %eax            #  38:     assign @t23 <- 21206
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_1                  #  39:     goto   1
l_f1_1:
    movl    $99, %eax               #  41:     if     99 # 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  42:     goto   17_if_false
l_f1_16_if_true:
    call    ReadInt                 #  44:     call   t24 <- ReadInt
    movl    %eax, -72(%ebp)        
    call    dummyCHARfunc           #  45:     call   t25 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    movl    $2, %eax                #  46:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  47:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  48:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $62995, %eax            #  49:     mul    t27 <- 62995, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  50:     add    t28 <- t27, 7974
    movl    $7974, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  51:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  52:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  53:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  54:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  55:     add    t31 <- t30, 43221
    movl    $43221, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $4, %eax                #  56:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  57:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  58:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  59:     mul    t33 <- t31, t32
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  60:     add    t34 <- t33, 68282
    movl    $68282, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $5, %eax                #  61:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  62:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  63:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  64:     mul    t36 <- t34, t35
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  65:     add    t37 <- t36, 14675
    movl    $14675, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  66:     mul    t38 <- t37, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    8(%ebp), %eax           #  67:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  68:     call   t39 <- DOFS
    addl    $4, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  69:     add    t40 <- t38, t39
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    8(%ebp), %eax           #  70:     add    t41 <- v1, t40
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movzbl  -73(%ebp), %eax         #  71:     assign @t41 <- t25
    movl    -140(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_15                 #  72:     goto   15
l_f1_17_if_false:
l_f1_15:

l_f1_exit:
    # epilogue
    addl    $144, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 7 of <array 10 of <array 10 of <array 4 of <array 7 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 1 of <array 5 of <array 10 of <array 3 of <array 8 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 9 of <array 6 of <array 10 of <array 2 of <array 7 of <bool>>>>>>> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 1 of <array 7 of <array 7 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 2 of <array 5 of <array 2 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -32(%ebp)   4  [ $v5       <int> %ebp-32 ]
    #   -1256(%ebp)  1224  [ $v6       <array 1 of <array 5 of <array 10 of <array 3 of <array 8 of <char>>>>>> %ebp-1256 ]
    #   -79680(%ebp)  78424  [ $v7       <array 7 of <array 10 of <array 10 of <array 4 of <array 7 of <int>>>>>> %ebp-79680 ]
    #   -87264(%ebp)  7584  [ $v8       <array 9 of <array 6 of <array 10 of <array 2 of <array 7 of <bool>>>>>> %ebp-87264 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $87252, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21813, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1256(%ebp)          # local array 'v6': 5 dimensions
    movl    $1,-1252(%ebp)          #   dimension 1: 1 elements
    movl    $5,-1248(%ebp)          #   dimension 2: 5 elements
    movl    $10,-1244(%ebp)         #   dimension 3: 10 elements
    movl    $3,-1240(%ebp)          #   dimension 4: 3 elements
    movl    $8,-1236(%ebp)          #   dimension 5: 8 elements
    movl    $5,-79680(%ebp)         # local array 'v7': 5 dimensions
    movl    $7,-79676(%ebp)         #   dimension 1: 7 elements
    movl    $10,-79672(%ebp)        #   dimension 2: 10 elements
    movl    $10,-79668(%ebp)        #   dimension 3: 10 elements
    movl    $4,-79664(%ebp)         #   dimension 4: 4 elements
    movl    $7,-79660(%ebp)         #   dimension 5: 7 elements
    movl    $5,-87264(%ebp)         # local array 'v8': 5 dimensions
    movl    $9,-87260(%ebp)         #   dimension 1: 9 elements
    movl    $6,-87256(%ebp)         #   dimension 2: 6 elements
    movl    $10,-87252(%ebp)        #   dimension 3: 10 elements
    movl    $2,-87248(%ebp)         #   dimension 4: 2 elements
    movl    $7,-87244(%ebp)         #   dimension 5: 7 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $43824, %eax            #   1:     assign v5 <- 43824
    movl    %eax, -32(%ebp)        
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $99, %eax               #   5:     if     99 > 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   6:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_10_if_false        #   8:     goto   10_if_false
    jmp     l_f2_13_if_false        #   9:     goto   13_if_false
    jmp     l_f2_11                 #  10:     goto   11
l_f2_13_if_false:
l_f2_11:
    jmp     l_f2_8                  #  13:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_4                  #  16:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $68825, %eax            #  19:     if     68825 >= 79155 goto 15
    movl    $79155, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_15                
    jmp     l_f2_16                 #  20:     goto   16
l_f2_15:
    movl    $1, %eax                #  22:     assign t8 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_17                 #  23:     goto   17
l_f2_16:
    movl    $0, %eax                #  25:     assign t8 <- 0
    movb    %al, -22(%ebp)         
l_f2_17:
    movzbl  -22(%ebp), %eax         #  27:     param  3 <- t8
    pushl   %eax                   
    leal    -87264(%ebp), %eax      #  28:     &()    t9 <- v8
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     param  2 <- t9
    pushl   %eax                   
    leal    -79680(%ebp), %eax      #  30:     &()    t10 <- v7
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  31:     param  1 <- t10
    pushl   %eax                   
    leal    -1256(%ebp), %eax       #  32:     &()    t11 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  34:     call   t12 <- f1
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  35:     assign v4 <- t12
    movb    %al, 20(%ebp)          

l_f2_exit:
    # epilogue
    addl    $87252, %esp            # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 2 of <array 5 of <array 2 of <array 5 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 1 of <array 7 of <array 7 of <array 3 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <bool> %ebp-26 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_5                #   1:     goto   5
l_test_5:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_7                #   4:     goto   7
    movl    $0, %eax                #   5:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_7:
    movzbl  -14(%ebp), %eax         #   7:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_1                #   8:     goto   1
l_test_1:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  11:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  12:     if     t2 > 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_12_if_true      
    jmp     l_test_13_if_false      #  13:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  15:     goto   11
l_test_13_if_false:
l_test_11:
l_test_16_while_cond:
    jmp     l_test_15               #  19:     goto   15
    movl    $99, %eax               #  20:     if     99 > 97 goto 23
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_23              
    jmp     l_test_24               #  21:     goto   24
l_test_23:
    movl    $1, %eax                #  23:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_25               #  24:     goto   25
l_test_24:
    movl    $0, %eax                #  26:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_25:
    movzbl  -16(%ebp), %eax         #  28:     param  3 <- t3
    pushl   %eax                   
    movl    $100, %eax              #  29:     param  2 <- 100
    pushl   %eax                   
    leal    v2, %eax                #  30:     &()    t4 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     param  1 <- t4
    pushl   %eax                   
    leal    v1, %eax                #  32:     &()    t5 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  34:     call   t6 <- f2
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movl    $98, %eax               #  35:     if     98 >= t6 goto 19
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_19              
    jmp     l_test_20               #  36:     goto   20
l_test_19:
    movl    $1, %eax                #  38:     assign t7 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_21               #  39:     goto   21
l_test_20:
    movl    $0, %eax                #  41:     assign t7 <- 0
    movb    %al, -26(%ebp)         
l_test_21:
    movzbl  -26(%ebp), %eax         #  43:     assign v0 <- t7
    movb    %al, v0                
    jmp     l_test_16_while_cond    #  44:     goto   16_while_cond
l_test_15:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 2 of <array 1 of <array 7 of <array 7 of <array 3 of <int>>>>>>
    .long    5
    .long    2
    .long    1
    .long    7
    .long    7
    .long    3
    .skip 1176
v2:                                 # <array 4 of <array 2 of <array 5 of <array 2 of <array 5 of <int>>>>>>
    .long    5
    .long    4
    .long    2
    .long    5
    .long    2
    .long    5
    .skip 1600








    # end of global data section
    #-----------------------------------------

    .end
##################################################
