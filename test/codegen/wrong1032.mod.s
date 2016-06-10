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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 74 of <array 89 of <array 96 of <array 32 of <array 59 of <bool>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    movl    $99, %eax               #   0:     assign v3 <- 99
    movb    %al, -14(%ebp)         
    jmp     l_f0_0                  #   1:     goto   0
l_f0_0:
l_f0_6_while_cond:
    jmp     l_f0_7_while_body       #   4:     goto   7_while_body
l_f0_7_while_body:
    call    dummyCHARfunc           #   6:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
    movl    $100, %eax              #   8:     assign v3 <- 100
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
    #    -72(%ebp)   4  [ $t24      <ptr(4) to <array 74 of <array 89 of <array 96 of <array 32 of <array 59 of <bool>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <ptr(4) to <array 74 of <array 89 of <array 96 of <array 32 of <array 59 of <bool>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <ptr(4) to <array 74 of <array 89 of <array 96 of <array 32 of <array 59 of <bool>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <ptr(4) to <array 74 of <array 89 of <array 96 of <array 32 of <array 59 of <bool>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t36      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t37      <ptr(4) to <array 74 of <array 89 of <array 96 of <array 32 of <array 59 of <bool>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t38      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t39      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t4       <ptr(4) to <array 74 of <array 89 of <array 96 of <array 32 of <array 59 of <bool>>>>>>> %ebp-136 ]
    #   -140(%ebp)   4  [ $t40      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t41      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t42      <ptr(4) to <array 74 of <array 89 of <array 96 of <array 32 of <array 59 of <bool>>>>>>> %ebp-148 ]
    #   -152(%ebp)   4  [ $t43      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t44      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t45      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t46      <int> %ebp-164 ]
    #   -165(%ebp)   1  [ $t47      <char> %ebp-165 ]
    #   -172(%ebp)   4  [ $t5       <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t6       <int> %ebp-176 ]
    #   -177(%ebp)   1  [ $t7       <char> %ebp-177 ]
    #   -184(%ebp)   4  [ $t8       <int> %ebp-184 ]
    #   -188(%ebp)   4  [ $t9       <int> %ebp-188 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 48 of <array 65 of <array 57 of <array 50 of <array 82 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 78 of <array 57 of <array 66 of <array 10 of <array 28 of <char>>>>>>> %ebp+16 ]
    #   -189(%ebp)   1  [ $v3       <char> %ebp-189 ]
    #   -1193699544(%ebp)  1193699352  [ $v4       <array 74 of <array 89 of <array 96 of <array 32 of <array 59 of <bool>>>>>> %ebp-1193699544 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1193699532, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $298424883, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1193699544(%ebp)    # local array 'v4': 5 dimensions
    movl    $74,-1193699540(%ebp)   #   dimension 1: 74 elements
    movl    $89,-1193699536(%ebp)   #   dimension 2: 89 elements
    movl    $96,-1193699532(%ebp)   #   dimension 3: 96 elements
    movl    $32,-1193699528(%ebp)   #   dimension 4: 32 elements
    movl    $59,-1193699524(%ebp)   #   dimension 5: 59 elements

    # function body
    leal    -1193699544(%ebp), %eax #   0:     &()    t4 <- v4
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #   1:     param  2 <- t4
    pushl   %eax                   
    movl    $51254, %eax            #   2:     add    t5 <- 51254, 24222
    movl    $24222, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #   3:     sub    t6 <- t5, 41379
    movl    $41379, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -176(%ebp)       
    movl    -176(%ebp), %eax        #   4:     param  1 <- t6
    pushl   %eax                   
    movl    $51823, %eax            #   5:     param  0 <- 51823
    pushl   %eax                   
    call    f0                      #   6:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -177(%ebp)        
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   8:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   9:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -184(%ebp)       
    movl    $82394, %eax            #  10:     mul    t9 <- 82394, t8
    movl    -184(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -188(%ebp)       
    movl    -188(%ebp), %eax        #  11:     add    t10 <- t9, 14737
    movl    $14737, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  15:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     add    t13 <- t12, 98023
    movl    $98023, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  20:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     add    t16 <- t15, 97594
    movl    $97594, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  24:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  25:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  26:     add    t19 <- t18, 75045
    movl    $75045, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  27:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  28:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  29:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  30:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  31:     add    t23 <- v2, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -177(%ebp), %eax        #  32:     assign @t23 <- t7
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $6823, %eax             #  33:     if     6823 > 6191 goto 2_if_true
    movl    $6191, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #  34:     goto   3_if_false
l_f1_2_if_true:
    leal    -1193699544(%ebp), %eax #  36:     &()    t24 <- v4
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #  37:     param  1 <- 2
    pushl   %eax                   
    leal    -1193699544(%ebp), %eax #  38:     &()    t25 <- v4
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  39:     param  0 <- t25
    pushl   %eax                   
    call    DIM                     #  40:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $58632, %eax            #  41:     mul    t27 <- 58632, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  42:     add    t28 <- t27, 16792
    movl    $16792, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  43:     param  1 <- 3
    pushl   %eax                   
    leal    -1193699544(%ebp), %eax #  44:     &()    t29 <- v4
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  45:     param  0 <- t29
    pushl   %eax                   
    call    DIM                     #  46:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  47:     mul    t31 <- t28, t30
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  48:     add    t32 <- t31, 71060
    movl    $71060, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $4, %eax                #  49:     param  1 <- 4
    pushl   %eax                   
    leal    -1193699544(%ebp), %eax #  50:     &()    t33 <- v4
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  51:     param  0 <- t33
    pushl   %eax                   
    call    DIM                     #  52:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -104(%ebp), %eax        #  53:     mul    t35 <- t32, t34
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  54:     add    t36 <- t35, 8431
    movl    $8431, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $5, %eax                #  55:     param  1 <- 5
    pushl   %eax                   
    leal    -1193699544(%ebp), %eax #  56:     &()    t37 <- v4
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  57:     param  0 <- t37
    pushl   %eax                   
    call    DIM                     #  58:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -120(%ebp), %eax        #  59:     mul    t39 <- t36, t38
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  60:     add    t40 <- t39, 28493
    movl    $28493, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  61:     mul    t41 <- t40, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    leal    -1193699544(%ebp), %eax #  62:     &()    t42 <- v4
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  63:     param  0 <- t42
    pushl   %eax                   
    call    DOFS                    #  64:     call   t43 <- DOFS
    addl    $4, %esp               
    movl    %eax, -152(%ebp)       
    movl    -144(%ebp), %eax        #  65:     add    t44 <- t41, t43
    movl    -152(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    -72(%ebp), %eax         #  66:     add    t45 <- t24, t44
    movl    -156(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    $0, %eax                #  67:     assign @t45 <- 0
    movl    -160(%ebp), %edi       
    movb    %al, (%edi)            
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #  69:     goto   7_while_cond
l_f1_10_while_cond:
    call    ReadInt                 #  71:     call   t46 <- ReadInt
    movl    %eax, -164(%ebp)       
    movl    $3356, %eax             #  72:     if     3356 <= t46 goto 11_while_body
    movl    -164(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  73:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  75:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_1                  #  77:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_14_while_cond:
    call    dummyCHARfunc           #  81:     call   t47 <- dummyCHARfunc
    movb    %al, -165(%ebp)        
    movzbl  -165(%ebp), %eax        #  82:     if     t47 < 97 goto 15_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  83:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  85:     goto   14_while_cond
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $1193699532, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    call    ReadInt                 #   1:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f2_5_while_cond:
    jmp     l_f2_4                  #   3:     goto   4
    jmp     l_f2_5_while_cond       #   4:     goto   5_while_cond
l_f2_4:
    call    dummyCHARfunc           #   6:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    ReadInt                 #  10:     call   t6 <- ReadInt
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #  11:     call   t7 <- dummyINTfunc
    movl    %eax, -28(%ebp)        

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 74 of <array 89 of <array 96 of <array 32 of <array 59 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 # t0 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    movl    $154, %eax              #   4:     if     154 # 11103 goto 5_if_true
    movl    $11103, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   7:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_0                #  10:     goto   0
l_test_2_if_false:
l_test_0:
l_test_9_while_cond:
    movl    $30144, %eax            #  14:     if     30144 < 97364 goto 10_while_body
    movl    $97364, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_10_while_body   
    jmp     l_test_10_while_body    #  15:     goto   10_while_body
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  17:     goto   9_while_cond
    jmp     l_test_exit            
    movl    $98, %eax               #  19:     assign v0 <- 98
    movb    %al, v0                
l_test_19_while_cond:
    movl    $21430, %eax            #  21:     if     21430 >= 60021 goto 20_while_body
    movl    $60021, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_20_while_body   
    jmp     l_test_18               #  22:     goto   18
l_test_20_while_body:
l_test_23_while_cond:
    movl    $2547, %eax             #  25:     if     2547 # 43391 goto 24_while_body
    movl    $43391, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_24_while_body   
    jmp     l_test_22               #  26:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  28:     goto   23_while_cond
l_test_22:
    jmp     l_test_26               #  30:     goto   26
l_test_26:
    leal    _str_1, %eax            #  32:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  34:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_32_if_false      #  35:     goto   32_if_false
    jmp     l_test_30               #  36:     goto   30
l_test_32_if_false:
l_test_30:
    jmp     l_test_exit            
    movl    $53543, %eax            #  40:     if     53543 < 62469 goto 35_if_true
    movl    $62469, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_35_if_true      
    jmp     l_test_36_if_false      #  41:     goto   36_if_false
l_test_35_if_true:
    jmp     l_test_34               #  43:     goto   34
l_test_36_if_false:
l_test_34:
    jmp     l_test_19_while_cond    #  46:     goto   19_while_cond
l_test_18:
    leal    v1, %eax                #  48:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  49:     param  2 <- t2
    pushl   %eax                   
    movl    $10219, %eax            #  50:     param  1 <- 10219
    pushl   %eax                   
    movl    $85390, %eax            #  51:     param  0 <- 85390
    pushl   %eax                   
    call    f0                      #  52:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 74 of <array 89 of <array 96 of <array 32 of <array 59 of <bool>>>>>>
    .long    5
    .long   74
    .long   89
    .long   96
    .long   32
    .long   59
    .skip 1193699328








    # end of global data section
    #-----------------------------------------

    .end
##################################################
