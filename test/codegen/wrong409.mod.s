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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 9 of <array 6 of <array 8 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   2:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 2 of <array 5 of <array 7 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t5
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_4_if_false         #   4:     goto   4_if_false
    movl    $100, %eax              #   5:     if     100 > 99 goto 8
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_8                 
    jmp     l_f1_9                  #   6:     goto   9
l_f1_8:
    movl    $1, %eax                #   8:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_10                 #   9:     goto   10
l_f1_9:
    movl    $0, %eax                #  11:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f1_10:
    movzbl  -15(%ebp), %eax         #  13:     assign v2 <- t7
    movb    %al, -16(%ebp)         
    jmp     l_f1_2                  #  14:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -69(%ebp)   1  [ $t24      <char> %ebp-69 ]
    #    -76(%ebp)   4  [ $t25      <ptr(4) to <array 4 of <array 2 of <array 5 of <array 7 of <array 7 of <char>>>>>>> %ebp-76 ]
    #    -77(%ebp)   1  [ $t26      <char> %ebp-77 ]
    #    -78(%ebp)   1  [ $t5       <bool> %ebp-78 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 5 of <array 9 of <array 2 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 6 of <array 5 of <array 8 of <array 2 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 5 of <array 8 of <array 10 of <array 3 of <char>>>>>>> %ebp+20 ]
    #    -97(%ebp)   1  [ $v4       <bool> %ebp-97 ]
    #   -2084(%ebp)  1984  [ $v5       <array 4 of <array 2 of <array 5 of <array 7 of <array 7 of <char>>>>>> %ebp-2084 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2072, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $518, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2084(%ebp)          # local array 'v5': 5 dimensions
    movl    $4,-2080(%ebp)          #   dimension 1: 4 elements
    movl    $2,-2076(%ebp)          #   dimension 2: 2 elements
    movl    $5,-2072(%ebp)          #   dimension 3: 5 elements
    movl    $7,-2068(%ebp)          #   dimension 4: 7 elements
    movl    $7,-2064(%ebp)          #   dimension 5: 7 elements

    # function body
    movl    $94806, %eax            #   0:     if     94806 < 2088 goto 1
    movl    $2088, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -78(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -78(%ebp)         
l_f2_3:
    movl    $25485, %eax            #   8:     mul    t6 <- 25485, 85653
    movl    $85653, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  12:     mul    t8 <- t6, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  13:     add    t9 <- t8, 40905
    movl    $40905, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -96(%ebp), %eax         #  17:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $76891, %eax            #  18:     div    t12 <- 76891, 21381
    movl    $21381, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  23:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t16 <- t15, 78239
    movl    $78239, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     add    t19 <- t18, 57603
    movl    $57603, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  30:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  33:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  34:     add    t23 <- v1, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -78(%ebp), %eax         #  35:     assign @t23 <- t5
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  36:     call   t24 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movzbl  -69(%ebp), %eax         #  37:     return t24
    jmp     l_f2_exit              
    movl    $86657, %eax            #  38:     param  1 <- 86657
    pushl   %eax                   
    leal    -2084(%ebp), %eax       #  39:     &()    t25 <- v5
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  40:     param  0 <- t25
    pushl   %eax                   
    call    f1                      #  41:     call   t26 <- f1
    addl    $8, %esp               
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #  42:     return t26
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $2072, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    call    ReadInt                 #   3:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_3_while_cond:
    jmp     l_test_4_while_body     #   5:     goto   4_while_body
    jmp     l_test_2                #   6:     goto   2
    jmp     l_test_2                #   7:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #   9:     goto   3_while_cond
l_test_2:
    movl    $42895, %eax            #  11:     if     42895 < 30746 goto 9
    movl    $30746, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_9               
    jmp     l_test_10               #  12:     goto   10
l_test_9:
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_11               #  15:     goto   11
l_test_10:
    movl    $0, %eax                #  17:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_11:
    movzbl  -21(%ebp), %eax         #  19:     assign v0 <- t2
    movb    %al, v0                
    leal    _str_1, %eax            #  20:     &()    t3 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  22:     call   WriteStr
    addl    $4, %esp               
l_test_15_while_cond:
    jmp     l_test_14               #  24:     goto   14
l_test_18_while_cond:
    jmp     l_test_21               #  26:     goto   21
    jmp     l_test_21               #  27:     goto   21
l_test_21:
    movl    $1, %eax                #  29:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_23               #  30:     goto   23
    movl    $0, %eax                #  31:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_23:
    movzbl  -29(%ebp), %eax         #  33:     if     t4 # 0 goto 19_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_19_while_body   
    jmp     l_test_17               #  34:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  36:     goto   18_while_cond
l_test_17:
    jmp     l_test_15_while_cond    #  38:     goto   15_while_cond
l_test_14:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
