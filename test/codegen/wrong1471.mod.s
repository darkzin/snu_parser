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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 59 of <array 46 of <array 71 of <array 63 of <array 62 of <int>>>>>>> %ebp+12 ]

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
    movl    $98, %eax               #   0:     if     98 < 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_13                 #   9:     goto   13
l_f0_13:
    jmp     l_f0_11                 #  11:     goto   11
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_12                 #  13:     goto   12
l_f0_11:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_12:
    movzbl  -14(%ebp), %eax         #  17:     if     t4 = 0 goto 6
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6                 
    jmp     l_f0_7                  #  18:     goto   7
l_f0_6:
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_8                  #  21:     goto   8
l_f0_7:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f0_8:
    movzbl  -15(%ebp), %eax         #  25:     return t5
    jmp     l_f0_exit              
    jmp     l_f0_17                 #  26:     goto   17
    jmp     l_f0_18                 #  27:     goto   18
    jmp     l_f0_18                 #  28:     goto   18
l_f0_17:
    movl    $1, %eax                #  30:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_19                 #  31:     goto   19
l_f0_18:
    movl    $0, %eax                #  33:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f0_19:
    movzbl  -16(%ebp), %eax         #  35:     return t6
    jmp     l_f0_exit              

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
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t4       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t5       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t6       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t7       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t8       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t9       <int> %ebp-144 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 16 of <array 87 of <array 3 of <array 91 of <array 39 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 48 of <array 60 of <array 3 of <array 57 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 90 of <array 47 of <array 54 of <array 71 of <array 65 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 96 of <array 69 of <array 20 of <array 26 of <array 18 of <int>>>>>>> %ebp+20 ]
    #   -148(%ebp)   4  [ $v4       <int> %ebp-148 ]
    #   -149(%ebp)   1  [ $v5       <char> %ebp-149 ]

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
    movl    $41661, %eax            #   0:     if     41661 = 44977 goto 1_if_true
    movl    $44977, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $100, %eax              #   3:     if     100 > 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   4:     goto   6_if_false
l_f1_5_if_true:
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   7:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   8:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $64650, %eax            #   9:     mul    t4 <- 64650, t3
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  10:     add    t5 <- t4, 28076
    movl    $28076, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  12:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  13:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  14:     mul    t7 <- t5, t6
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  15:     add    t8 <- t7, 29341
    movl    $29341, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  17:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  18:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  19:     mul    t10 <- t8, t9
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     add    t11 <- t10, 97504
    movl    $97504, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  23:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  24:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t14 <- t13, 48612
    movl    $48612, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    20(%ebp), %eax          #  27:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  28:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    20(%ebp), %eax          #  30:     add    t18 <- v3, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $50255, %eax            #  31:     assign @t18 <- 50255
    movl    -48(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_4                  #  32:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_0                  #  35:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $36821, %eax            #  38:     mul    t19 <- 36821, 3745
    movl    $3745, %ebx            
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    $2, %eax                #  39:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  40:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  41:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  42:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  43:     add    t22 <- t21, 45139
    movl    $45139, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  44:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  45:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  46:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  47:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  48:     add    t25 <- t24, 70228
    movl    $70228, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  49:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  50:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  51:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  52:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  53:     add    t28 <- t27, 62772
    movl    $62772, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  54:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  55:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  56:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  57:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  58:     add    t31 <- t30, 22454
    movl    $22454, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  59:     mul    t32 <- t31, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    16(%ebp), %eax          #  60:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  61:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  62:     add    t34 <- t32, t33
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    16(%ebp), %eax          #  63:     add    t35 <- v2, t34
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $100, %eax              #  64:     assign @t35 <- 100
    movl    -120(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $97, %eax               #  65:     if     97 <= 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  66:     goto   12_if_false
l_f1_11_if_true:
    movl    $97, %eax               #  68:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_10                 #  69:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $140, %esp              # remove locals
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
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 96 of <array 69 of <array 20 of <array 26 of <array 18 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 90 of <array 47 of <array 54 of <array 71 of <array 65 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 96 of <array 48 of <array 60 of <array 3 of <array 57 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 16 of <array 87 of <array 3 of <array 91 of <array 39 of <char>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $v0       <char> %ebp-53 ]
    #   -14820704(%ebp)  14820648  [ $v1       <array 16 of <array 87 of <array 3 of <array 91 of <array 39 of <char>>>>>> %ebp-14820704 ]
    #   -203933048(%ebp)  189112344  [ $v2       <array 96 of <array 48 of <array 60 of <array 3 of <array 57 of <int>>>>>> %ebp-203933048 ]
    #   -1258091372(%ebp)  1054158324  [ $v3       <array 90 of <array 47 of <array 54 of <array 71 of <array 65 of <char>>>>>> %ebp-1258091372 ]
    #   -1506093956(%ebp)  248002584  [ $v4       <array 96 of <array 69 of <array 20 of <array 26 of <array 18 of <int>>>>>> %ebp-1506093956 ]
    #   -1506093960(%ebp)   4  [ $v5       <int> %ebp-1506093960 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1506093948, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $376523487, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-14820704(%ebp)      # local array 'v1': 5 dimensions
    movl    $16,-14820700(%ebp)     #   dimension 1: 16 elements
    movl    $87,-14820696(%ebp)     #   dimension 2: 87 elements
    movl    $3,-14820692(%ebp)      #   dimension 3: 3 elements
    movl    $91,-14820688(%ebp)     #   dimension 4: 91 elements
    movl    $39,-14820684(%ebp)     #   dimension 5: 39 elements
    movl    $5,-203933048(%ebp)     # local array 'v2': 5 dimensions
    movl    $96,-203933044(%ebp)    #   dimension 1: 96 elements
    movl    $48,-203933040(%ebp)    #   dimension 2: 48 elements
    movl    $60,-203933036(%ebp)    #   dimension 3: 60 elements
    movl    $3,-203933032(%ebp)     #   dimension 4: 3 elements
    movl    $57,-203933028(%ebp)    #   dimension 5: 57 elements
    movl    $5,-1258091372(%ebp)    # local array 'v3': 5 dimensions
    movl    $90,-1258091368(%ebp)   #   dimension 1: 90 elements
    movl    $47,-1258091364(%ebp)   #   dimension 2: 47 elements
    movl    $54,-1258091360(%ebp)   #   dimension 3: 54 elements
    movl    $71,-1258091356(%ebp)   #   dimension 4: 71 elements
    movl    $65,-1258091352(%ebp)   #   dimension 5: 65 elements
    movl    $5,-1506093956(%ebp)    # local array 'v4': 5 dimensions
    movl    $96,-1506093952(%ebp)   #   dimension 1: 96 elements
    movl    $69,-1506093948(%ebp)   #   dimension 2: 69 elements
    movl    $20,-1506093944(%ebp)   #   dimension 3: 20 elements
    movl    $26,-1506093940(%ebp)   #   dimension 4: 26 elements
    movl    $18,-1506093936(%ebp)   #   dimension 5: 18 elements

    # function body
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, -53(%ebp)         
    leal    -1506093956(%ebp), %eax #   1:     &()    t3 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     param  3 <- t3
    pushl   %eax                   
    leal    -1258091372(%ebp), %eax #   3:     &()    t4 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     param  2 <- t4
    pushl   %eax                   
    leal    -203933048(%ebp), %eax  #   5:     &()    t5 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     param  1 <- t5
    pushl   %eax                   
    leal    -14820704(%ebp), %eax   #   7:     &()    t6 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   8:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #   9:     call   t7 <- f1
    addl    $16, %esp              
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  10:     return t7
    jmp     l_f2_exit              
    call    dummyINTfunc            #  11:     call   t8 <- dummyINTfunc
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  12:     mul    t9 <- t8, 61796
    movl    $61796, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  13:     mul    t10 <- t9, 65600
    movl    $65600, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     mul    t11 <- t10, 42617
    movl    $42617, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     div    t12 <- t11, 23024
    movl    $23024, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     assign v5 <- t12
    movl    %eax, -1506093960(%ebp)

l_f2_exit:
    # epilogue
    addl    $1506093948, %esp       # remove locals
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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_4_while_cond:
    jmp     l_test_3                #   2:     goto   3
    jmp     l_test_4_while_cond     #   3:     goto   4_while_cond
l_test_3:
    jmp     l_test_exit            
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_8_if_true        #   9:     goto   8_if_true
    jmp     l_test_8_if_true        #  10:     goto   8_if_true
    call    dummyBOOLfunc           #  11:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  12:     if     t0 = 1 goto 8_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8_if_true       
    jmp     l_test_9_if_false       #  13:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  15:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $80946, %eax            #  18:     if     80946 = 52287 goto 13
    movl    $52287, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_13              
    jmp     l_test_14               #  19:     goto   14
l_test_13:
    movl    $1, %eax                #  21:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_15               #  22:     goto   15
l_test_14:
    movl    $0, %eax                #  24:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_15:
    movzbl  -14(%ebp), %eax         #  26:     assign v0 <- t1
    movb    %al, v0                
    call    dummyCHARfunc           #  27:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
