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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 46 of <array 4 of <array 98 of <array 54 of <array 69 of <int>>>>>>> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    movl    $63193, %eax            #   0:     assign v1 <- 63193
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #   1:     if     100 > 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $95496, %eax            #   8:     if     95496 # 84022 goto 9_if_true
    movl    $84022, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #   9:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  11:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_1                  #  14:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $13647, %eax            #  17:     if     13647 < 12134 goto 13_if_true
    movl    $12134, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  18:     goto   14_if_false
l_f0_13_if_true:
l_f0_17_while_cond:
    movl    $58259, %eax            #  21:     add    t8 <- 58259, 85556
    movl    $85556, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $29642, %eax            #  22:     if     29642 < t8 goto 18_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_18_while_body     
    jmp     l_f0_16                 #  23:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  25:     goto   17_while_cond
l_f0_16:
    jmp     l_f0_12                 #  27:     goto   12
l_f0_14_if_false:
l_f0_12:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t13      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t30      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t31      <bool> %ebp-93 ]
    #   -100(%ebp)   4  [ $t8       <ptr(4) to <array 46 of <array 4 of <array 98 of <array 54 of <array 69 of <int>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 24 of <array 12 of <array 95 of <array 52 of <array 54 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 47 of <array 28 of <array 29 of <array 21 of <array 6 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 43 of <array 2 of <array 89 of <array 23 of <array 2 of <int>>>>>>> %ebp+16 ]
    #   -268749056(%ebp)  268748952  [ $v3       <array 46 of <array 4 of <array 98 of <array 54 of <array 69 of <int>>>>>> %ebp-268749056 ]
    #   -268749057(%ebp)   1  [ $v4       <char> %ebp-268749057 ]
    #   -268749058(%ebp)   1  [ $v5       <bool> %ebp-268749058 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $268749048, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $67187262, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-268749056(%ebp)     # local array 'v3': 5 dimensions
    movl    $46,-268749052(%ebp)    #   dimension 1: 46 elements
    movl    $4,-268749048(%ebp)     #   dimension 2: 4 elements
    movl    $98,-268749044(%ebp)    #   dimension 3: 98 elements
    movl    $54,-268749040(%ebp)    #   dimension 4: 54 elements
    movl    $69,-268749036(%ebp)    #   dimension 5: 69 elements

    # function body
    leal    -268749056(%ebp), %eax  #   0:     &()    t8 <- v3
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   1:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #   2:     call   t9 <- f0
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    $98, %eax               #   3:     if     98 # 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_2_if_true:
    movl    $30011, %eax            #   6:     if     30011 >= 76723 goto 6
    movl    $76723, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_6                 
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $1, %eax                #   9:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $0, %eax                #  12:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_8:
    movzbl  -13(%ebp), %eax         #  14:     return t10
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  15:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    leal    _str_1, %eax            #  16:     &()    t12 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  0 <- t12
    pushl   %eax                   
    call    WriteStr                #  18:     call   WriteStr
    addl    $4, %esp               
    movl    $0, %eax                #  19:     if     0 # 1 goto 13
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_13                
    jmp     l_f1_14                 #  20:     goto   14
l_f1_13:
    movl    $1, %eax                #  22:     assign t13 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_15                 #  23:     goto   15
l_f1_14:
    movl    $0, %eax                #  25:     assign t13 <- 0
    movb    %al, -21(%ebp)         
l_f1_15:
    movzbl  -21(%ebp), %eax         #  27:     return t13
    jmp     l_f1_exit              
    movl    $2, %eax                #  28:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $39844, %eax            #  31:     mul    t15 <- 39844, t14
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     add    t16 <- t15, 58924
    movl    $58924, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  36:     mul    t18 <- t16, t17
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  37:     add    t19 <- t18, 151
    movl    $151, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  38:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  39:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  40:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  41:     mul    t21 <- t19, t20
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  42:     add    t22 <- t21, 31271
    movl    $31271, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  43:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  44:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  45:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  46:     mul    t24 <- t22, t23
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  47:     add    t25 <- t24, 20086
    movl    $20086, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  48:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  49:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  50:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  51:     add    t28 <- t26, t27
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    12(%ebp), %eax          #  52:     add    t29 <- v1, t28
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $98, %eax               #  53:     assign @t29 <- 98
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_1                  #  54:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $18618, %eax            #  57:     sub    t30 <- 18618, 35493
    movl    $35493, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3027, %eax             #  58:     if     3027 > t30 goto 19
    movl    -92(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_19                
    jmp     l_f1_20                 #  59:     goto   20
l_f1_19:
    movl    $1, %eax                #  61:     assign t31 <- 1
    movb    %al, -93(%ebp)         
    jmp     l_f1_21                 #  62:     goto   21
l_f1_20:
    movl    $0, %eax                #  64:     assign t31 <- 0
    movb    %al, -93(%ebp)         
l_f1_21:
    movzbl  -93(%ebp), %eax         #  66:     assign v5 <- t31
    movb    %al, -268749058(%ebp)  

l_f1_exit:
    # epilogue
    addl    $268749048, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 18 of <array 63 of <array 3 of <array 25 of <bool>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     if     100 > 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2                 
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $1, %eax                #   4:     assign t9 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $0, %eax                #   7:     assign t9 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v2 <- t9
    movb    %al, -15(%ebp)         
    movl    $100, %eax              #  10:     return 100
    jmp     l_f2_exit              
l_f2_11_while_cond:
    movl    $1840, %eax             #  12:     if     1840 <= 62980 goto 12_while_body
    movl    $62980, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_12_while_body     
    jmp     l_f2_10                 #  13:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  15:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_6                  #  17:     goto   6
l_f2_6:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 43 of <array 2 of <array 89 of <array 23 of <array 2 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 47 of <array 28 of <array 29 of <array 21 of <array 6 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 24 of <array 12 of <array 95 of <array 52 of <array 54 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-40 ]

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
    jmp     l_test_exit            
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   2:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_9                #   4:     goto   9
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_10               #   6:     goto   10
l_test_9:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_10:
    movl    $0, %eax                #  10:     if     0 # t2 goto 5_if_true
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_5_if_true       
    jmp     l_test_6_if_false       #  11:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #  13:     goto   4
l_test_6_if_false:
l_test_4:
    leal    v2, %eax                #  16:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     param  2 <- t3
    pushl   %eax                   
    leal    v1, %eax                #  18:     &()    t4 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  1 <- t4
    pushl   %eax                   
    leal    v0, %eax                #  20:     &()    t5 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  22:     call   t6 <- f1
    addl    $12, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  23:     if     t6 = 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_if_true      
    jmp     l_test_14_if_false      #  24:     goto   14_if_false
l_test_13_if_true:
    leal    _str_2, %eax            #  26:     &()    t7 <- _str_2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  27:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #  28:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_12               #  29:     goto   12
l_test_14_if_false:
l_test_12:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
_str_2:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <array 24 of <array 12 of <array 95 of <array 52 of <array 54 of <int>>>>>>
    .long    5
    .long   24
    .long   12
    .long   95
    .long   52
    .long   54
    .skip 307307520
v1:                                 # <array 47 of <array 28 of <array 29 of <array 21 of <array 6 of <char>>>>>>
    .long    5
    .long   47
    .long   28
    .long   29
    .long   21
    .long    6
    .skip 4808664
v2:                                 # <array 43 of <array 2 of <array 89 of <array 23 of <array 2 of <int>>>>>>
    .long    5
    .long   43
    .long    2
    .long   89
    .long   23
    .long    2
    .skip 1408336








    # end of global data section
    #-----------------------------------------

    .end
##################################################
