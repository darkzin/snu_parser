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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 58 of <array 95 of <array 53 of <array 63 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 85 of <array 88 of <array 2 of <array 74 of <char>>>>>>> %ebp+12 ]
    #    -25(%ebp)   1  [ $v3       <bool> %ebp-25 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t5
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #   3:     if     100 > t6 goto 2
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2                 
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $1, %eax                #   6:     assign t7 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $0, %eax                #   9:     assign t7 <- 0
    movb    %al, -18(%ebp)         
l_f0_4:
    movzbl  -18(%ebp), %eax         #  11:     assign v3 <- t7
    movb    %al, -25(%ebp)         
    call    dummyINTfunc            #  12:     call   t8 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 3 of <array 85 of <array 88 of <array 2 of <array 74 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 3 of <array 85 of <array 88 of <array 2 of <array 74 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 3 of <array 85 of <array 88 of <array 2 of <array 74 of <char>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 3 of <array 85 of <array 88 of <array 2 of <array 74 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 3 of <array 85 of <array 88 of <array 2 of <array 74 of <char>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t5       <ptr(4) to <array 3 of <array 85 of <array 88 of <array 2 of <array 74 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t6       <ptr(4) to <array 69 of <array 58 of <array 95 of <array 53 of <array 63 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t7       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <ptr(4) to <array 3 of <array 85 of <array 88 of <array 2 of <array 74 of <char>>>>>>> %ebp-120 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 50 of <array 59 of <array 85 of <array 13 of <array 20 of <bool>>>>>>> %ebp+12 ]
    #   -782850488(%ebp)  782850368  [ $v3       <array 69 of <array 58 of <array 95 of <array 53 of <array 63 of <int>>>>>> %ebp-782850488 ]
    #   -786171632(%ebp)  3321144  [ $v4       <array 3 of <array 85 of <array 88 of <array 2 of <array 74 of <char>>>>>> %ebp-786171632 ]
    #   -786171636(%ebp)   4  [ $v5       <int> %ebp-786171636 ]
    #   -786171637(%ebp)   1  [ $v6       <char> %ebp-786171637 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $786171628, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $196542907, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-782850488(%ebp)     # local array 'v3': 5 dimensions
    movl    $69,-782850484(%ebp)    #   dimension 1: 69 elements
    movl    $58,-782850480(%ebp)    #   dimension 2: 58 elements
    movl    $95,-782850476(%ebp)    #   dimension 3: 95 elements
    movl    $53,-782850472(%ebp)    #   dimension 4: 53 elements
    movl    $63,-782850468(%ebp)    #   dimension 5: 63 elements
    movl    $5,-786171632(%ebp)     # local array 'v4': 5 dimensions
    movl    $3,-786171628(%ebp)     #   dimension 1: 3 elements
    movl    $85,-786171624(%ebp)    #   dimension 2: 85 elements
    movl    $88,-786171620(%ebp)    #   dimension 3: 88 elements
    movl    $2,-786171616(%ebp)     #   dimension 4: 2 elements
    movl    $74,-786171612(%ebp)    #   dimension 5: 74 elements

    # function body
    leal    -786171632(%ebp), %eax  #   0:     &()    t5 <- v4
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   1:     param  1 <- t5
    pushl   %eax                   
    leal    -782850488(%ebp), %eax  #   2:     &()    t6 <- v3
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   3:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   4:     call   t7 <- f0
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    $15574, %eax            #   5:     if     15574 >= 86644 goto 2_if_true
    movl    $86644, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   6:     goto   3_if_false
l_f1_2_if_true:
    movl    $96337, %eax            #   8:     assign v5 <- 96337
    movl    %eax, -786171636(%ebp) 
    jmp     l_f1_6                  #   9:     goto   6
l_f1_6:
    movl    $100, %eax              #  11:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_1                  #  12:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    ReadInt                 #  15:     call   t8 <- ReadInt
    movl    %eax, -116(%ebp)       
    movl    $98, %eax               #  16:     assign v6 <- 98
    movb    %al, -786171637(%ebp)  
    leal    -786171632(%ebp), %eax  #  17:     &()    t9 <- v4
    movl    %eax, -120(%ebp)       
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    leal    -786171632(%ebp), %eax  #  19:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  21:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $85502, %eax            #  22:     mul    t12 <- 85502, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t13 <- t12, 31258
    movl    $31258, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    leal    -786171632(%ebp), %eax  #  25:     &()    t14 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  27:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  29:     add    t17 <- t16, 38289
    movl    $38289, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    leal    -786171632(%ebp), %eax  #  31:     &()    t18 <- v4
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  33:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  34:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  35:     add    t21 <- t20, 76149
    movl    $76149, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    leal    -786171632(%ebp), %eax  #  37:     &()    t22 <- v4
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  38:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  39:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  40:     mul    t24 <- t21, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  41:     add    t25 <- t24, 47457
    movl    $47457, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  42:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    -786171632(%ebp), %eax  #  43:     &()    t27 <- v4
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  44:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  45:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  46:     add    t29 <- t26, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -120(%ebp), %eax        #  47:     add    t30 <- t9, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $98, %eax               #  48:     assign @t30 <- 98
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_17_while_cond:
    jmp     l_f1_16                 #  50:     goto   16
    jmp     l_f1_17_while_cond      #  51:     goto   17_while_cond
l_f1_16:
    movl    $99, %eax               #  53:     return 99
    jmp     l_f1_exit              
    call    dummyINTfunc            #  54:     call   t31 <- dummyINTfunc
    movl    %eax, -100(%ebp)       
    jmp     l_f1_10                 #  55:     goto   10
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $786171628, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 60 of <array 66 of <array 4 of <array 73 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 19 of <array 87 of <array 70 of <array 51 of <array 11 of <bool>>>>>>> %ebp+16 ]
    #    -17(%ebp)   1  [ $v4       <char> %ebp-17 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
    movl    $98, %eax               #   3:     assign v4 <- 98
    movb    %al, -17(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 19 of <array 87 of <array 70 of <array 51 of <array 11 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 60 of <array 66 of <array 4 of <array 73 of <int>>>>>>> %ebp-32 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $77541, %eax            #   1:     assign v0 <- 77541
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_0                #   3:     goto   0
l_test_2_if_false:
l_test_0:
l_test_6_while_cond:
    movl    $97, %eax               #   7:     if     97 <= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_7_while_body    
    jmp     l_test_5                #   8:     goto   5
l_test_7_while_body:
l_test_10_while_cond:
    movl    $100, %eax              #  11:     if     100 = 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  12:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  14:     goto   10_while_cond
l_test_9:
    jmp     l_test_6_while_cond     #  16:     goto   6_while_cond
l_test_5:
    call    WriteLn                 #  18:     call   WriteLn
    movl    $91198, %eax            #  19:     div    t0 <- 91198, 5397
    movl    $5397, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     mul    t1 <- t0, 6435
    movl    $6435, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     div    t2 <- t1, 7882
    movl    $7882, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #  23:     call   WriteInt
    addl    $4, %esp               
    leal    v2, %eax                #  24:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     param  2 <- t3
    pushl   %eax                   
    movl    $0, %eax                #  26:     param  1 <- 0
    pushl   %eax                   
    leal    v1, %eax                #  27:     &()    t4 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  29:     call   f2
    addl    $12, %esp              

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <array 2 of <array 60 of <array 66 of <array 4 of <array 73 of <int>>>>>>
    .long    5
    .long    2
    .long   60
    .long   66
    .long    4
    .long   73
    .skip 9250560
v2:                                 # <array 19 of <array 87 of <array 70 of <array 51 of <array 11 of <bool>>>>>>
    .long    5
    .long   19
    .long   87
    .long   70
    .long   51
    .long   11
    .skip 64913310








    # end of global data section
    #-----------------------------------------

    .end
##################################################
