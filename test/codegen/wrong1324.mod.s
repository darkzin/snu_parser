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
    #    -77(%ebp)   1  [ $t7       <bool> %ebp-77 ]
    #    -78(%ebp)   1  [ $t8       <char> %ebp-78 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 78 of <array 9 of <array 87 of <array 42 of <array 44 of <char>>>>>>> %ebp+8 ]
    #    -88(%ebp)   4  [ $v3       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $v4       <char> %ebp-89 ]

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
    movl    $18234, %eax            #   0:     assign v3 <- 18234
    movl    %eax, -88(%ebp)        
    movl    $97, %eax               #   1:     if     97 <= 100 goto 2
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_2                 
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -77(%ebp)         
l_f0_4:
    movzbl  -77(%ebp), %eax         #   9:     return t7
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  10:     call   t8 <- dummyCHARfunc
    movb    %al, -78(%ebp)         
    movl    $40771, %eax            #  11:     mul    t9 <- 40771, 86394
    movl    $86394, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  15:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t12 <- t11, 24286
    movl    $24286, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  20:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t15 <- t14, 62108
    movl    $62108, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  24:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  25:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  26:     add    t18 <- t17, 91146
    movl    $91146, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  29:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  30:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  31:     add    t21 <- t20, 45778
    movl    $45778, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  32:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  33:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  34:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  35:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  36:     add    t25 <- v2, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -78(%ebp), %eax         #  37:     assign @t25 <- t8
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t9       <bool> %ebp-19 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 58 of <array 23 of <array 61 of <array 44 of <array 23 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #    -20(%ebp)   1  [ $v4       <char> %ebp-20 ]

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
l_f1_1_while_cond:
    movl    $1, %eax                #   1:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_6                  #   2:     goto   6
    movl    $0, %eax                #   3:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f1_6:
    movl    $1, %eax                #   5:     if     1 # t7 goto 2_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_while_body:
    movl    $99, %eax               #   8:     assign v4 <- 99
    movb    %al, -20(%ebp)         
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_15                 #  11:     goto   15
    jmp     l_f1_16                 #  12:     goto   16
l_f1_15:
    movl    $1, %eax                #  14:     assign t8 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_17                 #  15:     goto   17
l_f1_16:
    movl    $0, %eax                #  17:     assign t8 <- 0
    movb    %al, -18(%ebp)         
l_f1_17:
    movzbl  -18(%ebp), %eax         #  19:     if     t8 = 0 goto 11
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_11                
    jmp     l_f1_12                 #  20:     goto   12
l_f1_11:
    movl    $1, %eax                #  22:     assign t9 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f1_13                 #  23:     goto   13
l_f1_12:
    movl    $0, %eax                #  25:     assign t9 <- 0
    movb    %al, -19(%ebp)         
l_f1_13:
    movzbl  -19(%ebp), %eax         #  27:     return t9
    jmp     l_f1_exit              
l_f1_22_while_cond:
    movl    $76449, %eax            #  29:     div    t10 <- 76449, 13108
    movl    $13108, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $24223, %eax            #  30:     if     24223 > t10 goto 23_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_23_while_body     
    jmp     l_f1_21                 #  31:     goto   21
l_f1_23_while_body:
l_f1_26_while_cond:
    movl    $98, %eax               #  34:     if     98 < 98 goto 27_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_27_while_body     
    jmp     l_f1_25                 #  35:     goto   25
l_f1_27_while_body:
    jmp     l_f1_26_while_cond      #  37:     goto   26_while_cond
l_f1_25:
l_f1_30_while_cond:
    jmp     l_f1_29                 #  40:     goto   29
    jmp     l_f1_30_while_cond      #  41:     goto   30_while_cond
l_f1_29:
    jmp     l_f1_22_while_cond      #  43:     goto   22_while_cond
l_f1_21:

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
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 68 of <array 11 of <array 35 of <array 98 of <array 37 of <char>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
l_f2_2_while_cond:
    movl    $100, %eax              #   2:     if     100 <= 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    movl    $84897, %eax            #   5:     assign v2 <- 84897
    movl    %eax, 8(%ebp)          
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 78 of <array 9 of <array 87 of <array 42 of <array 44 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <char> %ebp-34 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $4980, %eax             #   1:     if     4980 <= 75455 goto 2_if_true
    movl    $75455, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $0, %eax                #   4:     assign v0 <- 0
    movb    %al, v0                
    movl    $99, %eax               #   5:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_1                #   6:     goto   1
l_test_3_if_false:
l_test_1:
    call    ReadInt                 #   9:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_9_while_cond:
    call    dummyCHARfunc           #  11:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #  12:     if     99 > t2 goto 10_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_10_while_body   
    jmp     l_test_8                #  13:     goto   8
l_test_10_while_body:
    call    ReadInt                 #  15:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    leal    v2, %eax                #  16:     &()    t4 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  18:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -33(%ebp)         
    jmp     l_test_9_while_cond     #  19:     goto   9_while_cond
l_test_8:
    call    dummyCHARfunc           #  21:     call   t6 <- dummyCHARfunc
    movb    %al, -34(%ebp)         

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    .align   4
v2:                                 # <array 78 of <array 9 of <array 87 of <array 42 of <array 44 of <char>>>>>>
    .long    5
    .long   78
    .long    9
    .long   87
    .long   42
    .long   44
    .skip 112864752








    # end of global data section
    #-----------------------------------------

    .end
##################################################
