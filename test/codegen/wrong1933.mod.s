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
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 55 of <array 80 of <array 65 of <array 37 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    movl    $88481, %eax            #   0:     add    t6 <- 88481, 68022
    movl    $68022, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   1:     add    t7 <- t6, 56210
    movl    $56210, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   2:     sub    t8 <- t7, 55400
    movl    $55400, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   4:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   5:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $16530, %eax            #   6:     mul    t10 <- 16530, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     add    t11 <- t10, 18609
    movl    $18609, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  11:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     add    t14 <- t13, 17546
    movl    $17546, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  16:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  17:     add    t17 <- t16, 36197
    movl    $36197, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  21:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t20 <- t19, 67500
    movl    $67500, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  25:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  26:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  27:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -88(%ebp), %eax         #  28:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_exit              
    call    ReadInt                 #  30:     call   t25 <- ReadInt
    movl    %eax, -76(%ebp)        

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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t14      <bool> %ebp-23 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    movl    $34656, %eax            #   0:     mul    t6 <- 34656, 38666
    movl    $38666, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     div    t7 <- t6, 96229
    movl    $96229, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     add    t8 <- t7, 17953
    movl    $17953, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     sub    t9 <- t8, 52070
    movl    $52070, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     add    t10 <- t9, 21977
    movl    $21977, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     sub    t11 <- t10, 44261
    movl    $44261, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $66212, %eax            #   6:     if     66212 <= t11 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   7:     goto   2
l_f1_1:
    movl    $1, %eax                #   9:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_3                  #  10:     goto   3
l_f1_2:
    movl    $0, %eax                #  12:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f1_3:
    movzbl  -21(%ebp), %eax         #  14:     return t12
    jmp     l_f1_exit              
    movl    $98, %eax               #  15:     assign v0 <- 98
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #  16:     call   t13 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $100, %eax              #  17:     if     100 < 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  18:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  20:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $97, %eax               #  23:     if     97 >= 100 goto 15
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_15                
    jmp     l_f1_16                 #  24:     goto   16
l_f1_15:
    movl    $1, %eax                #  26:     assign t14 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f1_17                 #  27:     goto   17
l_f1_16:
    movl    $0, %eax                #  29:     assign t14 <- 0
    movb    %al, -23(%ebp)         
l_f1_17:
    movzbl  -23(%ebp), %eax         #  31:     return t14
    jmp     l_f1_exit              
    jmp     l_f1_5                  #  32:     goto   5
l_f1_5:
l_f1_20_while_cond:
l_f1_24_while_cond:
    movl    $0, %eax                #  36:     if     0 = 0 goto 25_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_25_while_body     
    jmp     l_f1_23                 #  37:     goto   23
l_f1_25_while_body:
    jmp     l_f1_24_while_cond      #  39:     goto   24_while_cond
l_f1_23:
l_f1_28_while_cond:
    movl    $87101, %eax            #  42:     if     87101 <= 43822 goto 29_while_body
    movl    $43822, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_29_while_body     
    jmp     l_f1_27                 #  43:     goto   27
l_f1_29_while_body:
    jmp     l_f1_28_while_cond      #  45:     goto   28_while_cond
l_f1_27:
    jmp     l_f1_20_while_cond      #  47:     goto   20_while_cond

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 59 of <array 90 of <array 70 of <array 72 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 40 of <array 9 of <array 77 of <array 86 of <array 36 of <char>>>>>>> %ebp+20 ]
    #    -40(%ebp)   4  [ $v4       <int> %ebp-40 ]

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
    movl    $99, %eax               #   0:     if     99 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $57150, %eax            #   3:     return 57150
    jmp     l_f2_exit              
    jmp     l_f2_7_if_false         #   4:     goto   7_if_false
    jmp     l_f2_5                  #   5:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_10_if_false        #   8:     goto   10_if_false
    jmp     l_f2_8                  #   9:     goto   8
l_f2_10_if_false:
l_f2_8:
    call    ReadInt                 #  12:     call   t6 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f2_0                  #  13:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $36465, %eax            #  16:     div    t7 <- 36465, 37078
    movl    $37078, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     sub    t8 <- t7, 77831
    movl    $77831, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     sub    t9 <- t8, 61535
    movl    $61535, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     sub    t10 <- t9, 13304
    movl    $13304, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     return t10
    jmp     l_f2_exit              
    jmp     l_f2_15_if_false        #  21:     goto   15_if_false
    movl    $99, %eax               #  22:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    movl    $9903, %eax             #  23:     return 9903
    jmp     l_f2_exit              
    movl    $59505, %eax            #  24:     assign v4 <- 59505
    movl    %eax, -40(%ebp)        
    call    dummyBOOLfunc           #  25:     call   t11 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_f2_21_while_cond:
    jmp     l_f2_20                 #  27:     goto   20
    jmp     l_f2_21_while_cond      #  28:     goto   21_while_cond
l_f2_20:
    jmp     l_f2_25_if_false        #  30:     goto   25_if_false
    jmp     l_f2_23                 #  31:     goto   23
l_f2_25_if_false:
l_f2_23:
    jmp     l_f2_13                 #  34:     goto   13
l_f2_15_if_false:
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 40 of <array 9 of <array 77 of <array 86 of <array 36 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 90 of <array 59 of <array 90 of <array 70 of <array 72 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]

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
    movl    $47261, %eax            #   0:     if     47261 <= 30160 goto 1_if_true
    movl    $30160, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_4                #   3:     goto   4
l_test_4:
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #   8:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $79569, %eax            #   9:     if     79569 >= 9422 goto 9_if_true
    movl    $9422, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_9_if_true       
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
l_test_9_if_true:
    leal    v1, %eax                #  12:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  3 <- t1
    pushl   %eax                   
    movl    $99, %eax               #  14:     param  2 <- 99
    pushl   %eax                   
    leal    v0, %eax                #  15:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  1 <- t2
    pushl   %eax                   
    movl    $100, %eax              #  17:     param  0 <- 100
    pushl   %eax                   
    call    f2                      #  18:     call   t3 <- f2
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  19:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_8                #  20:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_exit            
    movl    $97, %eax               #  24:     if     97 < 100 goto 16
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_16              
    jmp     l_test_17               #  25:     goto   17
l_test_16:
    movl    $1, %eax                #  27:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_18               #  28:     goto   18
l_test_17:
    movl    $0, %eax                #  30:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_test_18:
    movzbl  -30(%ebp), %eax         #  32:     assign v2 <- t5
    movb    %al, v2                

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
v0:                                 # <array 90 of <array 59 of <array 90 of <array 70 of <array 72 of <int>>>>>>
    .long    5
    .long   90
    .long   59
    .long   90
    .long   70
    .long   72
    .skip 1044529408
v1:                                 # <array 40 of <array 9 of <array 77 of <array 86 of <array 36 of <char>>>>>>
    .long    5
    .long   40
    .long    9
    .long   77
    .long   86
    .long   36
    .skip 85821120
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
