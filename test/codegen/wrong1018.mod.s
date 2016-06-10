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
    #    -37(%ebp)   1  [ $t16      <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -53(%ebp)   1  [ $v2       <bool> %ebp-53 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $59292, %eax            #   0:     sub    t7 <- 59292, 84660
    movl    $84660, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   1:     if     t7 >= 11924 goto 1
    movl    $11924, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -45(%ebp)         
l_f0_3:
    movzbl  -45(%ebp), %eax         #   9:     assign v2 <- t8
    movb    %al, -53(%ebp)         
    movl    $10761, %eax            #  10:     div    t9 <- 10761, 57773
    movl    $57773, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  11:     mul    t10 <- t9, 5094
    movl    $5094, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     div    t11 <- t10, 68797
    movl    $68797, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     mul    t12 <- t11, 22772
    movl    $22772, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     sub    t13 <- t12, 86056
    movl    $86056, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     sub    t14 <- t13, 56086
    movl    $56086, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t15 <- t14, 51721
    movl    $51721, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $53089, %eax            #  17:     if     53089 > t15 goto 6
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_6                 
    jmp     l_f0_7                  #  18:     goto   7
l_f0_6:
    movl    $1, %eax                #  20:     assign t16 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f0_8                  #  21:     goto   8
l_f0_7:
    movl    $0, %eax                #  23:     assign t16 <- 0
    movb    %al, -37(%ebp)         
l_f0_8:
    movzbl  -37(%ebp), %eax         #  25:     assign v2 <- t16
    movb    %al, -53(%ebp)         
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]

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
    jmp     l_f1_0                  #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t7 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #   3:     call   t8 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #   6:     call   t9 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     param  0 <- t9
    pushl   %eax                   
    call    WriteInt                #   8:     call   WriteInt
    addl    $4, %esp               
    call    dummyINTfunc            #   9:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 73 of <array 28 of <array 69 of <array 58 of <array 21 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 96 of <array 56 of <array 60 of <array 80 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 7 of <array 19 of <array 59 of <array 45 of <array 91 of <char>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $47467, %eax            #   0:     add    t7 <- 47467, 51358
    movl    $51358, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   1:     add    t8 <- t7, 57720
    movl    $57720, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   2:     return t8
    jmp     l_f2_exit              
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   4:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   5:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $55744, %eax            #   6:     mul    t10 <- 55744, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     add    t11 <- t10, 86701
    movl    $86701, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   9:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  10:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  11:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     add    t14 <- t13, 14140
    movl    $14140, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  14:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  15:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  16:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  17:     add    t17 <- t16, 10323
    movl    $10323, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  19:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  20:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  21:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t20 <- t19, 71705
    movl    $71705, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  24:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  25:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  26:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    20(%ebp), %eax          #  27:     add    t24 <- v4, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $99, %eax               #  28:     assign @t24 <- 99
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $99, %eax               #  29:     if     99 < 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #  30:     goto   4_if_false
l_f2_3_if_true:
l_f2_7_while_cond:
    jmp     l_f2_6                  #  33:     goto   6
    jmp     l_f2_7_while_cond       #  34:     goto   7_while_cond
l_f2_6:
    movl    $91483, %eax            #  36:     return 91483
    jmp     l_f2_exit              
    jmp     l_f2_2                  #  37:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

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
l_test_1_while_cond:
    movl    $6571, %eax             #   1:     if     6571 < 98957 goto 2_while_body
    movl    $98957, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $93022, %eax            #   4:     assign v0 <- 93022
    movl    %eax, v0               
l_test_6_while_cond:
    jmp     l_test_5                #   6:     goto   5
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
l_test_9_while_cond:
    movl    $58487, %eax            #  10:     if     58487 <= 42350 goto 10_while_body
    movl    $42350, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:
l_test_13_while_cond:
    movl    $37544, %eax            #  16:     if     37544 # 82897 goto 14_while_body
    movl    $82897, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_14_while_body   
    jmp     l_test_12               #  17:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  19:     goto   13_while_cond
l_test_12:
    call    dummyCHARfunc           #  21:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
l_test_19_while_cond:
    movl    $100, %eax              #  24:     if     100 = 97 goto 20_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_20_while_body   
    jmp     l_test_18               #  25:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  27:     goto   19_while_cond
l_test_18:
    call    ReadInt                 #  29:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_1_while_cond     #  30:     goto   1_while_cond
l_test_0:
l_test_24_while_cond:
    jmp     l_test_25_while_body    #  33:     goto   25_while_body
l_test_25_while_body:
    jmp     l_test_27               #  35:     goto   27
l_test_27:
l_test_31_while_cond:
    movl    $98, %eax               #  38:     if     98 # 98 goto 32_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_32_while_body   
    jmp     l_test_30               #  39:     goto   30
l_test_32_while_body:
    jmp     l_test_31_while_cond    #  41:     goto   31_while_cond
l_test_30:
    movl    $98, %eax               #  43:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  44:     call   WriteChar
    addl    $4, %esp               
    movl    $23983, %eax            #  45:     assign v0 <- 23983
    movl    %eax, v0               
    jmp     l_test_24_while_cond    #  46:     goto   24_while_cond
    jmp     l_test_37               #  47:     goto   37
l_test_37:
    movl    $1, %eax                #  49:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_39               #  50:     goto   39
    movl    $0, %eax                #  51:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_39:
    movzbl  -21(%ebp), %eax         #  53:     assign v1 <- t2
    movb    %al, v1                
    movl    $95324, %eax            #  54:     add    t3 <- 95324, 77940
    movl    $77940, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  55:     sub    t4 <- t3, 1866
    movl    $1866, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  56:     add    t5 <- t4, 11609
    movl    $11609, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  57:     sub    t6 <- t5, 66625
    movl    $66625, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  58:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  59:     call   f0
    addl    $4, %esp               
    jmp     l_test_exit            

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
