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
    #    -66(%ebp)   1  [ $t5       <bool> %ebp-66 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 85 of <array 86 of <array 94 of <array 12 of <array 90 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 82 of <array 90 of <array 2 of <array 94 of <array 45 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -66(%ebp)         
    movl    $95416, %eax            #   1:     sub    t6 <- 95416, 4429
    movl    $4429, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   4:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #   5:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   6:     add    t9 <- t8, 68085
    movl    $68085, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   9:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  10:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t12 <- t11, 34253
    movl    $34253, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t15 <- t14, 54831
    movl    $54831, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  20:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     add    t18 <- t17, 76517
    movl    $76517, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  24:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  25:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t22 <- v2, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -66(%ebp), %eax         #  27:     assign @t22 <- t5
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  28:     call   t23 <- dummyBOOLfunc
    movb    %al, -65(%ebp)         
l_f0_3_while_cond:
    movl    $99, %eax               #  30:     if     99 > 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_4_while_body      
    jmp     l_f0_2                  #  31:     goto   2
l_f0_4_while_body:
    movl    $80108, %eax            #  33:     if     80108 >= 42549 goto 7_if_true
    movl    $42549, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  34:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #  36:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $97, %eax               #  39:     if     97 < 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  40:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  42:     goto   10
l_f0_12_if_false:
l_f0_10:
    movl    $97, %eax               #  45:     assign v4 <- 97
    movb    %al, 20(%ebp)          
    jmp     l_f0_3_while_cond       #  46:     goto   3_while_cond
l_f0_2:

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
    #    -25(%ebp)   1  [ $t13      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 33 of <array 65 of <array 73 of <array 5 of <array 96 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 50 of <array 42 of <array 14 of <array 78 of <array 38 of <int>>>>>>> %ebp+16 ]
    #    -49(%ebp)   1  [ $v4       <char> %ebp-49 ]

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
l_f1_1_while_cond:
    call    ReadInt                 #   1:     call   t5 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    $19847, %eax            #   2:     mul    t6 <- 19847, 12004
    movl    $12004, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     mul    t7 <- t6, 5984
    movl    $5984, %ebx            
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     mul    t8 <- t7, 96671
    movl    $96671, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   5:     div    t9 <- t8, 18254
    movl    $18254, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   6:     mul    t10 <- t9, 84759
    movl    $84759, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     mul    t11 <- t10, 86490
    movl    $86490, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     div    t12 <- t11, 80500
    movl    $80500, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -32(%ebp), %eax         #   9:     if     t5 < t12 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #  12:     goto   1_while_cond
l_f1_0:
    movl    $30296, %eax            #  14:     assign v1 <- 30296
    movl    %eax, 8(%ebp)          
    movl    $100, %eax              #  15:     assign v4 <- 100
    movb    %al, -49(%ebp)         
    movl    $99, %eax               #  16:     assign v4 <- 99
    movb    %al, -49(%ebp)         
    jmp     l_f1_4                  #  17:     goto   4
l_f1_4:
    call    dummyCHARfunc           #  19:     call   t13 <- dummyCHARfunc
    movb    %al, -25(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 50 of <array 42 of <array 14 of <array 78 of <array 38 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 33 of <array 65 of <array 73 of <array 5 of <array 96 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t9       <bool> %ebp-30 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 16 of <array 61 of <array 67 of <array 4 of <array 12 of <bool>>>>>>> %ebp+12 ]
    #   -300643256(%ebp)  300643224  [ $v3       <array 33 of <array 65 of <array 73 of <array 5 of <array 96 of <int>>>>>> %ebp-300643256 ]
    #   -649209680(%ebp)  348566424  [ $v4       <array 50 of <array 42 of <array 14 of <array 78 of <array 38 of <int>>>>>> %ebp-649209680 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $649209668, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $162302417, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-300643256(%ebp)     # local array 'v3': 5 dimensions
    movl    $33,-300643252(%ebp)    #   dimension 1: 33 elements
    movl    $65,-300643248(%ebp)    #   dimension 2: 65 elements
    movl    $73,-300643244(%ebp)    #   dimension 3: 73 elements
    movl    $5,-300643240(%ebp)     #   dimension 4: 5 elements
    movl    $96,-300643236(%ebp)    #   dimension 5: 96 elements
    movl    $5,-649209680(%ebp)     # local array 'v4': 5 dimensions
    movl    $50,-649209676(%ebp)    #   dimension 1: 50 elements
    movl    $42,-649209672(%ebp)    #   dimension 2: 42 elements
    movl    $14,-649209668(%ebp)    #   dimension 3: 14 elements
    movl    $78,-649209664(%ebp)    #   dimension 4: 78 elements
    movl    $38,-649209660(%ebp)    #   dimension 5: 38 elements

    # function body
    leal    -649209680(%ebp), %eax  #   0:     &()    t5 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     param  2 <- t5
    pushl   %eax                   
    leal    -300643256(%ebp), %eax  #   2:     &()    t6 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  1 <- t6
    pushl   %eax                   
    movl    $55734, %eax            #   4:     param  0 <- 55734
    pushl   %eax                   
    call    f1                      #   5:     call   f1
    addl    $12, %esp              
    jmp     l_f2_6_if_false         #   6:     goto   6_if_false
    call    dummyINTfunc            #   7:     call   t7 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #   8:     call   t8 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    jmp     l_f2_4                  #   9:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1                  #  12:     goto   1
l_f2_1:
    jmp     l_f2_10                 #  14:     goto   10
    call    dummyBOOLfunc           #  15:     call   t9 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  16:     if     t9 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #  17:     goto   11
l_f2_10:
    movl    $1, %eax                #  19:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_12                 #  20:     goto   12
l_f2_11:
    movl    $0, %eax                #  22:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_12:
    movzbl  -13(%ebp), %eax         #  24:     return t10
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $649209668, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
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
    movl    $97, %eax               #   0:     if     97 > 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $97, %eax               #   3:     if     97 >= 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #   7:     goto   9_while_cond
    movl    $97, %eax               #   8:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_4                #   9:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_0                #  12:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $6523, %eax             #  15:     sub    t0 <- 6523, 66752
    movl    $66752, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     add    t1 <- t0, 28481
    movl    $28481, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     sub    t2 <- t1, 93395
    movl    $93395, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     sub    t3 <- t2, 96227
    movl    $96227, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     sub    t4 <- t3, 15543
    movl    $15543, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     assign v1 <- t4
    movl    %eax, v1               
    jmp     l_test_exit            
l_test_15_while_cond:
    jmp     l_test_16_while_body    #  23:     goto   16_while_body
    jmp     l_test_14               #  24:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  26:     goto   15_while_cond
l_test_14:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
