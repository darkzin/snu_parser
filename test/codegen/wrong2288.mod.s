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
    #   -133(%ebp)   1  [ $t40      <char> %ebp-133 ]
    #   -140(%ebp)   4  [ $t5       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t6       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t7       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t8       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t9       <int> %ebp-156 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 44 of <array 32 of <array 98 of <array 89 of <array 47 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   1:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   2:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    $43902, %eax            #   3:     mul    t6 <- 43902, t5
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #   4:     add    t7 <- t6, 45037
    movl    $45037, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   6:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   7:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #   8:     mul    t9 <- t7, t8
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    $12795, %eax            #   9:     div    t10 <- 12795, 47208
    movl    $47208, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     div    t11 <- t10, 63298
    movl    $63298, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -156(%ebp), %eax        #  11:     add    t12 <- t9, t11
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t15 <- t14, 33641
    movl    $33641, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  20:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     add    t18 <- t17, 76376
    movl    $76376, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  24:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  25:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  26:     add    t22 <- v0, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $81178, %eax            #  27:     assign @t22 <- 81178
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyBOOLfunc           #  28:     call   t23 <- dummyBOOLfunc
    movb    %al, -65(%ebp)         
    movzbl  -65(%ebp), %eax         #  29:     if     t23 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #  30:     goto   3_if_false
l_f0_2_if_true:
l_f0_5_while_cond:
    movl    $62164, %eax            #  33:     if     62164 = 6131 goto 6_while_body
    movl    $6131, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_6_while_body      
    jmp     l_f0_4                  #  34:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  36:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_1                  #  38:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_9_while_cond:
    movl    $9765, %eax             #  42:     if     9765 < 57763 goto 10_while_body
    movl    $57763, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_10_while_body     
    jmp     l_f0_8                  #  43:     goto   8
l_f0_10_while_body:
    movl    $2, %eax                #  45:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  46:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  47:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $93664, %eax            #  48:     mul    t25 <- 93664, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  49:     add    t26 <- t25, 95452
    movl    $95452, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  50:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  51:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  52:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  53:     mul    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  54:     add    t29 <- t28, 31005
    movl    $31005, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  55:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  56:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  57:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  58:     mul    t31 <- t29, t30
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  59:     add    t32 <- t31, 74582
    movl    $74582, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $5, %eax                #  60:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  61:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  62:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  63:     mul    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  64:     add    t35 <- t34, 18502
    movl    $18502, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  65:     mul    t36 <- t35, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    8(%ebp), %eax           #  66:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  67:     call   t37 <- DOFS
    addl    $4, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  68:     add    t38 <- t36, t37
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    8(%ebp), %eax           #  69:     add    t39 <- v0, t38
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $4326, %eax             #  70:     assign @t39 <- 4326
    movl    -132(%ebp), %edi       
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  71:     call   t40 <- dummyCHARfunc
    movb    %al, -133(%ebp)        
    jmp     l_f0_9_while_cond       #  72:     goto   9_while_cond
l_f0_8:

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 9 of <array 6 of <array 43 of <array 81 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 18 of <array 79 of <array 84 of <array 100 of <bool>>>>>>> %ebp+20 ]

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
l_f1_1_while_cond:
    jmp     l_f1_4                  #   1:     goto   4
    jmp     l_f1_4                  #   2:     goto   4
    jmp     l_f1_4                  #   3:     goto   4
    jmp     l_f1_5                  #   4:     goto   5
l_f1_4:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   7:     goto   6
l_f1_5:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #  11:     if     t5 # 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #  12:     goto   0
l_f1_2_while_body:
    movl    $99, %eax               #  14:     if     99 < 98 goto 11
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_11                
    jmp     l_f1_12                 #  15:     goto   12
l_f1_11:
    movl    $1, %eax                #  17:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_13                 #  18:     goto   13
l_f1_12:
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f1_13:
    movzbl  -14(%ebp), %eax         #  22:     assign v0 <- t6
    movb    %al, 8(%ebp)           
    jmp     l_f1_exit              
    movl    $98, %eax               #  24:     assign v2 <- 98
    movb    %al, 16(%ebp)          
    call    dummyCHARfunc           #  25:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_1_while_cond       #  26:     goto   1_while_cond
l_f1_0:
    movl    $7853, %eax             #  28:     mul    t8 <- 7853, 8271
    movl    $8271, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $12516, %eax            #  29:     if     12516 > t8 goto 19_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  30:     goto   20_if_false
l_f1_19_if_true:
    jmp     l_f1_exit              
    movl    $98, %eax               #  33:     if     98 >= 98 goto 24_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_24_if_true        
    jmp     l_f1_25_if_false        #  34:     goto   25_if_false
l_f1_24_if_true:
    jmp     l_f1_23                 #  36:     goto   23
l_f1_25_if_false:
l_f1_23:
    jmp     l_f1_18                 #  39:     goto   18
l_f1_20_if_false:
l_f1_18:
    call    dummyCHARfunc           #  42:     call   t9 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  43:     assign v2 <- t9
    movb    %al, 16(%ebp)          

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 25 of <array 12 of <array 53 of <array 1 of <array 46 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 64 of <array 84 of <array 59 of <array 92 of <array 47 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 42 of <array 33 of <array 32 of <array 9 of <char>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t5
    jmp     l_f2_exit              
    movl    $98, %eax               #   2:     assign v2 <- 98
    movb    %al, 16(%ebp)          
    call    dummyCHARfunc           #   3:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     return t6
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_3_while_cond:
    movl    $98, %eax               #   3:     if     98 <= 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_4_while_body    
    jmp     l_test_2                #   4:     goto   2
l_test_4_while_body:
l_test_7_while_cond:
    movl    $49327, %eax            #   7:     if     49327 = 70356 goto 8_while_body
    movl    $70356, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #   8:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  10:     goto   7_while_cond
l_test_6:
    call    ReadInt                 #  12:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_3_while_cond     #  13:     goto   3_while_cond
l_test_2:
    call    dummyINTfunc            #  15:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     sub    t3 <- t2, 41849
    movl    $41849, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     add    t4 <- t3, 94831
    movl    $94831, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $49408, %eax            #  18:     if     49408 <= t4 goto 12_if_true
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_12_if_true      
    jmp     l_test_13_if_false      #  19:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  21:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_exit            

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
