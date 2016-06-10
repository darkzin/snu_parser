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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 82 of <array 3 of <array 53 of <array 3 of <array 40 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 45 of <array 60 of <array 30 of <array 85 of <array 61 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v5       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v6       <ptr(4) to <array 73 of <array 15 of <array 25 of <array 51 of <array 63 of <int>>>>>>> %ebp+20 ]

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
l_f0_1_while_cond:
    movl    $99, %eax               #   1:     if     99 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    call    dummyINTfunc            #   4:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_8_if_false         #   8:     goto   8_if_false
l_f0_11_while_cond:
    jmp     l_f0_11_while_cond      #  10:     goto   11_while_cond
l_f0_14_while_cond:
    jmp     l_f0_14_while_cond      #  12:     goto   14_while_cond
    jmp     l_f0_6                  #  13:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 82 of <array 3 of <array 53 of <array 3 of <array 40 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 45 of <array 60 of <array 30 of <array 85 of <array 61 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 82 of <array 3 of <array 53 of <array 3 of <array 40 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t15      <bool> %ebp-30 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t19      <bool> %ebp-45 ]
    #    -46(%ebp)   1  [ $t6       <bool> %ebp-46 ]
    #    -52(%ebp)   4  [ $t7       <ptr(4) to <array 73 of <array 15 of <array 25 of <array 51 of <array 63 of <int>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <ptr(4) to <array 73 of <array 15 of <array 25 of <array 51 of <array 63 of <int>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <ptr(4) to <array 45 of <array 60 of <array 30 of <array 85 of <array 61 of <bool>>>>>>> %ebp-60 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 79 of <array 41 of <array 5 of <array 89 of <array 35 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <bool> %ebp+12 ]
    #   -1564644(%ebp)  1564584  [ $v5       <array 82 of <array 3 of <array 53 of <array 3 of <array 40 of <char>>>>>> %ebp-1564644 ]
    #   -421549668(%ebp)  419985024  [ $v6       <array 45 of <array 60 of <array 30 of <array 85 of <array 61 of <bool>>>>>> %ebp-421549668 ]
    #   -773373192(%ebp)  351823524  [ $v7       <array 73 of <array 15 of <array 25 of <array 51 of <array 63 of <int>>>>>> %ebp-773373192 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $773373180, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $193343295, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1564644(%ebp)       # local array 'v5': 5 dimensions
    movl    $82,-1564640(%ebp)      #   dimension 1: 82 elements
    movl    $3,-1564636(%ebp)       #   dimension 2: 3 elements
    movl    $53,-1564632(%ebp)      #   dimension 3: 53 elements
    movl    $3,-1564628(%ebp)       #   dimension 4: 3 elements
    movl    $40,-1564624(%ebp)      #   dimension 5: 40 elements
    movl    $5,-421549668(%ebp)     # local array 'v6': 5 dimensions
    movl    $45,-421549664(%ebp)    #   dimension 1: 45 elements
    movl    $60,-421549660(%ebp)    #   dimension 2: 60 elements
    movl    $30,-421549656(%ebp)    #   dimension 3: 30 elements
    movl    $85,-421549652(%ebp)    #   dimension 4: 85 elements
    movl    $61,-421549648(%ebp)    #   dimension 5: 61 elements
    movl    $5,-773373192(%ebp)     # local array 'v7': 5 dimensions
    movl    $73,-773373188(%ebp)    #   dimension 1: 73 elements
    movl    $15,-773373184(%ebp)    #   dimension 2: 15 elements
    movl    $25,-773373180(%ebp)    #   dimension 3: 25 elements
    movl    $51,-773373176(%ebp)    #   dimension 4: 51 elements
    movl    $63,-773373172(%ebp)    #   dimension 5: 63 elements

    # function body
    movl    $100, %eax              #   0:     if     100 # 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
l_f1_1:
    movl    $1, %eax                #   2:     assign t6 <- 1
    movb    %al, -46(%ebp)         
    jmp     l_f1_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t6 <- 0
    movb    %al, -46(%ebp)         
l_f1_3:
    movzbl  -46(%ebp), %eax         #   6:     assign v4 <- t6
    movb    %al, 12(%ebp)          
    leal    -773373192(%ebp), %eax  #   7:     &()    t7 <- v7
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   8:     param  3 <- t7
    pushl   %eax                   
    leal    -773373192(%ebp), %eax  #   9:     &()    t8 <- v7
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  10:     param  3 <- t8
    pushl   %eax                   
    movl    $98, %eax               #  11:     param  2 <- 98
    pushl   %eax                   
    leal    -421549668(%ebp), %eax  #  12:     &()    t9 <- v6
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  13:     param  1 <- t9
    pushl   %eax                   
    leal    -1564644(%ebp), %eax    #  14:     &()    t10 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  16:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  17:     param  2 <- t11
    pushl   %eax                   
    leal    -421549668(%ebp), %eax  #  18:     &()    t12 <- v6
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     param  1 <- t12
    pushl   %eax                   
    leal    -1564644(%ebp), %eax    #  20:     &()    t13 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     param  0 <- t13
    pushl   %eax                   
    call    f0                      #  22:     call   t14 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movl    $97, %eax               #  23:     if     97 <= t14 goto 8
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_8                 
    jmp     l_f1_9                  #  24:     goto   9
l_f1_8:
    movl    $1, %eax                #  26:     assign t15 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f1_10                 #  27:     goto   10
l_f1_9:
    movl    $0, %eax                #  29:     assign t15 <- 0
    movb    %al, -30(%ebp)         
l_f1_10:
    movzbl  -30(%ebp), %eax         #  31:     return t15
    jmp     l_f1_exit              
    movl    $13357, %eax            #  32:     add    t16 <- 13357, 68201
    movl    $68201, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     sub    t17 <- t16, 33318
    movl    $33318, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $56888, %eax            #  34:     add    t18 <- 56888, 36551
    movl    $36551, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  35:     if     t17 <= t18 goto 13
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_13                
    jmp     l_f1_14                 #  36:     goto   14
l_f1_13:
    movl    $1, %eax                #  38:     assign t19 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f1_15                 #  39:     goto   15
l_f1_14:
    movl    $0, %eax                #  41:     assign t19 <- 0
    movb    %al, -45(%ebp)         
l_f1_15:
    movzbl  -45(%ebp), %eax         #  43:     return t19
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $773373180, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v3       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <bool> %ebp+12 ]
    #    -21(%ebp)   1  [ $v5       <char> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    call    ReadInt                 #   2:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $97272, %eax            #   3:     if     97272 < t7 goto 3_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    jmp     l_f2_7_if_false         #   6:     goto   7_if_false
    jmp     l_f2_5                  #   7:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_2_while_cond       #  10:     goto   2_while_cond
l_f2_1:
l_f2_9_while_cond:
    jmp     l_f2_exit              
l_f2_13_while_cond:
    movl    $99, %eax               #  15:     assign v5 <- 99
    movb    %al, -21(%ebp)         
    jmp     l_f2_13_while_cond      #  16:     goto   13_while_cond
    jmp     l_f2_9_while_cond       #  17:     goto   9_while_cond

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

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
    movl    $35576, %eax            #   0:     if     35576 # 42526 goto 1_if_true
    movl    $42526, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    movl    $100, %eax              #   4:     if     100 # 97 goto 6
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_6               
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   8:     goto   8
l_test_7:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movzbl  -13(%ebp), %eax         #  12:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_0                #  13:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $2626, %eax             #  16:     if     2626 >= 56692 goto 11_if_true
    movl    $56692, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_11_if_true      
    jmp     l_test_12_if_false      #  17:     goto   12_if_false
l_test_11_if_true:
    movl    $99, %eax               #  19:     assign v1 <- 99
    movb    %al, v1                
    movl    $17262, %eax            #  20:     assign v2 <- 17262
    movl    %eax, v2               
    movl    $97, %eax               #  21:     assign v1 <- 97
    movb    %al, v1                
    movl    $1, %eax                #  22:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_10               #  23:     goto   10
l_test_12_if_false:
l_test_10:
l_test_19_while_cond:
    movl    $97, %eax               #  27:     if     97 = 100 goto 20_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_20_while_body   
    jmp     l_test_18               #  28:     goto   18
l_test_20_while_body:
l_test_23_while_cond:
    movl    $64328, %eax            #  31:     if     64328 = 27039 goto 24_while_body
    movl    $27039, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_24_while_body   
    jmp     l_test_22               #  32:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  34:     goto   23_while_cond
l_test_22:
    jmp     l_test_19_while_cond    #  36:     goto   19_while_cond
l_test_18:
l_test_27_while_cond:
    movl    $19857, %eax            #  39:     add    t1 <- 19857, 45630
    movl    $45630, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  40:     add    t2 <- t1, 96362
    movl    $96362, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  41:     add    t3 <- t2, 94757
    movl    $94757, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  42:     sub    t4 <- t3, 43870
    movl    $43870, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $85842, %eax            #  43:     if     85842 < t4 goto 28_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_28_while_body   
    jmp     l_test_26               #  44:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  46:     goto   27_while_cond
l_test_26:
    jmp     l_test_exit            
    jmp     l_test_35               #  49:     goto   35
l_test_35:
    movl    $98, %eax               #  51:     if     98 >= 99 goto 39_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_39_if_true      
    jmp     l_test_40_if_false      #  52:     goto   40_if_false
l_test_39_if_true:
    jmp     l_test_38               #  54:     goto   38
l_test_40_if_false:
l_test_38:
    movl    $100, %eax              #  57:     if     100 >= 98 goto 43_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_43_if_true      
    jmp     l_test_44_if_false      #  58:     goto   44_if_false
l_test_43_if_true:
    jmp     l_test_42               #  60:     goto   42
l_test_44_if_false:
l_test_42:
    call    ReadInt                 #  63:     call   t5 <- ReadInt
    movl    %eax, -36(%ebp)        
l_test_48_while_cond:
    movl    $68680, %eax            #  65:     if     68680 > 69861 goto 49_while_body
    movl    $69861, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_49_while_body   
    jmp     l_test_47               #  66:     goto   47
l_test_49_while_body:
    jmp     l_test_48_while_cond    #  68:     goto   48_while_cond
l_test_47:
    movl    $7114, %eax             #  70:     assign v2 <- 7114
    movl    %eax, v2               
    movl    $58588, %eax            #  71:     assign v2 <- 58588
    movl    %eax, v2               
    jmp     l_test_31               #  72:     goto   31
l_test_31:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
