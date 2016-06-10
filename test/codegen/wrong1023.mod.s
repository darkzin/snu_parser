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
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    movl    $79877, %eax            #   6:     sub    t5 <- 79877, 31184
    movl    $31184, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     sub    t6 <- t5, 56856
    movl    $56856, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     add    t7 <- t6, 81895
    movl    $81895, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     sub    t8 <- t7, 31494
    movl    $31494, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     sub    t9 <- t8, 81605
    movl    $81605, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     return t9
    jmp     l_f0_exit              
    movl    $37295, %eax            #  12:     sub    t10 <- 37295, 41294
    movl    $41294, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     add    t11 <- t10, 78658
    movl    $78658, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     return t11
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 32 of <array 68 of <array 69 of <array 48 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 91 of <array 42 of <array 79 of <array 90 of <array 33 of <char>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   1:     goto   6
    jmp     l_f1_6                  #   2:     goto   6
l_f1_6:
    movl    $1, %eax                #   4:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_8                  #   5:     goto   8
    movl    $0, %eax                #   6:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f1_8:
    movl    $0, %eax                #   8:     if     0 # t6 goto 2
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2                 
    jmp     l_f1_3                  #   9:     goto   3
l_f1_2:
    movl    $1, %eax                #  11:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_4                  #  12:     goto   4
l_f1_3:
    movl    $0, %eax                #  14:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f1_4:
    movzbl  -15(%ebp), %eax         #  16:     return t7
    jmp     l_f1_exit              
    movl    $1, %eax                #  17:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_12                 #  18:     goto   12
l_f1_12:

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
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t5       <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t8       <bool> %ebp-89 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 20 of <array 39 of <array 1 of <array 14 of <array 91 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #   -100(%ebp)   4  [ $v4       <int> %ebp-100 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #   1:     if     t5 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $17548, %eax            #   4:     if     17548 > 77494 goto 4_if_true
    movl    $77494, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   5:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   7:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $10239, %eax            #  13:     mul    t6 <- 10239, 56842
    movl    $56842, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  14:     div    t7 <- t6, 51755
    movl    $51755, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  15:     assign v4 <- t7
    movl    %eax, -100(%ebp)       
    movl    $1, %eax                #  16:     assign t8 <- 1
    movb    %al, -89(%ebp)         
    jmp     l_f2_11                 #  17:     goto   11
    movl    $0, %eax                #  18:     assign t8 <- 0
    movb    %al, -89(%ebp)         
l_f2_11:
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $55446, %eax            #  23:     mul    t10 <- 55446, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  24:     add    t11 <- t10, 13039
    movl    $13039, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  28:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $34988, %eax            #  29:     add    t14 <- 34988, 89954
    movl    $89954, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  30:     add    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  33:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  34:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  35:     add    t18 <- t17, 41719
    movl    $41719, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  38:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  39:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  40:     add    t21 <- t20, 40349
    movl    $40349, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  41:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  42:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  43:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  44:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  45:     add    t25 <- v2, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -89(%ebp), %eax         #  46:     assign @t25 <- t8
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $88, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 20 of <array 39 of <array 1 of <array 14 of <array 91 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]

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
    movl    $61377, %eax            #   1:     assign v0 <- 61377
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $40915, %eax            #   4:     assign v0 <- 40915
    movl    %eax, v0               
    jmp     l_test_2                #   5:     goto   2
l_test_2:
    call    ReadInt                 #   7:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #   8:     param  2 <- 1
    pushl   %eax                   
    leal    v1, %eax                #   9:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  1 <- t2
    pushl   %eax                   
    movl    $2132, %eax             #  11:     if     2132 > 13081 goto 10
    movl    $13081, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_10              
    jmp     l_test_11               #  12:     goto   11
l_test_10:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_12               #  15:     goto   12
l_test_11:
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_12:
    movzbl  -25(%ebp), %eax         #  19:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  20:     call   t4 <- f2
    addl    $12, %esp              
    movb    %al, -26(%ebp)         

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
v1:                                 # <array 20 of <array 39 of <array 1 of <array 14 of <array 91 of <bool>>>>>>
    .long    5
    .long   20
    .long   39
    .long    1
    .long   14
    .long   91
    .skip 993720








    # end of global data section
    #-----------------------------------------

    .end
##################################################
