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
    #   -146(%ebp)   1  [ $t9       <bool> %ebp-146 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 5 of <array 9 of <array 3 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 8 of <array 7 of <array 1 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 6 of <array 5 of <array 9 of <array 3 of <int>>>>>>> %ebp+16 ]
    #   -147(%ebp)   1  [ $v3       <bool> %ebp-147 ]
    #   -152(%ebp)   4  [ $v4       <int> %ebp-152 ]
    #   -153(%ebp)   1  [ $v5       <char> %ebp-153 ]

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
    call    dummyBOOLfunc           #   0:     call   t9 <- dummyBOOLfunc
    movb    %al, -146(%ebp)        
    movzbl  -146(%ebp), %eax        #   1:     if     t9 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1                 
l_f0_1:
    movl    $1, %eax                #   3:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
    movl    $0, %eax                #   5:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   9:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $17103, %eax            #  10:     mul    t12 <- 17103, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     add    t13 <- t12, 37354
    movl    $37354, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  15:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     add    t16 <- t15, 16864
    movl    $16864, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  20:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     add    t19 <- t18, 5073
    movl    $5073, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  25:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  26:     add    t22 <- t21, 88873
    movl    $88873, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  27:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  29:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  30:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  31:     add    t26 <- v0, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -13(%ebp), %eax         #  32:     assign @t26 <- t10
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $1, %eax                #  33:     if     1 = 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  34:     goto   7_if_false
l_f0_6_if_true:
    movl    $2, %eax                #  36:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  38:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $47589, %eax            #  39:     mul    t28 <- 47589, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  40:     add    t29 <- t28, 17826
    movl    $17826, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  41:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  42:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  43:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  44:     mul    t31 <- t29, t30
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  45:     add    t32 <- t31, 56720
    movl    $56720, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $4, %eax                #  46:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  47:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  48:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  49:     mul    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  50:     add    t35 <- t34, 1427
    movl    $1427, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $5, %eax                #  51:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  52:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  53:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  54:     mul    t37 <- t35, t36
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  55:     add    t38 <- t37, 31247
    movl    $31247, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  56:     mul    t39 <- t38, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    16(%ebp), %eax          #  57:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  58:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  59:     add    t41 <- t39, t40
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    16(%ebp), %eax          #  60:     add    t42 <- v2, t41
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $90122, %eax            #  61:     assign @t42 <- 90122
    movl    -144(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $97, %eax               #  62:     assign v5 <- 97
    movb    %al, -153(%ebp)        
    jmp     l_f0_5                  #  63:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $98, %eax               #  66:     if     98 = 99 goto 12
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_12                
    jmp     l_f0_13                 #  67:     goto   13
l_f0_12:
    movl    $1, %eax                #  69:     assign t43 <- 1
    movb    %al, -145(%ebp)        
    jmp     l_f0_14                 #  70:     goto   14
l_f0_13:
    movl    $0, %eax                #  72:     assign t43 <- 0
    movb    %al, -145(%ebp)        
l_f0_14:
    movzbl  -145(%ebp), %eax        #  74:     assign v3 <- t43
    movb    %al, -147(%ebp)        

l_f0_exit:
    # epilogue
    addl    $144, %esp              # remove locals
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
    #    -33(%ebp)   1  [ $t9       <bool> %ebp-33 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
l_f1_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t9 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #   2:     if     t9 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $38982, %eax            #   5:     assign v1 <- 38982
    movl    %eax, 12(%ebp)         
    movl    $7149, %eax             #   6:     return 7149
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
    movl    $6215, %eax             #   9:     div    t10 <- 6215, 78588
    movl    $78588, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     mul    t11 <- t10, 92326
    movl    $92326, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $65340, %eax            #  11:     add    t12 <- 65340, t11
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     return t12
    jmp     l_f1_exit              
    movl    $79114, %eax            #  13:     mul    t13 <- 79114, 73886
    movl    $73886, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     mul    t14 <- t13, 68985
    movl    $68985, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     return t14
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t9       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 7 of <array 4 of <array 1 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 10 of <array 4 of <array 6 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 3 of <array 9 of <array 8 of <array 7 of <char>>>>>>> %ebp+20 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    movl    $0, %eax                #   0:     assign v1 <- 0
    movb    %al, 12(%ebp)          
l_f2_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t9 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t9 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6                 
    jmp     l_f2_1                  #   4:     goto   1
l_f2_6:
    jmp     l_f2_1                  #   6:     goto   1
    jmp     l_f2_1                  #   7:     goto   1
    jmp     l_f2_1                  #   8:     goto   1
    jmp     l_f2_2_while_cond       #   9:     goto   2_while_cond
l_f2_1:
    jmp     l_f2_9_if_false         #  11:     goto   9_if_false
    movl    $100, %eax              #  12:     assign v4 <- 100
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #  13:     assign v1 <- 1
    movb    %al, 12(%ebp)          
l_f2_13_while_cond:
    jmp     l_f2_13_while_cond      #  15:     goto   13_while_cond
    jmp     l_f2_7                  #  16:     goto   7
l_f2_9_if_false:
l_f2_7:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 3 of <array 9 of <array 8 of <array 7 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 10 of <array 4 of <array 6 of <array 6 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 6 of <array 7 of <array 4 of <array 1 of <array 2 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <char> %ebp-33 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   3:     if     t2 > 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_3_if_true       
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_2                #   6:     goto   2
l_test_4_if_false:
l_test_2:
l_test_7_while_cond:
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  11:     if     t3 = 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #  12:     goto   6
l_test_8_while_body:
    jmp     l_test_12_if_false      #  14:     goto   12_if_false
    jmp     l_test_10               #  15:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_7_while_cond     #  18:     goto   7_while_cond
l_test_6:
    movl    $1, %eax                #  20:     assign v0 <- 1
    movb    %al, v0                
    leal    v4, %eax                #  21:     &()    t4 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  3 <- t4
    pushl   %eax                   
    leal    v3, %eax                #  23:     &()    t5 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     param  2 <- t5
    pushl   %eax                   
    movl    $99, %eax               #  25:     if     99 # 100 goto 15
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_15              
    jmp     l_test_16               #  26:     goto   16
l_test_15:
    movl    $1, %eax                #  28:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_17               #  29:     goto   17
l_test_16:
    movl    $0, %eax                #  31:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_test_17:
    movzbl  -25(%ebp), %eax         #  33:     param  1 <- t6
    pushl   %eax                   
    leal    v2, %eax                #  34:     &()    t7 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  35:     param  0 <- t7
    pushl   %eax                   
    call    f2                      #  36:     call   t8 <- f2
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  37:     assign v1 <- t8
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 6 of <array 7 of <array 4 of <array 1 of <array 2 of <char>>>>>>
    .long    5
    .long    6
    .long    7
    .long    4
    .long    1
    .long    2
    .skip  336
v3:                                 # <array 2 of <array 10 of <array 4 of <array 6 of <array 6 of <bool>>>>>>
    .long    5
    .long    2
    .long   10
    .long    4
    .long    6
    .long    6
    .skip 2880
v4:                                 # <array 3 of <array 3 of <array 9 of <array 8 of <array 7 of <char>>>>>>
    .long    5
    .long    3
    .long    3
    .long    9
    .long    8
    .long    7
    .skip 4536








    # end of global data section
    #-----------------------------------------

    .end
##################################################
