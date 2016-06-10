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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    jmp     l_f0_3                  #   0:     goto   3
l_f0_3:
    jmp     l_f0_0                  #   2:     goto   0
l_f0_0:
    movl    $20729, %eax            #   4:     param  0 <- 20729
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #   6:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   7:     if     t10 = 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   8:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #  10:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
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
    #    -89(%ebp)   1  [ $t29      <bool> %ebp-89 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 8 of <array 9 of <array 1 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -90(%ebp)   1  [ $v4       <bool> %ebp-90 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t10
    movb    %al, 12(%ebp)          
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   4:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $93802, %eax            #   5:     mul    t12 <- 93802, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     add    t13 <- t12, 80970
    movl    $80970, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  10:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     add    t16 <- t15, 75742
    movl    $75742, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  15:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $49677, %eax            #  16:     add    t19 <- 49677, 90934
    movl    $90934, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  17:     add    t20 <- t19, 60637
    movl    $60637, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  18:     add    t21 <- t18, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  22:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  23:     add    t24 <- t23, 87965
    movl    $87965, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  24:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  26:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  27:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t28 <- v1, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $1, %eax                #  29:     assign @t28 <- 1
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $99, %eax               #  30:     if     99 > 100 goto 3
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_3                 
    jmp     l_f1_4                  #  31:     goto   4
l_f1_3:
    movl    $1, %eax                #  33:     assign t29 <- 1
    movb    %al, -89(%ebp)         
    jmp     l_f1_5                  #  34:     goto   5
l_f1_4:
    movl    $0, %eax                #  36:     assign t29 <- 0
    movb    %al, -89(%ebp)         
l_f1_5:
    movzbl  -89(%ebp), %eax         #  38:     assign v4 <- t29
    movb    %al, -90(%ebp)         

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
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
    #    -97(%ebp)   1  [ $t31      <bool> %ebp-97 ]
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
    #   -164(%ebp)   4  [ $t47      <int> %ebp-164 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 10 of <array 7 of <array 5 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #   -165(%ebp)   1  [ $v2       <bool> %ebp-165 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $156, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $39, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     if     100 > 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $9752, %eax             #   3:     if     9752 > 91981 goto 5
    movl    $91981, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $1, %eax                #   6:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   7:     goto   7
l_f2_6:
    movl    $0, %eax                #   9:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $39145, %eax            #  14:     mul    t12 <- 39145, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     add    t13 <- t12, 66553
    movl    $66553, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  19:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     add    t16 <- t15, 55887
    movl    $55887, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  24:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     add    t19 <- t18, 40380
    movl    $40380, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  29:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  30:     add    t22 <- t21, 69781
    movl    $69781, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  31:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  32:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  33:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  34:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  35:     add    t26 <- v1, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -13(%ebp), %eax         #  36:     assign @t26 <- t10
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $47563, %eax            #  37:     return 47563
    jmp     l_f2_exit              
    movl    $98, %eax               #  38:     if     98 <= 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  39:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  41:     goto   10
l_f2_12_if_false:
l_f2_10:
l_f2_15_while_cond:
    jmp     l_f2_14                 #  45:     goto   14
    jmp     l_f2_15_while_cond      #  46:     goto   15_while_cond
l_f2_14:
    movl    $2660, %eax             #  48:     return 2660
    jmp     l_f2_exit              
l_f2_19_while_cond:
    jmp     l_f2_18                 #  50:     goto   18
    jmp     l_f2_19_while_cond      #  51:     goto   19_while_cond
l_f2_18:
    jmp     l_f2_0                  #  53:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $79028, %eax            #  56:     sub    t27 <- 79028, 97716
    movl    $97716, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  57:     add    t28 <- t27, 65204
    movl    $65204, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  58:     sub    t29 <- t28, 65333
    movl    $65333, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  59:     return t29
    jmp     l_f2_exit              
    movl    $6395, %eax             #  60:     add    t30 <- 6395, 10653
    movl    $10653, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $91288, %eax            #  61:     if     91288 = t30 goto 23
    movl    -96(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_23                
    jmp     l_f2_24                 #  62:     goto   24
l_f2_23:
    movl    $1, %eax                #  64:     assign t31 <- 1
    movb    %al, -97(%ebp)         
    jmp     l_f2_25                 #  65:     goto   25
l_f2_24:
    movl    $0, %eax                #  67:     assign t31 <- 0
    movb    %al, -97(%ebp)         
l_f2_25:
    movl    $2, %eax                #  69:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  70:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  71:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    $90948, %eax            #  72:     mul    t33 <- 90948, t32
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  73:     add    t34 <- t33, 19786
    movl    $19786, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $3, %eax                #  74:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  75:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  76:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  77:     mul    t36 <- t34, t35
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  78:     add    t37 <- t36, 27365
    movl    $27365, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $4, %eax                #  79:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  80:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  81:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  82:     mul    t39 <- t37, t38
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  83:     add    t40 <- t39, 64001
    movl    $64001, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $5, %eax                #  84:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  85:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  86:     call   t41 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  87:     mul    t42 <- t40, t41
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  88:     add    t43 <- t42, 24631
    movl    $24631, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  89:     mul    t44 <- t43, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    8(%ebp), %eax           #  90:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  91:     call   t45 <- DOFS
    addl    $4, %esp               
    movl    %eax, -156(%ebp)       
    movl    -152(%ebp), %eax        #  92:     add    t46 <- t44, t45
    movl    -156(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    8(%ebp), %eax           #  93:     add    t47 <- v1, t46
    movl    -160(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -164(%ebp)       
    movzbl  -97(%ebp), %eax         #  94:     assign @t47 <- t31
    movl    -164(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $156, %esp              # remove locals
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
    #    -52(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <char>>> %ebp-52 ]

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
    movl    $71454, %eax            #   0:     div    t0 <- 71454, 94264
    movl    $94264, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 84651
    movl    $84651, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 93514
    movl    $93514, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t3 <- t2, 58673
    movl    $58673, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t4 <- t3, 66235
    movl    $66235, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     add    t5 <- t4, 44231
    movl    $44231, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     add    t6 <- t5, 83926
    movl    $83926, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     sub    t7 <- t6, 79479
    movl    $79479, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     assign v0 <- t7
    movl    %eax, v0               
    call    ReadInt                 #   9:     call   t8 <- ReadInt
    movl    %eax, -48(%ebp)        
l_test_3_while_cond:
    movl    $93513, %eax            #  11:     if     93513 >= 47231 goto 4_while_body
    movl    $47231, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_4_while_body    
    jmp     l_test_2                #  12:     goto   2
l_test_4_while_body:
    jmp     l_test_8_if_false       #  14:     goto   8_if_false
    jmp     l_test_6                #  15:     goto   6
l_test_8_if_false:
l_test_6:
    leal    _str_1, %eax            #  18:     &()    t9 <- _str_1
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  19:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #  20:     call   WriteStr
    addl    $4, %esp               
    movl    $1, %eax                #  21:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_3_while_cond     #  22:     goto   3_while_cond
l_test_2:
    jmp     l_test_exit            

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
