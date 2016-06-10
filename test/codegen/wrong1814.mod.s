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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 35 of <array 100 of <array 46 of <array 74 of <array 47 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 87 of <array 19 of <array 88 of <array 58 of <array 95 of <bool>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
    movl    $98, %eax               #   0:     assign v3 <- 98
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 50 of <array 52 of <array 81 of <array 28 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 44 of <array 17 of <array 32 of <array 45 of <array 17 of <bool>>>>>>> %ebp+20 ]
    #    -44(%ebp)   4  [ $v5       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $55012, %eax            #   0:     div    t2 <- 55012, 13225
    movl    $13225, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t3 <- t2, 1905
    movl    $1905, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t4 <- t3, 35035
    movl    $35035, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $92105, %eax            #   3:     sub    t5 <- 92105, t4
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v5 <- t5
    movl    %eax, -44(%ebp)        
    movl    $3789, %eax             #   5:     mul    t6 <- 3789, 42030
    movl    $42030, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $63991, %eax            #   6:     sub    t7 <- 63991, t6
    movl    -32(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     return t7
    jmp     l_f1_exit              
l_f1_3_while_cond:
    jmp     l_f1_2                  #   9:     goto   2
    movl    $100, %eax              #  10:     if     100 < 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  11:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #  13:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyINTfunc            #  16:     call   t8 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    jmp     l_f1_3_while_cond       #  17:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 44 of <array 17 of <array 32 of <array 45 of <array 17 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 44 of <array 17 of <array 32 of <array 45 of <array 17 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <ptr(4) to <array 44 of <array 17 of <array 32 of <array 45 of <array 17 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <ptr(4) to <array 44 of <array 17 of <array 32 of <array 45 of <array 17 of <bool>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 44 of <array 17 of <array 32 of <array 45 of <array 17 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <ptr(4) to <array 44 of <array 17 of <array 32 of <array 45 of <array 17 of <bool>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <ptr(4) to <array 44 of <array 17 of <array 32 of <array 45 of <array 17 of <bool>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t3       <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t31      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t32      <ptr(4) to <array 44 of <array 17 of <array 32 of <array 45 of <array 17 of <bool>>>>>>> %ebp-112 ]
    #   -113(%ebp)   1  [ $t33      <bool> %ebp-113 ]
    #   -120(%ebp)   4  [ $t34      <ptr(4) to <array 27 of <array 50 of <array 52 of <array 81 of <array 28 of <char>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t35      <int> %ebp-124 ]
    #   -125(%ebp)   1  [ $t36      <char> %ebp-125 ]
    #   -132(%ebp)   4  [ $t37      <ptr(4) to <array 44 of <array 17 of <array 32 of <array 45 of <array 17 of <bool>>>>>>> %ebp-132 ]
    #   -133(%ebp)   1  [ $t38      <bool> %ebp-133 ]
    #   -134(%ebp)   1  [ $t39      <bool> %ebp-134 ]
    #   -140(%ebp)   4  [ $t4       <ptr(4) to <array 27 of <array 50 of <array 52 of <array 81 of <array 28 of <char>>>>>>> %ebp-140 ]
    #   -144(%ebp)   4  [ $t40      <ptr(4) to <array 27 of <array 50 of <array 52 of <array 81 of <array 28 of <char>>>>>>> %ebp-144 ]
    #   -148(%ebp)   4  [ $t41      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t5       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t6       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t7       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t8       <int> %ebp-164 ]
    #   -165(%ebp)   1  [ $t9       <bool> %ebp-165 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #   -159213792(%ebp)  159213624  [ $v2       <array 27 of <array 50 of <array 52 of <array 81 of <array 28 of <char>>>>>> %ebp-159213792 ]
    #   -177524856(%ebp)  18311064  [ $v3       <array 44 of <array 17 of <array 32 of <array 45 of <array 17 of <bool>>>>>> %ebp-177524856 ]
    #   -177524857(%ebp)   1  [ $v4       <bool> %ebp-177524857 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $177524848, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $44381212, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-159213792(%ebp)     # local array 'v2': 5 dimensions
    movl    $27,-159213788(%ebp)    #   dimension 1: 27 elements
    movl    $50,-159213784(%ebp)    #   dimension 2: 50 elements
    movl    $52,-159213780(%ebp)    #   dimension 3: 52 elements
    movl    $81,-159213776(%ebp)    #   dimension 4: 81 elements
    movl    $28,-159213772(%ebp)    #   dimension 5: 28 elements
    movl    $5,-177524856(%ebp)     # local array 'v3': 5 dimensions
    movl    $44,-177524852(%ebp)    #   dimension 1: 44 elements
    movl    $17,-177524848(%ebp)    #   dimension 2: 17 elements
    movl    $32,-177524844(%ebp)    #   dimension 3: 32 elements
    movl    $45,-177524840(%ebp)    #   dimension 4: 45 elements
    movl    $17,-177524836(%ebp)    #   dimension 5: 17 elements

    # function body
    leal    -177524856(%ebp), %eax  #   0:     &()    t2 <- v3
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   1:     param  3 <- t2
    pushl   %eax                   
    movl    $99, %eax               #   2:     if     99 >= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -97(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -97(%ebp)         
l_f2_3:
    movzbl  -97(%ebp), %eax         #  10:     param  2 <- t3
    pushl   %eax                   
    movl    $0, %eax                #  11:     param  1 <- 0
    pushl   %eax                   
    leal    -159213792(%ebp), %eax  #  12:     &()    t4 <- v2
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  13:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  14:     call   t5 <- f1
    addl    $16, %esp              
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  15:     mul    t6 <- t5, 68788
    movl    $68788, %ebx           
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  16:     div    t7 <- t6, 16625
    movl    $16625, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  17:     mul    t8 <- t7, 7338
    movl    $7338, %ebx            
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  18:     return t8
    jmp     l_f2_exit              
    jmp     l_f2_10                 #  19:     goto   10
l_f2_10:
    jmp     l_f2_6                  #  21:     goto   6
l_f2_6:
    movl    $1, %eax                #  23:     assign t9 <- 1
    movb    %al, -165(%ebp)        
    jmp     l_f2_8                  #  24:     goto   8
    movl    $0, %eax                #  25:     assign t9 <- 0
    movb    %al, -165(%ebp)        
l_f2_8:
    leal    -177524856(%ebp), %eax  #  27:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  28:     param  1 <- 2
    pushl   %eax                   
    leal    -177524856(%ebp), %eax  #  29:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  31:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $15892, %eax            #  32:     mul    t13 <- 15892, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     add    t14 <- t13, 98205
    movl    $98205, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  34:     param  1 <- 3
    pushl   %eax                   
    leal    -177524856(%ebp), %eax  #  35:     &()    t15 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  36:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  37:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  38:     mul    t17 <- t14, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  39:     add    t18 <- t17, 34529
    movl    $34529, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  40:     param  1 <- 4
    pushl   %eax                   
    leal    -177524856(%ebp), %eax  #  41:     &()    t19 <- v3
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  42:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  43:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -48(%ebp), %eax         #  44:     mul    t21 <- t18, t20
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  45:     add    t22 <- t21, 12286
    movl    $12286, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  46:     param  1 <- 5
    pushl   %eax                   
    leal    -177524856(%ebp), %eax  #  47:     &()    t23 <- v3
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  48:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  49:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  50:     mul    t25 <- t22, t24
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  51:     add    t26 <- t25, 25086
    movl    $25086, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  52:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    leal    -177524856(%ebp), %eax  #  53:     &()    t28 <- v3
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  54:     param  0 <- t28
    pushl   %eax                   
    call    DOFS                    #  55:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  56:     add    t30 <- t27, t29
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -16(%ebp), %eax         #  57:     add    t31 <- t10, t30
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movzbl  -165(%ebp), %eax        #  58:     assign @t31 <- t9
    movl    -108(%ebp), %edi       
    movb    %al, (%edi)            
    leal    -177524856(%ebp), %eax  #  59:     &()    t32 <- v3
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  60:     param  3 <- t32
    pushl   %eax                   
    movl    $0, %eax                #  61:     param  2 <- 0
    pushl   %eax                   
    movl    $100, %eax              #  62:     if     100 = 100 goto 18
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_18                
    jmp     l_f2_19                 #  63:     goto   19
l_f2_18:
    movl    $1, %eax                #  65:     assign t33 <- 1
    movb    %al, -113(%ebp)        
    jmp     l_f2_20                 #  66:     goto   20
l_f2_19:
    movl    $0, %eax                #  68:     assign t33 <- 0
    movb    %al, -113(%ebp)        
l_f2_20:
    movzbl  -113(%ebp), %eax        #  70:     param  1 <- t33
    pushl   %eax                   
    leal    -159213792(%ebp), %eax  #  71:     &()    t34 <- v2
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  72:     param  0 <- t34
    pushl   %eax                   
    call    f1                      #  73:     call   t35 <- f1
    addl    $16, %esp              
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  74:     if     t35 < 5651 goto 15_if_true
    movl    $5651, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  75:     goto   16_if_false
l_f2_15_if_true:
    call    dummyCHARfunc           #  77:     call   t36 <- dummyCHARfunc
    movb    %al, -125(%ebp)        
    leal    -177524856(%ebp), %eax  #  78:     &()    t37 <- v3
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  79:     param  3 <- t37
    pushl   %eax                   
    movl    $0, %eax                #  80:     if     0 = 1 goto 24
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_24                
    jmp     l_f2_25                 #  81:     goto   25
l_f2_24:
    movl    $1, %eax                #  83:     assign t38 <- 1
    movb    %al, -133(%ebp)        
    jmp     l_f2_26                 #  84:     goto   26
l_f2_25:
    movl    $0, %eax                #  86:     assign t38 <- 0
    movb    %al, -133(%ebp)        
l_f2_26:
    movzbl  -133(%ebp), %eax        #  88:     param  2 <- t38
    pushl   %eax                   
    movl    $20495, %eax            #  89:     if     20495 >= 39395 goto 28
    movl    $39395, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_28                
    jmp     l_f2_29                 #  90:     goto   29
l_f2_28:
    movl    $1, %eax                #  92:     assign t39 <- 1
    movb    %al, -134(%ebp)        
    jmp     l_f2_30                 #  93:     goto   30
l_f2_29:
    movl    $0, %eax                #  95:     assign t39 <- 0
    movb    %al, -134(%ebp)        
l_f2_30:
    movzbl  -134(%ebp), %eax        #  97:     param  1 <- t39
    pushl   %eax                   
    leal    -159213792(%ebp), %eax  #  98:     &()    t40 <- v2
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  99:     param  0 <- t40
    pushl   %eax                   
    call    f1                      # 100:     call   t41 <- f1
    addl    $16, %esp              
    movl    %eax, -148(%ebp)       
    movl    $59672, %eax            # 101:     return 59672
    jmp     l_f2_exit              
    jmp     l_f2_14                 # 102:     goto   14
l_f2_16_if_false:
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $177524848, %esp        # remove locals
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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
