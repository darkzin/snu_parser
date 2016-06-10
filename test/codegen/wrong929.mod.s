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
    #    -72(%ebp)   4  [ $t24      <ptr(4) to <array 7 of <char>>> %ebp-72 ]
    #    -73(%ebp)   1  [ $t25      <bool> %ebp-73 ]
    #    -80(%ebp)   4  [ $t4       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 3 of <array 3 of <array 8 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 3 of <array 2 of <array 1 of <array 7 of <int>>>>>>> %ebp+12 ]
    #   -101(%ebp)   1  [ $v2       <char> %ebp-101 ]

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
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_0                  #   2:     goto   0
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   4:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   5:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $52249, %eax            #   6:     mul    t5 <- 52249, t4
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   7:     add    t6 <- t5, 48389
    movl    $48389, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  11:     mul    t8 <- t6, t7
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  12:     add    t9 <- t8, 92433
    movl    $92433, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -100(%ebp), %eax        #  16:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t12 <- t11, 53490
    movl    $53490, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  21:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     add    t15 <- t14, 67308
    movl    $67308, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  25:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  26:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  27:     add    t19 <- v0, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $98, %eax               #  28:     assign @t19 <- 98
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_1_while_cond       #  29:     goto   1_while_cond
l_f0_0:
    call    ReadInt                 #  31:     call   t20 <- ReadInt
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  32:     sub    t21 <- t20, 77764
    movl    $77764, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  33:     sub    t22 <- t21, 10341
    movl    $10341, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  34:     sub    t23 <- t22, 1965
    movl    $1965, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  35:     return t23
    jmp     l_f0_exit              
l_f0_7_while_cond:
    jmp     l_f0_6                  #  37:     goto   6
    leal    _str_1, %eax            #  38:     &()    t24 <- _str_1
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     param  0 <- t24
    pushl   %eax                   
    call    WriteStr                #  40:     call   WriteStr
    addl    $4, %esp               
    call    dummyBOOLfunc           #  41:     call   t25 <- dummyBOOLfunc
    movb    %al, -73(%ebp)         
    jmp     l_f0_7_while_cond       #  42:     goto   7_while_cond
l_f0_6:

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 4 of <array 9 of <array 9 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]

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
    jmp     l_f1_5                  #   0:     goto   5
l_f1_5:
    jmp     l_f1_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     return t4
    jmp     l_f1_exit              
    movl    $0, %eax                #   9:     if     0 = 0 goto 9
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_9                 
    jmp     l_f1_10                 #  10:     goto   10
l_f1_9:
    movl    $1, %eax                #  12:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_11                 #  13:     goto   11
l_f1_10:
    movl    $0, %eax                #  15:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_11:
    movzbl  -14(%ebp), %eax         #  17:     assign v0 <- t5
    movb    %al, 8(%ebp)           
l_f1_14_while_cond:
    call    dummyBOOLfunc           #  19:     call   t6 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  20:     if     t6 = 1 goto 15_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_15_while_body     
    jmp     l_f1_13                 #  21:     goto   13
l_f1_15_while_body:
l_f1_17_while_cond:
    movl    $39394, %eax            #  24:     if     39394 < 47293 goto 18_while_body
    movl    $47293, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_18_while_body     
    jmp     l_f1_16                 #  25:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  27:     goto   17_while_cond
l_f1_16:
l_f1_21_while_cond:
    movl    $6683, %eax             #  30:     if     6683 > 59552 goto 22_while_body
    movl    $59552, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_22_while_body     
    jmp     l_f1_20                 #  31:     goto   20
l_f1_22_while_body:
    jmp     l_f1_21_while_cond      #  33:     goto   21_while_cond
l_f1_20:
    movl    $98, %eax               #  35:     assign v2 <- 98
    movb    %al, -21(%ebp)         
    leal    _str_2, %eax            #  36:     &()    t7 <- _str_2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  37:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #  38:     call   WriteStr
    addl    $4, %esp               
l_f1_27_while_cond:
    jmp     l_f1_26                 #  40:     goto   26
    jmp     l_f1_27_while_cond      #  41:     goto   27_while_cond
l_f1_26:
    jmp     l_f1_14_while_cond      #  43:     goto   14_while_cond
l_f1_13:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 2 of <array 9 of <array 1 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v2       <bool> %ebp-33 ]

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
    movl    $4992, %eax             #   0:     mul    t4 <- 4992, 22892
    movl    $22892, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t5 <- t4, 7158
    movl    $7158, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $40128, %eax            #   2:     add    t6 <- 40128, t5
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $7537, %eax             #   3:     if     7537 > t6 goto 1_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   4:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $99, %eax               #   9:     if     99 <= 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #  10:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_8                  #  12:     goto   8
l_f2_8:
    movl    $88774, %eax            #  14:     assign v1 <- 88774
    movl    %eax, -32(%ebp)        
    jmp     l_f2_4                  #  15:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $97, %eax               #  18:     if     97 < 100 goto 13
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_13                
    jmp     l_f2_14                 #  19:     goto   14
l_f2_13:
    movl    $1, %eax                #  21:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_15                 #  22:     goto   15
l_f2_14:
    movl    $0, %eax                #  24:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f2_15:
    movzbl  -25(%ebp), %eax         #  26:     assign v2 <- t7
    movb    %al, -33(%ebp)         

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]

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
    movl    $0, %eax                #   0:     if     0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyCHARfunc           #   3:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
l_test_6_while_cond:
    movl    $80764, %eax            #   8:     if     80764 > 68755 goto 7_while_body
    movl    $68755, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   9:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  11:     goto   6_while_cond
l_test_5:
    call    dummyCHARfunc           #  13:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  14:     if     t1 >= 97 goto 11
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_11              
    jmp     l_test_12               #  15:     goto   12
l_test_11:
    movl    $1, %eax                #  17:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_13               #  18:     goto   13
l_test_12:
    movl    $0, %eax                #  20:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_13:
    movzbl  -15(%ebp), %eax         #  22:     assign v0 <- t2
    movb    %al, v0                
    movl    $100, %eax              #  23:     if     100 > 97 goto 16
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_16              
    jmp     l_test_17               #  24:     goto   17
l_test_16:
    movl    $1, %eax                #  26:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_18               #  27:     goto   18
l_test_17:
    movl    $0, %eax                #  29:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_18:
    movzbl  -16(%ebp), %eax         #  31:     assign v0 <- t3
    movb    %al, v0                
    movl    $31675, %eax            #  32:     assign v1 <- 31675
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
