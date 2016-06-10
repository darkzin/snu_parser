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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    movl    $97, %eax               #   0:     if     97 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $97, %eax               #   3:     if     97 # 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $17359, %eax            #  12:     div    t4 <- 17359, 18325
    movl    $18325, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     return t4
    jmp     l_f0_exit              
l_f0_10_while_cond:
    jmp     l_f0_9                  #  15:     goto   9
    movl    $97, %eax               #  16:     if     97 <= 99 goto 13_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  17:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  19:     goto   12
l_f0_14_if_false:
l_f0_12:
    movl    $83559, %eax            #  22:     assign v2 <- 83559
    movl    %eax, -20(%ebp)        
    jmp     l_f0_10_while_cond      #  23:     goto   10_while_cond
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -61(%ebp)   1  [ $t4       <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t5       <bool> %ebp-62 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 51 of <array 89 of <array 92 of <array 7 of <array 25 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 34 of <array 48 of <array 93 of <array 55 of <array 54 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #    -81(%ebp)   1  [ $v5       <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $v6       <char> %ebp-82 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    jmp     l_f1_2                  #   1:     goto   2
    jmp     l_f1_2                  #   2:     goto   2
    jmp     l_f1_2                  #   3:     goto   2
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -61(%ebp)         
l_f1_3:
    movzbl  -61(%ebp), %eax         #   9:     assign v5 <- t4
    movb    %al, -81(%ebp)         
    call    dummyBOOLfunc           #  10:     call   t5 <- dummyBOOLfunc
    movb    %al, -62(%ebp)         
    jmp     l_f1_16_if_false        #  11:     goto   16_if_false
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $87940, %eax            #  15:     mul    t7 <- 87940, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  16:     add    t8 <- t7, 84886
    movl    $84886, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  20:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     add    t11 <- t10, 91340
    movl    $91340, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  24:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  25:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t14 <- t13, 91295
    movl    $91295, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  29:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  30:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     add    t17 <- t16, 22853
    movl    $22853, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  32:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  33:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  34:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  35:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  36:     add    t21 <- v2, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $0, %eax                #  37:     assign @t21 <- 0
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $99, %eax               #  38:     assign v6 <- 99
    movb    %al, -82(%ebp)         
    jmp     l_f1_14                 #  39:     goto   14
l_f1_16_if_false:
l_f1_14:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 90 of <array 29 of <array 75 of <array 7 of <array 19 of <int>>>>>>> %ebp+12 ]
    #    -52(%ebp)   4  [ $v4       <int> %ebp-52 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $23253, %eax            #   1:     div    t5 <- 23253, 58280
    movl    $58280, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     return t5
    jmp     l_f2_exit              
    movl    $30017, %eax            #   3:     mul    t6 <- 30017, 74296
    movl    $74296, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     mul    t7 <- t6, 77334
    movl    $77334, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     div    t8 <- t7, 89256
    movl    $89256, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     mul    t9 <- t8, 58958
    movl    $58958, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     mul    t10 <- t9, 54246
    movl    $54246, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     mul    t11 <- t10, 12390
    movl    $12390, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     div    t12 <- t11, 96654
    movl    $96654, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     assign v4 <- t12
    movl    %eax, -52(%ebp)        

l_f2_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

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
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   1:     goto   6_while_cond
    jmp     l_test_8                #   2:     goto   8
l_test_8:
    jmp     l_test_0                #   4:     goto   0
l_test_0:
    movl    $10357, %eax            #   6:     div    t0 <- 10357, 87784
    movl    $87784, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     mul    t1 <- t0, 90838
    movl    $90838, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     mul    t2 <- t1, 10792
    movl    $10792, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     assign v0 <- t2
    movl    %eax, v0               
    movl    $99, %eax               #  10:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_exit            
    movl    $0, %eax                #  12:     assign v2 <- 0
    movb    %al, v2                
    call    dummyBOOLfunc           #  13:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
