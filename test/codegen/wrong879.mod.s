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
    #    -66(%ebp)   1  [ $t24      <bool> %ebp-66 ]
    #    -67(%ebp)   1  [ $t5       <char> %ebp-67 ]
    #    -68(%ebp)   1  [ $t6       <char> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 5 of <array 7 of <array 5 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 7 of <array 10 of <array 5 of <array 8 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 6 of <array 3 of <array 6 of <array 3 of <int>>>>>>> %ebp+20 ]
    #    -81(%ebp)   1  [ $v4       <bool> %ebp-81 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -67(%ebp)         
l_f0_2_while_cond:
    movl    $9094, %eax             #   2:     if     9094 > 7423 goto 3_while_body
    movl    $7423, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    call    dummyCHARfunc           #   5:     call   t6 <- dummyCHARfunc
    movb    %al, -68(%ebp)         
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
l_f0_7_while_cond:
    movl    $6236, %eax             #   9:     if     6236 > 93935 goto 8_while_body
    movl    $93935, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_8_while_body      
    jmp     l_f0_6                  #  10:     goto   6
l_f0_8_while_body:
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $79500, %eax            #  15:     mul    t8 <- 79500, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  16:     add    t9 <- t8, 57755
    movl    $57755, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  20:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     add    t12 <- t11, 46187
    movl    $46187, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  25:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t15 <- t14, 46107
    movl    $46107, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  29:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  30:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     add    t18 <- t17, 76586
    movl    $76586, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  33:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  34:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  35:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  36:     add    t22 <- v0, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $98, %eax               #  37:     assign @t22 <- 98
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $35139, %eax            #  38:     if     35139 # 97189 goto 12
    movl    $97189, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_12                
    jmp     l_f0_13                 #  39:     goto   13
l_f0_12:
    movl    $1, %eax                #  41:     assign t23 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f0_14                 #  42:     goto   14
l_f0_13:
    movl    $0, %eax                #  44:     assign t23 <- 0
    movb    %al, -65(%ebp)         
l_f0_14:
    movzbl  -65(%ebp), %eax         #  46:     assign v4 <- t23
    movb    %al, -81(%ebp)         
    jmp     l_f0_17                 #  47:     goto   17
    jmp     l_f0_17                 #  48:     goto   17
    jmp     l_f0_18                 #  49:     goto   18
l_f0_17:
    movl    $1, %eax                #  51:     assign t24 <- 1
    movb    %al, -66(%ebp)         
    jmp     l_f0_19                 #  52:     goto   19
l_f0_18:
    movl    $0, %eax                #  54:     assign t24 <- 0
    movb    %al, -66(%ebp)         
l_f0_19:
    movzbl  -66(%ebp), %eax         #  56:     return t24
    jmp     l_f0_exit              
    jmp     l_f0_7_while_cond       #  57:     goto   7_while_cond
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
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
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 7 of <array 6 of <array 3 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 5 of <array 3 of <array 1 of <array 10 of <int>>>>>>> %ebp+12 ]
    #    -53(%ebp)   1  [ $v2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $v3       <int> %ebp-60 ]

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
    movl    $34136, %eax            #   0:     if     34136 # 3201 goto 1_if_true
    movl    $3201, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   4:     goto   4
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    movl    $0, %eax                #   7:     assign v2 <- 0
    movb    %al, -53(%ebp)         
    call    dummyCHARfunc           #   8:     call   t5 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_10_while_cond:
    movl    $30617, %eax            #  13:     add    t6 <- 30617, 80594
    movl    $80594, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  14:     sub    t7 <- t6, 19050
    movl    $19050, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  15:     sub    t8 <- t7, 37306
    movl    $37306, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  16:     sub    t9 <- t8, 1245
    movl    $1245, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  17:     add    t10 <- t9, 73486
    movl    $73486, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     if     t10 <= 52032 goto 11_while_body
    movl    $52032, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  19:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  21:     goto   10_while_cond
l_f1_9:
    movl    $23949, %eax            #  23:     sub    t11 <- 23949, 1516
    movl    $1516, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     add    t12 <- t11, 22907
    movl    $22907, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     add    t13 <- t12, 92608
    movl    $92608, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     sub    t14 <- t13, 61878
    movl    $61878, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     assign v3 <- t14
    movl    %eax, -60(%ebp)        

l_f1_exit:
    # epilogue
    addl    $48, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 6 of <array 6 of <array 3 of <array 6 of <array 3 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 1 of <array 7 of <array 10 of <array 5 of <array 8 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 3 of <array 5 of <array 7 of <array 5 of <array 10 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 6 of <array 10 of <array 10 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 8 of <array 3 of <array 7 of <array 3 of <int>>>>>>> %ebp+16 ]
    #    -30(%ebp)   1  [ $v3       <bool> %ebp-30 ]
    #   -5304(%ebp)  5274  [ $v4       <array 3 of <array 5 of <array 7 of <array 5 of <array 10 of <char>>>>>> %ebp-5304 ]
    #   -16528(%ebp)  11224  [ $v5       <array 1 of <array 7 of <array 10 of <array 5 of <array 8 of <int>>>>>> %ebp-16528 ]
    #   -24328(%ebp)  7800  [ $v6       <array 6 of <array 6 of <array 3 of <array 6 of <array 3 of <int>>>>>> %ebp-24328 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24316, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6079, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-5304(%ebp)          # local array 'v4': 5 dimensions
    movl    $3,-5300(%ebp)          #   dimension 1: 3 elements
    movl    $5,-5296(%ebp)          #   dimension 2: 5 elements
    movl    $7,-5292(%ebp)          #   dimension 3: 7 elements
    movl    $5,-5288(%ebp)          #   dimension 4: 5 elements
    movl    $10,-5284(%ebp)         #   dimension 5: 10 elements
    movl    $5,-16528(%ebp)         # local array 'v5': 5 dimensions
    movl    $1,-16524(%ebp)         #   dimension 1: 1 elements
    movl    $7,-16520(%ebp)         #   dimension 2: 7 elements
    movl    $10,-16516(%ebp)        #   dimension 3: 10 elements
    movl    $5,-16512(%ebp)         #   dimension 4: 5 elements
    movl    $8,-16508(%ebp)         #   dimension 5: 8 elements
    movl    $5,-24328(%ebp)         # local array 'v6': 5 dimensions
    movl    $6,-24324(%ebp)         #   dimension 1: 6 elements
    movl    $6,-24320(%ebp)         #   dimension 2: 6 elements
    movl    $3,-24316(%ebp)         #   dimension 3: 3 elements
    movl    $6,-24312(%ebp)         #   dimension 4: 6 elements
    movl    $3,-24308(%ebp)         #   dimension 5: 3 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   1:     assign v3 <- 0
    movb    %al, -30(%ebp)         
    leal    -24328(%ebp), %eax      #   2:     &()    t6 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  3 <- t6
    pushl   %eax                   
    leal    -16528(%ebp), %eax      #   4:     &()    t7 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  2 <- t7
    pushl   %eax                   
    movl    $97, %eax               #   6:     param  1 <- 97
    pushl   %eax                   
    leal    -5304(%ebp), %eax       #   7:     &()    t8 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #   9:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $24316, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <char> %ebp-20 ]

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
    movl    $19910, %eax            #   0:     add    t0 <- 19910, 57234
    movl    $57234, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $85757, %eax            #   1:     if     85757 <= t0 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    movl    $83827, %eax            #   4:     if     83827 # 3242 goto 5_if_true
    movl    $3242, %ebx            
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
    call    dummyCHARfunc           #  13:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  14:     if     t1 = 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #  15:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  17:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_16_if_false      #  22:     goto   16_if_false
    call    dummyBOOLfunc           #  23:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    call    dummyBOOLfunc           #  24:     call   t3 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    movl    $99, %eax               #  25:     assign v0 <- 99
    movb    %al, v0                
l_test_21_while_cond:
    jmp     l_test_21_while_cond    #  27:     goto   21_while_cond
l_test_24_while_cond:
    jmp     l_test_23               #  29:     goto   23
    jmp     l_test_24_while_cond    #  30:     goto   24_while_cond
l_test_23:
    call    dummyCHARfunc           #  32:     call   t4 <- dummyCHARfunc
    movb    %al, -20(%ebp)         
l_test_28_while_cond:
    movl    $0, %eax                #  34:     if     0 = 1 goto 29_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_29_while_body   
    jmp     l_test_27               #  35:     goto   27
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  37:     goto   28_while_cond
l_test_27:
    jmp     l_test_14               #  39:     goto   14
l_test_16_if_false:
l_test_14:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
