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
    #    -77(%ebp)   1  [ $t26      <char> %ebp-77 ]
    #    -78(%ebp)   1  [ $t27      <char> %ebp-78 ]
    #    -79(%ebp)   1  [ $t9       <bool> %ebp-79 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 9 of <array 9 of <array 7 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 10 of <array 8 of <array 4 of <array 8 of <array 10 of <char>>>>>>> %ebp+16 ]
    #    -80(%ebp)   1  [ $v5       <char> %ebp-80 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t9 <- 1
    movb    %al, -79(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t9 <- 0
    movb    %al, -79(%ebp)         
l_f0_3:
    movzbl  -79(%ebp), %eax         #   8:     assign v2 <- t9
    movb    %al, 8(%ebp)           
l_f0_8_while_cond:
    movl    $0, %eax                #  10:     if     0 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_9_while_body      
    jmp     l_f0_7                  #  11:     goto   7
l_f0_9_while_body:
l_f0_12_while_cond:
    movl    $92559, %eax            #  14:     if     92559 >= 95733 goto 13_while_body
    movl    $95733, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_13_while_body     
    jmp     l_f0_11                 #  15:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  17:     goto   12_while_cond
l_f0_11:
    movl    $2, %eax                #  19:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  21:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $86714, %eax            #  22:     mul    t11 <- 86714, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     add    t12 <- t11, 17265
    movl    $17265, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  25:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  26:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  27:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     add    t15 <- t14, 47808
    movl    $47808, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  30:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  31:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  32:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  33:     add    t18 <- t17, 83843
    movl    $83843, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  35:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  36:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  37:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  38:     add    t21 <- t20, 33720
    movl    $33720, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  39:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  40:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  41:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  42:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  43:     add    t25 <- v4, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $99, %eax               #  44:     assign @t25 <- 99
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  45:     call   t26 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    jmp     l_f0_8_while_cond       #  46:     goto   8_while_cond
l_f0_7:
    call    dummyCHARfunc           #  48:     call   t27 <- dummyCHARfunc
    movb    %al, -78(%ebp)         
    movzbl  -78(%ebp), %eax         #  49:     return t27
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $68, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
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
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 10 of <array 2 of <array 1 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 7 of <array 9 of <array 4 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]
    #    -89(%ebp)   1  [ $v6       <bool> %ebp-89 ]

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
    call    dummyINTfunc            #   0:     call   t9 <- dummyINTfunc
    movl    %eax, -88(%ebp)        
    movl    $99, %eax               #   1:     assign v5 <- 99
    movb    %al, 20(%ebp)          
    jmp     l_f1_4                  #   2:     goto   4
    movl    $1, %eax                #   3:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_5                  #   4:     goto   5
l_f1_4:
    movl    $0, %eax                #   6:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_5:
    movl    $10139, %eax            #   8:     add    t11 <- 10139, 54338
    movl    $54338, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  11:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  12:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     add    t14 <- t13, 47036
    movl    $47036, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  16:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  17:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  18:     add    t17 <- t16, 52736
    movl    $52736, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  21:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  22:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  23:     add    t20 <- t19, 94643
    movl    $94643, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  26:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  27:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  28:     add    t23 <- t22, 83553
    movl    $83553, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  29:     mul    t24 <- t23, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  30:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  31:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  32:     add    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  33:     add    t27 <- v3, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movzbl  -13(%ebp), %eax         #  34:     assign @t27 <- t10
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_exit              
    movl    $68814, %eax            #   1:     if     68814 = 96115 goto 5_if_true
    movl    $96115, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   2:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $23379, %eax            #   7:     if     23379 > 71106 goto 9_if_true
    movl    $71106, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   8:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  10:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_12                 #  13:     goto   12
l_f2_12:
l_f2_16_while_cond:
    jmp     l_f2_16_while_cond      #  16:     goto   16_while_cond
    movl    $59123, %eax            #  17:     if     59123 <= 60333 goto 19_if_true
    movl    $60333, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  18:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  20:     goto   18
l_f2_20_if_false:
l_f2_18:
l_f2_23_while_cond:
    jmp     l_f2_22                 #  24:     goto   22
    jmp     l_f2_23_while_cond      #  25:     goto   23_while_cond
l_f2_22:
    jmp     l_f2_25                 #  27:     goto   25
l_f2_25:
    jmp     l_f2_0                  #  29:     goto   0
l_f2_0:
l_f2_29_while_cond:
    jmp     l_f2_30_while_body      #  32:     goto   30_while_body
    jmp     l_f2_30_while_body      #  33:     goto   30_while_body
    jmp     l_f2_30_while_body      #  34:     goto   30_while_body
    jmp     l_f2_30_while_body      #  35:     goto   30_while_body
l_f2_30_while_body:
    jmp     l_f2_29_while_cond      #  37:     goto   29_while_cond
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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 7 of <array 9 of <array 4 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 10 of <array 2 of <array 1 of <array 1 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 10 of <array 8 of <array 4 of <array 8 of <array 10 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 8 of <array 9 of <array 9 of <array 7 of <array 9 of <int>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t8       <char> %ebp-38 ]

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
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_test_2_while_cond:
    movl    $99, %eax               #   4:     if     99 <= 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_3_while_body    
    jmp     l_test_1                #   5:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    jmp     l_test_5                #   8:     goto   5
    jmp     l_test_6_while_cond     #   9:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    movl    $93485, %eax            #  12:     assign v0 <- 93485
    movl    %eax, v0               
    movl    $1, %eax                #  13:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_2_while_cond     #  14:     goto   2_while_cond
l_test_1:
    movl    $99, %eax               #  16:     param  3 <- 99
    pushl   %eax                   
    movl    $100, %eax              #  17:     param  2 <- 100
    pushl   %eax                   
    leal    v3, %eax                #  18:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     param  1 <- t1
    pushl   %eax                   
    leal    v2, %eax                #  20:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  22:     call   t3 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    call    dummyCHARfunc           #  23:     call   t4 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  24:     assign v4 <- t4
    movb    %al, v4                
    movl    $60941, %eax            #  25:     assign v0 <- 60941
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $100, %eax              #  27:     assign v4 <- 100
    movb    %al, v4                
    movl    $97, %eax               #  28:     if     97 <= 100 goto 20_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_20_if_true      
    jmp     l_test_21_if_false      #  29:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  31:     goto   19
l_test_21_if_false:
l_test_19:
    leal    v6, %eax                #  34:     &()    t5 <- v6
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  35:     param  2 <- t5
    pushl   %eax                   
    leal    v5, %eax                #  36:     &()    t6 <- v5
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  37:     param  1 <- t6
    pushl   %eax                   
    movl    $100, %eax              #  38:     if     100 < 100 goto 24
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_24              
    jmp     l_test_25               #  39:     goto   25
l_test_24:
    movl    $1, %eax                #  41:     assign t7 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_26               #  42:     goto   26
l_test_25:
    movl    $0, %eax                #  44:     assign t7 <- 0
    movb    %al, -37(%ebp)         
l_test_26:
    movzbl  -37(%ebp), %eax         #  46:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  47:     call   t8 <- f0
    addl    $12, %esp              
    movb    %al, -38(%ebp)         
    jmp     l_test_13               #  48:     goto   13
l_test_13:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 9 of <array 10 of <array 2 of <array 1 of <array 1 of <int>>>>>>
    .long    5
    .long    9
    .long   10
    .long    2
    .long    1
    .long    1
    .skip  720
v3:                                 # <array 10 of <array 7 of <array 9 of <array 4 of <array 7 of <bool>>>>>>
    .long    5
    .long   10
    .long    7
    .long    9
    .long    4
    .long    7
    .skip 17640
v4:                                 # <char>
    .skip    1
    .align   4
v5:                                 # <array 8 of <array 9 of <array 9 of <array 7 of <array 9 of <int>>>>>>
    .long    5
    .long    8
    .long    9
    .long    9
    .long    7
    .long    9
    .skip 163296
v6:                                 # <array 10 of <array 8 of <array 4 of <array 8 of <array 10 of <char>>>>>>
    .long    5
    .long   10
    .long    8
    .long    4
    .long    8
    .long   10
    .skip 25600








    # end of global data section
    #-----------------------------------------

    .end
##################################################
