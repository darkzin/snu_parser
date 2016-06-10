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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_4_if_false         #   2:     goto   4_if_false
l_f0_6_while_cond:
    jmp     l_f0_5                  #   4:     goto   5
    jmp     l_f0_6_while_cond       #   5:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_2                  #   7:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <int> %ebp-116 ]
    #   -117(%ebp)   1  [ $t36      <bool> %ebp-117 ]
    #   -124(%ebp)   4  [ $t4       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t5       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t6       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t7       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t8       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t9       <int> %ebp-144 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 6 of <array 7 of <array 3 of <array 5 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 10 of <array 6 of <array 2 of <array 7 of <char>>>>>>> %ebp+20 ]
    #   -145(%ebp)   1  [ $v5       <bool> %ebp-145 ]

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
    movl    $100, %eax              #   0:     if     100 # 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   4:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   5:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    $22689, %eax            #   6:     mul    t5 <- 22689, t4
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #   7:     add    t6 <- t5, 41942
    movl    $41942, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  11:     mul    t8 <- t6, t7
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  12:     add    t9 <- t8, 53026
    movl    $53026, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -144(%ebp), %eax        #  16:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t12 <- t11, 62286
    movl    $62286, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  21:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     add    t15 <- t14, 97775
    movl    $97775, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    16(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  25:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  26:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  27:     add    t19 <- v3, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $99, %eax               #  28:     assign @t19 <- 99
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $78243, %eax            #  29:     if     78243 <= 40453 goto 6_if_true
    movl    $40453, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  30:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #  32:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $0, %eax                #  35:     assign v5 <- 0
    movb    %al, -145(%ebp)        
    call    dummyProcedure          #  36:     call   dummyProcedure
    jmp     l_f1_0                  #  37:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_exit              
    movl    $2, %eax                #  41:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  42:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  43:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $10313, %eax            #  44:     mul    t21 <- 10313, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  45:     add    t22 <- t21, 8374
    movl    $8374, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  46:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  47:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  48:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  49:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  50:     add    t25 <- t24, 75989
    movl    $75989, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  51:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  52:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  53:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  54:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  55:     add    t28 <- t27, 17893
    movl    $17893, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  56:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  57:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  58:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  59:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  60:     add    t31 <- t30, 67467
    movl    $67467, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  61:     mul    t32 <- t31, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    20(%ebp), %eax          #  62:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  63:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  64:     add    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    20(%ebp), %eax          #  65:     add    t35 <- v4, t34
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $98, %eax               #  66:     assign @t35 <- 98
    movl    -116(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_18_if_false        #  67:     goto   18_if_false
    jmp     l_f1_16                 #  68:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_19                 #  71:     goto   19
l_f1_19:
    call    dummyBOOLfunc           #  73:     call   t36 <- dummyBOOLfunc
    movb    %al, -117(%ebp)        
l_f1_24_while_cond:
    movl    $0, %eax                #  75:     if     0 = 1 goto 25_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_25_while_body     
    jmp     l_f1_23                 #  76:     goto   23
l_f1_25_while_body:
    jmp     l_f1_24_while_cond      #  78:     goto   24_while_cond
l_f1_23:
    jmp     l_f1_12                 #  80:     goto   12
l_f1_12:

l_f1_exit:
    # epilogue
    addl    $136, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 9 of <array 10 of <array 6 of <array 2 of <array 7 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 1 of <array 6 of <array 7 of <array 3 of <array 5 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <char> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -680(%ebp)  654  [ $v5       <array 1 of <array 6 of <array 7 of <array 3 of <array 5 of <char>>>>>> %ebp-680 ]
    #   -8264(%ebp)  7584  [ $v6       <array 9 of <array 10 of <array 6 of <array 2 of <array 7 of <char>>>>>> %ebp-8264 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8252, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2063, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-680(%ebp)           # local array 'v5': 5 dimensions
    movl    $1,-676(%ebp)           #   dimension 1: 1 elements
    movl    $6,-672(%ebp)           #   dimension 2: 6 elements
    movl    $7,-668(%ebp)           #   dimension 3: 7 elements
    movl    $3,-664(%ebp)           #   dimension 4: 3 elements
    movl    $5,-660(%ebp)           #   dimension 5: 5 elements
    movl    $5,-8264(%ebp)          # local array 'v6': 5 dimensions
    movl    $9,-8260(%ebp)          #   dimension 1: 9 elements
    movl    $10,-8256(%ebp)         #   dimension 2: 10 elements
    movl    $6,-8252(%ebp)          #   dimension 3: 6 elements
    movl    $2,-8248(%ebp)          #   dimension 4: 2 elements
    movl    $7,-8244(%ebp)          #   dimension 5: 7 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     if     t5 <= 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $97, %eax               #   8:     if     97 # 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   9:     goto   7_if_false
l_f2_6_if_true:
l_f2_10_while_cond:
    jmp     l_f2_10_while_cond      #  12:     goto   10_while_cond
    leal    -8264(%ebp), %eax       #  13:     &()    t6 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  3 <- t6
    pushl   %eax                   
    leal    -680(%ebp), %eax        #  15:     &()    t7 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  2 <- t7
    pushl   %eax                   
    movl    $98, %eax               #  17:     param  1 <- 98
    pushl   %eax                   
    call    dummyCHARfunc           #  18:     call   t8 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  19:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  20:     call   f1
    addl    $16, %esp              
    movl    $8924, %eax             #  21:     assign v4 <- 8924
    movl    %eax, 20(%ebp)         
    jmp     l_f2_5                  #  22:     goto   5
l_f2_7_if_false:
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $8252, %esp             # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]

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
    movl    $72714, %eax            #   0:     add    t0 <- 72714, 41573
    movl    $41573, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   1:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 < t1 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_1               
    jmp     l_test_2                #   3:     goto   2
l_test_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_3:
    movzbl  -21(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_7_if_false       #  11:     goto   7_if_false
    jmp     l_test_exit            
    jmp     l_test_5                #  13:     goto   5
l_test_7_if_false:
l_test_5:
l_test_10_while_cond:
    jmp     l_test_9                #  17:     goto   9
    movl    $98, %eax               #  18:     if     98 > 99 goto 13_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_13_if_true      
    jmp     l_test_14_if_false      #  19:     goto   14_if_false
l_test_13_if_true:
l_test_17_while_cond:
    jmp     l_test_16               #  22:     goto   16
    jmp     l_test_17_while_cond    #  23:     goto   17_while_cond
l_test_16:
    jmp     l_test_12               #  25:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_10_while_cond    #  28:     goto   10_while_cond
l_test_9:
l_test_20_while_cond:
    call    dummyCHARfunc           #  31:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $97, %eax               #  32:     if     97 > t3 goto 21_while_body
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_21_while_body   
    jmp     l_test_19               #  33:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  35:     goto   20_while_cond
l_test_19:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
