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
    #    -13(%ebp)   1  [ $t12      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t29      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t30      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t31      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t32      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t33      <bool> %ebp-97 ]
    #    -98(%ebp)   1  [ $t34      <bool> %ebp-98 ]
    #    -99(%ebp)   1  [ $t35      <char> %ebp-99 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 72 of <array 15 of <array 51 of <array 65 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 81 of <array 98 of <array 33 of <array 27 of <array 63 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     if     98 <= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t12 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t12 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movl    $51417, %eax            #   8:     mul    t13 <- 51417, 88387
    movl    $88387, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     div    t14 <- t13, 8879
    movl    $8879, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     mul    t15 <- t14, 58233
    movl    $58233, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     div    t16 <- t15, 20474
    movl    $20474, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  15:     mul    t18 <- t16, t17
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     add    t19 <- t18, 28171
    movl    $28171, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  20:     mul    t21 <- t19, t20
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  21:     add    t22 <- t21, 54843
    movl    $54843, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  25:     mul    t24 <- t22, t23
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  26:     add    t25 <- t24, 7033
    movl    $7033, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  29:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  30:     mul    t27 <- t25, t26
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  31:     add    t28 <- t27, 96706
    movl    $96706, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  32:     mul    t29 <- t28, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  33:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  34:     call   t30 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  35:     add    t31 <- t29, t30
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    8(%ebp), %eax           #  36:     add    t32 <- v1, t31
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movzbl  -13(%ebp), %eax         #  37:     assign @t32 <- t12
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_6_while_cond:
    call    dummyBOOLfunc           #  39:     call   t33 <- dummyBOOLfunc
    movb    %al, -97(%ebp)         
    movzbl  -97(%ebp), %eax         #  40:     if     t33 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_10                 #  41:     goto   10
l_f0_9:
    movl    $1, %eax                #  43:     assign t34 <- 1
    movb    %al, -98(%ebp)         
    jmp     l_f0_11                 #  44:     goto   11
l_f0_10:
    movl    $0, %eax                #  46:     assign t34 <- 0
    movb    %al, -98(%ebp)         
l_f0_11:
    movzbl  -98(%ebp), %eax         #  48:     if     t34 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #  49:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  51:     goto   6_while_cond
l_f0_5:
    call    dummyCHARfunc           #  53:     call   t35 <- dummyCHARfunc
    movb    %al, -99(%ebp)         
    movzbl  -99(%ebp), %eax         #  54:     param  0 <- t35
    pushl   %eax                   
    call    WriteChar               #  55:     call   WriteChar
    addl    $4, %esp               

l_f0_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t13      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t14      <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    call    dummyINTfunc            #   0:     call   t12 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   1:     if     97 >= 98 goto 2
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_2                 
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $1, %eax                #   4:     assign t13 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $0, %eax                #   7:     assign t13 <- 0
    movb    %al, -17(%ebp)         
l_f1_4:
    movzbl  -17(%ebp), %eax         #   9:     return t13
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  10:     call   t14 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  11:     return t14
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 18 of <array 53 of <array 20 of <array 59 of <array 14 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 100 of <array 43 of <array 16 of <array 59 of <array 83 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 75 of <array 95 of <array 92 of <array 52 of <array 33 of <int>>>>>>> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t12 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyProcedure          #   1:     call   dummyProcedure
l_f2_3_while_cond:
    movl    $98, %eax               #   3:     if     98 = 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_4_while_body      
    jmp     l_f2_2                  #   4:     goto   2
l_f2_4_while_body:
    movl    $70951, %eax            #   6:     add    t13 <- 70951, 21374
    movl    $21374, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     sub    t14 <- t13, 6616
    movl    $6616, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     add    t15 <- t14, 73123
    movl    $73123, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     return t15
    jmp     l_f2_exit              
    jmp     l_f2_3_while_cond       #  10:     goto   3_while_cond
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 75 of <array 95 of <array 92 of <array 52 of <array 33 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 100 of <array 43 of <array 16 of <array 59 of <array 83 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t11      <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t2       <ptr(4) to <array 18 of <array 53 of <array 20 of <array 59 of <array 14 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <ptr(4) to <array 81 of <array 98 of <array 33 of <array 27 of <array 63 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <ptr(4) to <array 75 of <array 95 of <array 92 of <array 52 of <array 33 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <ptr(4) to <array 100 of <array 43 of <array 16 of <array 59 of <array 83 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <ptr(4) to <array 18 of <array 53 of <array 20 of <array 59 of <array 14 of <bool>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <ptr(4) to <array 72 of <array 15 of <array 51 of <array 65 of <array 10 of <bool>>>>>>> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_exit            
    movl    $97, %eax               #   2:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_0                #   3:     goto   0
l_test_2_if_false:
l_test_0:
    leal    v3, %eax                #   6:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     param  2 <- t0
    pushl   %eax                   
    leal    v2, %eax                #   8:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  1 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  10:     &()    t2 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  12:     call   t3 <- f2
    addl    $12, %esp              
    movl    %eax, -32(%ebp)        
    leal    v5, %eax                #  13:     &()    t4 <- v5
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     param  3 <- t4
    pushl   %eax                   
    movl    $1, %eax                #  15:     param  2 <- 1
    pushl   %eax                   
    leal    v3, %eax                #  16:     &()    t5 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  17:     param  2 <- t5
    pushl   %eax                   
    leal    v2, %eax                #  18:     &()    t6 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  19:     param  1 <- t6
    pushl   %eax                   
    leal    v1, %eax                #  20:     &()    t7 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     param  0 <- t7
    pushl   %eax                   
    call    f2                      #  22:     call   t8 <- f2
    addl    $12, %esp              
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  23:     param  1 <- t8
    pushl   %eax                   
    leal    v4, %eax                #  24:     &()    t9 <- v4
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  25:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  26:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  27:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  28:     call   t11 <- f1
    addl    $4, %esp               
    movb    %al, -22(%ebp)         
l_test_8_while_cond:
    jmp     l_test_9_while_body     #  30:     goto   9_while_body
    jmp     l_test_7                #  31:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  33:     goto   8_while_cond
l_test_7:

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
    .align   4
v1:                                 # <array 18 of <array 53 of <array 20 of <array 59 of <array 14 of <bool>>>>>>
    .long    5
    .long   18
    .long   53
    .long   20
    .long   59
    .long   14
    .skip 15760080
v2:                                 # <array 100 of <array 43 of <array 16 of <array 59 of <array 83 of <char>>>>>>
    .long    5
    .long  100
    .long   43
    .long   16
    .long   59
    .long   83
    .skip 336913600
v3:                                 # <array 75 of <array 95 of <array 92 of <array 52 of <array 33 of <int>>>>>>
    .long    5
    .long   75
    .long   95
    .long   92
    .long   52
    .long   33
    .skip 204384704
v4:                                 # <array 72 of <array 15 of <array 51 of <array 65 of <array 10 of <bool>>>>>>
    .long    5
    .long   72
    .long   15
    .long   51
    .long   65
    .long   10
    .skip 35802000
v5:                                 # <array 81 of <array 98 of <array 33 of <array 27 of <array 63 of <bool>>>>>>
    .long    5
    .long   81
    .long   98
    .long   33
    .long   27
    .long   63
    .skip 445583754








    # end of global data section
    #-----------------------------------------

    .end
##################################################
