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
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t13      <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t14      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t17      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t18      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t19      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t20      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t21      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t22      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t23      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t24      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t25      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t26      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t27      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t28      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t29      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t30      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t31      <char> %ebp-85 ]
    #    -92(%ebp)   4  [ $t32      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t33      <int> %ebp-96 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 7 of <array 8 of <array 3 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 3 of <array 8 of <array 4 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 5 of <array 4 of <array 2 of <array 9 of <char>>>>>>> %ebp+20 ]
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
    call    dummyBOOLfunc           #   0:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t10 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     return t11
    jmp     l_f0_exit              
    jmp     l_f0_8                  #  10:     goto   8
l_f0_8:
    movl    $60845, %eax            #  12:     if     60845 <= 20160 goto 12
    movl    $20160, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_12                
    jmp     l_f0_13                 #  13:     goto   13
l_f0_12:
    movl    $1, %eax                #  15:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_14                 #  16:     goto   14
l_f0_13:
    movl    $0, %eax                #  18:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f0_14:
    movzbl  -15(%ebp), %eax         #  20:     return t12
    jmp     l_f0_exit              
l_f0_17_while_cond:
    jmp     l_f0_16                 #  22:     goto   16
    jmp     l_f0_17_while_cond      #  23:     goto   17_while_cond
l_f0_16:
    call    dummyCHARfunc           #  25:     call   t13 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $100, %eax              #  26:     if     100 >= 100 goto 21
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_21                
    jmp     l_f0_22                 #  27:     goto   22
l_f0_21:
    movl    $1, %eax                #  29:     assign t14 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_23                 #  30:     goto   23
l_f0_22:
    movl    $0, %eax                #  32:     assign t14 <- 0
    movb    %al, -17(%ebp)         
l_f0_23:
    movl    $2, %eax                #  34:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  35:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  36:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $67482, %eax            #  37:     mul    t16 <- 67482, t15
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  38:     add    t17 <- t16, 76830
    movl    $76830, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  39:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  40:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  41:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  42:     mul    t19 <- t17, t18
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  43:     add    t20 <- t19, 77469
    movl    $77469, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  44:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  45:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  46:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  47:     mul    t22 <- t20, t21
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  48:     add    t23 <- t22, 65140
    movl    $65140, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  49:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  50:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  51:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  52:     mul    t25 <- t23, t24
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  53:     add    t26 <- t25, 43360
    movl    $43360, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  54:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  55:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  56:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  57:     add    t29 <- t27, t28
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    16(%ebp), %eax          #  58:     add    t30 <- v2, t29
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movzbl  -17(%ebp), %eax         #  59:     assign @t30 <- t14
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $1, %eax                #  60:     return 1
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  61:     call   t31 <- dummyCHARfunc
    movb    %al, -85(%ebp)         
    jmp     l_f0_5                  #  62:     goto   5
l_f0_5:
    movl    $13454, %eax            #  64:     add    t32 <- 13454, 95019
    movl    $95019, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  65:     sub    t33 <- t32, 14933
    movl    $14933, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  66:     assign v4 <- t33
    movl    %eax, -100(%ebp)       

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 6 of <array 3 of <array 4 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 10 of <array 7 of <array 2 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -60(%ebp)   4  [ $v3       <int> %ebp-60 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     if     99 = 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   3:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     assign v2 <- t10
    movb    %al, 16(%ebp)          
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $52747, %eax            #   8:     sub    t11 <- 52747, 70426
    movl    $70426, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     sub    t12 <- t11, 25691
    movl    $25691, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     sub    t13 <- t12, 37258
    movl    $37258, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     assign v3 <- t13
    movl    %eax, -60(%ebp)        
    call    dummyINTfunc            #  12:     call   t14 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     mul    t15 <- t14, 80012
    movl    $80012, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     mul    t16 <- t15, 78377
    movl    $78377, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     mul    t17 <- t16, 54829
    movl    $54829, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  16:     div    t18 <- t17, 62511
    movl    $62511, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  17:     sub    t19 <- t18, 39323
    movl    $39323, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  18:     add    t20 <- t19, 55824
    movl    $55824, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  19:     param  0 <- t20
    pushl   %eax                   
    call    WriteInt                #  20:     call   WriteInt
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 6 of <array 9 of <array 4 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    movl    $98, %eax               #   0:     assign v4 <- 98
    movb    %al, -15(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_0                  #   2:     goto   0
l_f2_0:
    call    dummyCHARfunc           #   4:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     assign v4 <- t11
    movb    %al, -15(%ebp)         
l_f2_7_while_cond:
    jmp     l_f2_9                  #   7:     goto   9
    jmp     l_f2_8_while_body       #   8:     goto   8_while_body
l_f2_9:
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  11:     goto   7_while_cond

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <array 5 of <array 4 of <array 2 of <array 9 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 3 of <array 8 of <array 4 of <array 7 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 7 of <array 8 of <array 3 of <array 3 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t8       <bool> %ebp-42 ]
    #    -43(%ebp)   1  [ $t9       <char> %ebp-43 ]

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
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    leal    v2, %eax                #   2:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  3 <- t1
    pushl   %eax                   
    leal    v1, %eax                #   4:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  2 <- t2
    pushl   %eax                   
    leal    v0, %eax                #   6:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  1 <- t3
    pushl   %eax                   
    movl    $75578, %eax            #   8:     mul    t4 <- 75578, 90154
    movl    $90154, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     sub    t5 <- t4, 21921
    movl    $21921, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     add    t6 <- t5, 25530
    movl    $25530, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $25861, %eax            #  11:     if     25861 <= t6 goto 3
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_3               
    jmp     l_test_4                #  12:     goto   4
l_test_3:
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_test_5                #  15:     goto   5
l_test_4:
    movl    $0, %eax                #  17:     assign t7 <- 0
    movb    %al, -41(%ebp)         
l_test_5:
    movzbl  -41(%ebp), %eax         #  19:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  20:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -42(%ebp)         
    jmp     l_test_9_if_false       #  21:     goto   9_if_false
    movl    $98467, %eax            #  22:     assign v3 <- 98467
    movl    %eax, v3               
l_test_13_while_cond:
    jmp     l_test_12               #  24:     goto   12
    jmp     l_test_13_while_cond    #  25:     goto   13_while_cond
l_test_12:
    call    dummyCHARfunc           #  27:     call   t9 <- dummyCHARfunc
    movb    %al, -43(%ebp)         
    jmp     l_test_7                #  28:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_exit            

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
v0:                                 # <array 10 of <array 7 of <array 8 of <array 3 of <array 3 of <char>>>>>>
    .long    5
    .long   10
    .long    7
    .long    8
    .long    3
    .long    3
    .skip 5040
v1:                                 # <array 9 of <array 3 of <array 8 of <array 4 of <array 7 of <bool>>>>>>
    .long    5
    .long    9
    .long    3
    .long    8
    .long    4
    .long    7
    .skip 6048
v2:                                 # <array 7 of <array 5 of <array 4 of <array 2 of <array 9 of <char>>>>>>
    .long    5
    .long    7
    .long    5
    .long    4
    .long    2
    .long    9
    .skip 2520
v3:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
