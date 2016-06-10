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
    #    -65(%ebp)   1  [ $t23      <bool> %ebp-65 ]
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
    #   -136(%ebp)   4  [ $t6       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 1 of <array 1 of <array 6 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 6 of <array 1 of <array 1 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 8 of <array 6 of <array 4 of <array 5 of <char>>>>>>> %ebp+16 ]
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
    jmp     l_f0_exit              
l_f0_2_while_cond:
    jmp     l_f0_exit              
l_f0_6_while_cond:
    movl    $81112, %eax            #   4:     if     81112 = 8494 goto 7_while_body
    movl    $8494, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_while_body:
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    $3505, %eax             #  10:     mul    t7 <- 3505, t6
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  11:     add    t8 <- t7, 66203
    movl    $66203, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  15:     mul    t10 <- t8, t9
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     add    t11 <- t10, 26085
    movl    $26085, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  20:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     add    t14 <- t13, 88046
    movl    $88046, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  24:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  25:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     add    t17 <- t16, 97107
    movl    $97107, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  27:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  28:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  29:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  30:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  31:     add    t21 <- v3, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4996, %eax             #  32:     assign @t21 <- 4996
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
l_f0_11_while_cond:
    movl    $99, %eax               #  34:     if     99 < 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_12_while_body     
    jmp     l_f0_10                 #  35:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  37:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_6_while_cond       #  39:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_2_while_cond       #  41:     goto   2_while_cond
l_f0_15_while_cond:
    movl    $57735, %eax            #  43:     sub    t22 <- 57735, 69659
    movl    $69659, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $65101, %eax            #  44:     if     65101 > t22 goto 16_while_body
    movl    -64(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_16_while_body     
    jmp     l_f0_14                 #  45:     goto   14
l_f0_16_while_body:
    call    dummyBOOLfunc           #  47:     call   t23 <- dummyBOOLfunc
    movb    %al, -65(%ebp)         
    movl    $2, %eax                #  48:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  49:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  50:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $19355, %eax            #  51:     mul    t25 <- 19355, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  52:     add    t26 <- t25, 29174
    movl    $29174, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  53:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  54:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  55:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  56:     mul    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  57:     add    t29 <- t28, 51948
    movl    $51948, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  58:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  59:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  60:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  61:     mul    t31 <- t29, t30
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  62:     add    t32 <- t31, 43624
    movl    $43624, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $5, %eax                #  63:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  64:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  65:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  66:     mul    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  67:     add    t35 <- t34, 41456
    movl    $41456, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  68:     mul    t36 <- t35, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    8(%ebp), %eax           #  69:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  70:     call   t37 <- DOFS
    addl    $4, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  71:     add    t38 <- t36, t37
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    8(%ebp), %eax           #  72:     add    t39 <- v2, t38
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $97, %eax               #  73:     assign @t39 <- 97
    movl    -132(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f0_15_while_cond      #  74:     goto   15_while_cond
l_f0_14:

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 5 of <array 2 of <array 6 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 8 of <array 3 of <array 1 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
l_f1_1_while_cond:
    movl    $90406, %eax            #   1:     if     90406 <= 3551 goto 2_while_body
    movl    $3551, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_6_if_false         #   4:     goto   6_if_false
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $18722, %eax            #   8:     assign v4 <- 18722
    movl    %eax, -20(%ebp)        
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_exit              
    call    ReadInt                 #  12:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v2       <char> %ebp-33 ]

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
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     if     97 = 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $11867, %eax            #   4:     return 11867
    jmp     l_f2_exit              
    movl    $27261, %eax            #   5:     if     27261 > 53440 goto 6_if_true
    movl    $53440, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   6:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $97, %eax               #  11:     assign v2 <- 97
    movb    %al, -33(%ebp)         
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
l_f2_0:
    call    ReadInt                 #  14:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     return t6
    jmp     l_f2_exit              
    movl    $15342, %eax            #  16:     mul    t7 <- 15342, 19766
    movl    $19766, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     mul    t8 <- t7, 78195
    movl    $78195, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     mul    t9 <- t8, 39724
    movl    $39724, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     div    t10 <- t9, 32345
    movl    $32345, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     return t10
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]

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
    jmp     l_test_2                #   0:     goto   2
    movl    $1, %eax                #   1:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   2:     goto   3
l_test_2:
    movl    $0, %eax                #   4:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_7_if_true        #   7:     goto   7_if_true
l_test_7_if_true:
    movl    $99, %eax               #   9:     assign v1 <- 99
    movb    %al, v1                
l_test_12_while_cond:
    movl    $98, %eax               #  11:     if     98 >= 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_13_while_body   
    jmp     l_test_11               #  12:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  14:     goto   12_while_cond
l_test_11:
l_test_16_while_cond:
    jmp     l_test_16_while_cond    #  17:     goto   16_while_cond
l_test_19_while_cond:
    movl    $64812, %eax            #  19:     if     64812 >= 40170 goto 20_while_body
    movl    $40170, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_20_while_body   
    jmp     l_test_18               #  20:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  22:     goto   19_while_cond
l_test_18:
    call    dummyCHARfunc           #  24:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #  25:     assign v0 <- 0
    movb    %al, v0                
    movl    $97, %eax               #  26:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  27:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_6                #  29:     goto   6
l_test_6:
    call    dummyINTfunc            #  31:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_29_if_false      #  32:     goto   29_if_false
    call    dummyBOOLfunc           #  33:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_27               #  34:     goto   27
l_test_29_if_false:
l_test_27:
    movl    $76411, %eax            #  37:     mul    t4 <- 76411, 58650
    movl    $58650, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  38:     mul    t5 <- t4, 1052
    movl    $1052, %ebx            
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  39:     assign v2 <- t5
    movl    %eax, v2               

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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
