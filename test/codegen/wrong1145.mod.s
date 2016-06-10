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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t12      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t2       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t3       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t5       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $v0       <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $v1       <bool> %ebp-65 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $56, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    movl    $92613, %eax            #   1:     div    t1 <- 92613, 4139
    movl    $4139, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, -64(%ebp)        
    movl    $96346, %eax            #   3:     sub    t2 <- 96346, 21854
    movl    $21854, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     add    t3 <- t2, 94446
    movl    $94446, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $48012, %eax            #   5:     mul    t4 <- 48012, 17636
    movl    $17636, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     div    t5 <- t4, 62500
    movl    $62500, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   7:     div    t6 <- t5, 13456
    movl    $13456, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   8:     mul    t7 <- t6, 11238
    movl    $11238, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   9:     div    t8 <- t7, 968
    movl    $968, %ebx             
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  10:     div    t9 <- t8, 12489
    movl    $12489, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  11:     mul    t10 <- t9, 7227
    movl    $7227, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -36(%ebp), %eax         #  12:     sub    t11 <- t3, t10
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $70550, %eax            #  13:     if     70550 # t11 goto 3
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_3                 
    jmp     l_f0_4                  #  14:     goto   4
l_f0_3:
    movl    $1, %eax                #  16:     assign t12 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_5                  #  17:     goto   5
l_f0_4:
    movl    $0, %eax                #  19:     assign t12 <- 0
    movb    %al, -25(%ebp)         
l_f0_5:
    movzbl  -25(%ebp), %eax         #  21:     assign v1 <- t12
    movb    %al, -65(%ebp)         

l_f0_exit:
    # epilogue
    addl    $56, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t2       <bool> %ebp-57 ]
    #    -58(%ebp)   1  [ $t20      <char> %ebp-58 ]
    #    -59(%ebp)   1  [ $t3       <bool> %ebp-59 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 42 of <array 13 of <array 13 of <array 83 of <array 33 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 88 of <array 12 of <array 58 of <array 16 of <array 29 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 52 of <array 67 of <array 97 of <array 94 of <array 92 of <bool>>>>>>> %ebp+20 ]
    #    -85(%ebp)   1  [ $v4       <char> %ebp-85 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 > t1 goto 4
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_4                 
    jmp     l_f1_5                  #   2:     goto   5
l_f1_4:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -57(%ebp)         
l_f1_6:
    movzbl  -57(%ebp), %eax         #   9:     return t2
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  10:     goto   0
l_f1_0:
    movl    $100, %eax              #  12:     if     100 > 99 goto 9
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_9                 
    jmp     l_f1_9                  #  13:     goto   9
    jmp     l_f1_9                  #  14:     goto   9
    jmp     l_f1_9                  #  15:     goto   9
    jmp     l_f1_10                 #  16:     goto   10
l_f1_9:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -59(%ebp)         
    jmp     l_f1_11                 #  19:     goto   11
l_f1_10:
    movl    $0, %eax                #  21:     assign t3 <- 0
    movb    %al, -59(%ebp)         
l_f1_11:
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  25:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $6402, %eax             #  26:     mul    t5 <- 6402, t4
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  27:     add    t6 <- t5, 55214
    movl    $55214, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  29:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  30:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  31:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  32:     add    t9 <- t8, 90751
    movl    $90751, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  33:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  34:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  35:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -84(%ebp), %eax         #  36:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     add    t12 <- t11, 14246
    movl    $14246, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  38:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  39:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  40:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  41:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  42:     add    t15 <- t14, 9409
    movl    $9409, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  43:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    20(%ebp), %eax          #  44:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  45:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  46:     add    t18 <- t16, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  47:     add    t19 <- v3, t18
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movzbl  -59(%ebp), %eax         #  48:     assign @t19 <- t3
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_21_if_false        #  49:     goto   21_if_false
    call    dummyCHARfunc           #  50:     call   t20 <- dummyCHARfunc
    movb    %al, -58(%ebp)         
    movzbl  -58(%ebp), %eax         #  51:     assign v4 <- t20
    movb    %al, -85(%ebp)         
    jmp     l_f1_19                 #  52:     goto   19
l_f1_21_if_false:
l_f1_19:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 45 of <array 51 of <array 9 of <array 49 of <array 73 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 21 of <array 85 of <array 90 of <array 40 of <array 61 of <char>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <bool> %ebp-14 ]

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
    movl    $0, %eax                #   0:     assign v3 <- 0
    movb    %al, -14(%ebp)         
    movl    $447, %eax              #   1:     if     447 >= 15858 goto 2_if_true
    movl    $15858, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    movl    $97, %eax               #   5:     if     97 >= 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_7_while_body      
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
l_f2_5:
l_f2_10_while_cond:
    jmp     l_f2_10_while_cond      #  11:     goto   10_while_cond
    jmp     l_f2_12                 #  12:     goto   12
l_f2_12:
    jmp     l_f2_1                  #  14:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyBOOLfunc           #  17:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
    jmp     l_test_exit            
    jmp     l_test_5                #   6:     goto   5
l_test_5:
    call    WriteLn                 #   8:     call   WriteLn
    movl    $100, %eax              #   9:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_13_if_false      #  11:     goto   13_if_false
    jmp     l_test_13_if_false      #  12:     goto   13_if_false
    movl    $89445, %eax            #  13:     if     89445 # 21468 goto 16
    movl    $21468, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_16              
    jmp     l_test_17               #  14:     goto   17
l_test_16:
    movl    $1, %eax                #  16:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_18               #  17:     goto   18
l_test_17:
    movl    $0, %eax                #  19:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_18:
    movzbl  -13(%ebp), %eax         #  21:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_11               #  22:     goto   11
l_test_13_if_false:
l_test_11:
    call    dummyProcedure          #  25:     call   dummyProcedure

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
