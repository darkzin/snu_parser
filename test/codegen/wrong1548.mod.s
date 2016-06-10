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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <bool> %ebp-41 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 57 of <array 24 of <array 91 of <array 83 of <int>>>>>>> %ebp+12 ]
    #    -42(%ebp)   1  [ $v2       <char> %ebp-42 ]

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
l_f0_1_while_cond:
    call    dummyINTfunc            #   1:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t4 <- t3, 60255
    movl    $60255, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t5 <- t4, 76621
    movl    $76621, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t6 <- t5, 63465
    movl    $63465, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     add    t7 <- t6, 21414
    movl    $21414, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     sub    t8 <- t7, 76741
    movl    $76741, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $92175, %eax            #   7:     if     92175 < t8 goto 2_while_body
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_6                  #  12:     goto   6
    movl    $1, %eax                #  13:     assign t9 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f0_7                  #  14:     goto   7
l_f0_6:
    movl    $0, %eax                #  16:     assign t9 <- 0
    movb    %al, -41(%ebp)         
l_f0_7:
    movzbl  -41(%ebp), %eax         #  18:     assign v0 <- t9
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #  19:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  20:     assign v2 <- t10
    movb    %al, -42(%ebp)         

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
    #    -68(%ebp)   4  [ $t3       <ptr(4) to <array 39 of <array 57 of <array 24 of <array 91 of <array 83 of <int>>>>>>> %ebp-68 ]
    #    -69(%ebp)   1  [ $t4       <bool> %ebp-69 ]
    #    -70(%ebp)   1  [ $t5       <char> %ebp-70 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 75 of <array 9 of <array 9 of <array 30 of <array 35 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 76 of <array 1 of <array 39 of <array 100 of <array 11 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 70 of <array 10 of <array 22 of <array 16 of <array 69 of <bool>>>>>>> %ebp+20 ]
    #   -1611870736(%ebp)  1611870648  [ $v4       <array 39 of <array 57 of <array 24 of <array 91 of <array 83 of <int>>>>>> %ebp-1611870736 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1611870724, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $402967681, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1611870736(%ebp)    # local array 'v4': 5 dimensions
    movl    $39,-1611870732(%ebp)   #   dimension 1: 39 elements
    movl    $57,-1611870728(%ebp)   #   dimension 2: 57 elements
    movl    $24,-1611870724(%ebp)   #   dimension 3: 24 elements
    movl    $91,-1611870720(%ebp)   #   dimension 4: 91 elements
    movl    $83,-1611870716(%ebp)   #   dimension 5: 83 elements

    # function body
    leal    -1611870736(%ebp), %eax #   0:     &()    t3 <- v4
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   1:     param  1 <- t3
    pushl   %eax                   
    call    dummyBOOLfunc           #   2:     call   t4 <- dummyBOOLfunc
    movb    %al, -69(%ebp)         
    movzbl  -69(%ebp), %eax         #   3:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   4:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -70(%ebp)         
    movzbl  -70(%ebp), %eax         #   5:     return t5
    jmp     l_f1_exit              
    movl    $98, %eax               #   6:     if     98 <= 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   7:     goto   3_if_false
l_f1_2_if_true:
    movl    $98, %eax               #   9:     return 98
    jmp     l_f1_exit              
l_f1_7_while_cond:
    movl    $38512, %eax            #  11:     if     38512 <= 54461 goto 8_while_body
    movl    $54461, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_8_while_body      
    jmp     l_f1_6                  #  12:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  14:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_1                  #  16:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $60050, %eax            #  19:     sub    t6 <- 60050, 97443
    movl    $97443, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $17080, %eax            #  23:     mul    t8 <- 17080, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  24:     add    t9 <- t8, 90326
    movl    $90326, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  28:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     add    t12 <- t11, 60626
    movl    $60626, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  31:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  32:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  33:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     add    t15 <- t14, 93925
    movl    $93925, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  38:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  39:     add    t18 <- t17, 62347
    movl    $62347, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  40:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  41:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  42:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  43:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  44:     add    t22 <- v2, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -76(%ebp), %eax         #  45:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $1611870724, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v1       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $v2       <bool> %ebp-30 ]

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
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     if     97 # 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $97, %eax               #   4:     return 97
    jmp     l_f2_exit              
    movl    $19600, %eax            #   5:     assign v0 <- 19600
    movl    %eax, -28(%ebp)        
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    movl    $98, %eax               #   8:     assign v1 <- 98
    movb    %al, -29(%ebp)         
    movl    $76312, %eax            #   9:     add    t3 <- 76312, 18840
    movl    $18840, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     add    t4 <- t3, 45889
    movl    $45889, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     if     t4 < 47255 goto 8
    movl    $47255, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_8                 
    jmp     l_f2_9                  #  12:     goto   9
l_f2_8:
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_10                 #  15:     goto   10
l_f2_9:
    movl    $0, %eax                #  17:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_10:
    movzbl  -21(%ebp), %eax         #  19:     assign v2 <- t5
    movb    %al, -30(%ebp)         

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
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
l_test_1_while_cond:
    movl    $98, %eax               #   1:     if     98 <= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    call    dummyCHARfunc           #   7:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   8:     if     99 = t0 goto 6_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_6_while_body    
    jmp     l_test_4                #   9:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #  11:     goto   5_while_cond
l_test_4:
    movl    $85690, %eax            #  13:     if     85690 < 27576 goto 9_if_true
    movl    $27576, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_9_if_true       
    jmp     l_test_10_if_false      #  14:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $99, %eax               #  18:     if     99 >= 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_15_if_true      
    jmp     l_test_16_if_false      #  19:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  21:     goto   14
l_test_16_if_false:
l_test_14:
    leal    _str_1, %eax            #  24:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  26:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_8                #  27:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $99, %eax               #  30:     if     99 < 98 goto 20_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_20_if_true      
    jmp     l_test_21_if_false      #  31:     goto   21_if_false
l_test_20_if_true:
l_test_24_while_cond:
    movl    $97, %eax               #  34:     if     97 > 100 goto 25_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_25_while_body   
    jmp     l_test_23               #  35:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  37:     goto   24_while_cond
l_test_23:
l_test_28_while_cond:
    jmp     l_test_28_while_cond    #  40:     goto   28_while_cond
    jmp     l_test_19               #  41:     goto   19
l_test_21_if_false:
l_test_19:
    movl    $72961, %eax            #  44:     mul    t2 <- 72961, 63094
    movl    $63094, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  45:     assign v0 <- t2
    movl    %eax, v0               
    movl    $97, %eax               #  46:     if     97 < 99 goto 32_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_32_if_true      
    jmp     l_test_33_if_false      #  47:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_37_if_false      #  49:     goto   37_if_false
    jmp     l_test_35               #  50:     goto   35
l_test_37_if_false:
l_test_35:
    jmp     l_test_31               #  53:     goto   31
l_test_33_if_false:
l_test_31:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
