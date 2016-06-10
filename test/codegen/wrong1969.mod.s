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
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 66 of <array 39 of <array 81 of <array 26 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 34 of <array 67 of <array 92 of <array 51 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 34 of <array 40 of <array 51 of <array 36 of <array 78 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 31 of <array 64 of <array 37 of <array 18 of <array 19 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_1                  #   1:     goto   1
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -33(%ebp)         
l_f0_3:
    movzbl  -33(%ebp), %eax         #   9:     return t7
    jmp     l_f0_exit              
    movl    $64472, %eax            #  10:     sub    t8 <- 64472, 31098
    movl    $31098, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     add    t9 <- t8, 63258
    movl    $63258, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  12:     sub    t10 <- t9, 47513
    movl    $47513, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $33282, %eax            #  13:     div    t11 <- 33282, 61324
    movl    $61324, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     mul    t12 <- t11, 59712
    movl    $59712, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     div    t13 <- t12, 21445
    movl    $21445, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -16(%ebp), %eax         #  16:     if     t10 < t13 goto 9_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  17:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  19:     goto   8
l_f0_10_if_false:
l_f0_8:
    call    ReadInt                 #  22:     call   t14 <- ReadInt
    movl    %eax, -32(%ebp)        

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 31 of <array 64 of <array 37 of <array 18 of <array 19 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 34 of <array 40 of <array 51 of <array 36 of <array 78 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 34 of <array 67 of <array 92 of <array 51 of <array 9 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 66 of <array 39 of <array 81 of <array 26 of <array 5 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 100 of <array 62 of <array 35 of <array 70 of <array 12 of <char>>>>>>> %ebp+16 ]
    #   -27104288(%ebp)  27104244  [ $v3       <array 66 of <array 39 of <array 81 of <array 26 of <array 5 of <char>>>>>> %ebp-27104288 ]
    #   -123299696(%ebp)  96195408  [ $v4       <array 34 of <array 67 of <array 92 of <array 51 of <array 9 of <bool>>>>>> %ebp-123299696 ]
    #   -902351240(%ebp)  779051544  [ $v5       <array 34 of <array 40 of <array 51 of <array 36 of <array 78 of <int>>>>>> %ebp-902351240 ]
    #   -1002773408(%ebp)  100422168  [ $v6       <array 31 of <array 64 of <array 37 of <array 18 of <array 19 of <int>>>>>> %ebp-1002773408 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1002773396, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $250693349, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-27104288(%ebp)      # local array 'v3': 5 dimensions
    movl    $66,-27104284(%ebp)     #   dimension 1: 66 elements
    movl    $39,-27104280(%ebp)     #   dimension 2: 39 elements
    movl    $81,-27104276(%ebp)     #   dimension 3: 81 elements
    movl    $26,-27104272(%ebp)     #   dimension 4: 26 elements
    movl    $5,-27104268(%ebp)      #   dimension 5: 5 elements
    movl    $5,-123299696(%ebp)     # local array 'v4': 5 dimensions
    movl    $34,-123299692(%ebp)    #   dimension 1: 34 elements
    movl    $67,-123299688(%ebp)    #   dimension 2: 67 elements
    movl    $92,-123299684(%ebp)    #   dimension 3: 92 elements
    movl    $51,-123299680(%ebp)    #   dimension 4: 51 elements
    movl    $9,-123299676(%ebp)     #   dimension 5: 9 elements
    movl    $5,-902351240(%ebp)     # local array 'v5': 5 dimensions
    movl    $34,-902351236(%ebp)    #   dimension 1: 34 elements
    movl    $40,-902351232(%ebp)    #   dimension 2: 40 elements
    movl    $51,-902351228(%ebp)    #   dimension 3: 51 elements
    movl    $36,-902351224(%ebp)    #   dimension 4: 36 elements
    movl    $78,-902351220(%ebp)    #   dimension 5: 78 elements
    movl    $5,-1002773408(%ebp)    # local array 'v6': 5 dimensions
    movl    $31,-1002773404(%ebp)   #   dimension 1: 31 elements
    movl    $64,-1002773400(%ebp)   #   dimension 2: 64 elements
    movl    $37,-1002773396(%ebp)   #   dimension 3: 37 elements
    movl    $18,-1002773392(%ebp)   #   dimension 4: 18 elements
    movl    $19,-1002773388(%ebp)   #   dimension 5: 19 elements

    # function body
    call    ReadInt                 #   0:     call   t7 <- ReadInt
    movl    %eax, -36(%ebp)        
    call    ReadInt                 #   1:     call   t8 <- ReadInt
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   2:     sub    t9 <- t8, 78888
    movl    $78888, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   3:     return t9
    jmp     l_f1_exit              
    leal    -1002773408(%ebp), %eax #   4:     &()    t10 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  3 <- t10
    pushl   %eax                   
    leal    -902351240(%ebp), %eax  #   6:     &()    t11 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  2 <- t11
    pushl   %eax                   
    leal    -123299696(%ebp), %eax  #   8:     &()    t12 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  1 <- t12
    pushl   %eax                   
    leal    -27104288(%ebp), %eax   #  10:     &()    t13 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     param  0 <- t13
    pushl   %eax                   
    call    f0                      #  12:     call   t14 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         

l_f1_exit:
    # epilogue
    addl    $1002773396, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 34 of <array 67 of <array 92 of <array 51 of <array 9 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 66 of <array 39 of <array 81 of <array 26 of <array 5 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 31 of <array 64 of <array 37 of <array 18 of <array 19 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 34 of <array 40 of <array 51 of <array 36 of <array 78 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <ptr(4) to <array 34 of <array 67 of <array 92 of <array 51 of <array 9 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <ptr(4) to <array 66 of <array 39 of <array 81 of <array 26 of <array 5 of <char>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t17      <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t7       <bool> %ebp-42 ]
    #    -48(%ebp)   4  [ $t8       <ptr(4) to <array 31 of <array 64 of <array 37 of <array 18 of <array 19 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <ptr(4) to <array 34 of <array 40 of <array 51 of <array 36 of <array 78 of <int>>>>>>> %ebp-52 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 58 of <array 74 of <array 84 of <array 92 of <array 79 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -56(%ebp)   4  [ $v2       <int> %ebp-56 ]
    #   -27104300(%ebp)  27104244  [ $v3       <array 66 of <array 39 of <array 81 of <array 26 of <array 5 of <char>>>>>> %ebp-27104300 ]
    #   -123299708(%ebp)  96195408  [ $v4       <array 34 of <array 67 of <array 92 of <array 51 of <array 9 of <bool>>>>>> %ebp-123299708 ]
    #   -902351252(%ebp)  779051544  [ $v5       <array 34 of <array 40 of <array 51 of <array 36 of <array 78 of <int>>>>>> %ebp-902351252 ]
    #   -1002773420(%ebp)  100422168  [ $v6       <array 31 of <array 64 of <array 37 of <array 18 of <array 19 of <int>>>>>> %ebp-1002773420 ]
    #   -1002773421(%ebp)   1  [ $v7       <char> %ebp-1002773421 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1002773412, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $250693353, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-27104300(%ebp)      # local array 'v3': 5 dimensions
    movl    $66,-27104296(%ebp)     #   dimension 1: 66 elements
    movl    $39,-27104292(%ebp)     #   dimension 2: 39 elements
    movl    $81,-27104288(%ebp)     #   dimension 3: 81 elements
    movl    $26,-27104284(%ebp)     #   dimension 4: 26 elements
    movl    $5,-27104280(%ebp)      #   dimension 5: 5 elements
    movl    $5,-123299708(%ebp)     # local array 'v4': 5 dimensions
    movl    $34,-123299704(%ebp)    #   dimension 1: 34 elements
    movl    $67,-123299700(%ebp)    #   dimension 2: 67 elements
    movl    $92,-123299696(%ebp)    #   dimension 3: 92 elements
    movl    $51,-123299692(%ebp)    #   dimension 4: 51 elements
    movl    $9,-123299688(%ebp)     #   dimension 5: 9 elements
    movl    $5,-902351252(%ebp)     # local array 'v5': 5 dimensions
    movl    $34,-902351248(%ebp)    #   dimension 1: 34 elements
    movl    $40,-902351244(%ebp)    #   dimension 2: 40 elements
    movl    $51,-902351240(%ebp)    #   dimension 3: 51 elements
    movl    $36,-902351236(%ebp)    #   dimension 4: 36 elements
    movl    $78,-902351232(%ebp)    #   dimension 5: 78 elements
    movl    $5,-1002773420(%ebp)    # local array 'v6': 5 dimensions
    movl    $31,-1002773416(%ebp)   #   dimension 1: 31 elements
    movl    $64,-1002773412(%ebp)   #   dimension 2: 64 elements
    movl    $37,-1002773408(%ebp)   #   dimension 3: 37 elements
    movl    $18,-1002773404(%ebp)   #   dimension 4: 18 elements
    movl    $19,-1002773400(%ebp)   #   dimension 5: 19 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t7 <- dummyBOOLfunc
    movb    %al, -42(%ebp)         
    movl    $82436, %eax            #   3:     assign v2 <- 82436
    movl    %eax, -56(%ebp)        
l_f2_6_while_cond:
    leal    -1002773420(%ebp), %eax #   5:     &()    t8 <- v6
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   6:     param  3 <- t8
    pushl   %eax                   
    leal    -902351252(%ebp), %eax  #   7:     &()    t9 <- v5
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   8:     param  2 <- t9
    pushl   %eax                   
    leal    -123299708(%ebp), %eax  #   9:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  1 <- t10
    pushl   %eax                   
    leal    -27104300(%ebp), %eax   #  11:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  13:     call   t12 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movl    $0, %eax                #  14:     if     0 # t12 goto 7_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #  15:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  17:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_1_while_cond       #  19:     goto   1_while_cond
l_f2_0:
    movl    $98, %eax               #  21:     if     98 > 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  22:     goto   11_if_false
l_f2_10_if_true:
    movl    $99, %eax               #  24:     assign v7 <- 99
    movb    %al, -1002773421(%ebp) 
    movl    $97, %eax               #  25:     return 97
    jmp     l_f2_exit              
    leal    -1002773420(%ebp), %eax #  26:     &()    t13 <- v6
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     param  3 <- t13
    pushl   %eax                   
    leal    -902351252(%ebp), %eax  #  28:     &()    t14 <- v5
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     param  2 <- t14
    pushl   %eax                   
    leal    -123299708(%ebp), %eax  #  30:     &()    t15 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     param  1 <- t15
    pushl   %eax                   
    leal    -27104300(%ebp), %eax   #  32:     &()    t16 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  33:     param  0 <- t16
    pushl   %eax                   
    call    f0                      #  34:     call   t17 <- f0
    addl    $16, %esp              
    movb    %al, -41(%ebp)         
    movl    $100, %eax              #  35:     return 100
    jmp     l_f2_exit              
    movl    $97, %eax               #  36:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  37:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $99, %eax               #  40:     if     99 >= 98 goto 19_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  41:     goto   20_if_false
l_f2_19_if_true:
    movl    $99, %eax               #  43:     assign v7 <- 99
    movb    %al, -1002773421(%ebp) 
    movl    $100, %eax              #  44:     if     100 > 98 goto 24_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_24_if_true        
    jmp     l_f2_25_if_false        #  45:     goto   25_if_false
l_f2_24_if_true:
    jmp     l_f2_23                 #  47:     goto   23
l_f2_25_if_false:
l_f2_23:
    jmp     l_f2_18                 #  50:     goto   18
l_f2_20_if_false:
l_f2_18:

l_f2_exit:
    # epilogue
    addl    $1002773412, %esp       # remove locals
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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 31 of <array 64 of <array 37 of <array 18 of <array 19 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 34 of <array 40 of <array 51 of <array 36 of <array 78 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 34 of <array 67 of <array 92 of <array 51 of <array 9 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 66 of <array 39 of <array 81 of <array 26 of <array 5 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
l_test_2_while_body:
    call    dummyCHARfunc           #   3:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_9_while_cond:
    jmp     l_test_8                #   5:     goto   8
    jmp     l_test_9_while_cond     #   6:     goto   9_while_cond
l_test_8:
l_test_12_while_cond:
    jmp     l_test_11               #   9:     goto   11
    jmp     l_test_12_while_cond    #  10:     goto   12_while_cond
l_test_11:
    jmp     l_test_exit            
    jmp     l_test_17_if_false      #  13:     goto   17_if_false
    jmp     l_test_15               #  14:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_1_while_cond     #  17:     goto   1_while_cond
l_test_19_while_cond:
    movl    $1, %eax                #  19:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_19_while_cond    #  21:     goto   19_while_cond
    jmp     l_test_25               #  22:     goto   25
l_test_25:
    movl    $1, %eax                #  24:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_27               #  25:     goto   27
    movl    $0, %eax                #  26:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_27:
    movzbl  -14(%ebp), %eax         #  28:     assign v0 <- t1
    movb    %al, v0                
    leal    v4, %eax                #  29:     &()    t2 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     param  3 <- t2
    pushl   %eax                   
    leal    v3, %eax                #  31:     &()    t3 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     param  2 <- t3
    pushl   %eax                   
    leal    v2, %eax                #  33:     &()    t4 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  34:     param  1 <- t4
    pushl   %eax                   
    leal    v1, %eax                #  35:     &()    t5 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  36:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  37:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -33(%ebp)         

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v1:                                 # <array 66 of <array 39 of <array 81 of <array 26 of <array 5 of <char>>>>>>
    .long    5
    .long   66
    .long   39
    .long   81
    .long   26
    .long    5
    .skip 27104220
v2:                                 # <array 34 of <array 67 of <array 92 of <array 51 of <array 9 of <bool>>>>>>
    .long    5
    .long   34
    .long   67
    .long   92
    .long   51
    .long    9
    .skip 96195384
v3:                                 # <array 34 of <array 40 of <array 51 of <array 36 of <array 78 of <int>>>>>>
    .long    5
    .long   34
    .long   40
    .long   51
    .long   36
    .long   78
    .skip 779051520
v4:                                 # <array 31 of <array 64 of <array 37 of <array 18 of <array 19 of <int>>>>>>
    .long    5
    .long   31
    .long   64
    .long   37
    .long   18
    .long   19
    .skip 100422144








    # end of global data section
    #-----------------------------------------

    .end
##################################################
