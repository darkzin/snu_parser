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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    movl    $99, %eax               #   0:     assign v3 <- 99
    movb    %al, 16(%ebp)          
    movl    $98, %eax               #   1:     if     98 > 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    call    dummyBOOLfunc           #   4:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   5:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   6:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #   7:     if     98 # t4 goto 8
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_8                 
    jmp     l_f0_9                  #   8:     goto   9
l_f0_8:
    movl    $1, %eax                #  10:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_10                 #  11:     goto   10
l_f0_9:
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f0_10:
    movzbl  -16(%ebp), %eax         #  15:     assign v1 <- t5
    movb    %al, 8(%ebp)           
    jmp     l_f0_1                  #  16:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_13_while_cond:
    movl    $97, %eax               #  20:     if     97 # 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_14_while_body     
    jmp     l_f0_12                 #  21:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  23:     goto   13_while_cond
l_f0_12:

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
    #    -49(%ebp)   1  [ $t19      <bool> %ebp-49 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 80 of <array 28 of <array 14 of <array 13 of <array 87 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 66 of <array 61 of <array 100 of <array 40 of <array 25 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -85(%ebp)   1  [ $v5       <char> %ebp-85 ]

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
    movl    $47190, %eax            #   0:     if     47190 = 35469 goto 1_if_true
    movl    $35469, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   4:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   5:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $43023, %eax            #   6:     mul    t3 <- 43023, t2
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    $40260, %eax            #   7:     sub    t4 <- 40260, 16234
    movl    $16234, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #   8:     add    t5 <- t3, t4
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  12:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  13:     add    t8 <- t7, 45893
    movl    $45893, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  17:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     add    t11 <- t10, 5907
    movl    $5907, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  22:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     add    t14 <- t13, 94890
    movl    $94890, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    12(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  26:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  28:     add    t18 <- v2, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $37590, %eax            #  29:     assign @t18 <- 37590
    movl    -48(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_0                  #  30:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $100, %eax              #  33:     if     100 = 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  34:     goto   7_if_false
l_f1_6_if_true:
    movl    $1, %eax                #  36:     assign v4 <- 1
    movb    %al, 20(%ebp)          
    call    dummyBOOLfunc           #  37:     call   t19 <- dummyBOOLfunc
    movb    %al, -49(%ebp)         
    jmp     l_f1_13_if_false        #  38:     goto   13_if_false
    jmp     l_f1_11                 #  39:     goto   11
l_f1_13_if_false:
l_f1_11:
    jmp     l_f1_5                  #  42:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $98, %eax               #  45:     assign v5 <- 98
    movb    %al, -85(%ebp)         

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 80 of <array 28 of <array 14 of <array 13 of <array 87 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 66 of <array 61 of <array 100 of <array 40 of <array 25 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 80 of <array 28 of <array 14 of <array 13 of <array 87 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 66 of <array 61 of <array 100 of <array 40 of <array 25 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 80 of <array 28 of <array 14 of <array 13 of <array 87 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t9       <ptr(4) to <array 66 of <array 61 of <array 100 of <array 40 of <array 25 of <int>>>>>>> %ebp-48 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 97 of <array 53 of <array 96 of <array 15 of <array 47 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 41 of <array 97 of <array 79 of <array 38 of <array 12 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 39 of <array 74 of <array 33 of <array 70 of <array 31 of <int>>>>>>> %ebp+20 ]
    #   -141872712(%ebp)  141872664  [ $v5       <array 80 of <array 28 of <array 14 of <array 13 of <array 87 of <int>>>>>> %ebp-141872712 ]
    #   -1752272736(%ebp)  1610400024  [ $v6       <array 66 of <array 61 of <array 100 of <array 40 of <array 25 of <int>>>>>> %ebp-1752272736 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1752272724, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $438068181, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-141872712(%ebp)     # local array 'v5': 5 dimensions
    movl    $80,-141872708(%ebp)    #   dimension 1: 80 elements
    movl    $28,-141872704(%ebp)    #   dimension 2: 28 elements
    movl    $14,-141872700(%ebp)    #   dimension 3: 14 elements
    movl    $13,-141872696(%ebp)    #   dimension 4: 13 elements
    movl    $87,-141872692(%ebp)    #   dimension 5: 87 elements
    movl    $5,-1752272736(%ebp)    # local array 'v6': 5 dimensions
    movl    $66,-1752272732(%ebp)   #   dimension 1: 66 elements
    movl    $61,-1752272728(%ebp)   #   dimension 2: 61 elements
    movl    $100,-1752272724(%ebp)  #   dimension 3: 100 elements
    movl    $40,-1752272720(%ebp)   #   dimension 4: 40 elements
    movl    $25,-1752272716(%ebp)   #   dimension 5: 25 elements

    # function body
    movl    $97, %eax               #   0:     if     97 <= 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_f2_3:
    movzbl  -18(%ebp), %eax         #   8:     param  3 <- t2
    pushl   %eax                   
    movl    $63029, %eax            #   9:     param  2 <- 63029
    pushl   %eax                   
    leal    -1752272736(%ebp), %eax #  10:     &()    t3 <- v6
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     param  1 <- t3
    pushl   %eax                   
    leal    -141872712(%ebp), %eax  #  12:     &()    t4 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  14:     call   t5 <- f1
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  15:     return t5
    jmp     l_f2_exit              
    movl    $1, %eax                #  16:     param  3 <- 1
    pushl   %eax                   
    movl    $66662, %eax            #  17:     param  2 <- 66662
    pushl   %eax                   
    leal    -1752272736(%ebp), %eax #  18:     &()    t6 <- v6
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     param  1 <- t6
    pushl   %eax                   
    leal    -141872712(%ebp), %eax  #  20:     &()    t7 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  22:     call   t8 <- f1
    addl    $16, %esp              
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  23:     return t8
    jmp     l_f2_exit              
l_f2_7_while_cond:
    movl    $0, %eax                #  25:     param  3 <- 0
    pushl   %eax                   
    movl    $12376, %eax            #  26:     param  2 <- 12376
    pushl   %eax                   
    leal    -1752272736(%ebp), %eax #  27:     &()    t9 <- v6
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  28:     param  1 <- t9
    pushl   %eax                   
    leal    -141872712(%ebp), %eax  #  29:     &()    t10 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  30:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  31:     call   t11 <- f1
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  32:     if     t11 = 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #  33:     goto   6
l_f2_8_while_body:
    jmp     l_f2_10                 #  35:     goto   10
l_f2_10:
    jmp     l_f2_7_while_cond       #  37:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $1752272724, %esp       # remove locals
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
    movl    $91019, %eax            #   0:     assign v0 <- 91019
    movl    %eax, v0               
    movl    $97171, %eax            #   1:     if     97171 > 64192 goto 2_if_true
    movl    $64192, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $1, %eax                #   4:     if     1 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6_if_true       
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_6_if_true:
    movl    $1, %eax                #   7:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_5                #   8:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_1                #  11:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyINTfunc            #  14:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #  15:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
