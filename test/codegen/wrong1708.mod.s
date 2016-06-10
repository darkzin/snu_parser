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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 62 of <array 3 of <array 10 of <array 92 of <array 99 of <char>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    movl    $100, %eax              #   0:     if     100 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $32676, %eax            #   3:     if     32676 > 45022 goto 5
    movl    $45022, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_5                 
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $1, %eax                #   6:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   7:     goto   7
l_f0_6:
    movl    $0, %eax                #   9:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #  11:     return t7
    jmp     l_f0_exit              
    jmp     l_f0_9                  #  12:     goto   9
l_f0_9:
    movl    $0, %eax                #  14:     return 0
    jmp     l_f0_exit              
    movl    $33402, %eax            #  15:     if     33402 > 63640 goto 14_if_true
    movl    $63640, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  16:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  18:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_0                  #  21:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_18_while_cond:
    movl    $68318, %eax            #  25:     if     68318 < 10411 goto 19_while_body
    movl    $10411, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_19_while_body     
    jmp     l_f0_17                 #  26:     goto   17
l_f0_19_while_body:
l_f0_22_while_cond:
    jmp     l_f0_21                 #  29:     goto   21
    jmp     l_f0_22_while_cond      #  30:     goto   22_while_cond
l_f0_21:
    movl    $1, %eax                #  32:     assign v2 <- 1
    movb    %al, -15(%ebp)         
    movl    $43103, %eax            #  33:     if     43103 < 5298 goto 26_if_true
    movl    $5298, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_26_if_true        
    jmp     l_f0_27_if_false        #  34:     goto   27_if_false
l_f0_26_if_true:
    jmp     l_f0_25                 #  36:     goto   25
l_f0_27_if_false:
l_f0_25:
    jmp     l_f0_18_while_cond      #  39:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_30                 #  41:     goto   30
    jmp     l_f0_30                 #  42:     goto   30
    movl    $98, %eax               #  43:     if     98 > 100 goto 30
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_30                
    jmp     l_f0_31                 #  44:     goto   31
l_f0_30:
    movl    $1, %eax                #  46:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_32                 #  47:     goto   32
l_f0_31:
    movl    $0, %eax                #  49:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f0_32:
    movzbl  -14(%ebp), %eax         #  51:     return t8
    jmp     l_f0_exit              

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
    #    -69(%ebp)   1  [ $t24      <bool> %ebp-69 ]
    #    -70(%ebp)   1  [ $t25      <bool> %ebp-70 ]
    #    -71(%ebp)   1  [ $t7       <char> %ebp-71 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 74 of <array 98 of <array 52 of <array 68 of <array 48 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #    -81(%ebp)   1  [ $v5       <char> %ebp-81 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -71(%ebp)         
    movzbl  -71(%ebp), %eax         #   2:     if     t7 = 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $21646, %eax            #   5:     return 21646
    jmp     l_f1_exit              
l_f1_6_while_cond:
    jmp     l_f1_5                  #   7:     goto   5
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  11:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  12:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $57917, %eax            #  13:     mul    t9 <- 57917, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  14:     add    t10 <- t9, 6601
    movl    $6601, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  16:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  17:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  18:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t13 <- t12, 57606
    movl    $57606, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  22:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  23:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t16 <- t15, 63743
    movl    $63743, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  26:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  27:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     add    t19 <- t18, 42526
    movl    $42526, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  30:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  31:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  32:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  33:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  34:     add    t23 <- v3, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $99, %eax               #  35:     assign @t23 <- 99
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $27220, %eax            #  36:     if     27220 # 27575 goto 10
    movl    $27575, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_10                
    jmp     l_f1_11                 #  37:     goto   11
l_f1_10:
    movl    $1, %eax                #  39:     assign t24 <- 1
    movb    %al, -69(%ebp)         
    jmp     l_f1_12                 #  40:     goto   12
l_f1_11:
    movl    $0, %eax                #  42:     assign t24 <- 0
    movb    %al, -69(%ebp)         
l_f1_12:
    movzbl  -69(%ebp), %eax         #  44:     assign v1 <- t24
    movb    %al, 8(%ebp)           
    movl    $13889, %eax            #  45:     return 13889
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  46:     goto   1_while_cond
l_f1_0:
    movl    $97, %eax               #  48:     if     97 < 99 goto 16_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  49:     goto   17_if_false
l_f1_16_if_true:
l_f1_20_while_cond:
    jmp     l_f1_19                 #  52:     goto   19
    jmp     l_f1_20_while_cond      #  53:     goto   20_while_cond
l_f1_19:
l_f1_23_while_cond:
    jmp     l_f1_23_while_cond      #  56:     goto   23_while_cond
    jmp     l_f1_15                 #  57:     goto   15
l_f1_17_if_false:
l_f1_15:
    call    dummyBOOLfunc           #  60:     call   t25 <- dummyBOOLfunc
    movb    %al, -70(%ebp)         
    movzbl  -70(%ebp), %eax         #  61:     if     t25 = 1 goto 26_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_26_if_true        
    jmp     l_f1_27_if_false        #  62:     goto   27_if_false
l_f1_26_if_true:
    jmp     l_f1_25                 #  64:     goto   25
l_f1_27_if_false:
l_f1_25:

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    movl    $77068, %eax            #   0:     sub    t7 <- 77068, 56835
    movl    $56835, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     sub    t8 <- t7, 93828
    movl    $93828, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     if     t8 > 51268 goto 1_if_true
    movl    $51268, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   3:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $7927, %eax             #   6:     if     7927 < 39717 goto 6_while_body
    movl    $39717, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6_while_body      
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   9:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $47445, %eax            #  14:     if     47445 > 54024 goto 9_if_true
    movl    $54024, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  15:     goto   10_if_false
l_f2_9_if_true:
    movl    $98, %eax               #  17:     return 98
    jmp     l_f2_exit              
    call    dummyINTfunc            #  18:     call   t9 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f2_8                  #  19:     goto   8
l_f2_10_if_false:
l_f2_8:
    call    dummyCHARfunc           #  22:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  23:     return t10
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_4_while_cond:
    jmp     l_test_3                #   1:     goto   3
    jmp     l_test_4_while_cond     #   2:     goto   4_while_cond
l_test_3:
    call    dummyCHARfunc           #   4:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $20971, %eax            #   5:     assign v0 <- 20971
    movl    %eax, v0               
    jmp     l_test_0                #   6:     goto   0
l_test_0:
    jmp     l_test_exit            
    movl    $93428, %eax            #   9:     div    t1 <- 93428, 98263
    movl    $98263, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     mul    t2 <- t1, 89872
    movl    $89872, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     mul    t3 <- t2, 72623
    movl    $72623, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     div    t4 <- t3, 67754
    movl    $67754, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $43666, %eax            #  13:     sub    t5 <- 43666, 12429
    movl    $12429, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  14:     if     t4 > t5 goto 10
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_10              
    jmp     l_test_11               #  15:     goto   11
l_test_10:
    movl    $1, %eax                #  17:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_12               #  18:     goto   12
l_test_11:
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_test_12:
    movzbl  -37(%ebp), %eax         #  22:     assign v1 <- t6
    movb    %al, v1                
l_test_15_while_cond:
    movl    $50273, %eax            #  24:     if     50273 = 74580 goto 16_while_body
    movl    $74580, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_16_while_body   
    jmp     l_test_14               #  25:     goto   14
l_test_16_while_body:
l_test_19_while_cond:
    jmp     l_test_18               #  28:     goto   18
    jmp     l_test_19_while_cond    #  29:     goto   19_while_cond
l_test_18:
    jmp     l_test_15_while_cond    #  31:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
