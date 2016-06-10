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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t9       <bool> %ebp-38 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 5 of <array 5 of <array 4 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 3 of <array 2 of <array 9 of <array 5 of <int>>>>>>> %ebp+12 ]

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
    movl    $66073, %eax            #   0:     div    t3 <- 66073, 14602
    movl    $14602, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $77215, %eax            #   1:     add    t4 <- 77215, 32846
    movl    $32846, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     add    t5 <- t4, 87726
    movl    $87726, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     add    t6 <- t5, 52718
    movl    $52718, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     add    t7 <- t6, 8058
    movl    $8058, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -20(%ebp), %eax         #   5:     if     t3 >= t7 goto 1
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   6:     goto   2
l_f0_1:
    movl    $1, %eax                #   8:     assign t8 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f0_3                  #   9:     goto   3
l_f0_2:
    movl    $0, %eax                #  11:     assign t8 <- 0
    movb    %al, -37(%ebp)         
l_f0_3:
    movzbl  -37(%ebp), %eax         #  13:     return t8
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  14:     call   t9 <- dummyBOOLfunc
    movb    %al, -38(%ebp)         
    movzbl  -38(%ebp), %eax         #  15:     if     t9 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_7_if_false         #  16:     goto   7_if_false
l_f0_9:
    jmp     l_f0_7_if_false         #  18:     goto   7_if_false
    jmp     l_f0_7_if_false         #  19:     goto   7_if_false
    jmp     l_f0_5                  #  20:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_11_while_cond:
    movl    $12874, %eax            #  24:     if     12874 <= 76445 goto 12_while_body
    movl    $76445, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_12_while_body     
    jmp     l_f0_10                 #  25:     goto   10
l_f0_12_while_body:
l_f0_15_while_cond:
    movl    $35273, %eax            #  28:     div    t10 <- 35273, 38672
    movl    $38672, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  29:     if     t10 >= 47278 goto 16_while_body
    movl    $47278, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_16_while_body     
    jmp     l_f0_14                 #  30:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  32:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_11_while_cond      #  34:     goto   11_while_cond
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #    -69(%ebp)   1  [ $t24      <char> %ebp-69 ]
    #    -70(%ebp)   1  [ $t3       <char> %ebp-70 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 8 of <array 7 of <array 1 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -70(%ebp)         
    movl    $75084, %eax            #   1:     if     75084 <= 46022 goto 2_if_true
    movl    $46022, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    movl    $97, %eax               #   4:     return 97
    jmp     l_f1_exit              
    movl    $99, %eax               #   5:     return 99
    jmp     l_f1_exit              
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   8:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $28524, %eax            #   9:     mul    t5 <- 28524, t4
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  10:     add    t6 <- t5, 75136
    movl    $75136, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  14:     mul    t8 <- t6, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  15:     add    t9 <- t8, 61053
    movl    $61053, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -96(%ebp), %eax         #  19:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $42623, %eax            #  20:     add    t12 <- 42623, 94599
    movl    $94599, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     add    t13 <- t12, 98354
    movl    $98354, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     sub    t14 <- t13, 10133
    movl    $10133, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     add    t15 <- t14, 33794
    movl    $33794, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -20(%ebp), %eax         #  24:     add    t16 <- t11, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     add    t19 <- t18, 67419
    movl    $67419, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  30:     mul    t20 <- t19, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  33:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  34:     add    t23 <- v1, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $24186, %eax            #  35:     assign @t23 <- 24186
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_1                  #  36:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  39:     call   t24 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movzbl  -69(%ebp), %eax         #  40:     assign v3 <- t24
    movb    %al, 16(%ebp)          

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 8 of <array 8 of <array 5 of <array 2 of <char>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $40053, %eax            #   1:     if     40053 > 28744 goto 2_if_true
    movl    $28744, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    movl    $0, %eax                #   4:     assign v1 <- 0
    movb    %al, 8(%ebp)           
    jmp     l_f2_8_if_false         #   5:     goto   8_if_false
    jmp     l_f2_6                  #   6:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $99, %eax               #   9:     if     99 <= 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  10:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  12:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_13                 #  15:     goto   13
l_f2_13:
    jmp     l_f2_1                  #  17:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $20973, %eax            #  20:     mul    t4 <- 20973, 68849
    movl    $68849, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     add    t5 <- t4, 46741
    movl    $46741, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t6 <- t5, 68769
    movl    $68769, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     return t6
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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
l_test_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 # 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    call    dummyCHARfunc           #   8:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     if     t1 > 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
l_test_6_if_true:
    movl    $0, %eax                #  12:     assign v0 <- 0
    movb    %al, v0                
    movl    $98, %eax               #  13:     if     98 > 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_11_if_true      
    jmp     l_test_12_if_false      #  14:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  16:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_5                #  19:     goto   5
l_test_7_if_false:
l_test_5:
l_test_15_while_cond:
    movl    $45590, %eax            #  23:     if     45590 # 97887 goto 16_while_body
    movl    $97887, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_16_while_body   
    jmp     l_test_14               #  24:     goto   14
l_test_16_while_body:
    movl    $98202, %eax            #  26:     if     98202 = 91425 goto 19_if_true
    movl    $91425, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_19_if_true      
    jmp     l_test_20_if_false      #  27:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  29:     goto   18
l_test_20_if_false:
l_test_18:
    call    dummyBOOLfunc           #  32:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_15_while_cond    #  34:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
    jmp     l_test_exit            

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
