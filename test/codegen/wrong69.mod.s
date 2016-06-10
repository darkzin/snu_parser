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
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
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
    #    -93(%ebp)   1  [ $t9       <bool> %ebp-93 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 2 of <array 8 of <array 6 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #    -94(%ebp)   1  [ $v3       <bool> %ebp-94 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_exit              
    movl    $97, %eax               #   1:     if     97 <= 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2                 
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t9 <- 1
    movb    %al, -93(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t9 <- 0
    movb    %al, -93(%ebp)         
l_f0_4:
    movzbl  -93(%ebp), %eax         #   9:     assign v3 <- t9
    movb    %al, -94(%ebp)         
    movl    $65999, %eax            #  10:     sub    t10 <- 65999, 36020
    movl    $36020, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t11 <- t10, 58525
    movl    $58525, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #  12:     call   t12 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  13:     if     t11 >= t12 goto 9
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_9                 
    jmp     l_f0_10                 #  14:     goto   10
l_f0_9:
    movl    $1, %eax                #  16:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_11                 #  17:     goto   11
l_f0_10:
    movl    $0, %eax                #  19:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f0_11:
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $37487, %eax            #  24:     mul    t15 <- 37487, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     add    t16 <- t15, 89711
    movl    $89711, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  26:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  29:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     add    t19 <- t18, 123
    movl    $123, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  33:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  34:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  35:     add    t22 <- t21, 9124
    movl    $9124, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  38:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  39:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  40:     add    t25 <- t24, 22657
    movl    $22657, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  41:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  42:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  43:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  44:     add    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    12(%ebp), %eax          #  45:     add    t29 <- v2, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movzbl  -25(%ebp), %eax         #  46:     assign @t29 <- t13
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 6 of <array 4 of <array 7 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 7 of <array 9 of <array 10 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    movl    $11385, %eax            #   0:     mul    t9 <- 11385, 60343
    movl    $60343, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     assign v4 <- t9
    movl    %eax, -28(%ebp)        
    jmp     l_f1_3                  #   2:     goto   3
    jmp     l_f1_3                  #   3:     goto   3
    call    dummyBOOLfunc           #   4:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     if     t10 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2                 
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $1, %eax                #   8:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   9:     goto   4
l_f1_3:
    movl    $0, %eax                #  11:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #  13:     return t11
    jmp     l_f1_exit              
l_f1_8_while_cond:
    call    dummyINTfunc            #  15:     call   t12 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $19037, %eax            #  16:     assign v4 <- 19037
    movl    %eax, -28(%ebp)        
    movl    $1, %eax                #  17:     return 1
    jmp     l_f1_exit              
l_f1_14_while_cond:
    jmp     l_f1_13                 #  19:     goto   13
    jmp     l_f1_14_while_cond      #  20:     goto   14_while_cond
l_f1_13:
    movl    $37469, %eax            #  22:     if     37469 # 70220 goto 17_if_true
    movl    $70220, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  23:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  25:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_8_while_cond       #  28:     goto   8_while_cond

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
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
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t26      <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 5 of <array 7 of <array 9 of <array 10 of <array 1 of <bool>>>>>>> %ebp-84 ]
    #    -85(%ebp)   1  [ $t28      <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $t29      <ptr(4) to <array 9 of <array 6 of <array 4 of <array 7 of <array 8 of <char>>>>>>> %ebp-92 ]
    #    -93(%ebp)   1  [ $t30      <bool> %ebp-93 ]
    #    -94(%ebp)   1  [ $t9       <char> %ebp-94 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 6 of <array 10 of <array 5 of <array 6 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 3 of <array 3 of <array 1 of <array 7 of <array 9 of <char>>>>>>> %ebp+20 ]
    #   -12216(%ebp)  12120  [ $v5       <array 9 of <array 6 of <array 4 of <array 7 of <array 8 of <char>>>>>> %ebp-12216 ]
    #   -15392(%ebp)  3174  [ $v6       <array 5 of <array 7 of <array 9 of <array 10 of <array 1 of <bool>>>>>> %ebp-15392 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $15380, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3845, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-12216(%ebp)         # local array 'v5': 5 dimensions
    movl    $9,-12212(%ebp)         #   dimension 1: 9 elements
    movl    $6,-12208(%ebp)         #   dimension 2: 6 elements
    movl    $4,-12204(%ebp)         #   dimension 3: 4 elements
    movl    $7,-12200(%ebp)         #   dimension 4: 7 elements
    movl    $8,-12196(%ebp)         #   dimension 5: 8 elements
    movl    $5,-15392(%ebp)         # local array 'v6': 5 dimensions
    movl    $5,-15388(%ebp)         #   dimension 1: 5 elements
    movl    $7,-15384(%ebp)         #   dimension 2: 7 elements
    movl    $9,-15380(%ebp)         #   dimension 3: 9 elements
    movl    $10,-15376(%ebp)        #   dimension 4: 10 elements
    movl    $1,-15372(%ebp)         #   dimension 5: 1 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -94(%ebp)         
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   2:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   3:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $47139, %eax            #   4:     mul    t11 <- 47139, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     add    t12 <- t11, 42031
    movl    $42031, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   7:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   8:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   9:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     add    t15 <- t14, 90887
    movl    $90887, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  12:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  13:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  14:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  15:     add    t18 <- t17, 62697
    movl    $62697, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  17:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  18:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  19:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  20:     add    t21 <- t20, 46925
    movl    $46925, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  21:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    20(%ebp), %eax          #  22:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  23:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  24:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    20(%ebp), %eax          #  25:     add    t25 <- v4, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -94(%ebp), %eax         #  26:     assign @t25 <- t9
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_3_if_false         #  27:     goto   3_if_false
    movl    $11994, %eax            #  28:     return 11994
    jmp     l_f2_exit              
    movl    $21536, %eax            #  29:     if     21536 # 43825 goto 6_if_true
    movl    $43825, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  30:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  32:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_1                  #  35:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_14                 #  38:     goto   14
    movl    $1, %eax                #  39:     assign t26 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f2_15                 #  40:     goto   15
l_f2_14:
    movl    $0, %eax                #  42:     assign t26 <- 0
    movb    %al, -77(%ebp)         
l_f2_15:
    movzbl  -77(%ebp), %eax         #  44:     if     t26 = 0 goto 10_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  45:     goto   11_if_false
l_f2_10_if_true:
    leal    -15392(%ebp), %eax      #  47:     &()    t27 <- v6
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  48:     param  2 <- t27
    pushl   %eax                   
    movl    $98, %eax               #  49:     if     98 > 97 goto 18
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_18                
    jmp     l_f2_19                 #  50:     goto   19
l_f2_18:
    movl    $1, %eax                #  52:     assign t28 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f2_20                 #  53:     goto   20
l_f2_19:
    movl    $0, %eax                #  55:     assign t28 <- 0
    movb    %al, -85(%ebp)         
l_f2_20:
    movzbl  -85(%ebp), %eax         #  57:     param  1 <- t28
    pushl   %eax                   
    leal    -12216(%ebp), %eax      #  58:     &()    t29 <- v5
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  59:     param  0 <- t29
    pushl   %eax                   
    call    f1                      #  60:     call   t30 <- f1
    addl    $12, %esp              
    movb    %al, -93(%ebp)         
    jmp     l_f2_9                  #  61:     goto   9
l_f2_11_if_false:
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $15380, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <bool> %ebp-41 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t0
    movb    %al, v0                
    movl    $97802, %eax            #   3:     if     97802 < 38955 goto 3_if_true
    movl    $38955, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_3_if_true       
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_3_if_true:
    movl    $77354, %eax            #   6:     if     77354 > 37237 goto 7
    movl    $37237, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_7               
    jmp     l_test_8                #   7:     goto   8
l_test_7:
    movl    $1, %eax                #   9:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_9                #  10:     goto   9
l_test_8:
    movl    $0, %eax                #  12:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_9:
    movzbl  -14(%ebp), %eax         #  14:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_exit            
l_test_13_while_cond:
    movl    $75140, %eax            #  17:     if     75140 # 70553 goto 14_while_body
    movl    $70553, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_14_while_body   
    jmp     l_test_12               #  18:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  20:     goto   13_while_cond
l_test_12:
    jmp     l_test_2                #  22:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $67278, %eax            #  25:     mul    t2 <- 67278, 83212
    movl    $83212, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     div    t3 <- t2, 61855
    movl    $61855, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     div    t4 <- t3, 49470
    movl    $49470, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t5 <- t4, 16205
    movl    $16205, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     div    t6 <- t5, 69686
    movl    $69686, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     div    t7 <- t6, 45489
    movl    $45489, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #  32:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_16               #  33:     goto   16
l_test_16:
    call    dummyBOOLfunc           #  35:     call   t8 <- dummyBOOLfunc
    movb    %al, -41(%ebp)         

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
