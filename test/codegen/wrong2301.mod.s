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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]

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
l_f0_1_while_cond:
    movl    $74743, %eax            #   1:     if     74743 > 17168 goto 3
    movl    $17168, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_3                 
    jmp     l_f0_0                  #   2:     goto   0
l_f0_3:
    jmp     l_f0_0                  #   4:     goto   0
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
l_f0_6_while_cond:
    movl    $64318, %eax            #   8:     sub    t5 <- 64318, 77097
    movl    $77097, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     sub    t6 <- t5, 97953
    movl    $97953, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     add    t7 <- t6, 39068
    movl    $39068, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     sub    t8 <- t7, 47410
    movl    $47410, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     if     t8 = 53470 goto 7_while_body
    movl    $53470, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #  13:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  15:     goto   6_while_cond
l_f0_5:
    movl    $74763, %eax            #  17:     add    t9 <- 74763, 11330
    movl    $11330, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     add    t10 <- t9, 62779
    movl    $62779, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $37002, %eax            #  19:     if     37002 > t10 goto 10_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  20:     goto   11_if_false
l_f0_10_if_true:
    movl    $37401, %eax            #  22:     if     37401 >= 74784 goto 14_if_true
    movl    $74784, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  23:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  25:     goto   13
l_f0_15_if_false:
l_f0_13:
    movl    $7173, %eax             #  28:     return 7173
    jmp     l_f0_exit              
    jmp     l_f0_9                  #  29:     goto   9
l_f0_11_if_false:
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -16(%ebp)   1  [ $t8       <char> %ebp-16 ]

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
l_f1_1_while_cond:
    jmp     l_f1_5                  #   1:     goto   5
    jmp     l_f1_5                  #   2:     goto   5
    jmp     l_f1_5                  #   3:     goto   5
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    jmp     l_f1_11                 #   9:     goto   11
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #  11:     goto   12
l_f1_11:
    movl    $0, %eax                #  13:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -13(%ebp), %eax         #  15:     if     t5 = t6 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #  16:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #  18:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_16_if_true         #  20:     goto   16_if_true
    jmp     l_f1_17_if_false        #  21:     goto   17_if_false
l_f1_16_if_true:
l_f1_20_while_cond:
    jmp     l_f1_19                 #  24:     goto   19
    jmp     l_f1_20_while_cond      #  25:     goto   20_while_cond
l_f1_19:
    movl    $19148, %eax            #  27:     if     19148 < 82744 goto 23
    movl    $82744, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_23                
    jmp     l_f1_24                 #  28:     goto   24
l_f1_23:
    movl    $1, %eax                #  30:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_25                 #  31:     goto   25
l_f1_24:
    movl    $0, %eax                #  33:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f1_25:
    movzbl  -15(%ebp), %eax         #  35:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_15                 #  36:     goto   15
l_f1_17_if_false:
l_f1_15:
    call    dummyCHARfunc           #  39:     call   t8 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $98, %eax               #  40:     if     98 >= t8 goto 28_if_true
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_28_if_true        
    jmp     l_f1_29_if_false        #  41:     goto   29_if_false
l_f1_28_if_true:
    jmp     l_f1_27                 #  43:     goto   27
l_f1_29_if_false:
l_f1_27:

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
    #    -65(%ebp)   1  [ $t23      <char> %ebp-65 ]
    #    -66(%ebp)   1  [ $t24      <bool> %ebp-66 ]
    #    -67(%ebp)   1  [ $t5       <char> %ebp-67 ]
    #    -68(%ebp)   1  [ $t6       <char> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 58 of <array 4 of <array 7 of <array 44 of <array 80 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 92 of <array 92 of <array 4 of <array 2 of <array 4 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -67(%ebp)         
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #   5:     call   t6 <- dummyCHARfunc
    movb    %al, -68(%ebp)         
    movl    $98, %eax               #   6:     if     98 # t6 goto 5_if_true
    movzbl  -68(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   7:     goto   6_if_false
l_f2_5_if_true:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $24379, %eax            #  12:     mul    t8 <- 24379, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  13:     add    t9 <- t8, 95023
    movl    $95023, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  17:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     add    t12 <- t11, 7660
    movl    $7660, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  22:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     add    t15 <- t14, 24620
    movl    $24620, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  27:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  28:     add    t18 <- t17, 25287
    movl    $25287, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  30:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  31:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  32:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  33:     add    t22 <- v1, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $69147, %eax            #  34:     assign @t22 <- 69147
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_4                  #  35:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyCHARfunc           #  38:     call   t23 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    movl    $100, %eax              #  39:     if     100 >= t23 goto 10
    movzbl  -65(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_10                
    jmp     l_f2_11                 #  40:     goto   11
l_f2_10:
    movl    $1, %eax                #  42:     assign t24 <- 1
    movb    %al, -66(%ebp)         
    jmp     l_f2_12                 #  43:     goto   12
l_f2_11:
    movl    $0, %eax                #  45:     assign t24 <- 0
    movb    %al, -66(%ebp)         
l_f2_12:
    movzbl  -66(%ebp), %eax         #  47:     assign v3 <- t24
    movb    %al, 20(%ebp)          

l_f2_exit:
    # epilogue
    addl    $68, %esp               # remove locals
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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 92 of <array 92 of <array 4 of <array 2 of <array 4 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 58 of <array 4 of <array 7 of <array 44 of <array 80 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]

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
    movl    $4596, %eax             #   0:     if     4596 > 89694 goto 1_if_true
    movl    $89694, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
l_test_6_while_cond:
    movl    $97, %eax               #   5:     if     97 < 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_7_while_body    
    jmp     l_test_5                #   6:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
l_test_5:
    jmp     l_test_0                #  10:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_10_if_true       #  13:     goto   10_if_true
l_test_10_if_true:
    jmp     l_test_9                #  15:     goto   9
l_test_9:
l_test_15_while_cond:
    call    dummyCHARfunc           #  18:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  19:     if     t0 < 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_16_while_body   
    jmp     l_test_14               #  20:     goto   14
l_test_16_while_body:
    movl    $100, %eax              #  22:     if     100 = 97 goto 19_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_19_if_true      
    jmp     l_test_20_if_false      #  23:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  25:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_24_if_false      #  28:     goto   24_if_false
    jmp     l_test_22               #  29:     goto   22
l_test_24_if_false:
l_test_22:
    movl    $1, %eax                #  32:     if     1 # 0 goto 26
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_26              
    jmp     l_test_27               #  33:     goto   27
l_test_26:
    movl    $1, %eax                #  35:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_28               #  36:     goto   28
l_test_27:
    movl    $0, %eax                #  38:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_28:
    movzbl  -14(%ebp), %eax         #  40:     param  3 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  41:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  42:     param  2 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  43:     &()    t3 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  44:     param  1 <- t3
    pushl   %eax                   
    movl    $392, %eax              #  45:     param  0 <- 392
    pushl   %eax                   
    call    f2                      #  46:     call   t4 <- f2
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_test_15_while_cond    #  47:     goto   15_while_cond
l_test_14:
    jmp     l_test_31_if_true       #  49:     goto   31_if_true
    jmp     l_test_32_if_false      #  50:     goto   32_if_false
l_test_31_if_true:
    movl    $97, %eax               #  52:     assign v2 <- 97
    movb    %al, v2                
    jmp     l_test_30               #  53:     goto   30
l_test_32_if_false:
l_test_30:

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
v0:                                 # <array 58 of <array 4 of <array 7 of <array 44 of <array 80 of <int>>>>>>
    .long    5
    .long   58
    .long    4
    .long    7
    .long   44
    .long   80
    .skip 22865920
v1:                                 # <array 92 of <array 92 of <array 4 of <array 2 of <array 4 of <char>>>>>>
    .long    5
    .long   92
    .long   92
    .long    4
    .long    2
    .long    4
    .skip 270848
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
