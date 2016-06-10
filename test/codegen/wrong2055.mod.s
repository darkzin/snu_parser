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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 19 of <array 66 of <array 96 of <array 98 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 36 of <array 50 of <array 66 of <array 77 of <array 94 of <int>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    movl    $99, %eax               #   0:     assign v2 <- 99
    movb    %al, -14(%ebp)         
    jmp     l_f0_5                  #   1:     goto   5
    jmp     l_f0_5                  #   2:     goto   5
    jmp     l_f0_2_if_true          #   3:     goto   2_if_true
l_f0_5:
l_f0_2_if_true:
    jmp     l_f0_1                  #   6:     goto   1
l_f0_1:
    call    dummyCHARfunc           #   8:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 19 of <array 81 of <array 36 of <array 16 of <array 71 of <char>>>>>>> %ebp+8 ]

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
    movl    $7196, %eax             #   0:     sub    t1 <- 7196, 44290
    movl    $44290, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t2 <- t1, 36582
    movl    $36582, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t3 <- t2, 82046
    movl    $82046, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t3
    jmp     l_f1_exit              
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
    movl    $65295, %eax            #   5:     return 65295
    jmp     l_f1_exit              
l_f1_6_while_cond:
    jmp     l_f1_5                  #   7:     goto   5
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
l_f1_9_while_cond:
    movl    $6543, %eax             #  11:     if     6543 > 18888 goto 10_while_body
    movl    $18888, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_10_while_body     
    jmp     l_f1_8                  #  12:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  14:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_1                  #  16:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $50704, %eax            #  19:     add    t4 <- 50704, 99189
    movl    $99189, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     add    t5 <- t4, 15477
    movl    $15477, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t6 <- t5, 49650
    movl    $49650, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     return t6
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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t17      <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t31      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t32      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t33      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t34      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t35      <ptr(4) to <array 36 of <array 50 of <array 66 of <array 77 of <array 94 of <int>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t36      <ptr(4) to <array 3 of <array 19 of <array 66 of <array 96 of <array 98 of <bool>>>>>>> %ebp-132 ]
    #   -133(%ebp)   1  [ $t37      <char> %ebp-133 ]
    #   -134(%ebp)   1  [ $t38      <char> %ebp-134 ]
    #   -135(%ebp)   1  [ $t39      <char> %ebp-135 ]
    #   -140(%ebp)   4  [ $t4       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t5       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t6       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t7       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t8       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t9       <int> %ebp-160 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 29 of <array 13 of <array 37 of <array 12 of <array 34 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 28 of <array 84 of <array 64 of <array 9 of <array 76 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 90 of <array 30 of <array 20 of <array 43 of <array 32 of <int>>>>>>> %ebp+16 ]
    #   -164(%ebp)   4  [ $v3       <int> %ebp-164 ]
    #   -165(%ebp)   1  [ $v4       <bool> %ebp-165 ]
    #   -35393088(%ebp)  35392920  [ $v5       <array 3 of <array 19 of <array 66 of <array 96 of <array 98 of <bool>>>>>> %ebp-35393088 ]
    #   820076584(%ebp)  -855469672  [ $v6       <array 36 of <array 50 of <array 66 of <array 77 of <array 94 of <int>>>>>> %ebp+820076584 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-820076596, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-205019149, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-35393088(%ebp)      # local array 'v5': 5 dimensions
    movl    $3,-35393084(%ebp)      #   dimension 1: 3 elements
    movl    $19,-35393080(%ebp)     #   dimension 2: 19 elements
    movl    $66,-35393076(%ebp)     #   dimension 3: 66 elements
    movl    $96,-35393072(%ebp)     #   dimension 4: 96 elements
    movl    $98,-35393068(%ebp)     #   dimension 5: 98 elements
    movl    $5,820076584(%ebp)      # local array 'v6': 5 dimensions
    movl    $36,820076588(%ebp)     #   dimension 1: 36 elements
    movl    $50,820076592(%ebp)     #   dimension 2: 50 elements
    movl    $66,820076596(%ebp)     #   dimension 3: 66 elements
    movl    $77,820076600(%ebp)     #   dimension 4: 77 elements
    movl    $94,820076604(%ebp)     #   dimension 5: 94 elements

    # function body
    movl    $98, %eax               #   0:     if     98 < 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   4:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   5:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $80303, %eax            #   6:     mul    t2 <- 80303, t1
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   7:     add    t3 <- t2, 36375
    movl    $36375, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   9:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  10:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -104(%ebp), %eax        #  11:     mul    t5 <- t3, t4
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  12:     add    t6 <- t5, 65482
    movl    $65482, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #  16:     mul    t8 <- t6, t7
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  17:     add    t9 <- t8, 78744
    movl    $78744, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -160(%ebp), %eax        #  21:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t12 <- t11, 26952
    movl    $26952, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     mul    t13 <- t12, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    16(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  25:     call   t14 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    16(%ebp), %eax          #  27:     add    t16 <- v2, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $34568, %eax            #  28:     assign @t16 <- 34568
    movl    -44(%ebp), %edi        
    movl    %eax, (%edi)           
l_f2_6_while_cond:
    movl    $61889, %eax            #  30:     if     61889 > 36592 goto 7_while_body
    movl    $36592, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_7_while_body      
    jmp     l_f2_5                  #  31:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  33:     goto   6_while_cond
l_f2_5:
    movl    $78253, %eax            #  35:     if     78253 >= 61558 goto 10
    movl    $61558, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_10                
    jmp     l_f2_11                 #  36:     goto   11
l_f2_10:
    movl    $1, %eax                #  38:     assign t17 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f2_12                 #  39:     goto   12
l_f2_11:
    movl    $0, %eax                #  41:     assign t17 <- 0
    movb    %al, -45(%ebp)         
l_f2_12:
    movl    $2, %eax                #  43:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  45:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $43381, %eax            #  46:     mul    t19 <- 43381, t18
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  47:     add    t20 <- t19, 51198
    movl    $51198, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  48:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  49:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  50:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  51:     mul    t22 <- t20, t21
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  52:     add    t23 <- t22, 66917
    movl    $66917, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  53:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  54:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  55:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  56:     mul    t25 <- t23, t24
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  57:     add    t26 <- t25, 80848
    movl    $80848, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  58:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  59:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  60:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  61:     mul    t28 <- t26, t27
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    $58124, %eax            #  62:     sub    t29 <- 58124, 822
    movl    $822, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  63:     add    t30 <- t28, t29
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  64:     mul    t31 <- t30, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    8(%ebp), %eax           #  65:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  66:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  67:     add    t33 <- t31, t32
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    8(%ebp), %eax           #  68:     add    t34 <- v0, t33
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movzbl  -45(%ebp), %eax         #  69:     assign @t34 <- t17
    movl    -124(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f2_0                  #  70:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    820076584(%ebp), %eax   #  73:     &()    t35 <- v6
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  74:     param  1 <- t35
    pushl   %eax                   
    leal    -35393088(%ebp), %eax   #  75:     &()    t36 <- v5
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  76:     param  0 <- t36
    pushl   %eax                   
    call    f0                      #  77:     call   t37 <- f0
    addl    $8, %esp               
    movb    %al, -133(%ebp)        
    movzbl  -133(%ebp), %eax        #  78:     return t37
    jmp     l_f2_exit              
l_f2_16_while_cond:
    call    dummyCHARfunc           #  80:     call   t38 <- dummyCHARfunc
    movb    %al, -134(%ebp)        
    call    dummyCHARfunc           #  81:     call   t39 <- dummyCHARfunc
    movb    %al, -135(%ebp)        
    movzbl  -134(%ebp), %eax        #  82:     if     t38 < t39 goto 17_while_body
    movzbl  -135(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jl      l_f2_17_while_body     
    jmp     l_f2_15                 #  83:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  85:     goto   16_while_cond
l_f2_15:

l_f2_exit:
    # epilogue
    addl    $-820076596, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    movl    $97, %eax               #   0:     if     97 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   4:     goto   5_while_cond
l_test_8_while_cond:
    movl    $98, %eax               #   6:     if     98 = 99 goto 9_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #   7:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #   9:     goto   8_while_cond
l_test_7:
l_test_12_while_cond:
    movl    $49042, %eax            #  12:     if     49042 >= 24269 goto 13_while_body
    movl    $24269, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_13_while_body   
    jmp     l_test_11               #  13:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  15:     goto   12_while_cond
l_test_11:
    jmp     l_test_0                #  17:     goto   0
l_test_2_if_false:
l_test_0:
l_test_16_while_cond:
    jmp     l_test_15               #  21:     goto   15
    movl    $98, %eax               #  22:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_16_while_cond    #  23:     goto   16_while_cond
l_test_15:
    call    dummyBOOLfunc           #  25:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            

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
