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
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t30      <bool> %ebp-93 ]
    #    -94(%ebp)   1  [ $t7       <char> %ebp-94 ]
    #    -95(%ebp)   1  [ $t8       <char> %ebp-95 ]
    #    -96(%ebp)   1  [ $t9       <bool> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 8 of <array 3 of <array 8 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #    -97(%ebp)   1  [ $v2       <bool> %ebp-97 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -94(%ebp)         
    call    dummyCHARfunc           #   2:     call   t8 <- dummyCHARfunc
    movb    %al, -95(%ebp)         
    movzbl  -94(%ebp), %eax         #   3:     if     t7 # t8 goto 2_while_body
    movzbl  -95(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    movl    $100, %eax              #   8:     if     100 <= 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_5                 
    jmp     l_f0_6                  #   9:     goto   6
l_f0_5:
    movl    $1, %eax                #  11:     assign t9 <- 1
    movb    %al, -96(%ebp)         
    jmp     l_f0_7                  #  12:     goto   7
l_f0_6:
    movl    $0, %eax                #  14:     assign t9 <- 0
    movb    %al, -96(%ebp)         
l_f0_7:
    movl    $46084, %eax            #  16:     add    t10 <- 46084, 41989
    movl    $41989, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     sub    t11 <- t10, 55094
    movl    $55094, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     sub    t12 <- t11, 52296
    movl    $52296, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t13 <- t12, 75301
    movl    $75301, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  23:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t16 <- t15, 23496
    movl    $23496, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
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
    movl    -48(%ebp), %eax         #  29:     add    t19 <- t18, 32281
    movl    $32281, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  33:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  34:     add    t22 <- t21, 26993
    movl    $26993, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  37:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  38:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     add    t25 <- t24, 92148
    movl    $92148, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  40:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    8(%ebp), %eax           #  41:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  42:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  43:     add    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    8(%ebp), %eax           #  44:     add    t29 <- v1, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movzbl  -96(%ebp), %eax         #  45:     assign @t29 <- t9
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_10_while_cond:
    call    dummyBOOLfunc           #  47:     call   t30 <- dummyBOOLfunc
    movb    %al, -93(%ebp)         
    movzbl  -93(%ebp), %eax         #  48:     if     t30 = 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_11_while_body     
    jmp     l_f0_9                  #  49:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  51:     goto   10_while_cond
l_f0_9:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 6 of <array 8 of <array 5 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
    call    dummyBOOLfunc           #   0:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $61519, %eax            #   1:     assign v3 <- 61519
    movl    %eax, -28(%ebp)        
    movl    $20265, %eax            #   2:     add    t8 <- 20265, 55669
    movl    $55669, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t9 <- t8, 62820
    movl    $62820, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $78498, %eax            #   4:     if     78498 >= t9 goto 3
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_3                 
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $1, %eax                #   7:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_5                  #   8:     goto   5
l_f1_4:
    movl    $0, %eax                #  10:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_5:
    movzbl  -13(%ebp), %eax         #  12:     return t10
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 10 of <array 8 of <array 3 of <array 8 of <array 10 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #   -19248(%ebp)  19224  [ $v3       <array 10 of <array 8 of <array 3 of <array 8 of <array 10 of <bool>>>>>> %ebp-19248 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $19236, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4809, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-19248(%ebp)         # local array 'v3': 5 dimensions
    movl    $10,-19244(%ebp)        #   dimension 1: 10 elements
    movl    $8,-19240(%ebp)         #   dimension 2: 8 elements
    movl    $3,-19236(%ebp)         #   dimension 3: 3 elements
    movl    $8,-19232(%ebp)         #   dimension 4: 8 elements
    movl    $10,-19228(%ebp)        #   dimension 5: 10 elements

    # function body
l_f2_1_while_cond:
    leal    -19248(%ebp), %eax      #   1:     &()    t7 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #   3:     call   f0
    addl    $4, %esp               
    jmp     l_f2_3                  #   4:     goto   3
l_f2_3:
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_8_while_cond:
    call    dummyCHARfunc           #   8:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   9:     if     t8 < 98 goto 9_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_9_while_body      
    jmp     l_f2_7                  #  10:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  12:     goto   8_while_cond
l_f2_7:
l_f2_12_while_cond:
    call    dummyBOOLfunc           #  15:     call   t9 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  16:     if     t9 = 1 goto 20
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_20                
    jmp     l_f2_16                 #  17:     goto   16
l_f2_20:
    jmp     l_f2_16                 #  19:     goto   16
    jmp     l_f2_16                 #  20:     goto   16
    movl    $1, %eax                #  21:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_17                 #  22:     goto   17
l_f2_16:
    movl    $0, %eax                #  24:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_17:
    movl    $0, %eax                #  26:     if     0 = t10 goto 13_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_13_while_body     
    jmp     l_f2_11                 #  27:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  29:     goto   12_while_cond
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $19236, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t6       <bool> %ebp-27 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     if     100 >= t0 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_5                #   7:     goto   5
l_test_5:
    movl    $1, %eax                #   9:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_7                #  10:     goto   7
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_7:
    movzbl  -14(%ebp), %eax         #  13:     assign v0 <- t1
    movb    %al, v0                
    movl    $5847, %eax             #  14:     if     5847 # 58784 goto 11_if_true
    movl    $58784, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_11_if_true      
    jmp     l_test_12_if_false      #  15:     goto   12_if_false
l_test_11_if_true:
    leal    _str_1, %eax            #  17:     &()    t2 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  19:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_10               #  21:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $33489, %eax            #  24:     add    t3 <- 33489, 31482
    movl    $31482, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $73792, %eax            #  25:     if     73792 = t3 goto 17_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_17_if_true      
    jmp     l_test_18_if_false      #  26:     goto   18_if_false
l_test_17_if_true:
    movl    $99, %eax               #  28:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  29:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_16               #  30:     goto   16
l_test_18_if_false:
l_test_16:
    call    dummyCHARfunc           #  33:     call   t4 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    call    dummyBOOLfunc           #  34:     call   t5 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  35:     if     t5 = 1 goto 23
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_23              
    jmp     l_test_23               #  36:     goto   23
    jmp     l_test_23               #  37:     goto   23
    jmp     l_test_24               #  38:     goto   24
l_test_23:
    movl    $1, %eax                #  40:     assign t6 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_test_25               #  41:     goto   25
l_test_24:
    movl    $0, %eax                #  43:     assign t6 <- 0
    movb    %al, -27(%ebp)         
l_test_25:
    movzbl  -27(%ebp), %eax         #  45:     assign v0 <- t6
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
