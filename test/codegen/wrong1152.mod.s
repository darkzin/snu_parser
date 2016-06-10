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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
l_f0_1_while_cond:
    movl    $97, %eax               #   1:     if     97 < 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   7:     goto   4
    movl    $70661, %eax            #   8:     if     70661 # 61823 goto 8
    movl    $61823, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_8                 
    jmp     l_f0_9                  #   9:     goto   9
l_f0_8:
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_10                 #  12:     goto   10
l_f0_9:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_10:
    movzbl  -13(%ebp), %eax         #  16:     return t2
    jmp     l_f0_exit              
    movl    $1, %eax                #  17:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_5_while_cond       #  18:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_15_if_false        #  20:     goto   15_if_false
l_f0_17_while_cond:
    movl    $99, %eax               #  22:     if     99 < 97 goto 18_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_18_while_body     
    jmp     l_f0_16                 #  23:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  25:     goto   17_while_cond
l_f0_16:
    jmp     l_f0_13                 #  27:     goto   13
l_f0_15_if_false:
l_f0_13:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 11 of <array 20 of <array 98 of <array 1 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 50 of <array 67 of <array 79 of <array 84 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 89 of <array 56 of <array 57 of <array 9 of <array 75 of <char>>>>>>> %ebp+16 ]
    #    -30(%ebp)   1  [ $v4       <bool> %ebp-30 ]

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
    movl    $98, %eax               #   0:     if     98 # 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   4:     return 99
    jmp     l_f1_exit              
    movl    $1, %eax                #   5:     assign v4 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $27080, %eax            #   9:     if     27080 < 57731 goto 8_if_true
    movl    $57731, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #  10:     goto   9_if_false
l_f1_8_if_true:
    movl    $97, %eax               #  12:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  13:     call   WriteChar
    addl    $4, %esp               
l_f1_13_while_cond:
    movl    $98, %eax               #  15:     if     98 >= 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_14_while_body     
    jmp     l_f1_12                 #  16:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  18:     goto   13_while_cond
l_f1_12:
l_f1_17_while_cond:
    jmp     l_f1_16                 #  21:     goto   16
    jmp     l_f1_17_while_cond      #  22:     goto   17_while_cond
l_f1_16:
    call    dummyProcedure          #  24:     call   dummyProcedure
    jmp     l_f1_7                  #  25:     goto   7
l_f1_9_if_false:
l_f1_7:
    movl    $22390, %eax            #  28:     add    t3 <- 22390, 67574
    movl    $67574, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     add    t4 <- t3, 40622
    movl    $40622, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     sub    t5 <- t4, 61765
    movl    $61765, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  31:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  32:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -29(%ebp)         

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 46 of <array 47 of <array 76 of <array 2 of <array 49 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
l_f2_2_while_body:
l_f2_8_while_cond:
    jmp     l_f2_8_while_cond       #   5:     goto   8_while_cond
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
    movl    $100, %eax              #   7:     if     100 <= 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #   8:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  10:     goto   10
l_f2_12_if_false:
l_f2_10:
    movl    $78513, %eax            #  13:     add    t2 <- 78513, 99693
    movl    $99693, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $20659, %eax            #  14:     div    t3 <- 20659, 12510
    movl    $12510, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  15:     add    t4 <- t2, t3
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  19:     mul    t6 <- t4, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  20:     add    t7 <- t6, 66562
    movl    $66562, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  21:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  24:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  25:     add    t10 <- t9, 10631
    movl    $10631, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  26:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  29:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     add    t13 <- t12, 36331
    movl    $36331, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  31:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  33:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  34:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     add    t16 <- t15, 97064
    movl    $97064, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  36:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  38:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  39:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  40:     add    t20 <- v2, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $0, %eax                #  41:     assign @t20 <- 0
    movl    -60(%ebp), %edi        
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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    movl    $30808, %eax            #   5:     if     30808 > 53969 goto 6_while_body
    movl    $53969, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6_while_body    
    jmp     l_test_4                #   6:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   8:     goto   5_while_cond
l_test_4:
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
    jmp     l_test_8                #  11:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $54963, %eax            #  14:     assign v0 <- 54963
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #  15:     goto   1_while_cond
l_test_0:
l_test_13_while_cond:
    movl    $80261, %eax            #  18:     div    t0 <- 80261, 544
    movl    $544, %ebx             
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     sub    t1 <- t0, 41735
    movl    $41735, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     if     t1 > 22131 goto 14_while_body
    movl    $22131, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_14_while_body   
    jmp     l_test_12               #  21:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  23:     goto   13_while_cond
l_test_12:
    jmp     l_test_exit            
    movl    $99, %eax               #  26:     assign v1 <- 99
    movb    %al, v1                
l_test_19_while_cond:
    jmp     l_test_21               #  28:     goto   21
    jmp     l_test_21               #  29:     goto   21
    jmp     l_test_20_while_body    #  30:     goto   20_while_body
l_test_21:
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  33:     goto   19_while_cond

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
