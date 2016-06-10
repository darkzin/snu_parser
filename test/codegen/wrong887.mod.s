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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 5 of <array 5 of <array 1 of <array 10 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t4
    movl    %eax, 12(%ebp)         
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t25      <char> %ebp-73 ]
    #    -74(%ebp)   1  [ $t3       <bool> %ebp-74 ]
    #    -75(%ebp)   1  [ $t4       <bool> %ebp-75 ]
    #    -76(%ebp)   1  [ $t5       <bool> %ebp-76 ]
    #    -77(%ebp)   1  [ $t6       <bool> %ebp-77 ]
    #    -78(%ebp)   1  [ $t7       <bool> %ebp-78 ]
    #    -79(%ebp)   1  [ $t8       <bool> %ebp-79 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 8 of <array 7 of <array 2 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #    -85(%ebp)   1  [ $v1       <bool> %ebp-85 ]
    #    -86(%ebp)   1  [ $v2       <char> %ebp-86 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -74(%ebp)         
    movzbl  -74(%ebp), %eax         #   1:     if     t3 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_6:
    jmp     l_f1_2                  #   4:     goto   2
    jmp     l_f1_2                  #   5:     goto   2
    jmp     l_f1_2                  #   6:     goto   2
    movl    $1, %eax                #   7:     assign t4 <- 1
    movb    %al, -75(%ebp)         
    jmp     l_f1_3                  #   8:     goto   3
l_f1_2:
    movl    $0, %eax                #  10:     assign t4 <- 0
    movb    %al, -75(%ebp)         
l_f1_3:
    movzbl  -75(%ebp), %eax         #  12:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_9_if_false         #  13:     goto   9_if_false
    jmp     l_f1_10                 #  14:     goto   10
l_f1_10:
l_f1_14_while_cond:
    jmp     l_f1_14_while_cond      #  17:     goto   14_while_cond
    movl    $98, %eax               #  18:     if     98 < 97 goto 17
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_17                
    jmp     l_f1_18                 #  19:     goto   18
l_f1_17:
    movl    $1, %eax                #  21:     assign t5 <- 1
    movb    %al, -76(%ebp)         
    jmp     l_f1_19                 #  22:     goto   19
l_f1_18:
    movl    $0, %eax                #  24:     assign t5 <- 0
    movb    %al, -76(%ebp)         
l_f1_19:
    movzbl  -76(%ebp), %eax         #  26:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_21                 #  27:     goto   21
l_f1_21:
    movl    $0, %eax                #  29:     assign v1 <- 0
    movb    %al, -85(%ebp)         
    jmp     l_f1_27_if_false        #  30:     goto   27_if_false
    jmp     l_f1_25                 #  31:     goto   25
l_f1_27_if_false:
l_f1_25:
    movl    $99, %eax               #  34:     if     99 # 99 goto 29
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_29                
    jmp     l_f1_30                 #  35:     goto   30
l_f1_29:
    movl    $1, %eax                #  37:     assign t6 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f1_31                 #  38:     goto   31
l_f1_30:
    movl    $0, %eax                #  40:     assign t6 <- 0
    movb    %al, -77(%ebp)         
l_f1_31:
    movzbl  -77(%ebp), %eax         #  42:     assign v1 <- t6
    movb    %al, -85(%ebp)         
    call    dummyBOOLfunc           #  43:     call   t7 <- dummyBOOLfunc
    movb    %al, -78(%ebp)         
l_f1_35_while_cond:
    movl    $100, %eax              #  45:     if     100 < 98 goto 36_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_36_while_body     
    jmp     l_f1_34                 #  46:     goto   34
l_f1_36_while_body:
    jmp     l_f1_35_while_cond      #  48:     goto   35_while_cond
l_f1_34:
    movl    $98, %eax               #  50:     if     98 <= 99 goto 39
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_39                
    jmp     l_f1_40                 #  51:     goto   40
l_f1_39:
    movl    $1, %eax                #  53:     assign t8 <- 1
    movb    %al, -79(%ebp)         
    jmp     l_f1_41                 #  54:     goto   41
l_f1_40:
    movl    $0, %eax                #  56:     assign t8 <- 0
    movb    %al, -79(%ebp)         
l_f1_41:
    movl    $2, %eax                #  58:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  59:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  60:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $1222, %eax             #  61:     mul    t10 <- 1222, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  62:     add    t11 <- t10, 47323
    movl    $47323, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  63:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  64:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  65:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  66:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  67:     add    t14 <- t13, 34584
    movl    $34584, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  68:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  69:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  70:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  71:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  72:     add    t17 <- t16, 32801
    movl    $32801, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  73:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  74:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  75:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  76:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  77:     add    t20 <- t19, 84333
    movl    $84333, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  78:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  79:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  80:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  81:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  82:     add    t24 <- v0, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -79(%ebp), %eax         #  83:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_7                  #  84:     goto   7
l_f1_9_if_false:
l_f1_7:
    call    dummyCHARfunc           #  87:     call   t25 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    movl    $97, %eax               #  88:     if     97 = t25 goto 44_if_true
    movzbl  -73(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_44_if_true        
    jmp     l_f1_45_if_false        #  89:     goto   45_if_false
l_f1_44_if_true:
    movl    $97, %eax               #  91:     assign v2 <- 97
    movb    %al, -86(%ebp)         
    jmp     l_f1_43                 #  92:     goto   43
l_f1_45_if_false:
l_f1_43:

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $v0       <bool> %ebp-26 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
l_f2_4_while_cond:
    movl    $98, %eax               #   3:     if     98 >= 100 goto 5_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_5_while_body      
    jmp     l_f2_3                  #   4:     goto   3
l_f2_5_while_body:
    jmp     l_f2_4_while_cond       #   6:     goto   4_while_cond
l_f2_3:
    jmp     l_f2_7                  #   8:     goto   7
l_f2_7:
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
l_f2_11_while_cond:
    movl    $29626, %eax            #  13:     add    t3 <- 29626, 18121
    movl    $18121, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     add    t4 <- t3, 95570
    movl    $95570, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     if     t4 > 37236 goto 12_while_body
    movl    $37236, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_12_while_body     
    jmp     l_f2_10                 #  16:     goto   10
l_f2_12_while_body:
    jmp     l_f2_16_if_false        #  18:     goto   16_if_false
    jmp     l_f2_14                 #  19:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_11_while_cond      #  22:     goto   11_while_cond
l_f2_10:
l_f2_18_while_cond:
    movl    $97, %eax               #  25:     if     97 >= 97 goto 19_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_19_while_body     
    jmp     l_f2_17                 #  26:     goto   17
l_f2_19_while_body:
    call    dummyINTfunc            #  28:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #  29:     call   t6 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $99, %eax               #  30:     return 99
    jmp     l_f2_exit              
    movl    $1, %eax                #  31:     assign v0 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_18_while_cond      #  32:     goto   18_while_cond
l_f2_17:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 8 of <array 7 of <array 2 of <array 1 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
    jmp     l_test_3_while_body     #   3:     goto   3_while_body
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    movl    $12892, %eax            #   6:     if     12892 = 80875 goto 7_if_true
    movl    $80875, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_7_if_true       
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   9:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_2_while_cond     #  12:     goto   2_while_cond
l_test_1:
l_test_11_while_cond:
    movl    $26968, %eax            #  15:     sub    t0 <- 26968, 28778
    movl    $28778, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     if     t0 > 79203 goto 12_while_body
    movl    $79203, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_12_while_body   
    jmp     l_test_10               #  17:     goto   10
l_test_12_while_body:
    movl    $99, %eax               #  19:     if     99 >= 100 goto 15_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_15_if_true      
    jmp     l_test_16_if_false      #  20:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  22:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_11_while_cond    #  25:     goto   11_while_cond
l_test_10:
    movl    $1668, %eax             #  27:     if     1668 >= 36869 goto 19_if_true
    movl    $36869, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_19_if_true      
    jmp     l_test_20_if_false      #  28:     goto   20_if_false
l_test_19_if_true:
    leal    v0, %eax                #  30:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  32:     call   t2 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_18               #  34:     goto   18
l_test_20_if_false:
l_test_18:

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
v0:                                 # <array 10 of <array 8 of <array 7 of <array 2 of <array 1 of <bool>>>>>>
    .long    5
    .long   10
    .long    8
    .long    7
    .long    2
    .long    1
    .skip 1120








    # end of global data section
    #-----------------------------------------

    .end
##################################################
