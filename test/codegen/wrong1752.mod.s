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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t16      <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t9       <bool> %ebp-38 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t9 <- dummyBOOLfunc
    movb    %al, -38(%ebp)         
    call    dummyCHARfunc           #   1:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t10
    jmp     l_f0_exit              
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
    movl    $24805, %eax            #   4:     add    t11 <- 24805, 45100
    movl    $45100, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     add    t12 <- t11, 3561
    movl    $3561, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     sub    t13 <- t12, 6022
    movl    $6022, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     sub    t14 <- t13, 98179
    movl    $98179, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     sub    t15 <- t14, 66968
    movl    $66968, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $36941, %eax            #   9:     if     36941 < t15 goto 6
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_6                 
    jmp     l_f0_7                  #  10:     goto   7
l_f0_6:
    movl    $1, %eax                #  12:     assign t16 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f0_8                  #  13:     goto   8
l_f0_7:
    movl    $0, %eax                #  15:     assign t16 <- 0
    movb    %al, -37(%ebp)         
l_f0_8:
    movzbl  -37(%ebp), %eax         #  17:     assign v1 <- t16
    movb    %al, 12(%ebp)          
    jmp     l_f0_2                  #  18:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t14      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t15      <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t16      <char> %ebp-27 ]
    #    -28(%ebp)   1  [ $t17      <bool> %ebp-28 ]
    #    -29(%ebp)   1  [ $t18      <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t19      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t20      <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t21      <char> %ebp-38 ]
    #    -44(%ebp)   4  [ $t22      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t9       <bool> %ebp-45 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 34 of <array 20 of <array 7 of <array 81 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -46(%ebp)   1  [ $v2       <char> %ebp-46 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t9 <- dummyBOOLfunc
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #   1:     if     t9 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   9:     return t10
    jmp     l_f1_exit              
    movl    $42356, %eax            #  10:     if     42356 < 51776 goto 7
    movl    $51776, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7                 
    jmp     l_f1_8                  #  11:     goto   8
l_f1_7:
    movl    $1, %eax                #  13:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_9                  #  14:     goto   9
l_f1_8:
    movl    $0, %eax                #  16:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_9:
    movzbl  -14(%ebp), %eax         #  18:     param  1 <- t11
    pushl   %eax                   
    movl    $30957, %eax            #  19:     sub    t12 <- 30957, 88483
    movl    $88483, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     add    t13 <- t12, 62359
    movl    $62359, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     if     t13 >= 77248 goto 11
    movl    $77248, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_11                
    jmp     l_f1_12                 #  22:     goto   12
l_f1_11:
    movl    $1, %eax                #  24:     assign t14 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_13                 #  25:     goto   13
l_f1_12:
    movl    $0, %eax                #  27:     assign t14 <- 0
    movb    %al, -25(%ebp)         
l_f1_13:
    movzbl  -25(%ebp), %eax         #  29:     param  1 <- t14
    pushl   %eax                   
    movl    $100, %eax              #  30:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  31:     call   t15 <- f0
    addl    $8, %esp               
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  32:     param  0 <- t15
    pushl   %eax                   
    call    f0                      #  33:     call   t16 <- f0
    addl    $8, %esp               
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #  34:     assign v2 <- t16
    movb    %al, -46(%ebp)         
    jmp     l_f1_17_if_false        #  35:     goto   17_if_false
l_f1_20_while_cond:
    jmp     l_f1_20_while_cond      #  37:     goto   20_while_cond
    movl    $0, %eax                #  38:     if     0 = 0 goto 23
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_23                
    jmp     l_f1_24                 #  39:     goto   24
l_f1_23:
    movl    $1, %eax                #  41:     assign t17 <- 1
    movb    %al, -28(%ebp)         
    jmp     l_f1_25                 #  42:     goto   25
l_f1_24:
    movl    $0, %eax                #  44:     assign t17 <- 0
    movb    %al, -28(%ebp)         
l_f1_25:
    movzbl  -28(%ebp), %eax         #  46:     param  1 <- t17
    pushl   %eax                   
    movl    $98, %eax               #  47:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #  48:     call   t18 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    call    ReadInt                 #  49:     call   t19 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    $12992, %eax            #  50:     if     12992 < 63588 goto 29
    movl    $63588, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_29                
    jmp     l_f1_30                 #  51:     goto   30
l_f1_29:
    movl    $1, %eax                #  53:     assign t20 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f1_31                 #  54:     goto   31
l_f1_30:
    movl    $0, %eax                #  56:     assign t20 <- 0
    movb    %al, -37(%ebp)         
l_f1_31:
    movzbl  -37(%ebp), %eax         #  58:     param  1 <- t20
    pushl   %eax                   
    movl    $97, %eax               #  59:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  60:     call   t21 <- f0
    addl    $8, %esp               
    movb    %al, -38(%ebp)         
    call    ReadInt                 #  61:     call   t22 <- ReadInt
    movl    %eax, -44(%ebp)        
    jmp     l_f1_15                 #  62:     goto   15
l_f1_17_if_false:
l_f1_15:

l_f1_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t13      <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -22(%ebp)   1  [ $v1       <bool> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #   1:     if     97 < t9 goto 1
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     param  1 <- t10
    pushl   %eax                   
    movl    $99, %eax               #  10:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  11:     call   t11 <- f0
    addl    $8, %esp               
    movb    %al, -14(%ebp)         
l_f2_6_while_cond:
    movl    $100, %eax              #  13:     if     100 = 100 goto 10
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #  14:     goto   11
l_f2_10:
    movl    $1, %eax                #  16:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_12                 #  17:     goto   12
l_f2_11:
    movl    $0, %eax                #  19:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f2_12:
    movzbl  -15(%ebp), %eax         #  21:     assign v1 <- t12
    movb    %al, -22(%ebp)         
    movl    $98, %eax               #  22:     if     98 >= 99 goto 15
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_15                
    jmp     l_f2_16                 #  23:     goto   16
l_f2_15:
    movl    $1, %eax                #  25:     assign t13 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_17                 #  26:     goto   17
l_f2_16:
    movl    $0, %eax                #  28:     assign t13 <- 0
    movb    %al, -16(%ebp)         
l_f2_17:
    movzbl  -16(%ebp), %eax         #  30:     assign v1 <- t13
    movb    %al, -22(%ebp)         
    jmp     l_f2_6_while_cond       #  31:     goto   6_while_cond
    call    dummyINTfunc            #  32:     call   t14 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <array 34 of <array 20 of <array 7 of <array 81 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <char> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <array 34 of <array 20 of <array 7 of <array 81 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t8       <bool> %ebp-30 ]

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
l_test_1_while_cond:
    movl    $1, %eax                #   1:     param  1 <- 1
    pushl   %eax                   
    leal    v0, %eax                #   2:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t0
    pushl   %eax                   
    call    f1                      #   4:     call   t1 <- f1
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #   5:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
l_test_6_while_cond:
    movl    $38264, %eax            #   7:     if     38264 > 71837 goto 7_while_body
    movl    $71837, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   8:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  10:     goto   6_while_cond
l_test_5:
    movl    $99, %eax               #  12:     if     99 >= 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_10              
    jmp     l_test_11               #  13:     goto   11
l_test_10:
    movl    $1, %eax                #  15:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_test_12               #  16:     goto   12
l_test_11:
    movl    $0, %eax                #  18:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_test_12:
    movzbl  -19(%ebp), %eax         #  20:     param  1 <- t3
    pushl   %eax                   
    movl    $100, %eax              #  21:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  22:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -20(%ebp)         
    jmp     l_test_14               #  23:     goto   14
l_test_14:
    jmp     l_test_19_if_false      #  25:     goto   19_if_false
    jmp     l_test_17               #  26:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_1_while_cond     #  29:     goto   1_while_cond
    jmp     l_test_21               #  30:     goto   21
    jmp     l_test_21               #  31:     goto   21
    jmp     l_test_21               #  32:     goto   21
    jmp     l_test_21               #  33:     goto   21
    jmp     l_test_22               #  34:     goto   22
l_test_21:
    movl    $1, %eax                #  36:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_23               #  37:     goto   23
l_test_22:
    movl    $0, %eax                #  39:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_test_23:
    movzbl  -21(%ebp), %eax         #  41:     param  1 <- t5
    pushl   %eax                   
    leal    v0, %eax                #  42:     &()    t6 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  43:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  44:     call   t7 <- f1
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    call    dummyBOOLfunc           #  45:     call   t8 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         

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
v0:                                 # <array 7 of <array 34 of <array 20 of <array 7 of <array 81 of <bool>>>>>>
    .long    5
    .long    7
    .long   34
    .long   20
    .long    7
    .long   81
    .skip 2698920








    # end of global data section
    #-----------------------------------------

    .end
##################################################
