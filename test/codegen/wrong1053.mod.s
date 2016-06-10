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
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t30      <int> %ebp-92 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 99 of <array 83 of <array 51 of <array 80 of <array 56 of <bool>>>>>>> %ebp+12 ]
    #    -93(%ebp)   1  [ $v2       <char> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     if     99 <= 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     return t10
    jmp     l_f0_exit              
l_f0_6_while_cond:
    jmp     l_f0_5                  #  10:     goto   5
l_f0_10_while_cond:
    movl    $97, %eax               #  12:     if     97 <= 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_11_while_body     
    jmp     l_f0_9                  #  13:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  15:     goto   10_while_cond
l_f0_9:
l_f0_14_while_cond:
    movl    $69146, %eax            #  18:     if     69146 >= 83652 goto 15_while_body
    movl    $83652, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_15_while_body     
    jmp     l_f0_13                 #  19:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  21:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_17                 #  23:     goto   17
l_f0_17:
l_f0_21_while_cond:
    movl    $98, %eax               #  26:     if     98 <= 97 goto 22_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_22_while_body     
    jmp     l_f0_20                 #  27:     goto   20
l_f0_22_while_body:
    jmp     l_f0_21_while_cond      #  29:     goto   21_while_cond
l_f0_20:
    movl    $0, %eax                #  31:     if     0 # 0 goto 25_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_25_if_true        
    jmp     l_f0_26_if_false        #  32:     goto   26_if_false
l_f0_25_if_true:
    jmp     l_f0_24                 #  34:     goto   24
l_f0_26_if_false:
l_f0_24:
    movl    $98, %eax               #  37:     assign v2 <- 98
    movb    %al, -93(%ebp)         
    call    dummyCHARfunc           #  38:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_30                 #  39:     goto   30
l_f0_30:
    jmp     l_f0_6_while_cond       #  41:     goto   6_while_cond
l_f0_5:
    call    dummyINTfunc            #  43:     call   t12 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  44:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  45:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  46:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  47:     mul    t14 <- t12, t13
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $83234, %eax            #  48:     mul    t15 <- 83234, 68895
    movl    $68895, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  49:     div    t16 <- t15, 93608
    movl    $93608, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  50:     add    t17 <- t14, t16
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  51:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  52:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  53:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  54:     mul    t19 <- t17, t18
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  55:     add    t20 <- t19, 73453
    movl    $73453, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  56:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  57:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  58:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  59:     mul    t22 <- t20, t21
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  60:     add    t23 <- t22, 67262
    movl    $67262, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  61:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  62:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  63:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  64:     mul    t25 <- t23, t24
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  65:     add    t26 <- t25, 41058
    movl    $41058, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  66:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  67:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  68:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  69:     add    t29 <- t27, t28
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    12(%ebp), %eax          #  70:     add    t30 <- v1, t29
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $1, %eax                #  71:     assign @t30 <- 1
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
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
    #   -145(%ebp)   1  [ $t43      <bool> %ebp-145 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 74 of <array 69 of <array 47 of <array 47 of <array 39 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 51 of <array 64 of <array 69 of <array 40 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 23 of <array 45 of <array 44 of <array 49 of <array 84 of <bool>>>>>>> %ebp+16 ]
    #   -152(%ebp)   4  [ $v3       <int> %ebp-152 ]
    #   -153(%ebp)   1  [ $v4       <bool> %ebp-153 ]

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
    jmp     l_f1_exit              
    call    dummyINTfunc            #   1:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   4:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $74130, %eax            #   5:     mul    t12 <- 74130, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     add    t13 <- t12, 66958
    movl    $66958, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   9:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  10:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     add    t16 <- t15, 72900
    movl    $72900, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  15:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  16:     add    t19 <- t18, 98205
    movl    $98205, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  20:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  21:     add    t22 <- t21, 58480
    movl    $58480, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  22:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  24:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  25:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  26:     add    t26 <- v0, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -16(%ebp), %eax         #  27:     assign @t26 <- t10
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           
l_f1_3_while_cond:
    movl    $57437, %eax            #  29:     if     57437 = 12821 goto 4_while_body
    movl    $12821, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_4_while_body      
    jmp     l_f1_2                  #  30:     goto   2
l_f1_4_while_body:
    movl    $2, %eax                #  32:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  33:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  34:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $66719, %eax            #  35:     mul    t28 <- 66719, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  36:     add    t29 <- t28, 54771
    movl    $54771, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  37:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  38:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  39:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  40:     mul    t31 <- t29, t30
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  41:     add    t32 <- t31, 65926
    movl    $65926, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $4, %eax                #  42:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  43:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  44:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  45:     mul    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  46:     add    t35 <- t34, 59120
    movl    $59120, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $5, %eax                #  47:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  48:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  49:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  50:     mul    t37 <- t35, t36
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  51:     add    t38 <- t37, 22572
    movl    $22572, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  52:     mul    t39 <- t38, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    16(%ebp), %eax          #  53:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  54:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  55:     add    t41 <- t39, t40
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    16(%ebp), %eax          #  56:     add    t42 <- v2, t41
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $0, %eax                #  57:     assign @t42 <- 0
    movl    -144(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_exit              
l_f1_9_while_cond:
    jmp     l_f1_9_while_cond       #  60:     goto   9_while_cond
    call    dummyBOOLfunc           #  61:     call   t43 <- dummyBOOLfunc
    movb    %al, -145(%ebp)        
    jmp     l_f1_3_while_cond       #  62:     goto   3_while_cond
l_f1_2:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t15      <bool> %ebp-27 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    movl    $11541, %eax            #   0:     if     11541 <= 84364 goto 1_if_true
    movl    $84364, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $60655, %eax            #   3:     assign v0 <- 60655
    movl    %eax, 8(%ebp)          
    movl    $0, %eax                #   4:     return 0
    jmp     l_f2_exit              
l_f2_7_while_cond:
    movl    $0, %eax                #   6:     if     0 # 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #   7:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   9:     goto   7_while_cond
l_f2_6:
    movl    $79768, %eax            #  11:     assign v0 <- 79768
    movl    %eax, 8(%ebp)          
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $49486, %eax            #  15:     add    t10 <- 49486, 17938
    movl    $17938, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     add    t11 <- t10, 1655
    movl    $1655, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t12 <- t11, 19396
    movl    $19396, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $48362, %eax            #  18:     if     48362 <= t12 goto 12
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_12                
    jmp     l_f2_13                 #  19:     goto   13
l_f2_12:
    movl    $1, %eax                #  21:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_14                 #  22:     goto   14
l_f2_13:
    movl    $0, %eax                #  24:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f2_14:
    movzbl  -25(%ebp), %eax         #  26:     assign v1 <- t13
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #  27:     call   t14 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movl    $97, %eax               #  28:     if     97 <= t14 goto 17
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_17                
    jmp     l_f2_18                 #  29:     goto   18
l_f2_17:
    movl    $1, %eax                #  31:     assign t15 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f2_19                 #  32:     goto   19
l_f2_18:
    movl    $0, %eax                #  34:     assign t15 <- 0
    movb    %al, -27(%ebp)         
l_f2_19:
    movzbl  -27(%ebp), %eax         #  36:     return t15
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 99 of <array 83 of <array 51 of <array 80 of <array 56 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <ptr(4) to <array 23 of <array 45 of <array 44 of <array 49 of <array 84 of <bool>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <ptr(4) to <array 97 of <array 51 of <array 64 of <array 69 of <array 40 of <bool>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <ptr(4) to <array 74 of <array 69 of <array 47 of <array 47 of <array 39 of <int>>>>>>> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $81368, %eax            #   2:     sub    t0 <- 81368, 19482
    movl    $19482, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $95716, %eax            #   3:     if     95716 >= t0 goto 3_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_5                #   6:     goto   5
l_test_5:
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
    movl    $59828, %eax            #  10:     add    t1 <- 59828, 22024
    movl    $22024, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     sub    t2 <- t1, 43526
    movl    $43526, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $57921, %eax            #  12:     if     57921 >= t2 goto 9_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_9_if_true       
    jmp     l_test_10_if_false      #  13:     goto   10_if_false
l_test_9_if_true:
    movl    $0, %eax                #  15:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_8                #  16:     goto   8
l_test_10_if_false:
l_test_8:
    call    ReadInt                 #  19:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     if     t3 < 63952 goto 14_if_true
    movl    $63952, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_14_if_true      
    jmp     l_test_15_if_false      #  21:     goto   15_if_false
l_test_14_if_true:
    call    dummyCHARfunc           #  23:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_13               #  24:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $7085, %eax             #  27:     if     7085 >= 49174 goto 19_if_true
    movl    $49174, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_19_if_true      
    jmp     l_test_20_if_false      #  28:     goto   20_if_false
l_test_19_if_true:
    leal    v1, %eax                #  30:     &()    t5 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     param  1 <- t5
    pushl   %eax                   
    movl    $0, %eax                #  32:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  33:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
    leal    v4, %eax                #  34:     &()    t7 <- v4
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  35:     param  2 <- t7
    pushl   %eax                   
    leal    v3, %eax                #  36:     &()    t8 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  37:     param  1 <- t8
    pushl   %eax                   
    leal    v2, %eax                #  38:     &()    t9 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  39:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  40:     call   f1
    addl    $12, %esp              
    jmp     l_test_26_if_false      #  41:     goto   26_if_false
    jmp     l_test_24               #  42:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_18               #  45:     goto   18
l_test_20_if_false:
l_test_18:

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
v1:                                 # <array 99 of <array 83 of <array 51 of <array 80 of <array 56 of <bool>>>>>>
    .long    5
    .long   99
    .long   83
    .long   51
    .long   80
    .long   56
    .skip 1877420160
v2:                                 # <array 74 of <array 69 of <array 47 of <array 47 of <array 39 of <int>>>>>>
    .long    5
    .long   74
    .long   69
    .long   47
    .long   47
    .long   39
    .skip 1759548024
v3:                                 # <array 97 of <array 51 of <array 64 of <array 69 of <array 40 of <bool>>>>>>
    .long    5
    .long   97
    .long   51
    .long   64
    .long   69
    .long   40
    .skip 873838080
v4:                                 # <array 23 of <array 45 of <array 44 of <array 49 of <array 84 of <bool>>>>>>
    .long    5
    .long   23
    .long   45
    .long   44
    .long   49
    .long   84
    .skip 187442640








    # end of global data section
    #-----------------------------------------

    .end
##################################################
