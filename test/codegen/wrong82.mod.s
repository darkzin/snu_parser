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
    #    -53(%ebp)   1  [ $t20      <char> %ebp-53 ]
    #    -54(%ebp)   1  [ $t21      <char> %ebp-54 ]
    #    -55(%ebp)   1  [ $t22      <bool> %ebp-55 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 10 of <array 6 of <array 7 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 9 of <array 1 of <array 7 of <array 9 of <bool>>>>>>> %ebp+20 ]
    #    -92(%ebp)   4  [ $v4       <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $v5       <char> %ebp-93 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $42031, %eax            #   1:     assign v4 <- 42031
    movl    %eax, -92(%ebp)        
    jmp     l_f0_6_if_false         #   2:     goto   6_if_false
    jmp     l_f0_4                  #   3:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   8:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $28666, %eax            #   9:     mul    t4 <- 28666, t3
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  10:     add    t5 <- t4, 59381
    movl    $59381, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  13:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  14:     mul    t7 <- t5, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  15:     add    t8 <- t7, 1195
    movl    $1195, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  19:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     add    t11 <- t10, 4227
    movl    $4227, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  23:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  24:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t14 <- t13, 47413
    movl    $47413, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  27:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  28:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  30:     add    t18 <- v0, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $98, %eax               #  31:     assign @t18 <- 98
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    call    WriteLn                 #  32:     call   WriteLn
    call    dummyINTfunc            #  33:     call   t19 <- dummyINTfunc
    movl    %eax, -52(%ebp)        
    call    dummyCHARfunc           #  34:     call   t20 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    jmp     l_f0_0                  #  35:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  38:     call   t21 <- dummyCHARfunc
    movb    %al, -54(%ebp)         
    movl    $100, %eax              #  39:     if     100 >= t21 goto 12
    movzbl  -54(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_12                
    jmp     l_f0_13                 #  40:     goto   13
l_f0_12:
    movl    $1, %eax                #  42:     assign t22 <- 1
    movb    %al, -55(%ebp)         
    jmp     l_f0_14                 #  43:     goto   14
l_f0_13:
    movl    $0, %eax                #  45:     assign t22 <- 0
    movb    %al, -55(%ebp)         
l_f0_14:
    movzbl  -55(%ebp), %eax         #  47:     assign v2 <- t22
    movb    %al, 16(%ebp)          
    call    ReadInt                 #  48:     call   t23 <- ReadInt
    movl    %eax, -60(%ebp)        

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 9 of <array 1 of <array 7 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t7       <ptr(4) to <array 6 of <array 10 of <array 6 of <array 7 of <array 8 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -20216(%ebp)  20184  [ $v4       <array 6 of <array 10 of <array 6 of <array 7 of <array 8 of <char>>>>>> %ebp-20216 ]
    #   -23644(%ebp)  3426  [ $v5       <array 6 of <array 9 of <array 1 of <array 7 of <array 9 of <bool>>>>>> %ebp-23644 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $23632, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5908, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-20216(%ebp)         # local array 'v4': 5 dimensions
    movl    $6,-20212(%ebp)         #   dimension 1: 6 elements
    movl    $10,-20208(%ebp)        #   dimension 2: 10 elements
    movl    $6,-20204(%ebp)         #   dimension 3: 6 elements
    movl    $7,-20200(%ebp)         #   dimension 4: 7 elements
    movl    $8,-20196(%ebp)         #   dimension 5: 8 elements
    movl    $5,-23644(%ebp)         # local array 'v5': 5 dimensions
    movl    $6,-23640(%ebp)         #   dimension 1: 6 elements
    movl    $9,-23636(%ebp)         #   dimension 2: 9 elements
    movl    $1,-23632(%ebp)         #   dimension 3: 1 elements
    movl    $7,-23628(%ebp)         #   dimension 4: 7 elements
    movl    $9,-23624(%ebp)         #   dimension 5: 9 elements

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_0                  #   1:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     return t3
    jmp     l_f1_exit              
    movl    $79803, %eax            #   6:     if     79803 >= 57805 goto 8_if_true
    movl    $57805, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   7:     goto   9_if_false
l_f1_8_if_true:
l_f1_12_while_cond:
    jmp     l_f1_12_while_cond      #  10:     goto   12_while_cond
    movl    $98, %eax               #  11:     return 98
    jmp     l_f1_exit              
    leal    -23644(%ebp), %eax      #  12:     &()    t4 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  3 <- t4
    pushl   %eax                   
    movl    $6176, %eax             #  14:     if     6176 >= 73355 goto 16
    movl    $73355, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_16                
    jmp     l_f1_17                 #  15:     goto   17
l_f1_16:
    movl    $1, %eax                #  17:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_18                 #  18:     goto   18
l_f1_17:
    movl    $0, %eax                #  20:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f1_18:
    movzbl  -21(%ebp), %eax         #  22:     param  2 <- t5
    pushl   %eax                   
    movl    $100, %eax              #  23:     if     100 <= 97 goto 20
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_20                
    jmp     l_f1_21                 #  24:     goto   21
l_f1_20:
    movl    $1, %eax                #  26:     assign t6 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_22                 #  27:     goto   22
l_f1_21:
    movl    $0, %eax                #  29:     assign t6 <- 0
    movb    %al, -22(%ebp)         
l_f1_22:
    movzbl  -22(%ebp), %eax         #  31:     param  1 <- t6
    pushl   %eax                   
    leal    -20216(%ebp), %eax      #  32:     &()    t7 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  34:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    jmp     l_f1_7                  #  35:     goto   7
l_f1_9_if_false:
l_f1_7:

l_f1_exit:
    # epilogue
    addl    $23632, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v0       <char> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t4 <- t3, 38902
    movl    $38902, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t4
    jmp     l_f2_exit              
    movl    $8821, %eax             #   3:     sub    t5 <- 8821, 79713
    movl    $79713, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t6 <- t5, 33474
    movl    $33474, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     sub    t7 <- t6, 23656
    movl    $23656, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     return t7
    jmp     l_f2_exit              
    movl    $98, %eax               #   7:     assign v0 <- 98
    movb    %al, -33(%ebp)         

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 > 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_1                #   7:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
l_test_9_while_cond:
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_14               #  13:     goto   14
    movl    $0, %eax                #  14:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_14:
    movl    $0, %eax                #  16:     if     0 = t1 goto 10_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  17:     goto   8
l_test_10_while_body:
    call    ReadInt                 #  19:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_20               #  20:     goto   20
l_test_20:
l_test_24_while_cond:
    movl    $216, %eax              #  23:     if     216 > 56269 goto 25_while_body
    movl    $56269, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_25_while_body   
    jmp     l_test_23               #  24:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  26:     goto   24_while_cond
l_test_23:
l_test_28_while_cond:
    movl    $1, %eax                #  29:     if     1 # 0 goto 29_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_29_while_body   
    jmp     l_test_27               #  30:     goto   27
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  32:     goto   28_while_cond
l_test_27:
    movl    $99, %eax               #  34:     if     99 <= 99 goto 32_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_32_if_true      
    jmp     l_test_33_if_false      #  35:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_31               #  37:     goto   31
l_test_33_if_false:
l_test_31:
    jmp     l_test_9_while_cond     #  40:     goto   9_while_cond
l_test_8:
    jmp     l_test_37_if_false      #  42:     goto   37_if_false
    jmp     l_test_exit            
    jmp     l_test_35               #  44:     goto   35
l_test_37_if_false:
l_test_35:
    movl    $13864, %eax            #  47:     assign v0 <- 13864
    movl    %eax, v0               

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
