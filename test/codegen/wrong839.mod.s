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
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 2 of <array 4 of <array 6 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 7 of <array 1 of <array 6 of <array 1 of <int>>>>>>> %ebp+16 ]
    #    -88(%ebp)   4  [ $v4       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $v5       <char> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   1:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   2:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $40406, %eax            #   3:     mul    t4 <- 40406, t3
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    $52741, %eax            #   4:     sub    t5 <- 52741, 11040
    movl    $11040, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #   5:     add    t6 <- t4, t5
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   7:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   8:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #   9:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    $31770, %eax            #  10:     mul    t9 <- 31770, 6426
    movl    $6426, %ebx            
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  11:     add    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  15:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     add    t13 <- t12, 41610
    movl    $41610, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  20:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     add    t16 <- t15, 60447
    movl    $60447, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  24:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  25:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  26:     add    t20 <- v3, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $49507, %eax            #  27:     assign @t20 <- 49507
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
    call    WriteLn                 #  28:     call   WriteLn
    movl    $98, %eax               #  29:     assign v5 <- 98
    movb    %al, -89(%ebp)         

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 7 of <array 1 of <array 6 of <array 1 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 9 of <array 2 of <array 4 of <array 6 of <array 10 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t9       <bool> %ebp-34 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 10 of <array 10 of <array 6 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 2 of <array 2 of <array 5 of <array 6 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #   -4380(%ebp)  4344  [ $v4       <array 9 of <array 2 of <array 4 of <array 6 of <array 10 of <bool>>>>>> %ebp-4380 ]
    #   -4908(%ebp)  528  [ $v5       <array 3 of <array 7 of <array 1 of <array 6 of <array 1 of <int>>>>>> %ebp-4908 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4896, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1224, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4380(%ebp)          # local array 'v4': 5 dimensions
    movl    $9,-4376(%ebp)          #   dimension 1: 9 elements
    movl    $2,-4372(%ebp)          #   dimension 2: 2 elements
    movl    $4,-4368(%ebp)          #   dimension 3: 4 elements
    movl    $6,-4364(%ebp)          #   dimension 4: 6 elements
    movl    $10,-4360(%ebp)         #   dimension 5: 10 elements
    movl    $5,-4908(%ebp)          # local array 'v5': 5 dimensions
    movl    $3,-4904(%ebp)          #   dimension 1: 3 elements
    movl    $7,-4900(%ebp)          #   dimension 2: 7 elements
    movl    $1,-4896(%ebp)          #   dimension 3: 1 elements
    movl    $6,-4892(%ebp)          #   dimension 4: 6 elements
    movl    $1,-4888(%ebp)          #   dimension 5: 1 elements

    # function body
    movl    $64321, %eax            #   0:     mul    t3 <- 64321, 70181
    movl    $70181, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t4 <- t3, 333
    movl    $333, %ebx             
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t4
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $16812, %eax            #   4:     if     16812 > 33135 goto 6_if_true
    movl    $33135, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   5:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_2_while_cond       #  10:     goto   2_while_cond
l_f1_10_while_cond:
    movl    $1, %eax                #  12:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_15                 #  13:     goto   15
    movl    $0, %eax                #  14:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f1_15:
    leal    -4908(%ebp), %eax       #  16:     &()    t6 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     param  2 <- t6
    pushl   %eax                   
    leal    -4380(%ebp), %eax       #  18:     &()    t7 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     param  1 <- t7
    pushl   %eax                   
    movl    $99, %eax               #  20:     if     99 > 99 goto 17
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_17                
    jmp     l_f1_18                 #  21:     goto   18
l_f1_17:
    movl    $1, %eax                #  23:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_19                 #  24:     goto   19
l_f1_18:
    movl    $0, %eax                #  26:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f1_19:
    movzbl  -33(%ebp), %eax         #  28:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  29:     call   t9 <- f0
    addl    $12, %esp              
    movb    %al, -34(%ebp)         
    movzbl  -21(%ebp), %eax         #  30:     if     t5 # t9 goto 11_while_body
    movzbl  -34(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_11_while_body     
    jmp     l_f1_9                  #  31:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  33:     goto   10_while_cond
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $4896, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 3 of <array 7 of <array 1 of <array 6 of <array 1 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 9 of <array 2 of <array 4 of <array 6 of <array 10 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t15      <ptr(4) to <array 2 of <array 2 of <array 2 of <array 5 of <array 6 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <ptr(4) to <array 9 of <array 10 of <array 10 of <array 6 of <array 5 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t18      <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 7 of <array 1 of <array 6 of <array 1 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t4       <ptr(4) to <array 9 of <array 2 of <array 4 of <array 6 of <array 10 of <bool>>>>>>> %ebp-52 ]
    #    -53(%ebp)   1  [ $t5       <bool> %ebp-53 ]
    #    -54(%ebp)   1  [ $t6       <bool> %ebp-54 ]
    #    -60(%ebp)   4  [ $t7       <ptr(4) to <array 3 of <array 7 of <array 1 of <array 6 of <array 1 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t8       <ptr(4) to <array 9 of <array 2 of <array 4 of <array 6 of <array 10 of <bool>>>>>>> %ebp-64 ]
    #    -65(%ebp)   1  [ $t9       <bool> %ebp-65 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 2 of <array 1 of <array 1 of <array 3 of <char>>>>>>> %ebp+8 ]
    #   -4412(%ebp)  4344  [ $v2       <array 9 of <array 2 of <array 4 of <array 6 of <array 10 of <bool>>>>>> %ebp-4412 ]
    #   -4940(%ebp)  528  [ $v3       <array 3 of <array 7 of <array 1 of <array 6 of <array 1 of <int>>>>>> %ebp-4940 ]
    #   -4941(%ebp)   1  [ $v4       <bool> %ebp-4941 ]
    #   -31968(%ebp)  27024  [ $v5       <array 9 of <array 10 of <array 10 of <array 6 of <array 5 of <bool>>>>>> %ebp-31968 ]
    #   -32232(%ebp)  264  [ $v6       <array 2 of <array 2 of <array 2 of <array 5 of <array 6 of <char>>>>>> %ebp-32232 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32220, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8055, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4412(%ebp)          # local array 'v2': 5 dimensions
    movl    $9,-4408(%ebp)          #   dimension 1: 9 elements
    movl    $2,-4404(%ebp)          #   dimension 2: 2 elements
    movl    $4,-4400(%ebp)          #   dimension 3: 4 elements
    movl    $6,-4396(%ebp)          #   dimension 4: 6 elements
    movl    $10,-4392(%ebp)         #   dimension 5: 10 elements
    movl    $5,-4940(%ebp)          # local array 'v3': 5 dimensions
    movl    $3,-4936(%ebp)          #   dimension 1: 3 elements
    movl    $7,-4932(%ebp)          #   dimension 2: 7 elements
    movl    $1,-4928(%ebp)          #   dimension 3: 1 elements
    movl    $6,-4924(%ebp)          #   dimension 4: 6 elements
    movl    $1,-4920(%ebp)          #   dimension 5: 1 elements
    movl    $5,-31968(%ebp)         # local array 'v5': 5 dimensions
    movl    $9,-31964(%ebp)         #   dimension 1: 9 elements
    movl    $10,-31960(%ebp)        #   dimension 2: 10 elements
    movl    $10,-31956(%ebp)        #   dimension 3: 10 elements
    movl    $6,-31952(%ebp)         #   dimension 4: 6 elements
    movl    $5,-31948(%ebp)         #   dimension 5: 5 elements
    movl    $5,-32232(%ebp)         # local array 'v6': 5 dimensions
    movl    $2,-32228(%ebp)         #   dimension 1: 2 elements
    movl    $2,-32224(%ebp)         #   dimension 2: 2 elements
    movl    $2,-32220(%ebp)         #   dimension 3: 2 elements
    movl    $5,-32216(%ebp)         #   dimension 4: 5 elements
    movl    $6,-32212(%ebp)         #   dimension 5: 6 elements

    # function body
l_f2_1_while_cond:
    movl    $100, %eax              #   1:     if     100 >= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    movl    $57317, %eax            #   5:     if     57317 > 93486 goto 6_while_body
    movl    $93486, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_while_body:
l_f2_9_while_cond:
    movl    $26770, %eax            #   9:     if     26770 >= 5948 goto 10_while_body
    movl    $5948, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f2_10_while_body     
    jmp     l_f2_8                  #  10:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  12:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_5_while_cond       #  14:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_1_while_cond       #  16:     goto   1_while_cond
l_f2_0:
    leal    -4940(%ebp), %eax       #  18:     &()    t3 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  19:     param  2 <- t3
    pushl   %eax                   
    leal    -4412(%ebp), %eax       #  20:     &()    t4 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  21:     param  1 <- t4
    pushl   %eax                   
    movl    $33313, %eax            #  22:     if     33313 # 68989 goto 13
    movl    $68989, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_13                
    jmp     l_f2_14                 #  23:     goto   14
l_f2_13:
    movl    $1, %eax                #  25:     assign t5 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f2_15                 #  26:     goto   15
l_f2_14:
    movl    $0, %eax                #  28:     assign t5 <- 0
    movb    %al, -53(%ebp)         
l_f2_15:
    movzbl  -53(%ebp), %eax         #  30:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  31:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -54(%ebp)         
    leal    -4940(%ebp), %eax       #  32:     &()    t7 <- v3
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  33:     param  2 <- t7
    pushl   %eax                   
    leal    -4412(%ebp), %eax       #  34:     &()    t8 <- v2
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  35:     param  1 <- t8
    pushl   %eax                   
    movl    $99, %eax               #  36:     if     99 <= 98 goto 20
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_20                
    jmp     l_f2_21                 #  37:     goto   21
l_f2_20:
    movl    $1, %eax                #  39:     assign t9 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f2_22                 #  40:     goto   22
l_f2_21:
    movl    $0, %eax                #  42:     assign t9 <- 0
    movb    %al, -65(%ebp)         
l_f2_22:
    movzbl  -65(%ebp), %eax         #  44:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  45:     call   t10 <- f0
    addl    $12, %esp              
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  46:     if     t10 = 1 goto 18_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  47:     goto   19_if_false
l_f2_18_if_true:
    movl    $100, %eax              #  49:     return 100
    jmp     l_f2_exit              
    leal    -4940(%ebp), %eax       #  50:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  51:     param  2 <- t11
    pushl   %eax                   
    leal    -4412(%ebp), %eax       #  52:     &()    t12 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  53:     param  1 <- t12
    pushl   %eax                   
    movl    $16705, %eax            #  54:     if     16705 # 93798 goto 26
    movl    $93798, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_26                
    jmp     l_f2_27                 #  55:     goto   27
l_f2_26:
    movl    $1, %eax                #  57:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_28                 #  58:     goto   28
l_f2_27:
    movl    $0, %eax                #  60:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f2_28:
    movzbl  -25(%ebp), %eax         #  62:     param  0 <- t13
    pushl   %eax                   
    call    f0                      #  63:     call   t14 <- f0
    addl    $12, %esp              
    movb    %al, -26(%ebp)         
    movl    $0, %eax                #  64:     assign v4 <- 0
    movb    %al, -4941(%ebp)       
    movl    $99, %eax               #  65:     param  2 <- 99
    pushl   %eax                   
    leal    -32232(%ebp), %eax      #  66:     &()    t15 <- v6
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  67:     param  1 <- t15
    pushl   %eax                   
    leal    -31968(%ebp), %eax      #  68:     &()    t16 <- v5
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  69:     param  0 <- t16
    pushl   %eax                   
    call    f1                      #  70:     call   t17 <- f1
    addl    $12, %esp              
    movl    %eax, -40(%ebp)        
    call    dummyCHARfunc           #  71:     call   t18 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    call    dummyProcedure          #  72:     call   dummyProcedure
    jmp     l_f2_17                 #  73:     goto   17
l_f2_19_if_false:
l_f2_17:

l_f2_exit:
    # epilogue
    addl    $32220, %esp            # remove locals
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
    jmp     l_test_1                #   0:     goto   1
l_test_1:
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   3:     goto   3
    movl    $0, %eax                #   4:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_8_if_true        #   7:     goto   8_if_true
l_test_8_if_true:
    movl    $1, %eax                #   9:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_7                #  10:     goto   7
l_test_7:
    call    ReadInt                 #  12:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_16_while_cond:
    movl    $1, %eax                #  14:     if     1 = 1 goto 17_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_15               #  15:     goto   15
l_test_17_while_body:
    movl    $5540, %eax             #  17:     div    t2 <- 5540, 11136
    movl    $11136, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     assign v1 <- t2
    movl    %eax, v1               
    jmp     l_test_16_while_cond    #  19:     goto   16_while_cond
l_test_15:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
