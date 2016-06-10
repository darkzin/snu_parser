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
    #   -141(%ebp)   1  [ $t6       <bool> %ebp-141 ]
    #   -142(%ebp)   1  [ $t7       <bool> %ebp-142 ]
    #   -143(%ebp)   1  [ $t8       <char> %ebp-143 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 5 of <array 6 of <array 8 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 7 of <array 4 of <array 6 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 3 of <array 5 of <array 8 of <array 2 of <char>>>>>>> %ebp+16 ]
    #   -149(%ebp)   1  [ $v3       <bool> %ebp-149 ]
    #   -150(%ebp)   1  [ $v4       <char> %ebp-150 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t6 <- dummyBOOLfunc
    movb    %al, -141(%ebp)        
    movl    $92965, %eax            #   2:     if     92965 < 39448 goto 5
    movl    $39448, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_5                 
    jmp     l_f0_6                  #   3:     goto   6
l_f0_5:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -142(%ebp)        
    jmp     l_f0_7                  #   6:     goto   7
l_f0_6:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -142(%ebp)        
l_f0_7:
    movzbl  -142(%ebp), %eax        #  10:     assign v3 <- t7
    movb    %al, -149(%ebp)        
    call    WriteLn                 #  11:     call   WriteLn
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  15:     call   t8 <- dummyCHARfunc
    movb    %al, -143(%ebp)        
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    $2266, %eax             #  19:     mul    t10 <- 2266, t9
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     add    t11 <- t10, 54337
    movl    $54337, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  21:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  23:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  24:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t14 <- t13, 26142
    movl    $26142, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  26:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  28:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     add    t17 <- t16, 84567
    movl    $84567, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  31:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  32:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  33:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  34:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  35:     add    t20 <- t19, 84944
    movl    $84944, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  36:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  37:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  38:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  39:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  40:     add    t24 <- v0, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -143(%ebp), %eax        #  41:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  42:     call   t25 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    movl    $97, %eax               #  43:     if     97 <= t25 goto 12_if_true
    movzbl  -73(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  44:     goto   13_if_false
l_f0_12_if_true:
    movl    $2, %eax                #  46:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  47:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  48:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $43598, %eax            #  49:     mul    t27 <- 43598, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  50:     add    t28 <- t27, 41823
    movl    $41823, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  51:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  52:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  53:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  54:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  55:     add    t31 <- t30, 60238
    movl    $60238, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $4, %eax                #  56:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  57:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  58:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  59:     mul    t33 <- t31, t32
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  60:     add    t34 <- t33, 41587
    movl    $41587, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $5, %eax                #  61:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  62:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  63:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  64:     mul    t36 <- t34, t35
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  65:     add    t37 <- t36, 97609
    movl    $97609, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  66:     mul    t38 <- t37, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    16(%ebp), %eax          #  67:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  68:     call   t39 <- DOFS
    addl    $4, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  69:     add    t40 <- t38, t39
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    16(%ebp), %eax          #  70:     add    t41 <- v2, t40
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $97, %eax               #  71:     assign @t41 <- 97
    movl    -140(%ebp), %edi       
    movb    %al, (%edi)            
l_f0_17_while_cond:
    movl    $100, %eax              #  73:     if     100 < 97 goto 18_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_18_while_body     
    jmp     l_f0_16                 #  74:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  76:     goto   17_while_cond
l_f0_16:
l_f0_21_while_cond:
    movl    $22054, %eax            #  79:     if     22054 > 59990 goto 22_while_body
    movl    $59990, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_22_while_body     
    jmp     l_f0_20                 #  80:     goto   20
l_f0_22_while_body:
    jmp     l_f0_21_while_cond      #  82:     goto   21_while_cond
l_f0_20:
    jmp     l_f0_11                 #  84:     goto   11
l_f0_13_if_false:
l_f0_11:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 2 of <array 7 of <array 4 of <array 6 of <array 7 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 7 of <array 5 of <array 6 of <array 8 of <array 5 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <array 3 of <array 5 of <array 8 of <array 2 of <char>>>>>>> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 4 of <array 4 of <array 3 of <array 8 of <char>>>>>>> %ebp+12 ]
    #    -41(%ebp)   1  [ $v2       <bool> %ebp-41 ]
    #   -8468(%ebp)  8424  [ $v3       <array 7 of <array 5 of <array 6 of <array 8 of <array 5 of <char>>>>>> %ebp-8468 ]
    #   -17900(%ebp)  9432  [ $v4       <array 2 of <array 7 of <array 4 of <array 6 of <array 7 of <int>>>>>> %ebp-17900 ]
    #   -19124(%ebp)  1224  [ $v5       <array 5 of <array 3 of <array 5 of <array 8 of <array 2 of <char>>>>>> %ebp-19124 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $19112, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4778, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-8468(%ebp)          # local array 'v3': 5 dimensions
    movl    $7,-8464(%ebp)          #   dimension 1: 7 elements
    movl    $5,-8460(%ebp)          #   dimension 2: 5 elements
    movl    $6,-8456(%ebp)          #   dimension 3: 6 elements
    movl    $8,-8452(%ebp)          #   dimension 4: 8 elements
    movl    $5,-8448(%ebp)          #   dimension 5: 5 elements
    movl    $5,-17900(%ebp)         # local array 'v4': 5 dimensions
    movl    $2,-17896(%ebp)         #   dimension 1: 2 elements
    movl    $7,-17892(%ebp)         #   dimension 2: 7 elements
    movl    $4,-17888(%ebp)         #   dimension 3: 4 elements
    movl    $6,-17884(%ebp)         #   dimension 4: 6 elements
    movl    $7,-17880(%ebp)         #   dimension 5: 7 elements
    movl    $5,-19124(%ebp)         # local array 'v5': 5 dimensions
    movl    $5,-19120(%ebp)         #   dimension 1: 5 elements
    movl    $3,-19116(%ebp)         #   dimension 2: 3 elements
    movl    $5,-19112(%ebp)         #   dimension 3: 5 elements
    movl    $8,-19108(%ebp)         #   dimension 4: 8 elements
    movl    $2,-19104(%ebp)         #   dimension 5: 2 elements

    # function body
    call    dummyINTfunc            #   0:     call   t6 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     sub    t7 <- t6, 42638
    movl    $42638, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     return t7
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $63373, %eax            #   4:     add    t8 <- 63373, 13659
    movl    $13659, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $30394, %eax            #   5:     if     30394 < t8 goto 3_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_3_while_body      
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_while_body:
    movl    $46245, %eax            #   8:     return 46245
    jmp     l_f1_exit              
    movl    $0, %eax                #   9:     assign v2 <- 0
    movb    %al, -41(%ebp)         
    movl    $97, %eax               #  10:     if     97 > 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #  11:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #  13:     goto   7
l_f1_9_if_false:
l_f1_7:
    jmp     l_f1_2_while_cond       #  16:     goto   2_while_cond
l_f1_1:
    leal    -19124(%ebp), %eax      #  18:     &()    t9 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  19:     param  2 <- t9
    pushl   %eax                   
    leal    -17900(%ebp), %eax      #  20:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     param  1 <- t10
    pushl   %eax                   
    leal    -8468(%ebp), %eax       #  22:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  24:     call   t12 <- f0
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        

l_f1_exit:
    # epilogue
    addl    $19112, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 6 of <array 5 of <array 7 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 10 of <array 2 of <array 10 of <array 7 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
l_f2_1_while_cond:
    movl    $70825, %eax            #   1:     if     70825 # 40216 goto 2_while_body
    movl    $40216, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    movl    $69929, %eax            #   5:     if     69929 > 87545 goto 6_while_body
    movl    $87545, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   8:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_10                 #  12:     goto   10
    jmp     l_f2_10                 #  13:     goto   10
    movl    $1, %eax                #  14:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_11                 #  15:     goto   11
l_f2_10:
    movl    $0, %eax                #  17:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_11:
    movzbl  -13(%ebp), %eax         #  19:     return t6
    jmp     l_f2_exit              
    movl    $0, %eax                #  20:     if     0 = 0 goto 17_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  21:     goto   18_if_false
l_f2_17_if_true:
    movl    $0, %eax                #  23:     return 0
    jmp     l_f2_exit              
l_f2_22_while_cond:
    jmp     l_f2_22_while_cond      #  25:     goto   22_while_cond
    movl    $0, %eax                #  26:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_16                 #  27:     goto   16
l_f2_18_if_false:
l_f2_16:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 1 of <array 10 of <array 2 of <array 10 of <array 7 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 9 of <array 6 of <array 5 of <array 7 of <array 8 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     param  3 <- 99
    pushl   %eax                   
    leal    v1, %eax                #   2:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t1
    pushl   %eax                   
    call    dummyCHARfunc           #   4:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   5:     param  1 <- t2
    pushl   %eax                   
    leal    v0, %eax                #   6:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #   8:     call   t4 <- f2
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  10:     param  0 <- t5
    pushl   %eax                   
    call    WriteChar               #  11:     call   WriteChar
    addl    $4, %esp               

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
v0:                                 # <array 9 of <array 6 of <array 5 of <array 7 of <array 8 of <int>>>>>>
    .long    5
    .long    9
    .long    6
    .long    5
    .long    7
    .long    8
    .skip 60480
v1:                                 # <array 1 of <array 10 of <array 2 of <array 10 of <array 7 of <int>>>>>>
    .long    5
    .long    1
    .long   10
    .long    2
    .long   10
    .long    7
    .skip 5600








    # end of global data section
    #-----------------------------------------

    .end
##################################################
