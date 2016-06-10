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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t2
    jmp     l_f0_exit              
    call    ReadInt                 #   2:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v2 <- t3
    movl    %eax, -28(%ebp)        
    call    dummyBOOLfunc           #   4:     call   t4 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   5:     if     t4 = 1 goto 3_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   6:     goto   4_if_false
l_f0_3_if_true:
    movl    $49749, %eax            #   8:     assign v2 <- 49749
    movl    %eax, -28(%ebp)        
    movl    $97, %eax               #   9:     assign v1 <- 97
    movb    %al, 12(%ebp)          
    movl    $88300, %eax            #  10:     return 88300
    jmp     l_f0_exit              
    jmp     l_f0_2                  #  11:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 91 of <array 78 of <array 53 of <array 79 of <array 72 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -85(%ebp)   1  [ $v2       <char> %ebp-85 ]

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
l_f1_1_while_cond:
    movl    $1, %eax                #   1:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f1_6                  #   2:     goto   6
    movl    $0, %eax                #   3:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f1_6:
    movl    $0, %eax                #   5:     if     0 = t2 goto 2_while_body
    movzbl  -53(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
l_f1_0:
l_f1_11_while_cond:
    movl    $97, %eax               #  12:     if     97 > 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_12_while_body     
    jmp     l_f1_10                 #  13:     goto   10
l_f1_12_while_body:
    jmp     l_f1_exit              
l_f1_19_while_cond:
    jmp     l_f1_18                 #  17:     goto   18
    jmp     l_f1_19_while_cond      #  18:     goto   19_while_cond
l_f1_18:
    jmp     l_f1_21                 #  20:     goto   21
l_f1_21:
    jmp     l_f1_exit              
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $40412, %eax            #  26:     mul    t4 <- 40412, t3
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  27:     add    t5 <- t4, 85620
    movl    $85620, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  30:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  31:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  32:     add    t8 <- t7, 27543
    movl    $27543, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  33:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  35:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  36:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  37:     add    t11 <- t10, 60886
    movl    $60886, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  38:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  40:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  41:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  42:     add    t14 <- t13, 66105
    movl    $66105, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  43:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  45:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  46:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  47:     add    t18 <- v0, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $97, %eax               #  48:     assign @t18 <- 97
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_14                 #  49:     goto   14
l_f1_14:
    jmp     l_f1_11_while_cond      #  51:     goto   11_while_cond
l_f1_10:
l_f1_27_while_cond:
l_f1_30_while_cond:
    movl    $68506, %eax            #  55:     add    t19 <- 68506, 80376
    movl    $80376, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  56:     if     t19 # 48022 goto 31_while_body
    movl    $48022, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_31_while_body     
    jmp     l_f1_29                 #  57:     goto   29
l_f1_31_while_body:
    jmp     l_f1_30_while_cond      #  59:     goto   30_while_cond
l_f1_29:
    jmp     l_f1_27_while_cond      #  61:     goto   27_while_cond

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 90 of <array 61 of <array 94 of <array 46 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 61 of <array 23 of <array 13 of <array 73 of <array 22 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
    movl    $98, %eax               #   2:     if     98 <= 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyCHARfunc           #   8:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f2_10_while_cond:
    movl    $99, %eax               #  10:     if     99 >= 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_11_while_body     
    jmp     l_f2_9                  #  11:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  13:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_15_if_false        #  15:     goto   15_if_false
    jmp     l_f2_13                 #  16:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_exit              
    movl    $168, %eax              #  20:     assign v3 <- 168
    movl    %eax, 20(%ebp)         
    movl    $45666, %eax            #  21:     if     45666 = 35491 goto 19_if_true
    movl    $35491, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  22:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  24:     goto   18
l_f2_20_if_false:
l_f2_18:
    movl    $100, %eax              #  27:     if     100 = 97 goto 23
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_23                
    jmp     l_f2_24                 #  28:     goto   24
l_f2_23:
    movl    $1, %eax                #  30:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_25                 #  31:     goto   25
l_f2_24:
    movl    $0, %eax                #  33:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f2_25:
    movzbl  -15(%ebp), %eax         #  35:     assign v0 <- t4
    movb    %al, 8(%ebp)           
    jmp     l_f2_1                  #  36:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_28_while_cond:
    call    dummyBOOLfunc           #  40:     call   t5 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  41:     if     t5 = 1 goto 30
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_30                
    jmp     l_f2_27                 #  42:     goto   27
l_f2_30:
    jmp     l_f2_27                 #  44:     goto   27
    jmp     l_f2_28_while_cond      #  45:     goto   28_while_cond
l_f2_27:

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $97, %eax               #   2:     if     97 <= 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    call    dummyINTfunc            #   5:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_2                #   6:     goto   2
l_test_4_if_false:
l_test_2:
    jmp     l_test_exit            
l_test_9_while_cond:
    jmp     l_test_12               #  11:     goto   12
    jmp     l_test_13               #  12:     goto   13
l_test_12:
    movl    $1, %eax                #  14:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_14               #  15:     goto   14
l_test_13:
    movl    $0, %eax                #  17:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_14:
    movl    $0, %eax                #  19:     if     0 = t1 goto 10_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  20:     goto   8
l_test_10_while_body:
    movl    $97, %eax               #  22:     assign v0 <- 97
    movb    %al, v0                
    movl    $97, %eax               #  23:     assign v0 <- 97
    movb    %al, v0                
l_test_21_while_cond:
    jmp     l_test_20               #  25:     goto   20
    jmp     l_test_21_while_cond    #  26:     goto   21_while_cond
l_test_20:
    jmp     l_test_9_while_cond     #  28:     goto   9_while_cond
l_test_8:
l_test_24_while_cond:
    jmp     l_test_25_while_body    #  31:     goto   25_while_body
    jmp     l_test_23               #  32:     goto   23
l_test_25_while_body:
    movl    $100, %eax              #  34:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_24_while_cond    #  36:     goto   24_while_cond
l_test_23:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
