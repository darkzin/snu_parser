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
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 7 of <array 8 of <array 1 of <array 6 of <char>>>>>>> %ebp+8 ]
    #    -45(%ebp)   1  [ $v2       <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $v3       <int> %ebp-52 ]

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
l_f0_1_while_cond:
    movl    $91156, %eax            #   1:     sub    t4 <- 91156, 25413
    movl    $25413, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     sub    t5 <- t4, 38357
    movl    $38357, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     add    t6 <- t5, 5193
    movl    $5193, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     add    t7 <- t6, 67161
    movl    $67161, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     if     t7 > 26279 goto 2_while_body
    movl    $26279, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_while_body:
    movl    $96284, %eax            #   8:     if     96284 = 8002 goto 5
    movl    $8002, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_5                 
    jmp     l_f0_6                  #   9:     goto   6
l_f0_5:
    movl    $1, %eax                #  11:     assign t8 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f0_7                  #  12:     goto   7
l_f0_6:
    movl    $0, %eax                #  14:     assign t8 <- 0
    movb    %al, -37(%ebp)         
l_f0_7:
    movzbl  -37(%ebp), %eax         #  16:     assign v2 <- t8
    movb    %al, -45(%ebp)         
    call    dummyINTfunc            #  17:     call   t9 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
l_f0_11_while_cond:
    jmp     l_f0_10                 #  19:     goto   10
    jmp     l_f0_11_while_cond      #  20:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_1_while_cond       #  22:     goto   1_while_cond
l_f0_0:
    movl    $72419, %eax            #  24:     mul    t10 <- 72419, 36556
    movl    $36556, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     assign v3 <- t10
    movl    %eax, -52(%ebp)        
    movl    $90910, %eax            #  26:     add    t11 <- 90910, 87363
    movl    $87363, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     assign v3 <- t11
    movl    %eax, -52(%ebp)        

l_f0_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    movl    $5437, %eax             #   0:     assign v1 <- 5437
    movl    %eax, -28(%ebp)        
l_f1_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t4 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_8                 
    jmp     l_f1_1                  #   4:     goto   1
l_f1_8:
    jmp     l_f1_1                  #   6:     goto   1
    jmp     l_f1_1                  #   7:     goto   1
    jmp     l_f1_1                  #   8:     goto   1
    jmp     l_f1_1                  #   9:     goto   1
    jmp     l_f1_2_while_cond       #  10:     goto   2_while_cond
l_f1_1:
l_f1_10_while_cond:
    movl    $13349, %eax            #  13:     add    t5 <- 13349, 307
    movl    $307, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t6 <- t5, 51831
    movl    $51831, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $56847, %eax            #  15:     if     56847 # t6 goto 11_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_11_while_body     
    jmp     l_f1_9                  #  16:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  18:     goto   10_while_cond
l_f1_9:

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
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t5       <bool> %ebp-69 ]
    #    -70(%ebp)   1  [ $t6       <bool> %ebp-70 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 6 of <array 1 of <array 3 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -85(%ebp)   1  [ $v4       <bool> %ebp-85 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_exit              
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -68(%ebp)        
    call    dummyBOOLfunc           #   2:     call   t5 <- dummyBOOLfunc
    movb    %al, -69(%ebp)         
    movzbl  -69(%ebp), %eax         #   3:     if     t5 = 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3                 
    jmp     l_f2_4                  #   4:     goto   4
l_f2_3:
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -70(%ebp)         
    jmp     l_f2_5                  #   7:     goto   5
l_f2_4:
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -70(%ebp)         
l_f2_5:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $17740, %eax            #  14:     mul    t8 <- 17740, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  15:     add    t9 <- t8, 79921
    movl    $79921, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  19:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     add    t12 <- t11, 26266
    movl    $26266, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  24:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  25:     add    t15 <- t14, 478
    movl    $478, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  29:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  30:     add    t18 <- t17, 33816
    movl    $33816, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  31:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  32:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  33:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  34:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  35:     add    t22 <- v1, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -70(%ebp), %eax         #  36:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 2 of <array 6 of <array 1 of <array 3 of <array 3 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    jmp     l_test_exit            
    movl    $98, %eax               #   1:     assign v0 <- 98
    movb    %al, v0                
    movl    $99, %eax               #   2:     if     99 > 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
l_test_7_while_cond:
    movl    $100, %eax              #   6:     if     100 = 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_10_if_true      
    jmp     l_test_11_if_false      #   7:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #   9:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $99, %eax               #  12:     if     99 > 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_14_if_true      
    jmp     l_test_15_if_false      #  13:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  15:     goto   13
l_test_15_if_false:
l_test_13:
    call    dummyBOOLfunc           #  18:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_20_if_false      #  19:     goto   20_if_false
    jmp     l_test_18               #  20:     goto   18
l_test_20_if_false:
l_test_18:
l_test_22_while_cond:
    jmp     l_test_21               #  24:     goto   21
    jmp     l_test_22_while_cond    #  25:     goto   22_while_cond
l_test_21:
    jmp     l_test_exit            
    jmp     l_test_7_while_cond     #  28:     goto   7_while_cond
    jmp     l_test_2                #  29:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $98, %eax               #  32:     if     98 <= 98 goto 26_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_26_if_true      
    jmp     l_test_27_if_false      #  33:     goto   27_if_false
l_test_26_if_true:
l_test_30_while_cond:
    jmp     l_test_29               #  36:     goto   29
    jmp     l_test_30_while_cond    #  37:     goto   30_while_cond
l_test_29:
    movl    $0, %eax                #  39:     assign v1 <- 0
    movb    %al, v1                
    movl    $100, %eax              #  40:     param  2 <- 100
    pushl   %eax                   
    movl    $99, %eax               #  41:     param  1 <- 99
    pushl   %eax                   
    leal    v2, %eax                #  42:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  43:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #  44:     call   f2
    addl    $12, %esp              
l_test_35_while_cond:
    movl    $99, %eax               #  46:     if     99 <= 99 goto 36_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_36_while_body   
    jmp     l_test_34               #  47:     goto   34
l_test_36_while_body:
    jmp     l_test_35_while_cond    #  49:     goto   35_while_cond
l_test_34:
    jmp     l_test_25               #  51:     goto   25
l_test_27_if_false:
l_test_25:
l_test_39_while_cond:
    jmp     l_test_40_while_body    #  55:     goto   40_while_body
    jmp     l_test_38               #  56:     goto   38
l_test_40_while_body:
    movl    $99, %eax               #  58:     if     99 <= 98 goto 43_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_43_if_true      
    jmp     l_test_44_if_false      #  59:     goto   44_if_false
l_test_43_if_true:
    jmp     l_test_42               #  61:     goto   42
l_test_44_if_false:
l_test_42:
    call    dummyINTfunc            #  64:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_39_while_cond    #  65:     goto   39_while_cond
l_test_38:
    call    dummyCHARfunc           #  67:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  68:     assign v0 <- t3
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    .align   4
v2:                                 # <array 2 of <array 6 of <array 1 of <array 3 of <array 3 of <bool>>>>>>
    .long    5
    .long    2
    .long    6
    .long    1
    .long    3
    .long    3
    .skip  108








    # end of global data section
    #-----------------------------------------

    .end
##################################################
