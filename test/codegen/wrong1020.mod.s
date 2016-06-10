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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 24 of <array 76 of <array 90 of <array 84 of <array 20 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   2:     if     98 # t4 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_4                  #   5:     goto   4
l_f0_4:
    leal    _str_1, %eax            #   7:     &()    t5 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   9:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_10_if_false        #  12:     goto   10_if_false
    movl    $36887, %eax            #  13:     return 36887
    jmp     l_f0_exit              
    movl    $41218, %eax            #  14:     mul    t6 <- 41218, 5003
    movl    $5003, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t7 <- t6, 67958
    movl    $67958, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     mul    t8 <- t7, 49344
    movl    $49344, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     return t8
    jmp     l_f0_exit              
    jmp     l_f0_8                  #  18:     goto   8
l_f0_10_if_false:
l_f0_8:
    movl    $1, %eax                #  21:     assign v2 <- 1
    movb    %al, 16(%ebp)          

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t26      <bool> %ebp-77 ]
    #    -78(%ebp)   1  [ $t27      <bool> %ebp-78 ]
    #    -79(%ebp)   1  [ $t28      <char> %ebp-79 ]
    #    -80(%ebp)   1  [ $t4       <bool> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t6       <bool> %ebp-85 ]
    #    -86(%ebp)   1  [ $t7       <bool> %ebp-86 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 41 of <array 66 of <array 89 of <array 69 of <array 38 of <char>>>>>>> %ebp+12 ]
    #    -97(%ebp)   1  [ $v2       <char> %ebp-97 ]

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
    jmp     l_f1_1                  #   0:     goto   1
    jmp     l_f1_2                  #   1:     goto   2
    jmp     l_f1_2                  #   2:     goto   2
    jmp     l_f1_2                  #   3:     goto   2
    jmp     l_f1_2                  #   4:     goto   2
    jmp     l_f1_2                  #   5:     goto   2
l_f1_1:
    movl    $1, %eax                #   7:     assign t4 <- 1
    movb    %al, -80(%ebp)         
    jmp     l_f1_3                  #   8:     goto   3
l_f1_2:
    movl    $0, %eax                #  10:     assign t4 <- 0
    movb    %al, -80(%ebp)         
l_f1_3:
    movzbl  -80(%ebp), %eax         #  12:     return t4
    jmp     l_f1_exit              
    call    ReadInt                 #  13:     call   t5 <- ReadInt
    movl    %eax, -84(%ebp)        
    movl    $4513, %eax             #  14:     if     4513 >= t5 goto 14
    movl    -84(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_14                
    jmp     l_f1_15                 #  15:     goto   15
l_f1_14:
    movl    $1, %eax                #  17:     assign t6 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f1_16                 #  18:     goto   16
l_f1_15:
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -85(%ebp)         
l_f1_16:
    movzbl  -85(%ebp), %eax         #  22:     return t6
    jmp     l_f1_exit              
l_f1_19_while_cond:
    jmp     l_f1_18                 #  24:     goto   18
    jmp     l_f1_23_if_false        #  25:     goto   23_if_false
    jmp     l_f1_21                 #  26:     goto   21
l_f1_23_if_false:
l_f1_21:
    movl    $97, %eax               #  29:     if     97 <= 97 goto 25
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_25                
    jmp     l_f1_26                 #  30:     goto   26
l_f1_25:
    movl    $1, %eax                #  32:     assign t7 <- 1
    movb    %al, -86(%ebp)         
    jmp     l_f1_27                 #  33:     goto   27
l_f1_26:
    movl    $0, %eax                #  35:     assign t7 <- 0
    movb    %al, -86(%ebp)         
l_f1_27:
    movzbl  -86(%ebp), %eax         #  37:     return t7
    jmp     l_f1_exit              
    movl    $2, %eax                #  38:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  39:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  40:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $64851, %eax            #  41:     mul    t9 <- 64851, t8
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  42:     add    t10 <- t9, 77415
    movl    $77415, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  43:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  44:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  45:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  46:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  47:     add    t13 <- t12, 19712
    movl    $19712, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  48:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  49:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  50:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  51:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  52:     add    t16 <- t15, 36575
    movl    $36575, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  53:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  54:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  55:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  56:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  57:     add    t19 <- t18, 11846
    movl    $11846, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  58:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  59:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  60:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  61:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  62:     add    t23 <- v1, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $97, %eax               #  63:     assign @t23 <- 97
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $1, %eax                #  64:     return 1
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  65:     call   t24 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movl    $0, %eax                #  66:     return 0
    jmp     l_f1_exit              
    call    dummyINTfunc            #  67:     call   t25 <- dummyINTfunc
    movl    %eax, -76(%ebp)        
    movl    $78726, %eax            #  68:     if     78726 > 44513 goto 35
    movl    $44513, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_35                
    jmp     l_f1_36                 #  69:     goto   36
l_f1_35:
    movl    $1, %eax                #  71:     assign t26 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f1_37                 #  72:     goto   37
l_f1_36:
    movl    $0, %eax                #  74:     assign t26 <- 0
    movb    %al, -77(%ebp)         
l_f1_37:
    movzbl  -77(%ebp), %eax         #  76:     assign v0 <- t26
    movb    %al, 8(%ebp)           
    call    dummyBOOLfunc           #  77:     call   t27 <- dummyBOOLfunc
    movb    %al, -78(%ebp)         
    call    dummyCHARfunc           #  78:     call   t28 <- dummyCHARfunc
    movb    %al, -79(%ebp)         
    movl    $61945, %eax            #  79:     if     61945 >= 92435 goto 42_if_true
    movl    $92435, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_42_if_true        
    jmp     l_f1_43_if_false        #  80:     goto   43_if_false
l_f1_42_if_true:
    jmp     l_f1_41                 #  82:     goto   41
l_f1_43_if_false:
l_f1_41:
    jmp     l_f1_19_while_cond      #  85:     goto   19_while_cond
l_f1_18:

l_f1_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $v0       <char> %ebp-18 ]

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
    movl    $16700, %eax            #   0:     div    t4 <- 16700, 67094
    movl    $67094, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $23178, %eax            #   1:     if     23178 > t4 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $893, %eax              #   4:     if     893 >= 71615 goto 5_if_true
    movl    $71615, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_8                  #  10:     goto   8
l_f2_8:
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  15:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #  16:     assign v0 <- 100
    movb    %al, -18(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]

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
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    call    dummyBOOLfunc           #   5:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   6:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_exit            
l_test_8_while_cond:
    movl    $55258, %eax            #   9:     if     55258 < 71531 goto 9_while_body
    movl    $71531, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_9_while_body    
    jmp     l_test_7                #  10:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  12:     goto   8_while_cond
l_test_7:
    jmp     l_test_1                #  14:     goto   1
l_test_3_if_false:
l_test_1:
l_test_12_while_cond:
    jmp     l_test_13_while_body    #  18:     goto   13_while_body
    jmp     l_test_11               #  19:     goto   11
l_test_13_while_body:
l_test_17_while_cond:
    movl    $98, %eax               #  22:     if     98 < 98 goto 18_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_18_while_body   
    jmp     l_test_16               #  23:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  25:     goto   17_while_cond
l_test_16:
l_test_21_while_cond:
    jmp     l_test_20               #  28:     goto   20
    jmp     l_test_21_while_cond    #  29:     goto   21_while_cond
l_test_20:
    jmp     l_test_25_if_false      #  31:     goto   25_if_false
    jmp     l_test_23               #  32:     goto   23
l_test_25_if_false:
l_test_23:
    call    dummyINTfunc            #  35:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_28_while_cond:
    jmp     l_test_28_while_cond    #  37:     goto   28_while_cond
    jmp     l_test_30               #  38:     goto   30
l_test_30:
    movl    $0, %eax                #  40:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_exit            
    movl    $99, %eax               #  42:     assign v0 <- 99
    movb    %al, v0                
    call    f2                      #  43:     call   t3 <- f2
    movb    %al, -21(%ebp)         
    jmp     l_test_12_while_cond    #  44:     goto   12_while_cond
l_test_11:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
