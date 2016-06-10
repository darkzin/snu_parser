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
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t17      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t18      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t19      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t20      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t21      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t22      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t23      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t24      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t25      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t26      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t27      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t28      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t29      <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 8 of <array 2 of <array 3 of <array 8 of <int>>>>>>> %ebp+8 ]
    #    -84(%ebp)   4  [ $v2       <int> %ebp-84 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_exit              
    jmp     l_f0_4                  #   2:     goto   4
l_f0_4:
    movl    $72333, %eax            #   4:     if     72333 > 38859 goto 8_if_true
    movl    $38859, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   5:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #   7:     goto   7
l_f0_9_if_false:
l_f0_7:
l_f0_12_while_cond:
    jmp     l_f0_12_while_cond      #  11:     goto   12_while_cond
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  13:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_16_while_cond:
    movl    $97, %eax               #  17:     if     97 > 97 goto 17_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_17_while_body     
    jmp     l_f0_15                 #  18:     goto   15
l_f0_17_while_body:
l_f0_20_while_cond:
    jmp     l_f0_20_while_cond      #  21:     goto   20_while_cond
    jmp     l_f0_16_while_cond      #  22:     goto   16_while_cond
l_f0_15:
    movl    $38539, %eax            #  24:     div    t13 <- 38539, 42592
    movl    $42592, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  25:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  28:     mul    t15 <- t13, t14
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     add    t16 <- t15, 11862
    movl    $11862, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  30:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  33:     mul    t18 <- t16, t17
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  34:     add    t19 <- t18, 81637
    movl    $81637, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  37:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  38:     mul    t21 <- t19, t20
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  39:     add    t22 <- t21, 56283
    movl    $56283, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  41:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  42:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  43:     mul    t24 <- t22, t23
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  44:     add    t25 <- t24, 22699
    movl    $22699, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  45:     mul    t26 <- t25, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  46:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  47:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  48:     add    t28 <- t26, t27
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  49:     add    t29 <- v1, t28
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $72176, %eax            #  50:     assign @t29 <- 72176
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t14      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t17      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t18      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t19      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t20      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t21      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t22      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t23      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t24      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t25      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t26      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t27      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t28      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t29      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t30      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t31      <char> %ebp-85 ]
    #    -92(%ebp)   4  [ $t32      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t33      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t34      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t35      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t36      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t37      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t38      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t39      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t40      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t41      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t42      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t43      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t44      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t45      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t46      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t47      <int> %ebp-152 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 6 of <array 8 of <array 2 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 4 of <array 7 of <array 6 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #   -156(%ebp)   4  [ $v4       <int> %ebp-156 ]
    #   -157(%ebp)   1  [ $v5       <char> %ebp-157 ]

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
    call    dummyINTfunc            #   0:     call   t13 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_exit              
    movl    $98, %eax               #   2:     if     98 > 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_6                 
    jmp     l_f1_7                  #   3:     goto   7
l_f1_6:
    movl    $1, %eax                #   5:     assign t14 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_8                  #   6:     goto   8
l_f1_7:
    movl    $0, %eax                #   8:     assign t14 <- 0
    movb    %al, -17(%ebp)         
l_f1_8:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  11:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  12:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $30718, %eax            #  13:     mul    t16 <- 30718, t15
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     add    t17 <- t16, 52230
    movl    $52230, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  16:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  17:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  18:     mul    t19 <- t17, t18
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  19:     add    t20 <- t19, 19122
    movl    $19122, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  22:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  23:     mul    t22 <- t20, t21
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  24:     add    t23 <- t22, 41200
    movl    $41200, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  26:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  27:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  28:     mul    t25 <- t23, t24
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  29:     add    t26 <- t25, 93628
    movl    $93628, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  30:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  31:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  32:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  33:     add    t29 <- t27, t28
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    16(%ebp), %eax          #  34:     add    t30 <- v3, t29
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movzbl  -17(%ebp), %eax         #  35:     assign @t30 <- t14
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  36:     call   t31 <- dummyCHARfunc
    movb    %al, -85(%ebp)         
    jmp     l_f1_0                  #  37:     goto   0
l_f1_0:
l_f1_12_while_cond:
    jmp     l_f1_11                 #  40:     goto   11
    movl    $2, %eax                #  41:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  42:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  43:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $70438, %eax            #  44:     mul    t33 <- 70438, t32
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  45:     add    t34 <- t33, 20233
    movl    $20233, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $3, %eax                #  46:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  47:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  48:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  49:     mul    t36 <- t34, t35
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  50:     add    t37 <- t36, 37003
    movl    $37003, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $4, %eax                #  51:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  52:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  53:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  54:     mul    t39 <- t37, t38
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  55:     add    t40 <- t39, 34055
    movl    $34055, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $5, %eax                #  56:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  57:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  58:     call   t41 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  59:     mul    t42 <- t40, t41
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  60:     add    t43 <- t42, 12233
    movl    $12233, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  61:     mul    t44 <- t43, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    12(%ebp), %eax          #  62:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  63:     call   t45 <- DOFS
    addl    $4, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  64:     add    t46 <- t44, t45
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    12(%ebp), %eax          #  65:     add    t47 <- v2, t46
    movl    -148(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    $74811, %eax            #  66:     assign @t47 <- 74811
    movl    -152(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_f1_12_while_cond      #  67:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_20_if_false        #  69:     goto   20_if_false
    movl    $98, %eax               #  70:     assign v5 <- 98
    movb    %al, -157(%ebp)        
    jmp     l_f1_18                 #  71:     goto   18
l_f1_20_if_false:
l_f1_18:

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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 9 of <array 3 of <array 7 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 6 of <array 4 of <array 9 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -16(%ebp)   4  [ $v4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v5       <char> %ebp-17 ]

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
    movl    $1, %eax                #   0:     if     1 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $99, %eax               #   3:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   4:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_4                  #   5:     goto   4
l_f2_4:
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $100, %eax              #  10:     return 100
    jmp     l_f2_exit              
    movl    $47222, %eax            #  11:     if     47222 > 73078 goto 10_if_true
    movl    $73078, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  12:     goto   11_if_false
l_f2_10_if_true:
l_f2_14_while_cond:
    jmp     l_f2_14_while_cond      #  15:     goto   14_while_cond
    movl    $16928, %eax            #  16:     assign v4 <- 16928
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #  17:     assign v5 <- 97
    movb    %al, -17(%ebp)         
    jmp     l_f2_9                  #  18:     goto   9
l_f2_11_if_false:
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -20(%ebp)   4  [ $t10      <ptr(4) to <array 9 of <array 9 of <array 3 of <array 7 of <array 2 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t11      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t12      <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t2       <char> %ebp-23 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t9       <ptr(4) to <array 7 of <array 6 of <array 4 of <array 9 of <array 5 of <bool>>>>>>> %ebp-52 ]

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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
l_test_4_while_cond:
    jmp     l_test_4_while_cond     #   6:     goto   4_while_cond
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
l_test_7_while_cond:
    call    dummyCHARfunc           #  10:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  11:     call   t2 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movzbl  -14(%ebp), %eax         #  12:     if     t1 >= t2 goto 8_while_body
    movzbl  -23(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_8_while_body    
    jmp     l_test_6                #  13:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  15:     goto   7_while_cond
l_test_6:
    movl    $60630, %eax            #  17:     sub    t3 <- 60630, 26020
    movl    $26020, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     sub    t4 <- t3, 13422
    movl    $13422, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     sub    t5 <- t4, 76587
    movl    $76587, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     sub    t6 <- t5, 40125
    movl    $40125, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     sub    t7 <- t6, 49742
    movl    $49742, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  22:     if     t7 <= 98950 goto 11
    movl    $98950, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_11              
    jmp     l_test_12               #  23:     goto   12
l_test_11:
    movl    $1, %eax                #  25:     assign t8 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_test_13               #  26:     goto   13
l_test_12:
    movl    $0, %eax                #  28:     assign t8 <- 0
    movb    %al, -45(%ebp)         
l_test_13:
    movzbl  -45(%ebp), %eax         #  30:     assign v0 <- t8
    movb    %al, v0                
l_test_16_while_cond:
    jmp     l_test_15               #  32:     goto   15
    jmp     l_test_15               #  33:     goto   15
    jmp     l_test_15               #  34:     goto   15
    jmp     l_test_16_while_cond    #  35:     goto   16_while_cond
l_test_15:
l_test_22_while_cond:
    movl    $0, %eax                #  38:     param  2 <- 0
    pushl   %eax                   
    leal    v2, %eax                #  39:     &()    t9 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  40:     param  1 <- t9
    pushl   %eax                   
    leal    v1, %eax                #  41:     &()    t10 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  42:     param  0 <- t10
    pushl   %eax                   
    call    f2                      #  43:     call   t11 <- f2
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  44:     if     97 <= t11 goto 23_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_23_while_body   
    jmp     l_test_21               #  45:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  47:     goto   22_while_cond
l_test_21:
    jmp     l_test_30               #  49:     goto   30
    jmp     l_test_30               #  50:     goto   30
    movl    $1, %eax                #  51:     assign t12 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_31               #  52:     goto   31
l_test_30:
    movl    $0, %eax                #  54:     assign t12 <- 0
    movb    %al, -22(%ebp)         
l_test_31:
    movl    $1, %eax                #  56:     if     1 # t12 goto 26_if_true
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_26_if_true      
    jmp     l_test_27_if_false      #  57:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  59:     goto   25
l_test_27_if_false:
l_test_25:

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
v1:                                 # <array 9 of <array 9 of <array 3 of <array 7 of <array 2 of <bool>>>>>>
    .long    5
    .long    9
    .long    9
    .long    3
    .long    7
    .long    2
    .skip 3402
    .align   4
v2:                                 # <array 7 of <array 6 of <array 4 of <array 9 of <array 5 of <bool>>>>>>
    .long    5
    .long    7
    .long    6
    .long    4
    .long    9
    .long    5
    .skip 7560








    # end of global data section
    #-----------------------------------------

    .end
##################################################
