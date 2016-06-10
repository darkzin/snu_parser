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
    #    -65(%ebp)   1  [ $t3       <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t4       <bool> %ebp-66 ]
    #    -67(%ebp)   1  [ $t5       <bool> %ebp-67 ]
    #    -68(%ebp)   1  [ $t6       <bool> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 4 of <array 8 of <array 4 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 1 of <array 10 of <array 3 of <array 2 of <array 1 of <char>>>>>>> %ebp+20 ]
    #    -81(%ebp)   1  [ $v6       <char> %ebp-81 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -65(%ebp)         
    movzbl  -65(%ebp), %eax         #   1:     if     t3 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -66(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -66(%ebp)         
l_f0_3:
    movzbl  -66(%ebp), %eax         #   9:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_7                  #  10:     goto   7
    jmp     l_f0_7                  #  11:     goto   7
    jmp     l_f0_7                  #  12:     goto   7
    movl    $1, %eax                #  13:     assign t5 <- 1
    movb    %al, -67(%ebp)         
    jmp     l_f0_8                  #  14:     goto   8
l_f0_7:
    movl    $0, %eax                #  16:     assign t5 <- 0
    movb    %al, -67(%ebp)         
l_f0_8:
    movzbl  -67(%ebp), %eax         #  18:     return t5
    jmp     l_f0_exit              
    movl    $0, %eax                #  19:     if     0 = 0 goto 17
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_17                
    jmp     l_f0_18                 #  20:     goto   18
l_f0_17:
    movl    $1, %eax                #  22:     assign t6 <- 1
    movb    %al, -68(%ebp)         
    jmp     l_f0_19                 #  23:     goto   19
l_f0_18:
    movl    $0, %eax                #  25:     assign t6 <- 0
    movb    %al, -68(%ebp)         
l_f0_19:
    movzbl  -68(%ebp), %eax         #  27:     return t6
    jmp     l_f0_exit              
l_f0_22_while_cond:
    movl    $99, %eax               #  29:     if     99 = 97 goto 23_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_23_while_body     
    jmp     l_f0_21                 #  30:     goto   21
l_f0_23_while_body:
    jmp     l_f0_22_while_cond      #  32:     goto   22_while_cond
l_f0_21:
    movl    $97, %eax               #  34:     if     97 < 97 goto 26_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_26_if_true        
    jmp     l_f0_27_if_false        #  35:     goto   27_if_false
l_f0_26_if_true:
    jmp     l_f0_25                 #  37:     goto   25
l_f0_27_if_false:
l_f0_25:
    movl    $2, %eax                #  40:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  41:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  42:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $20493, %eax            #  43:     mul    t8 <- 20493, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  44:     add    t9 <- t8, 84619
    movl    $84619, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  45:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  46:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  47:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  48:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  49:     add    t12 <- t11, 96311
    movl    $96311, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  50:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  51:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  52:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  53:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  54:     add    t15 <- t14, 69133
    movl    $69133, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  55:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  56:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  57:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  58:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  59:     add    t18 <- t17, 70824
    movl    $70824, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  60:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  61:     param  0 <- v5
    pushl   %eax                   
    call    DOFS                    #  62:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  63:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  64:     add    t22 <- v5, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $97, %eax               #  65:     assign @t22 <- 97
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_13                 #  66:     goto   13
l_f0_13:

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
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 3 of <array 10 of <array 7 of <array 6 of <bool>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    call    ReadInt                 #   1:     call   t4 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     sub    t5 <- t4, 78790
    movl    $78790, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     return t5
    jmp     l_f1_exit              
    movl    $32265, %eax            #   4:     sub    t6 <- 32265, 48155
    movl    $48155, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     add    t7 <- t6, 579
    movl    $579, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     add    t8 <- t7, 75053
    movl    $75053, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     add    t9 <- t8, 4148
    movl    $4148, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   8:     add    t10 <- t9, 32844
    movl    $32844, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     add    t11 <- t10, 32214
    movl    $32214, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     sub    t12 <- t11, 44857
    movl    $44857, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     return t12
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 9 of <array 3 of <array 10 of <array 7 of <array 6 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 9 of <array 4 of <array 9 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 3 of <array 10 of <array 5 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 10 of <array 10 of <array 6 of <array 10 of <array 5 of <int>>>>>>> %ebp+20 ]
    #    -37(%ebp)   1  [ $v6       <bool> %ebp-37 ]
    #   -11404(%ebp)  11364  [ $v7       <array 9 of <array 3 of <array 10 of <array 7 of <array 6 of <bool>>>>>> %ebp-11404 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $11392, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2848, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-11404(%ebp)         # local array 'v7': 5 dimensions
    movl    $9,-11400(%ebp)         #   dimension 1: 9 elements
    movl    $3,-11396(%ebp)         #   dimension 2: 3 elements
    movl    $10,-11392(%ebp)        #   dimension 3: 10 elements
    movl    $7,-11388(%ebp)         #   dimension 4: 7 elements
    movl    $6,-11384(%ebp)         #   dimension 5: 6 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $0, %eax                #   4:     assign v6 <- 0
    movb    %al, -37(%ebp)         
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    leal    _str_1, %eax            #   7:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   9:     call   WriteStr
    addl    $4, %esp               
l_f2_9_while_cond:
    leal    -11404(%ebp), %eax      #  11:     &()    t4 <- v7
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  2 <- t4
    pushl   %eax                   
    movl    $1, %eax                #  13:     param  1 <- 1
    pushl   %eax                   
    jmp     l_f2_12                 #  14:     goto   12
    jmp     l_f2_12                 #  15:     goto   12
    jmp     l_f2_13                 #  16:     goto   13
l_f2_12:
    movl    $1, %eax                #  18:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_14                 #  19:     goto   14
l_f2_13:
    movl    $0, %eax                #  21:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_14:
    movzbl  -21(%ebp), %eax         #  23:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  24:     call   t6 <- f1
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t7 <- t6, 76646
    movl    $76646, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t8 <- t7, 47762
    movl    $47762, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $2430, %eax             #  27:     if     2430 = t8 goto 10_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_10_while_body     
    jmp     l_f2_8                  #  28:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  30:     goto   9_while_cond
l_f2_8:

l_f2_exit:
    # epilogue
    addl    $11392, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-24 ]

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
    movl    $88058, %eax            #   0:     if     88058 # 15735 goto 1_if_true
    movl    $15735, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $99, %eax               #   4:     if     99 > 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
l_test_9_while_cond:
    movl    $32499, %eax            #  10:     if     32499 # 60206 goto 10_while_body
    movl    $60206, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:
    leal    _str_2, %eax            #  15:     &()    t0 <- _str_2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #  17:     call   WriteStr
    addl    $4, %esp               
    movl    $1, %eax                #  18:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_0                #  19:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $100, %eax              #  22:     if     100 >= 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_15_if_true      
    jmp     l_test_16_if_false      #  23:     goto   16_if_false
l_test_15_if_true:
    movl    $92144, %eax            #  25:     assign v1 <- 92144
    movl    %eax, v1               
    movl    $38806, %eax            #  26:     if     38806 < 57882 goto 20
    movl    $57882, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_20              
    jmp     l_test_21               #  27:     goto   21
l_test_20:
    movl    $1, %eax                #  29:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_22               #  30:     goto   22
l_test_21:
    movl    $0, %eax                #  32:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_22:
    movzbl  -17(%ebp), %eax         #  34:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_14               #  35:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_exit            
    leal    _str_3, %eax            #  39:     &()    t2 <- _str_3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  40:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  41:     call   WriteStr
    addl    $4, %esp               
    movl    $1, %eax                #  42:     assign v0 <- 1
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    .align   4
_str_2:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
_str_3:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
