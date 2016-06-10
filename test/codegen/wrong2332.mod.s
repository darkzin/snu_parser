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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t9       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 35 of <array 75 of <array 1 of <array 52 of <bool>>>>>>> %ebp+8 ]

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
    movl    $51498, %eax            #   0:     if     51498 > 54379 goto 5
    movl    $54379, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_5                 
    jmp     l_f0_5                  #   1:     goto   5
    jmp     l_f0_6                  #   2:     goto   6
l_f0_5:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -15(%ebp)         
l_f0_7:
    movl    $1, %eax                #   9:     if     1 = t8 goto 1
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #  10:     goto   2
l_f0_1:
    movl    $1, %eax                #  12:     assign t9 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_3                  #  13:     goto   3
l_f0_2:
    movl    $0, %eax                #  15:     assign t9 <- 0
    movb    %al, -16(%ebp)         
l_f0_3:
    movzbl  -16(%ebp), %eax         #  17:     return t9
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  18:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  19:     if     t10 = 1 goto 12_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_12_if_true        
    jmp     l_f0_12_if_true         #  20:     goto   12_if_true
    jmp     l_f0_13_if_false        #  21:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  23:     goto   11
l_f0_13_if_false:
l_f0_11:
    call    dummyCHARfunc           #  26:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  27:     if     t11 = 97 goto 18_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  28:     goto   19_if_false
l_f0_18_if_true:
    movl    $0, %eax                #  30:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_17                 #  31:     goto   17
l_f0_19_if_false:
l_f0_17:

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
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
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
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 20 of <array 13 of <array 45 of <array 21 of <array 62 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 91 of <array 42 of <array 8 of <array 97 of <array 84 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #   -101(%ebp)   1  [ $v3       <bool> %ebp-101 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $79997, %eax            #   0:     if     79997 >= 71122 goto 1_if_true
    movl    $71122, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $52081, %eax            #   3:     return 52081
    jmp     l_f1_exit              
    movl    $2620, %eax             #   4:     if     2620 < 41753 goto 6_if_true
    movl    $41753, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   5:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_10_while_cond:
    movl    $80418, %eax            #  14:     sub    t8 <- 80418, 22541
    movl    $22541, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  15:     sub    t9 <- t8, 88611
    movl    $88611, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  16:     sub    t10 <- t9, 13837
    movl    $13837, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     sub    t11 <- t10, 62791
    movl    $62791, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     add    t12 <- t11, 67173
    movl    $67173, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     if     t12 >= 76011 goto 11_while_body
    movl    $76011, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_11_while_body     
    jmp     l_f1_9                  #  20:     goto   9
l_f1_11_while_body:
l_f1_14_while_cond:
    movl    $94957, %eax            #  23:     if     94957 < 21549 goto 15_while_body
    movl    $21549, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  24:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  26:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_10_while_cond      #  28:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_18                 #  30:     goto   18
    jmp     l_f1_19                 #  31:     goto   19
l_f1_18:
    movl    $1, %eax                #  33:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_20                 #  34:     goto   20
l_f1_19:
    movl    $0, %eax                #  36:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f1_20:
    movl    $2, %eax                #  38:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  40:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $35060, %eax            #  41:     mul    t15 <- 35060, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  42:     add    t16 <- t15, 57160
    movl    $57160, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  43:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  45:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  46:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  47:     add    t19 <- t18, 86642
    movl    $86642, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  48:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  49:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  50:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  51:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  52:     add    t22 <- t21, 74211
    movl    $74211, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  53:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  54:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  55:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  56:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  57:     add    t25 <- t24, 68073
    movl    $68073, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  58:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    8(%ebp), %eax           #  59:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  60:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  61:     add    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    8(%ebp), %eax           #  62:     add    t29 <- v0, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movzbl  -25(%ebp), %eax         #  63:     assign @t29 <- t13
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 67 of <array 5 of <array 73 of <array 1 of <array 40 of <int>>>>>>> %ebp+20 ]
    #    -25(%ebp)   1  [ $v4       <char> %ebp-25 ]

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
    movl    $35517, %eax            #   0:     assign v1 <- 35517
    movl    %eax, 12(%ebp)         
    call    dummyINTfunc            #   1:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $30838, %eax            #   2:     sub    t9 <- 30838, 22158
    movl    $22158, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t8 >= t9 goto 2
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_2                 
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $1, %eax                #   6:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $0, %eax                #   9:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_4:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t10
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #  12:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  13:     assign v4 <- t11
    movb    %al, -25(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 8 of <array 35 of <array 75 of <array 1 of <array 52 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <bool> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $88034, %eax            #   1:     div    t0 <- 88034, 37471
    movl    $37471, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t1 <- t0, 69635
    movl    $69635, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t2 <- t1, 19140
    movl    $19140, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     div    t3 <- t2, 7851
    movl    $7851, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $11745, %eax            #   5:     if     11745 = t3 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   6:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   9:     goto   5_while_cond
    jmp     l_test_1_while_cond     #  10:     goto   1_while_cond
l_test_0:
l_test_8_while_cond:
    jmp     l_test_9_while_body     #  13:     goto   9_while_body
    leal    v0, %eax                #  14:     &()    t4 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  16:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  17:     if     t5 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #  18:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  20:     goto   8_while_cond
l_test_7:
    movl    $38384, %eax            #  22:     if     38384 = 15844 goto 12_if_true
    movl    $15844, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_12_if_true      
    jmp     l_test_13_if_false      #  23:     goto   13_if_false
l_test_12_if_true:
l_test_16_while_cond:
    movl    $69640, %eax            #  26:     if     69640 = 46321 goto 17_while_body
    movl    $46321, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_15               #  27:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  29:     goto   16_while_cond
l_test_15:
    jmp     l_test_11               #  31:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $74179, %eax            #  34:     sub    t6 <- 74179, 79092
    movl    $79092, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  35:     if     t6 < 26616 goto 20
    movl    $26616, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_20              
    jmp     l_test_21               #  36:     goto   21
l_test_20:
    movl    $1, %eax                #  38:     assign t7 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_test_22               #  39:     goto   22
l_test_21:
    movl    $0, %eax                #  41:     assign t7 <- 0
    movb    %al, -41(%ebp)         
l_test_22:
    movzbl  -41(%ebp), %eax         #  43:     assign v1 <- t7
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v0:                                 # <array 8 of <array 35 of <array 75 of <array 1 of <array 52 of <bool>>>>>>
    .long    5
    .long    8
    .long   35
    .long   75
    .long    1
    .long   52
    .skip 1092000
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
