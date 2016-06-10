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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 9 of <array 2 of <array 4 of <array 10 of <int>>>>>>> %ebp+8 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 > 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
l_f0_5_while_cond:
    jmp     l_f0_6_while_body       #   8:     goto   6_while_body
    jmp     l_f0_4                  #   9:     goto   4
    jmp     l_f0_4                  #  10:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  12:     goto   5_while_cond
l_f0_4:
l_f0_10_while_cond:
    call    dummyCHARfunc           #  15:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  16:     if     100 < t1 goto 11_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_11_while_body     
    jmp     l_f0_9                  #  17:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  19:     goto   10_while_cond
l_f0_9:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t26      <bool> %ebp-89 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $t3       <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t32      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t33      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t34      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t35      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t36      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t37      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t38      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t39      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t4       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t40      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t41      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t42      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t5       <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t6       <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t7       <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t8       <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t9       <int> %ebp-184 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 2 of <array 6 of <array 6 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 1 of <array 7 of <array 4 of <array 5 of <char>>>>>>> %ebp+16 ]
    #   -185(%ebp)   1  [ $v3       <bool> %ebp-185 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $176, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $44, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $20131, %eax            #   0:     div    t0 <- 20131, 3785
    movl    $3785, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 77623
    movl    $77623, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 86891
    movl    $86891, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $64702, %eax            #   3:     if     64702 >= t2 goto 1
    movl    -64(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   4:     goto   2
l_f1_1:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -105(%ebp)        
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -105(%ebp)        
l_f1_3:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    $92315, %eax            #  14:     mul    t5 <- 92315, t4
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #  15:     add    t6 <- t5, 62325
    movl    $62325, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -176(%ebp)       
    movl    -172(%ebp), %eax        #  19:     mul    t8 <- t6, t7
    movl    -176(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        #  20:     add    t9 <- t8, 28212
    movl    $28212, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -184(%ebp)       
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -184(%ebp), %eax        #  24:     mul    t11 <- t9, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t12 <- t11, 14266
    movl    $14266, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t14 <- t12, t13
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     add    t15 <- t14, 65877
    movl    $65877, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  32:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  33:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  34:     add    t18 <- t16, t17
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  35:     add    t19 <- v1, t18
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -105(%ebp), %eax        #  36:     assign @t19 <- t3
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $68158, %eax            #  37:     div    t20 <- 68158, 24225
    movl    $24225, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    $56466, %eax            #  38:     if     56466 = t20 goto 6_if_true
    movl    -68(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  39:     goto   7_if_false
l_f1_6_if_true:
    movl    $0, %eax                #  41:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_5                  #  42:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_11_while_cond:
    movl    $68094, %eax            #  46:     add    t21 <- 68094, 22327
    movl    $22327, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  47:     sub    t22 <- t21, 54881
    movl    $54881, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  48:     sub    t23 <- t22, 88726
    movl    $88726, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  49:     sub    t24 <- t23, 6031
    movl    $6031, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  50:     sub    t25 <- t24, 13910
    movl    $13910, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $45241, %eax            #  51:     if     45241 > t25 goto 14
    movl    -88(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_14                
    jmp     l_f1_15                 #  52:     goto   15
l_f1_14:
    movl    $1, %eax                #  54:     assign t26 <- 1
    movb    %al, -89(%ebp)         
    jmp     l_f1_16                 #  55:     goto   16
l_f1_15:
    movl    $0, %eax                #  57:     assign t26 <- 0
    movb    %al, -89(%ebp)         
l_f1_16:
    movl    $2, %eax                #  59:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  60:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  61:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $11845, %eax            #  62:     mul    t28 <- 11845, t27
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  63:     add    t29 <- t28, 45320
    movl    $45320, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $3, %eax                #  64:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  65:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  66:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -104(%ebp), %eax        #  67:     mul    t31 <- t29, t30
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  68:     add    t32 <- t31, 94311
    movl    $94311, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $4, %eax                #  69:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  70:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  71:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  72:     mul    t34 <- t32, t33
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  73:     add    t35 <- t34, 12043
    movl    $12043, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $5, %eax                #  74:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  75:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  76:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  77:     mul    t37 <- t35, t36
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  78:     add    t38 <- t37, 52721
    movl    $52721, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  79:     mul    t39 <- t38, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    12(%ebp), %eax          #  80:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  81:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -156(%ebp)       
    movl    -148(%ebp), %eax        #  82:     add    t41 <- t39, t40
    movl    -156(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    12(%ebp), %eax          #  83:     add    t42 <- v1, t41
    movl    -160(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -164(%ebp)       
    movzbl  -89(%ebp), %eax         #  84:     assign @t42 <- t26
    movl    -164(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_11_while_cond      #  85:     goto   11_while_cond

l_f1_exit:
    # epilogue
    addl    $176, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 9 of <array 2 of <array 4 of <array 10 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $t6       <char> %ebp-31 ]
    #    -36(%ebp)   4  [ $v0       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v1       <bool> %ebp-37 ]
    #   -28864(%ebp)  28824  [ $v2       <array 10 of <array 9 of <array 2 of <array 4 of <array 10 of <int>>>>>> %ebp-28864 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28852, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7213, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-28864(%ebp)         # local array 'v2': 5 dimensions
    movl    $10,-28860(%ebp)        #   dimension 1: 10 elements
    movl    $9,-28856(%ebp)         #   dimension 2: 9 elements
    movl    $2,-28852(%ebp)         #   dimension 3: 2 elements
    movl    $4,-28848(%ebp)         #   dimension 4: 4 elements
    movl    $10,-28844(%ebp)        #   dimension 5: 10 elements

    # function body
    movl    $48686, %eax            #   0:     div    t0 <- 48686, 92759
    movl    $92759, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 48567
    movl    $48567, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t2 <- t1, 32787
    movl    $32787, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v0 <- t2
    movl    %eax, -36(%ebp)        
    leal    -28864(%ebp), %eax      #   4:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   6:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   7:     if     t4 > 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2                 
    jmp     l_f2_3                  #   8:     goto   3
l_f2_2:
    movl    $1, %eax                #  10:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f2_4                  #  11:     goto   4
l_f2_3:
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_f2_4:
    movzbl  -30(%ebp), %eax         #  15:     assign v1 <- t5
    movb    %al, -37(%ebp)         
    call    dummyCHARfunc           #  16:     call   t6 <- dummyCHARfunc
    movb    %al, -31(%ebp)         
    movzbl  -31(%ebp), %eax         #  17:     param  0 <- t6
    pushl   %eax                   
    call    WriteChar               #  18:     call   WriteChar
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $28852, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $99, %eax               #   0:     if     99 <= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
l_test_8_while_cond:
    jmp     l_test_7                #   5:     goto   7
    jmp     l_test_8_while_cond     #   6:     goto   8_while_cond
l_test_7:
    jmp     l_test_5_while_cond     #   8:     goto   5_while_cond
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $58818, %eax            #  15:     if     58818 >= 71285 goto 14_if_true
    movl    $71285, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_14_if_true      
    jmp     l_test_15_if_false      #  16:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_exit            
    movl    $15872, %eax            #  19:     if     15872 < 10186 goto 19_if_true
    movl    $10186, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_19_if_true      
    jmp     l_test_20_if_false      #  20:     goto   20_if_false
l_test_19_if_true:
    movl    $17295, %eax            #  22:     if     17295 = 9317 goto 23_if_true
    movl    $9317, %ebx            
    cmpl    %ebx, %eax             
    je      l_test_23_if_true      
    jmp     l_test_24_if_false      #  23:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  25:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_18               #  28:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_13               #  31:     goto   13
l_test_15_if_false:
l_test_13:

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
