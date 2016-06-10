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
    #    -57(%ebp)   1  [ $t21      <bool> %ebp-57 ]
    #    -58(%ebp)   1  [ $t22      <bool> %ebp-58 ]
    #    -59(%ebp)   1  [ $t23      <char> %ebp-59 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t25      <char> %ebp-65 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t3       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t4       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 42 of <array 82 of <array 93 of <array 82 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #   -101(%ebp)   1  [ $v2       <bool> %ebp-101 ]
    #   -102(%ebp)   1  [ $v3       <char> %ebp-102 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $20756, %eax            #   1:     sub    t3 <- 20756, 26453
    movl    $26453, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   2:     add    t4 <- t3, 54310
    movl    $54310, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $52222, %eax            #   3:     if     52222 > t4 goto 2_while_body
    movl    -80(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    movl    $90615, %eax            #   6:     assign v0 <- 90615
    movl    %eax, 8(%ebp)          
    jmp     l_f0_7_if_false         #   7:     goto   7_if_false
    jmp     l_f0_5                  #   8:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $71869, %eax            #  14:     mul    t6 <- 71869, t5
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  15:     add    t7 <- t6, 97622
    movl    $97622, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  19:     mul    t9 <- t7, t8
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  20:     add    t10 <- t9, 50677
    movl    $50677, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  24:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     add    t13 <- t12, 99684
    movl    $99684, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  29:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     add    t16 <- t15, 95443
    movl    $95443, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  32:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  33:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  34:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  35:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $0, %eax                #  36:     assign @t20 <- 0
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  37:     call   t21 <- dummyBOOLfunc
    movb    %al, -57(%ebp)         
    jmp     l_f0_1_while_cond       #  38:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_12                 #  40:     goto   12
    jmp     l_f0_12                 #  41:     goto   12
    jmp     l_f0_12                 #  42:     goto   12
    jmp     l_f0_12                 #  43:     goto   12
    movl    $1, %eax                #  44:     assign t22 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f0_13                 #  45:     goto   13
l_f0_12:
    movl    $0, %eax                #  47:     assign t22 <- 0
    movb    %al, -58(%ebp)         
l_f0_13:
    movzbl  -58(%ebp), %eax         #  49:     return t22
    jmp     l_f0_exit              
l_f0_18_while_cond:
    call    dummyCHARfunc           #  51:     call   t23 <- dummyCHARfunc
    movb    %al, -59(%ebp)         
    movzbl  -59(%ebp), %eax         #  52:     if     t23 < 100 goto 19_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_19_while_body     
    jmp     l_f0_17                 #  53:     goto   17
l_f0_19_while_body:
    movl    $97, %eax               #  55:     assign v3 <- 97
    movb    %al, -102(%ebp)        
    call    dummyINTfunc            #  56:     call   t24 <- dummyINTfunc
    movl    %eax, -64(%ebp)        
    movl    $97, %eax               #  57:     assign v3 <- 97
    movb    %al, -102(%ebp)        
    call    dummyCHARfunc           #  58:     call   t25 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    movl    $0, %eax                #  59:     return 0
    jmp     l_f0_exit              
    call    ReadInt                 #  60:     call   t26 <- ReadInt
    movl    %eax, -72(%ebp)        
    movl    $98, %eax               #  61:     assign v3 <- 98
    movb    %al, -102(%ebp)        
l_f0_29_while_cond:
    movl    $1, %eax                #  63:     if     1 # 0 goto 30_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_30_while_body     
    jmp     l_f0_28                 #  64:     goto   28
l_f0_30_while_body:
    jmp     l_f0_29_while_cond      #  66:     goto   29_while_cond
l_f0_28:
    jmp     l_f0_18_while_cond      #  68:     goto   18_while_cond
l_f0_17:

l_f0_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -18(%ebp)   1  [ $v1       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $v2       <bool> %ebp-19 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_4_if_false         #   3:     goto   4_if_false
    jmp     l_f1_5                  #   4:     goto   5
l_f1_5:
    movl    $98, %eax               #   6:     assign v1 <- 98
    movb    %al, -18(%ebp)         
    movl    $98, %eax               #   7:     assign v1 <- 98
    movb    %al, -18(%ebp)         
    call    WriteLn                 #   8:     call   WriteLn
    movl    $98, %eax               #   9:     return 98
    jmp     l_f1_exit              
    movl    $0, %eax                #  10:     assign v2 <- 0
    movb    %al, -19(%ebp)         
    jmp     l_f1_2                  #  11:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 69 of <array 99 of <array 84 of <array 31 of <char>>>>>>> %ebp+16 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
    movl    $30999, %eax            #   1:     mul    t3 <- 30999, 46355
    movl    $46355, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t3 > 87086 goto 2_while_body
    movl    $87086, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    movl    $18352, %eax            #   7:     param  0 <- 18352
    pushl   %eax                   
    call    f1                      #   8:     call   t4 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
l_f2_6_while_cond:
    leal    _str_1, %eax            #  10:     &()    t5 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #  12:     call   WriteStr
    addl    $4, %esp               
l_f2_10_while_cond:
    jmp     l_f2_9                  #  14:     goto   9
    jmp     l_f2_10_while_cond      #  15:     goto   10_while_cond
l_f2_9:
    movl    $0, %eax                #  17:     return 0
    jmp     l_f2_exit              
    movl    $38012, %eax            #  18:     assign v3 <- 38012
    movl    %eax, -28(%ebp)        
    jmp     l_f2_6_while_cond       #  19:     goto   6_while_cond

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_4_while_cond:
    movl    $5523, %eax             #   3:     mul    t0 <- 5523, 5392
    movl    $5392, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $60915, %eax            #   4:     if     60915 > t0 goto 5_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_5_while_body    
    jmp     l_test_3                #   5:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   7:     goto   4_while_cond
l_test_3:
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
l_test_8_while_cond:
    movl    $81423, %eax            #  12:     if     81423 <= 30250 goto 9_while_body
    movl    $30250, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_9_while_body    
    jmp     l_test_7                #  13:     goto   7
l_test_9_while_body:
    jmp     l_test_11               #  15:     goto   11
l_test_11:
l_test_15_while_cond:
    jmp     l_test_14               #  18:     goto   14
    jmp     l_test_15_while_cond    #  19:     goto   15_while_cond
l_test_14:
    jmp     l_test_8_while_cond     #  21:     goto   8_while_cond
l_test_7:
    call    dummyINTfunc            #  23:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  24:     if     97 > 98 goto 19
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_19              
    jmp     l_test_20               #  25:     goto   20
l_test_19:
    movl    $1, %eax                #  27:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_21               #  28:     goto   21
l_test_20:
    movl    $0, %eax                #  30:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_21:
    movzbl  -21(%ebp), %eax         #  32:     assign v0 <- t2
    movb    %al, v0                
    movl    $98, %eax               #  33:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_26_if_false      #  34:     goto   26_if_false
    movl    $0, %eax                #  35:     if     0 # 0 goto 28_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_28_if_true      
    jmp     l_test_29_if_false      #  36:     goto   29_if_false
l_test_28_if_true:
    jmp     l_test_27               #  38:     goto   27
l_test_29_if_false:
l_test_27:
    movl    $97, %eax               #  41:     if     97 > 99 goto 32_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_32_if_true      
    jmp     l_test_33_if_false      #  42:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_31               #  44:     goto   31
l_test_33_if_false:
l_test_31:
    jmp     l_test_exit            
    jmp     l_test_24               #  48:     goto   24
l_test_26_if_false:
l_test_24:

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
