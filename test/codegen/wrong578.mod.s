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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 5 of <array 9 of <array 4 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 6 of <array 4 of <array 4 of <array 10 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 4 of <array 9 of <array 7 of <array 10 of <array 6 of <char>>>>>>> %ebp+20 ]
    #    -22(%ebp)   1  [ $v5       <bool> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $32053, %eax            #   1:     sub    t2 <- 32053, 99392
    movl    $99392, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $91475, %eax            #   2:     if     91475 <= t2 goto 2
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2                 
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f0_4:
    movzbl  -21(%ebp), %eax         #  10:     assign v5 <- t3
    movb    %al, -22(%ebp)         
    movl    $99, %eax               #  11:     return 99
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 4 of <array 9 of <array 7 of <array 10 of <array 6 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <ptr(4) to <array 4 of <array 9 of <array 7 of <array 10 of <array 6 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <ptr(4) to <array 4 of <array 9 of <array 7 of <array 10 of <array 6 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <ptr(4) to <array 4 of <array 9 of <array 7 of <array 10 of <array 6 of <char>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <ptr(4) to <array 10 of <array 6 of <array 4 of <array 4 of <array 10 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <ptr(4) to <array 4 of <array 9 of <array 7 of <array 10 of <array 6 of <char>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 5 of <array 9 of <array 4 of <array 1 of <int>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t31      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t32      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t33      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t34      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t35      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t36      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t37      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t38      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t39      <int> %ebp-144 ]
    #   -145(%ebp)   1  [ $t4       <char> %ebp-145 ]
    #   -152(%ebp)   4  [ $t40      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t41      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t42      <int> %ebp-160 ]
    #   -161(%ebp)   1  [ $t43      <bool> %ebp-161 ]
    #   -162(%ebp)   1  [ $t44      <bool> %ebp-162 ]
    #   -168(%ebp)   4  [ $t5       <ptr(4) to <array 4 of <array 9 of <array 7 of <array 10 of <array 6 of <char>>>>>>> %ebp-168 ]
    #   -172(%ebp)   4  [ $t6       <ptr(4) to <array 4 of <array 9 of <array 7 of <array 10 of <array 6 of <char>>>>>>> %ebp-172 ]
    #   -176(%ebp)   4  [ $t7       <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t8       <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t9       <int> %ebp-184 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 7 of <array 2 of <array 5 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 5 of <array 9 of <array 8 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #   -3808(%ebp)  3624  [ $v4       <array 5 of <array 5 of <array 9 of <array 4 of <array 1 of <int>>>>>> %ebp-3808 ]
    #   -42232(%ebp)  38424  [ $v5       <array 10 of <array 6 of <array 4 of <array 4 of <array 10 of <int>>>>>> %ebp-42232 ]
    #   -57376(%ebp)  15144  [ $v6       <array 4 of <array 9 of <array 7 of <array 10 of <array 6 of <char>>>>>> %ebp-57376 ]
    #   -57377(%ebp)   1  [ $v7       <char> %ebp-57377 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $57368, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14342, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3808(%ebp)          # local array 'v4': 5 dimensions
    movl    $5,-3804(%ebp)          #   dimension 1: 5 elements
    movl    $5,-3800(%ebp)          #   dimension 2: 5 elements
    movl    $9,-3796(%ebp)          #   dimension 3: 9 elements
    movl    $4,-3792(%ebp)          #   dimension 4: 4 elements
    movl    $1,-3788(%ebp)          #   dimension 5: 1 elements
    movl    $5,-42232(%ebp)         # local array 'v5': 5 dimensions
    movl    $10,-42228(%ebp)        #   dimension 1: 10 elements
    movl    $6,-42224(%ebp)         #   dimension 2: 6 elements
    movl    $4,-42220(%ebp)         #   dimension 3: 4 elements
    movl    $4,-42216(%ebp)         #   dimension 4: 4 elements
    movl    $10,-42212(%ebp)        #   dimension 5: 10 elements
    movl    $5,-57376(%ebp)         # local array 'v6': 5 dimensions
    movl    $4,-57372(%ebp)         #   dimension 1: 4 elements
    movl    $9,-57368(%ebp)         #   dimension 2: 9 elements
    movl    $7,-57364(%ebp)         #   dimension 3: 7 elements
    movl    $10,-57360(%ebp)        #   dimension 4: 10 elements
    movl    $6,-57356(%ebp)         #   dimension 5: 6 elements

    # function body
    movl    $100, %eax              #   0:     if     100 <= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
    leal    -57376(%ebp), %eax      #   7:     &()    t1 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     param  3 <- t1
    pushl   %eax                   
    leal    -42232(%ebp), %eax      #   9:     &()    t2 <- v5
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  10:     param  2 <- t2
    pushl   %eax                   
    leal    -3808(%ebp), %eax       #  11:     &()    t3 <- v4
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  12:     param  1 <- t3
    pushl   %eax                   
    movl    $97, %eax               #  13:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  14:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -145(%ebp)        
    leal    -57376(%ebp), %eax      #  15:     &()    t5 <- v6
    movl    %eax, -168(%ebp)       
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    leal    -57376(%ebp), %eax      #  17:     &()    t6 <- v6
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #  18:     param  0 <- t6
    pushl   %eax                   
    call    DIM                     #  19:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -176(%ebp)       
    movl    $67528, %eax            #  20:     mul    t8 <- 67528, t7
    movl    -176(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        #  21:     add    t9 <- t8, 14292
    movl    $14292, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -184(%ebp)       
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    leal    -57376(%ebp), %eax      #  23:     &()    t10 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  25:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -184(%ebp), %eax        #  26:     mul    t12 <- t9, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t13 <- t12, 10706
    movl    $10706, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    leal    -57376(%ebp), %eax      #  29:     &()    t14 <- v6
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  31:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  32:     mul    t16 <- t13, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  33:     add    t17 <- t16, 61066
    movl    $61066, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    leal    -57376(%ebp), %eax      #  35:     &()    t18 <- v6
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  36:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  37:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  38:     mul    t20 <- t17, t19
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  39:     add    t21 <- t20, 8514
    movl    $8514, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  40:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    leal    -57376(%ebp), %eax      #  41:     &()    t23 <- v6
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  42:     param  0 <- t23
    pushl   %eax                   
    call    DOFS                    #  43:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  44:     add    t25 <- t22, t24
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -168(%ebp), %eax        #  45:     add    t26 <- t5, t25
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $98, %eax               #  46:     assign @t26 <- 98
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $2, %eax                #  47:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  48:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  49:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $2817, %eax             #  50:     mul    t28 <- 2817, t27
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  51:     add    t29 <- t28, 17614
    movl    $17614, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $3, %eax                #  52:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  53:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  54:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -100(%ebp), %eax        #  55:     mul    t31 <- t29, t30
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  56:     add    t32 <- t31, 65797
    movl    $65797, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $4, %eax                #  57:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  58:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  59:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  60:     mul    t34 <- t32, t33
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  61:     add    t35 <- t34, 15818
    movl    $15818, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $5, %eax                #  62:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  63:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  64:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  65:     mul    t37 <- t35, t36
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  66:     add    t38 <- t37, 25320
    movl    $25320, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  67:     mul    t39 <- t38, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    8(%ebp), %eax           #  68:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  69:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -152(%ebp)       
    movl    -144(%ebp), %eax        #  70:     add    t41 <- t39, t40
    movl    -152(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    8(%ebp), %eax           #  71:     add    t42 <- v1, t41
    movl    -156(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    $1, %eax                #  72:     assign @t42 <- 1
    movl    -160(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_0                  #  73:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $100, %eax              #  76:     if     100 >= 99 goto 11
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_11                
    jmp     l_f1_12                 #  77:     goto   12
l_f1_11:
    movl    $1, %eax                #  79:     assign t43 <- 1
    movb    %al, -161(%ebp)        
    jmp     l_f1_13                 #  80:     goto   13
l_f1_12:
    movl    $0, %eax                #  82:     assign t43 <- 0
    movb    %al, -161(%ebp)        
l_f1_13:
    movzbl  -161(%ebp), %eax        #  84:     assign v3 <- t43
    movb    %al, 16(%ebp)          
    call    dummyBOOLfunc           #  85:     call   t44 <- dummyBOOLfunc
    movb    %al, -162(%ebp)        

l_f1_exit:
    # epilogue
    addl    $57368, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 6 of <array 9 of <array 1 of <array 9 of <int>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_4                  #   3:     goto   4
l_f2_4:
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   8:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   9:     if     97 = t1 goto 8
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_8                 
    jmp     l_f2_9                  #  10:     goto   9
l_f2_8:
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_10                 #  13:     goto   10
l_f2_9:
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_10:
    movzbl  -14(%ebp), %eax         #  17:     return t2
    jmp     l_f2_exit              
    jmp     l_f2_14_if_false        #  18:     goto   14_if_false
    movl    $99, %eax               #  19:     assign v2 <- 99
    movb    %al, -15(%ebp)         
    jmp     l_f2_12                 #  20:     goto   12
l_f2_14_if_false:
l_f2_12:

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
    jmp     l_test_exit            
    movl    $56277, %eax            #   1:     assign v0 <- 56277
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
    call    dummyBOOLfunc           #   5:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   6:     goto   7
l_test_7:
    jmp     l_test_4                #   8:     goto   4
l_test_6_if_false:
l_test_4:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
