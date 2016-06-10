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
    #    -69(%ebp)   1  [ $t24      <char> %ebp-69 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 5 of <array 1 of <array 4 of <array 7 of <int>>>>>>> %ebp+8 ]
    #    -88(%ebp)   4  [ $v1       <int> %ebp-88 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
l_f0_4_while_cond:
    jmp     l_f0_4_while_cond       #   2:     goto   4_while_cond
    call    ReadInt                 #   3:     call   t7 <- ReadInt
    movl    %eax, -76(%ebp)        
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   5:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   6:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #   7:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   8:     add    t10 <- t9, 62024
    movl    $62024, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  11:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  12:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     add    t13 <- t12, 24551
    movl    $24551, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  17:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     add    t16 <- t15, 29461
    movl    $29461, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  22:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  23:     add    t19 <- t18, 60548
    movl    $60548, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  24:     mul    t20 <- t19, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  26:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  27:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t23 <- v0, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $69304, %eax            #  29:     assign @t23 <- 69304
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_0                  #  30:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $30311, %eax            #  33:     if     30311 >= 95098 goto 8_if_true
    movl    $95098, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #  34:     goto   9_if_false
l_f0_8_if_true:
l_f0_12_while_cond:
    movl    $20594, %eax            #  37:     if     20594 >= 87327 goto 13_while_body
    movl    $87327, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_13_while_body     
    jmp     l_f0_11                 #  38:     goto   11
l_f0_13_while_body:
    jmp     l_f0_17_if_false        #  40:     goto   17_if_false
    jmp     l_f0_15                 #  41:     goto   15
l_f0_17_if_false:
l_f0_15:
l_f0_19_while_cond:
    movl    $41029, %eax            #  45:     if     41029 < 61654 goto 20_while_body
    movl    $61654, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_20_while_body     
    jmp     l_f0_18                 #  46:     goto   18
l_f0_20_while_body:
    jmp     l_f0_19_while_cond      #  48:     goto   19_while_cond
l_f0_18:
    jmp     l_f0_12_while_cond      #  50:     goto   12_while_cond
l_f0_11:
    jmp     l_f0_7                  #  52:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_23_if_true         #  55:     goto   23_if_true
    jmp     l_f0_23_if_true         #  56:     goto   23_if_true
    jmp     l_f0_23_if_true         #  57:     goto   23_if_true
    jmp     l_f0_24_if_false        #  58:     goto   24_if_false
l_f0_23_if_true:
    movl    $99, %eax               #  60:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  61:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #  62:     call   t24 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    jmp     l_f0_33_if_false        #  63:     goto   33_if_false
    jmp     l_f0_31                 #  64:     goto   31
l_f0_33_if_false:
l_f0_31:
    jmp     l_f0_22                 #  67:     goto   22
l_f0_24_if_false:
l_f0_22:

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 2 of <array 8 of <array 6 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 9 of <array 7 of <array 1 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 10 of <array 2 of <array 9 of <array 4 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 2 of <array 9 of <array 7 of <array 2 of <int>>>>>>> %ebp+20 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    movl    $99, %eax               #   0:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
l_f1_2_while_cond:
    jmp     l_f1_1                  #   3:     goto   1
l_f1_5_while_cond:
    movl    $93176, %eax            #   5:     if     93176 > 41345 goto 6_while_body
    movl    $41345, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
    movl    $100, %eax              #  10:     if     100 <= 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  11:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  13:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $39315, %eax            #  16:     if     39315 < 48774 goto 13_if_true
    movl    $48774, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  17:     goto   14_if_false
l_f1_13_if_true:
    jmp     l_f1_12                 #  19:     goto   12
l_f1_14_if_false:
l_f1_12:
l_f1_17_while_cond:
    jmp     l_f1_17_while_cond      #  23:     goto   17_while_cond
    movl    $73037, %eax            #  24:     add    t7 <- 73037, 13294
    movl    $13294, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     assign v4 <- t7
    movl    %eax, -24(%ebp)        
    jmp     l_f1_2_while_cond       #  26:     goto   2_while_cond
l_f1_1:
    call    dummyBOOLfunc           #  28:     call   t8 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 10 of <array 9 of <array 7 of <array 1 of <array 1 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 4 of <array 2 of <array 8 of <array 6 of <array 1 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 9 of <array 2 of <array 9 of <array 7 of <array 2 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <ptr(4) to <array 3 of <array 10 of <array 2 of <array 9 of <array 4 of <int>>>>>>> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #   -1592(%ebp)  1560  [ $v2       <array 4 of <array 2 of <array 8 of <array 6 of <array 1 of <int>>>>>> %ebp-1592 ]
    #   -2248(%ebp)  654  [ $v3       <array 10 of <array 9 of <array 7 of <array 1 of <array 1 of <bool>>>>>> %ebp-2248 ]
    #   -10912(%ebp)  8664  [ $v4       <array 3 of <array 10 of <array 2 of <array 9 of <array 4 of <int>>>>>> %ebp-10912 ]
    #   -20008(%ebp)  9096  [ $v5       <array 9 of <array 2 of <array 9 of <array 7 of <array 2 of <int>>>>>> %ebp-20008 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $19996, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4999, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1592(%ebp)          # local array 'v2': 5 dimensions
    movl    $4,-1588(%ebp)          #   dimension 1: 4 elements
    movl    $2,-1584(%ebp)          #   dimension 2: 2 elements
    movl    $8,-1580(%ebp)          #   dimension 3: 8 elements
    movl    $6,-1576(%ebp)          #   dimension 4: 6 elements
    movl    $1,-1572(%ebp)          #   dimension 5: 1 elements
    movl    $5,-2248(%ebp)          # local array 'v3': 5 dimensions
    movl    $10,-2244(%ebp)         #   dimension 1: 10 elements
    movl    $9,-2240(%ebp)          #   dimension 2: 9 elements
    movl    $7,-2236(%ebp)          #   dimension 3: 7 elements
    movl    $1,-2232(%ebp)          #   dimension 4: 1 elements
    movl    $1,-2228(%ebp)          #   dimension 5: 1 elements
    movl    $5,-10912(%ebp)         # local array 'v4': 5 dimensions
    movl    $3,-10908(%ebp)         #   dimension 1: 3 elements
    movl    $10,-10904(%ebp)        #   dimension 2: 10 elements
    movl    $2,-10900(%ebp)         #   dimension 3: 2 elements
    movl    $9,-10896(%ebp)         #   dimension 4: 9 elements
    movl    $4,-10892(%ebp)         #   dimension 5: 4 elements
    movl    $5,-20008(%ebp)         # local array 'v5': 5 dimensions
    movl    $9,-20004(%ebp)         #   dimension 1: 9 elements
    movl    $2,-20000(%ebp)         #   dimension 2: 2 elements
    movl    $9,-19996(%ebp)         #   dimension 3: 9 elements
    movl    $7,-19992(%ebp)         #   dimension 4: 7 elements
    movl    $2,-19988(%ebp)         #   dimension 5: 2 elements

    # function body
    jmp     l_f2_exit              
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
    call    dummyCHARfunc           #   2:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $27412, %eax            #   3:     if     27412 < 65094 goto 6_if_true
    movl    $65094, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   4:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_exit              
    leal    -20008(%ebp), %eax      #  10:     &()    t8 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     param  3 <- t8
    pushl   %eax                   
    leal    -10912(%ebp), %eax      #  12:     &()    t9 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     param  2 <- t9
    pushl   %eax                   
    leal    -2248(%ebp), %eax       #  14:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     param  1 <- t10
    pushl   %eax                   
    leal    -1592(%ebp), %eax       #  16:     &()    t11 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  18:     call   f1
    addl    $16, %esp              
    jmp     l_f2_1                  #  19:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $19996, %esp            # remove locals
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
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

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
    jmp     l_test_exit            
    movl    $98, %eax               #   2:     if     98 < 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_7_if_true       
    jmp     l_test_8_if_false       #   3:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   5:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_2                #   8:     goto   2
l_test_2:
    movl    $98, %eax               #  10:     assign v0 <- 98
    movb    %al, v0                
l_test_12_while_cond:
    call    dummyBOOLfunc           #  12:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     if     t0 = 1 goto 13_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  14:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  16:     goto   12_while_cond
l_test_11:
    movl    $11186, %eax            #  18:     mul    t1 <- 11186, 62803
    movl    $62803, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     div    t2 <- t1, 98263
    movl    $98263, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     div    t3 <- t2, 86858
    movl    $86858, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     mul    t4 <- t3, 34464
    movl    $34464, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     div    t5 <- t4, 72962
    movl    $72962, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $22412, %eax            #  23:     if     22412 > t5 goto 16_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_16_if_true      
    jmp     l_test_17_if_false      #  24:     goto   17_if_false
l_test_16_if_true:
    call    dummyBOOLfunc           #  26:     call   t6 <- dummyBOOLfunc
    movb    %al, -37(%ebp)         
    jmp     l_test_15               #  27:     goto   15
l_test_17_if_false:
l_test_15:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
