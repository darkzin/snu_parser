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
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -54(%ebp)   1  [ $t20      <char> %ebp-54 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t3       <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 58 of <array 42 of <array 32 of <array 12 of <array 40 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 32 of <array 87 of <array 42 of <array 14 of <array 92 of <char>>>>>>> %ebp+16 ]
    #    -97(%ebp)   1  [ $v3       <bool> %ebp-97 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #   1:     if     t2 >= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $81111, %eax            #   5:     if     81111 < 12326 goto 6_while_body
    movl    $12326, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_6_while_body      
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   8:     goto   5_while_cond
l_f0_4:
l_f0_9_while_cond:
    movl    $87031, %eax            #  11:     if     87031 = 87866 goto 10_while_body
    movl    $87866, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_10_while_body     
    jmp     l_f0_8                  #  12:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  14:     goto   9_while_cond
l_f0_8:
    movl    $32105, %eax            #  16:     if     32105 = 12497 goto 13
    movl    $12497, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_13                
    jmp     l_f0_14                 #  17:     goto   14
l_f0_13:
    movl    $1, %eax                #  19:     assign t3 <- 1
    movb    %al, -69(%ebp)         
    jmp     l_f0_15                 #  20:     goto   15
l_f0_14:
    movl    $0, %eax                #  22:     assign t3 <- 0
    movb    %al, -69(%ebp)         
l_f0_15:
    movl    $2, %eax                #  24:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $53420, %eax            #  27:     mul    t5 <- 53420, t4
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  28:     add    t6 <- t5, 87053
    movl    $87053, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  30:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  31:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  32:     mul    t8 <- t6, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  33:     add    t9 <- t8, 24891
    movl    $24891, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  35:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  36:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -96(%ebp), %eax         #  37:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  38:     add    t12 <- t11, 40415
    movl    $40415, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  39:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  40:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  41:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  42:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  43:     add    t15 <- t14, 48375
    movl    $48375, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  44:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  45:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  46:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  47:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  48:     add    t19 <- v1, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -69(%ebp), %eax         #  49:     assign @t19 <- t3
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_0                  #  50:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_19_if_false        #  53:     goto   19_if_false
l_f0_21_while_cond:
    movl    $97, %eax               #  55:     if     97 # 98 goto 24_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_24_if_true        
    jmp     l_f0_25_if_false        #  56:     goto   25_if_false
l_f0_24_if_true:
    jmp     l_f0_23                 #  58:     goto   23
l_f0_25_if_false:
l_f0_23:
l_f0_28_while_cond:
    jmp     l_f0_28_while_cond      #  62:     goto   28_while_cond
    call    dummyCHARfunc           #  63:     call   t20 <- dummyCHARfunc
    movb    %al, -54(%ebp)         
    jmp     l_f0_21_while_cond      #  64:     goto   21_while_cond
    jmp     l_f0_17                 #  65:     goto   17
l_f0_19_if_false:
l_f0_17:
    movl    $75218, %eax            #  68:     add    t21 <- 75218, 98388
    movl    $98388, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  69:     add    t22 <- t21, 90839
    movl    $90839, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  70:     add    t23 <- t22, 65844
    movl    $65844, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  71:     return t23
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t6       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t7       <bool> %ebp-24 ]

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
    movl    $29031, %eax            #   0:     div    t2 <- 29031, 67432
    movl    $67432, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $62517, %eax            #   1:     mul    t3 <- 62517, 62689
    movl    $62689, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t2 < t3 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   3:     goto   2
l_f1_1:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f1_3:
    movzbl  -21(%ebp), %eax         #  10:     return t4
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  11:     call   t5 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $98, %eax               #  12:     if     98 = t5 goto 6
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_7                  #  13:     goto   7
l_f1_6:
    movl    $1, %eax                #  15:     assign t6 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f1_8                  #  16:     goto   8
l_f1_7:
    movl    $0, %eax                #  18:     assign t6 <- 0
    movb    %al, -23(%ebp)         
l_f1_8:
    movzbl  -23(%ebp), %eax         #  20:     return t6
    jmp     l_f1_exit              
l_f1_11_while_cond:
    jmp     l_f1_14                 #  22:     goto   14
    jmp     l_f1_14                 #  23:     goto   14
    jmp     l_f1_14                 #  24:     goto   14
l_f1_14:
    movl    $1, %eax                #  26:     assign t7 <- 1
    movb    %al, -24(%ebp)         
    jmp     l_f1_16                 #  27:     goto   16
    movl    $0, %eax                #  28:     assign t7 <- 0
    movb    %al, -24(%ebp)         
l_f1_16:
    movzbl  -24(%ebp), %eax         #  30:     if     t7 = 1 goto 12_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_12_while_body     
    jmp     l_f1_10                 #  31:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  33:     goto   11_while_cond
l_f1_10:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]

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
l_f2_1_while_cond:
    call    f1                      #   1:     call   t2 <- f1
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t2 = 1 goto 11
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11                
    jmp     l_f2_5                  #   3:     goto   5
l_f2_11:
    jmp     l_f2_5                  #   5:     goto   5
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_6                  #   7:     goto   6
l_f2_5:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_6:
    movl    $1, %eax                #  11:     if     1 # t3 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  14:     goto   1_while_cond
l_f2_0:
    movl    $24227, %eax            #  16:     sub    t4 <- 24227, 68241
    movl    $68241, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $81847, %eax            #  17:     mul    t5 <- 81847, 34702
    movl    $34702, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     div    t6 <- t5, 38103
    movl    $38103, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t7 <- t4, t6
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     return t7
    jmp     l_f2_exit              
    call    WriteLn                 #  21:     call   WriteLn

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $6890, %eax             #   1:     if     6890 <= 81493 goto 2_if_true
    movl    $81493, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $42913, %eax            #   4:     if     42913 < 84702 goto 6_if_true
    movl    $84702, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   7:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_9                #  10:     goto   9
l_test_9:
    jmp     l_test_1                #  12:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $2319, %eax             #  15:     add    t1 <- 2319, 50260
    movl    $50260, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     assign v0 <- t1
    movl    %eax, v0               
    movl    $99, %eax               #  17:     if     99 <= 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_14_if_true      
    jmp     l_test_15_if_false      #  18:     goto   15_if_false
l_test_14_if_true:
l_test_18_while_cond:
    jmp     l_test_18_while_cond    #  21:     goto   18_while_cond
    jmp     l_test_20               #  22:     goto   20
l_test_20:
    jmp     l_test_13               #  24:     goto   13
l_test_15_if_false:
l_test_13:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
