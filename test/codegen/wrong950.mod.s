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
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t13      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t17      <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 9 of <array 10 of <array 8 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 1 of <array 9 of <array 10 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t12 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f0_2_while_cond:
    jmp     l_f0_1                  #   2:     goto   1
    call    dummyCHARfunc           #   3:     call   t13 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_2_while_cond       #   4:     goto   2_while_cond
l_f0_1:
    movl    $93342, %eax            #   6:     div    t14 <- 93342, 47
    movl    $47, %ebx              
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     mul    t15 <- t14, 10841
    movl    $10841, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $72690, %eax            #   8:     add    t16 <- 72690, t15
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $45443, %eax            #   9:     if     45443 # t16 goto 6
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_6                 
    jmp     l_f0_7                  #  10:     goto   7
l_f0_6:
    movl    $1, %eax                #  12:     assign t17 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_8                  #  13:     goto   8
l_f0_7:
    movl    $0, %eax                #  15:     assign t17 <- 0
    movb    %al, -33(%ebp)         
l_f0_8:
    movzbl  -33(%ebp), %eax         #  17:     return t17
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t28      <bool> %ebp-77 ]
    #    -78(%ebp)   1  [ $t29      <bool> %ebp-78 ]
    #    -84(%ebp)   4  [ $t30      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t31      <int> %ebp-88 ]
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
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 2 of <array 10 of <array 2 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 8 of <array 6 of <array 7 of <array 5 of <bool>>>>>>> %ebp+20 ]
    #   -152(%ebp)   4  [ $v5       <int> %ebp-152 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   4:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $33868, %eax            #   5:     mul    t13 <- 33868, t12
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     add    t14 <- t13, 60038
    movl    $60038, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   9:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  10:     mul    t16 <- t14, t15
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     add    t17 <- t16, 71334
    movl    $71334, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  15:     mul    t19 <- t17, t18
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  16:     add    t20 <- t19, 25689
    movl    $25689, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  20:     mul    t22 <- t20, t21
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  21:     add    t23 <- t22, 14009
    movl    $14009, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  22:     mul    t24 <- t23, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  24:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  25:     add    t26 <- t24, t25
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t27 <- v2, t26
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $16024, %eax            #  27:     assign @t27 <- 16024
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $32766, %eax            #  28:     return 32766
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  29:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #  31:     call   t28 <- dummyBOOLfunc
    movb    %al, -77(%ebp)         
    movl    $98, %eax               #  32:     if     98 > 99 goto 7
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_7                 
    jmp     l_f1_8                  #  33:     goto   8
l_f1_7:
    movl    $1, %eax                #  35:     assign t29 <- 1
    movb    %al, -78(%ebp)         
    jmp     l_f1_9                  #  36:     goto   9
l_f1_8:
    movl    $0, %eax                #  38:     assign t29 <- 0
    movb    %al, -78(%ebp)         
l_f1_9:
    movl    $2, %eax                #  40:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  41:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  42:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $72653, %eax            #  43:     mul    t31 <- 72653, t30
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    $95294, %eax            #  44:     sub    t32 <- 95294, 61887
    movl    $61887, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  45:     add    t33 <- t31, t32
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  46:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  47:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  48:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  49:     mul    t35 <- t33, t34
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  50:     add    t36 <- t35, 95285
    movl    $95285, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $4, %eax                #  51:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  52:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  53:     call   t37 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  54:     mul    t38 <- t36, t37
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  55:     add    t39 <- t38, 87629
    movl    $87629, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $5, %eax                #  56:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  57:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  58:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  59:     mul    t41 <- t39, t40
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  60:     add    t42 <- t41, 84030
    movl    $84030, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  61:     mul    t43 <- t42, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    20(%ebp), %eax          #  62:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  63:     call   t44 <- DOFS
    addl    $4, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  64:     add    t45 <- t43, t44
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    20(%ebp), %eax          #  65:     add    t46 <- v4, t45
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movzbl  -78(%ebp), %eax         #  66:     assign @t46 <- t29
    movl    -148(%ebp), %edi       
    movb    %al, (%edi)            

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
    #    -13(%ebp)   1  [ $t12      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t29      <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $t30      <char> %ebp-82 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 3 of <array 8 of <array 4 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 2 of <array 1 of <array 3 of <array 7 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 8 of <array 2 of <array 7 of <array 9 of <bool>>>>>>> %ebp+20 ]
    #    -88(%ebp)   4  [ $v5       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $v6       <bool> %ebp-89 ]

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
    call    dummyCHARfunc           #   0:     call   t12 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t12 = 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $98, %eax               #   4:     assign v1 <- 98
    movb    %al, 8(%ebp)           
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   6:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   7:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $1013, %eax             #   8:     mul    t14 <- 1013, t13
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     add    t15 <- t14, 44201
    movl    $44201, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  11:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  12:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  13:     mul    t17 <- t15, t16
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     add    t18 <- t17, 84335
    movl    $84335, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  16:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  17:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  18:     mul    t20 <- t18, t19
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  19:     add    t21 <- t20, 70427
    movl    $70427, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  22:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  23:     mul    t23 <- t21, t22
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  24:     add    t24 <- t23, 88225
    movl    $88225, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  25:     mul    t25 <- t24, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  26:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  27:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  28:     add    t27 <- t25, t26
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    16(%ebp), %eax          #  29:     add    t28 <- v3, t27
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $19762, %eax            #  30:     assign @t28 <- 19762
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_0                  #  31:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $70950, %eax            #  34:     if     70950 = 66699 goto 7_if_true
    movl    $66699, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  35:     goto   8_if_false
l_f2_7_if_true:
    movl    $68986, %eax            #  37:     if     68986 > 39620 goto 11
    movl    $39620, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_11                
    jmp     l_f2_12                 #  38:     goto   12
l_f2_11:
    movl    $1, %eax                #  40:     assign t29 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_13                 #  41:     goto   13
l_f2_12:
    movl    $0, %eax                #  43:     assign t29 <- 0
    movb    %al, -81(%ebp)         
l_f2_13:
    movzbl  -81(%ebp), %eax         #  45:     assign v6 <- t29
    movb    %al, -89(%ebp)         
l_f2_16_while_cond:
    movl    $100, %eax              #  47:     if     100 < 97 goto 17_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_17_while_body     
    jmp     l_f2_15                 #  48:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  50:     goto   16_while_cond
l_f2_15:
l_f2_20_while_cond:
    jmp     l_f2_20_while_cond      #  53:     goto   20_while_cond
    call    dummyCHARfunc           #  54:     call   t30 <- dummyCHARfunc
    movb    %al, -82(%ebp)         
    jmp     l_f2_exit              
    movl    $99, %eax               #  56:     assign v1 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f2_6                  #  57:     goto   6
l_f2_8_if_false:
l_f2_6:
    jmp     l_f2_27_if_false        #  60:     goto   27_if_false
    jmp     l_f2_exit              
    jmp     l_f2_25                 #  62:     goto   25
l_f2_27_if_false:
l_f2_25:

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t2       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t3       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t5       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <int> %ebp-60 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     assign v0 <- 97
    movb    %al, v0                
    call    ReadInt                 #   2:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $50056, %eax            #   3:     sub    t2 <- 50056, 41113
    movl    $41113, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     add    t3 <- t2, 11639
    movl    $11639, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     sub    t4 <- t3, 4500
    movl    $4500, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     add    t5 <- t4, 10276
    movl    $10276, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   7:     sub    t6 <- t5, 40523
    movl    $40523, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   8:     sub    t7 <- t6, 57619
    movl    $57619, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   9:     sub    t8 <- t7, 34074
    movl    $34074, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  10:     sub    t9 <- t8, 7638
    movl    $7638, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  11:     add    t10 <- t9, 87710
    movl    $87710, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     sub    t11 <- t10, 98633
    movl    $98633, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     assign v1 <- t11
    movl    %eax, v1               
l_test_5_while_cond:
    jmp     l_test_4                #  15:     goto   4
l_test_9_while_cond:
    jmp     l_test_8                #  17:     goto   8
    jmp     l_test_9_while_cond     #  18:     goto   9_while_cond
l_test_8:
    jmp     l_test_5_while_cond     #  20:     goto   5_while_cond
l_test_4:
l_test_12_while_cond:
    jmp     l_test_11               #  23:     goto   11
l_test_15_while_cond:
    jmp     l_test_15_while_cond    #  25:     goto   15_while_cond
l_test_18_while_cond:
    jmp     l_test_17               #  27:     goto   17
    movl    $97, %eax               #  28:     assign v0 <- 97
    movb    %al, v0                
    movl    $69844, %eax            #  29:     param  0 <- 69844
    pushl   %eax                   
    call    WriteInt                #  30:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_18_while_cond    #  31:     goto   18_while_cond
l_test_17:
    jmp     l_test_12_while_cond    #  33:     goto   12_while_cond
l_test_11:

l_test_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
