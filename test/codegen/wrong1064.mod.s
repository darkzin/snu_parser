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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t8       <bool> %ebp-23 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 64 of <array 83 of <array 95 of <array 10 of <array 95 of <bool>>>>>>> %ebp+8 ]

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
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t5 <- t4, 94194
    movl    $94194, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $48846, %eax            #   2:     if     48846 < t5 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f0_3:
    movzbl  -21(%ebp), %eax         #  10:     return t6
    jmp     l_f0_exit              
l_f0_6_while_cond:
    call    dummyBOOLfunc           #  12:     call   t7 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  13:     return t7
    jmp     l_f0_exit              
    jmp     l_f0_6_while_cond       #  14:     goto   6_while_cond
    jmp     l_f0_11                 #  15:     goto   11
    jmp     l_f0_11                 #  16:     goto   11
    jmp     l_f0_11                 #  17:     goto   11
    movl    $1, %eax                #  18:     assign t8 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f0_12                 #  19:     goto   12
l_f0_11:
    movl    $0, %eax                #  21:     assign t8 <- 0
    movb    %al, -23(%ebp)         
l_f0_12:
    movzbl  -23(%ebp), %eax         #  23:     return t8
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v2       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 >= t4 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   8:     goto   4
l_f1_8_while_cond:
    movl    $13571, %eax            #  10:     if     13571 < 7692 goto 9_while_body
    movl    $7692, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_9_while_body      
    jmp     l_f1_7                  #  11:     goto   7
l_f1_9_while_body:
    movl    $100, %eax              #  13:     if     100 >= 97 goto 12
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_12                
    jmp     l_f1_13                 #  14:     goto   13
l_f1_12:
    movl    $1, %eax                #  16:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_14                 #  17:     goto   14
l_f1_13:
    movl    $0, %eax                #  19:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_14:
    movzbl  -14(%ebp), %eax         #  21:     assign v1 <- t5
    movb    %al, -16(%ebp)         
    movl    $81780, %eax            #  22:     if     81780 > 23685 goto 17_if_true
    movl    $23685, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  23:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  25:     goto   16
l_f1_18_if_false:
l_f1_16:
    movl    $100, %eax              #  28:     assign v2 <- 100
    movb    %al, -17(%ebp)         
    movl    $72831, %eax            #  29:     assign v3 <- 72831
    movl    %eax, -24(%ebp)        
    movl    $71116, %eax            #  30:     assign v3 <- 71116
    movl    %eax, -24(%ebp)        
    movl    $33935, %eax            #  31:     if     33935 = 80855 goto 24_if_true
    movl    $80855, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_24_if_true        
    jmp     l_f1_25_if_false        #  32:     goto   25_if_false
l_f1_24_if_true:
    jmp     l_f1_23                 #  34:     goto   23
l_f1_25_if_false:
l_f1_23:
    movl    $23515, %eax            #  37:     if     23515 # 71560 goto 28
    movl    $71560, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_28                
    jmp     l_f1_29                 #  38:     goto   29
l_f1_28:
    movl    $1, %eax                #  40:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_30                 #  41:     goto   30
l_f1_29:
    movl    $0, %eax                #  43:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f1_30:
    movzbl  -15(%ebp), %eax         #  45:     assign v1 <- t6
    movb    %al, -16(%ebp)         
    jmp     l_f1_8_while_cond       #  46:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_5_while_cond       #  48:     goto   5_while_cond
l_f1_4:
    movl    $98, %eax               #  50:     assign v2 <- 98
    movb    %al, -17(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -65(%ebp)   1  [ $t4       <char> %ebp-65 ]
    #    -66(%ebp)   1  [ $t5       <char> %ebp-66 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 59 of <array 25 of <array 6 of <array 53 of <array 79 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 17 of <array 39 of <array 93 of <array 60 of <array 20 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 70 of <array 40 of <array 43 of <array 96 of <array 14 of <bool>>>>>>> %ebp+20 ]
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
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -66(%ebp)         
    movl    $55768, %eax            #   3:     add    t6 <- 55768, 8158
    movl    $8158, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   5:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   6:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #   7:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   8:     add    t9 <- t8, 56832
    movl    $56832, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  12:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     add    t12 <- t11, 29517
    movl    $29517, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  17:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     add    t15 <- t14, 89403
    movl    $89403, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  22:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     add    t18 <- t17, 34785
    movl    $34785, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  24:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  26:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  27:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t22 <- v1, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -66(%ebp), %eax         #  29:     assign @t22 <- t5
    movl    -64(%ebp), %edi        
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
    jmp     l_test_exit            
    movl    $1, %eax                #   2:     if     1 # 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_3               
    jmp     l_test_4                #   3:     goto   4
l_test_3:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_5                #   6:     goto   5
l_test_4:
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_5:
    movzbl  -13(%ebp), %eax         #  10:     assign v0 <- t0
    movb    %al, v0                
l_test_8_while_cond:
    call    dummyBOOLfunc           #  12:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  13:     if     t1 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #  14:     goto   7
l_test_9_while_body:
    movl    $100, %eax              #  16:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_8_while_cond     #  17:     goto   8_while_cond
l_test_7:
    call    dummyCHARfunc           #  19:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
l_test_13_while_cond:
    movl    $79427, %eax            #  21:     add    t3 <- 79427, 39778
    movl    $39778, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     if     t3 <= 97489 goto 14_while_body
    movl    $97489, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_14_while_body   
    jmp     l_test_12               #  23:     goto   12
l_test_14_while_body:
l_test_17_while_cond:
    jmp     l_test_17_while_cond    #  26:     goto   17_while_cond
    jmp     l_test_13_while_cond    #  27:     goto   13_while_cond
l_test_12:

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
