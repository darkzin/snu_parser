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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 9 of <array 1 of <array 5 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 7 of <array 2 of <array 5 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <bool> %ebp+20 ]
    #    -22(%ebp)   1  [ $v6       <char> %ebp-22 ]

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
    movl    $99, %eax               #   0:     if     99 >= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    jmp     l_f0_6_while_body       #   4:     goto   6_while_body
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_11_if_false        #  12:     goto   11_if_false
    movl    $98, %eax               #  13:     assign v6 <- 98
    movb    %al, -22(%ebp)         
    jmp     l_f0_9                  #  14:     goto   9
l_f0_11_if_false:
l_f0_9:
    call    ReadInt                 #  17:     call   t7 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $69234, %eax            #  18:     mul    t8 <- 69234, 56956
    movl    $56956, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  19:     if     t7 # t8 goto 15
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_15                
    jmp     l_f0_16                 #  20:     goto   16
l_f0_15:
    movl    $1, %eax                #  22:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_17                 #  23:     goto   17
l_f0_16:
    movl    $0, %eax                #  25:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f0_17:
    movzbl  -21(%ebp), %eax         #  27:     assign v4 <- t9
    movb    %al, 16(%ebp)          

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <int> %ebp+20 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_3                  #   1:     goto   3
l_f1_3:
l_f1_7_while_cond:
    movl    $71412, %eax            #   4:     if     71412 > 41368 goto 8_while_body
    movl    $41368, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_8_while_body      
    jmp     l_f1_6                  #   5:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #   7:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #  12:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     if     t7 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  14:     goto   12_if_false
l_f1_11_if_true:
l_f1_14_while_cond:
    jmp     l_f1_13                 #  17:     goto   13
    jmp     l_f1_14_while_cond      #  18:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_10                 #  20:     goto   10
l_f1_12_if_false:
l_f1_10:
    call    dummyCHARfunc           #  23:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  24:     return t8
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t25      <char> %ebp-73 ]
    #    -74(%ebp)   1  [ $t26      <bool> %ebp-74 ]
    #    -75(%ebp)   1  [ $t27      <bool> %ebp-75 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 2 of <array 7 of <array 9 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 10 of <array 7 of <array 6 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 10 of <array 1 of <array 6 of <array 1 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 5 of <array 2 of <bool>>>>>>> %ebp+20 ]
    #    -92(%ebp)   4  [ $v6       <int> %ebp-92 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $4888, %eax             #   0:     add    t7 <- 4888, 25007
    movl    $25007, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   1:     sub    t8 <- t7, 18599
    movl    $18599, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   3:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   4:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #   5:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     add    t11 <- t10, 69320
    movl    $69320, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   8:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   9:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  10:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     add    t14 <- t13, 15494
    movl    $15494, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  13:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  14:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  15:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     add    t17 <- t16, 84849
    movl    $84849, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  19:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  20:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  21:     add    t20 <- t19, 11013
    movl    $11013, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  22:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  23:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  24:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  25:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  26:     add    t24 <- v4, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $8962, %eax             #  27:     assign @t24 <- 8962
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  28:     call   t25 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    movl    $98, %eax               #  29:     if     98 > t25 goto 2
    movzbl  -73(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_2                 
    jmp     l_f2_3                  #  30:     goto   3
l_f2_2:
    movl    $1, %eax                #  32:     assign t26 <- 1
    movb    %al, -74(%ebp)         
    jmp     l_f2_4                  #  33:     goto   4
l_f2_3:
    movl    $0, %eax                #  35:     assign t26 <- 0
    movb    %al, -74(%ebp)         
l_f2_4:
    movzbl  -74(%ebp), %eax         #  37:     return t26
    jmp     l_f2_exit              
    jmp     l_f2_11                 #  38:     goto   11
    jmp     l_f2_11                 #  39:     goto   11
l_f2_11:
    movl    $1, %eax                #  41:     assign t27 <- 1
    movb    %al, -75(%ebp)         
    jmp     l_f2_9                  #  42:     goto   9
    movl    $0, %eax                #  43:     assign t27 <- 0
    movb    %al, -75(%ebp)         
l_f2_9:
    movzbl  -75(%ebp), %eax         #  45:     return t27
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 5 of <array 2 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 10 of <array 1 of <array 6 of <array 1 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 10 of <array 7 of <array 6 of <array 7 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 10 of <array 2 of <array 7 of <array 9 of <array 6 of <int>>>>>>> %ebp-36 ]
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
    jmp     l_test_exit            
    movl    $97, %eax               #   1:     if     97 > 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $588, %eax              #   4:     assign v0 <- 588
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #   7:     goto   8_while_cond
    jmp     l_test_exit            
    jmp     l_test_1                #   9:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_13_if_false      #  12:     goto   13_if_false
    movl    $98, %eax               #  13:     assign v1 <- 98
    movb    %al, v1                
    movl    $97, %eax               #  14:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    movl    $70748, %eax            #  16:     if     70748 > 23381 goto 17_if_true
    movl    $23381, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_17_if_true      
    jmp     l_test_18_if_false      #  17:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  19:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_11               #  22:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $91481, %eax            #  25:     param  3 <- 91481
    pushl   %eax                   
    movl    $46042, %eax            #  26:     param  2 <- 46042
    pushl   %eax                   
    movl    $54312, %eax            #  27:     mul    t0 <- 54312, 60445
    movl    $60445, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  28:     param  1 <- t0
    pushl   %eax                   
    movl    $98, %eax               #  29:     param  0 <- 98
    pushl   %eax                   
    call    f1                      #  30:     call   t1 <- f1
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  31:     assign v1 <- t1
    movb    %al, v1                
l_test_22_while_cond:
    jmp     l_test_23_while_body    #  33:     goto   23_while_body
    jmp     l_test_23_while_body    #  34:     goto   23_while_body
l_test_23_while_body:
    movl    $56432, %eax            #  36:     assign v0 <- 56432
    movl    %eax, v0               
l_test_29_while_cond:
    movl    $2862, %eax             #  38:     if     2862 > 78623 goto 30_while_body
    movl    $78623, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_30_while_body   
    jmp     l_test_28               #  39:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  41:     goto   29_while_cond
l_test_28:
    leal    v5, %eax                #  43:     &()    t2 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  44:     param  3 <- t2
    pushl   %eax                   
    leal    v4, %eax                #  45:     &()    t3 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  46:     param  2 <- t3
    pushl   %eax                   
    leal    v3, %eax                #  47:     &()    t4 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  48:     param  1 <- t4
    pushl   %eax                   
    leal    v2, %eax                #  49:     &()    t5 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  50:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  51:     call   t6 <- f2
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
l_test_34_while_cond:
    movl    $6837, %eax             #  53:     if     6837 > 99363 goto 35_while_body
    movl    $99363, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_35_while_body   
    jmp     l_test_33               #  54:     goto   33
l_test_35_while_body:
    jmp     l_test_34_while_cond    #  56:     goto   34_while_cond
l_test_33:
l_test_38_while_cond:
    movl    $98, %eax               #  59:     if     98 = 99 goto 39_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_39_while_body   
    jmp     l_test_37               #  60:     goto   37
l_test_39_while_body:
    jmp     l_test_38_while_cond    #  62:     goto   38_while_cond
l_test_37:
    jmp     l_test_22_while_cond    #  64:     goto   22_while_cond
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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 10 of <array 2 of <array 7 of <array 9 of <array 6 of <int>>>>>>
    .long    5
    .long   10
    .long    2
    .long    7
    .long    9
    .long    6
    .skip 30240
v3:                                 # <array 7 of <array 10 of <array 7 of <array 6 of <array 7 of <char>>>>>>
    .long    5
    .long    7
    .long   10
    .long    7
    .long    6
    .long    7
    .skip 20580
v4:                                 # <array 8 of <array 10 of <array 1 of <array 6 of <array 1 of <int>>>>>>
    .long    5
    .long    8
    .long   10
    .long    1
    .long    6
    .long    1
    .skip 1920
v5:                                 # <array 10 of <array 2 of <array 9 of <array 5 of <array 2 of <bool>>>>>>
    .long    5
    .long   10
    .long    2
    .long    9
    .long    5
    .long    2
    .skip 1800








    # end of global data section
    #-----------------------------------------

    .end
##################################################
