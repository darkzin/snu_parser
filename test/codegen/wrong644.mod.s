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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 4 of <array 10 of <array 3 of <array 7 of <bool>>>>>>> %ebp+8 ]

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
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_0                  #   2:     goto   0
l_f0_6_while_cond:
    movl    $83015, %eax            #   4:     if     83015 <= 48785 goto 7_while_body
    movl    $48785, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_7_while_body      
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
l_f0_5:
    call    dummyBOOLfunc           #   9:     call   t9 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
l_f0_14_while_cond:
    movl    $61873, %eax            #  13:     if     61873 >= 36185 goto 15_while_body
    movl    $36185, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_15_while_body     
    jmp     l_f0_13                 #  14:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  16:     goto   14_while_cond
l_f0_13:
    call    dummyINTfunc            #  18:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_20_if_false        #  19:     goto   20_if_false
    jmp     l_f0_18                 #  20:     goto   18
l_f0_20_if_false:
l_f0_18:
    jmp     l_f0_10                 #  23:     goto   10
l_f0_10:
    movl    $100, %eax              #  25:     if     100 >= 97 goto 22
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_22                
    jmp     l_f0_23                 #  26:     goto   23
l_f0_22:
    movl    $1, %eax                #  28:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_24                 #  29:     goto   24
l_f0_23:
    movl    $0, %eax                #  31:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f0_24:
    movzbl  -17(%ebp), %eax         #  33:     return t11
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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t29      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t30      <bool> %ebp-85 ]
    #    -86(%ebp)   1  [ $t9       <char> %ebp-86 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 4 of <array 3 of <array 6 of <array 10 of <bool>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -86(%ebp)         
    movl    $100, %eax              #   1:     if     100 < t9 goto 1_if_true
    movzbl  -86(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   4:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   5:     if     100 < 98 goto 6
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6                 
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $1, %eax                #   8:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_8                  #   9:     goto   8
l_f1_7:
    movl    $0, %eax                #  11:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_8:
    movzbl  -14(%ebp), %eax         #  13:     return t11
    jmp     l_f1_exit              
    movl    $0, %eax                #  14:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  15:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $100, %eax              #  18:     if     100 > 98 goto 15
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_15                
    jmp     l_f1_16                 #  19:     goto   16
l_f1_15:
    movl    $1, %eax                #  21:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_17                 #  22:     goto   17
l_f1_16:
    movl    $0, %eax                #  24:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f1_17:
    movl    $2, %eax                #  26:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $61119, %eax            #  29:     mul    t14 <- 61119, t13
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     add    t15 <- t14, 99202
    movl    $99202, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  31:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  33:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  34:     mul    t17 <- t15, t16
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     add    t18 <- t17, 3664
    movl    $3664, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  36:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  38:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  39:     mul    t20 <- t18, t19
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  40:     add    t21 <- t20, 96070
    movl    $96070, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  42:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  43:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  44:     mul    t23 <- t21, t22
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  45:     add    t24 <- t23, 23432
    movl    $23432, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  46:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  47:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  48:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  49:     add    t27 <- t25, t26
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    16(%ebp), %eax          #  50:     add    t28 <- v2, t27
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -15(%ebp), %eax         #  51:     assign @t28 <- t12
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    call    ReadInt                 #  52:     call   t29 <- ReadInt
    movl    %eax, -84(%ebp)        
    jmp     l_f1_11                 #  53:     goto   11
l_f1_11:
    jmp     l_f1_21                 #  55:     goto   21
l_f1_21:
    movl    $1, %eax                #  57:     assign t30 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f1_23                 #  58:     goto   23
    movl    $0, %eax                #  59:     assign t30 <- 0
    movb    %al, -85(%ebp)         
l_f1_23:
    movzbl  -85(%ebp), %eax         #  61:     return t30
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 8 of <array 2 of <array 9 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 3 of <array 10 of <array 10 of <array 3 of <bool>>>>>>> %ebp+20 ]
    #    -18(%ebp)   1  [ $v4       <bool> %ebp-18 ]

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
    movl    $91078, %eax            #   0:     if     91078 <= 6819 goto 1
    movl    $6819, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t9 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t9 <- 0
    movb    %al, -17(%ebp)         
l_f2_3:
    movzbl  -17(%ebp), %eax         #   8:     assign v4 <- t9
    movb    %al, -18(%ebp)         
    leal    _str_1, %eax            #   9:     &()    t10 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  0 <- t10
    pushl   %eax                   
    call    WriteStr                #  11:     call   WriteStr
    addl    $4, %esp               
l_f2_7_while_cond:
    movl    $99, %eax               #  13:     if     99 # 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #  14:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  16:     goto   7_while_cond
l_f2_6:

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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <array 4 of <array 3 of <array 6 of <array 10 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 3 of <array 10 of <array 10 of <array 3 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 8 of <array 2 of <array 9 of <array 8 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t7       <bool> %ebp-34 ]
    #    -35(%ebp)   1  [ $t8       <bool> %ebp-35 ]

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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
l_test_1_if_true:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   4:     goto   0
l_test_0:
l_test_9_while_cond:
    jmp     l_test_10_while_body    #   7:     goto   10_while_body
    jmp     l_test_10_while_body    #   8:     goto   10_while_body
    call    dummyBOOLfunc           #   9:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     if     t1 = 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:
l_test_14_while_cond:
    movl    $33677, %eax            #  16:     if     33677 = 82746 goto 15_while_body
    movl    $82746, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_15_while_body   
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  18:     goto   14_while_cond
l_test_19_while_cond:
    movl    $28923, %eax            #  20:     if     28923 <= 62897 goto 20_while_body
    movl    $62897, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_20_while_body   
    jmp     l_test_18               #  21:     goto   18
l_test_20_while_body:
    movl    $98, %eax               #  23:     assign v0 <- 98
    movb    %al, v0                
    leal    v3, %eax                #  24:     &()    t2 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     param  2 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  26:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     param  3 <- t3
    pushl   %eax                   
    movl    $99, %eax               #  28:     param  2 <- 99
    pushl   %eax                   
    leal    v1, %eax                #  29:     &()    t4 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     param  1 <- t4
    pushl   %eax                   
    call    dummyINTfunc            #  31:     call   t5 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  33:     call   t6 <- f2
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    movl    $100, %eax              #  34:     if     100 > t6 goto 24
    movzbl  -33(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_24              
    jmp     l_test_25               #  35:     goto   25
l_test_24:
    movl    $1, %eax                #  37:     assign t7 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_test_26               #  38:     goto   26
l_test_25:
    movl    $0, %eax                #  40:     assign t7 <- 0
    movb    %al, -34(%ebp)         
l_test_26:
    movzbl  -34(%ebp), %eax         #  42:     param  1 <- t7
    pushl   %eax                   
    movl    $0, %eax                #  43:     param  0 <- 0
    pushl   %eax                   
    call    f1                      #  44:     call   t8 <- f1
    addl    $12, %esp              
    movb    %al, -35(%ebp)         
    jmp     l_test_19_while_cond    #  45:     goto   19_while_cond
l_test_18:
    jmp     l_test_exit            

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <array 3 of <array 8 of <array 2 of <array 9 of <array 8 of <char>>>>>>
    .long    5
    .long    3
    .long    8
    .long    2
    .long    9
    .long    8
    .skip 3456
v2:                                 # <array 5 of <array 3 of <array 10 of <array 10 of <array 3 of <bool>>>>>>
    .long    5
    .long    5
    .long    3
    .long   10
    .long   10
    .long    3
    .skip 4500
v3:                                 # <array 7 of <array 4 of <array 3 of <array 6 of <array 10 of <bool>>>>>>
    .long    5
    .long    7
    .long    4
    .long    3
    .long    6
    .long   10
    .skip 5040








    # end of global data section
    #-----------------------------------------

    .end
##################################################
