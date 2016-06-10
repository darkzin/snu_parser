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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 73 of <array 23 of <array 14 of <array 49 of <array 100 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
    jmp     l_f0_9_if_false         #   2:     goto   9_if_false
    jmp     l_f0_7                  #   3:     goto   7
l_f0_9_if_false:
l_f0_7:
    movl    $100, %eax              #   6:     if     100 >= 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #   7:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #   9:     goto   10
l_f0_12_if_false:
l_f0_10:
    movl    $22330, %eax            #  12:     return 22330
    jmp     l_f0_exit              
    movl    $52706, %eax            #  13:     return 52706
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  14:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyINTfunc            #  17:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f0_18_while_cond:
    jmp     l_f0_17                 #  19:     goto   17
    jmp     l_f0_17                 #  20:     goto   17
    jmp     l_f0_18_while_cond      #  21:     goto   18_while_cond
l_f0_17:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $v1       <char> %ebp-19 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     assign v1 <- t6
    movb    %al, -19(%ebp)         
    call    dummyCHARfunc           #   3:     call   t7 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   4:     assign v1 <- t7
    movb    %al, -19(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t5       <char> %ebp-49 ]
    #    -56(%ebp)   4  [ $t6       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t7       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t8       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t9       <int> %ebp-68 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 59 of <array 31 of <array 43 of <array 88 of <array 44 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 47 of <array 36 of <array 2 of <array 61 of <array 69 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $56, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -49(%ebp)         
    movzbl  -49(%ebp), %eax         #   1:     if     t5 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $87843, %eax            #   4:     return 87843
    jmp     l_f2_exit              
    jmp     l_f2_5                  #   5:     goto   5
l_f2_5:
    jmp     l_f2_8                  #   7:     goto   8
l_f2_8:
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $59984, %eax            #  12:     mul    t6 <- 59984, 70013
    movl    $70013, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  13:     div    t7 <- t6, 76100
    movl    $76100, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  14:     div    t8 <- t7, 83451
    movl    $83451, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  15:     mul    t9 <- t8, 43085
    movl    $43085, %ebx           
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  16:     mul    t10 <- t9, 77507
    movl    $77507, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $47930, %eax            #  17:     add    t11 <- 47930, 51967
    movl    $51967, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     sub    t12 <- t11, 68259
    movl    $68259, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #  19:     if     t10 = t12 goto 12_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  20:     goto   13_if_false
l_f2_12_if_true:
    jmp     l_f2_11                 #  22:     goto   11
l_f2_13_if_false:
l_f2_11:
l_f2_16_while_cond:
    call    f1                      #  26:     call   t13 <- f1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     mul    t14 <- t13, 97344
    movl    $97344, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     mul    t15 <- t14, 10646
    movl    $10646, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     div    t16 <- t15, 46180
    movl    $46180, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     mul    t17 <- t16, 98845
    movl    $98845, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     mul    t18 <- t17, 29384
    movl    $29384, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $50498, %eax            #  32:     if     50498 <= t18 goto 17_while_body
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_17_while_body     
    jmp     l_f2_15                 #  33:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  35:     goto   16_while_cond
l_f2_15:

l_f2_exit:
    # epilogue
    addl    $56, %esp               # remove locals
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
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
l_test_4_while_cond:
    movl    $39158, %eax            #   6:     if     39158 < 81622 goto 5_while_body
    movl    $81622, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_5_while_body    
    jmp     l_test_3                #   7:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   9:     goto   4_while_cond
l_test_3:
l_test_8_while_cond:
    jmp     l_test_7                #  12:     goto   7
    jmp     l_test_8_while_cond     #  13:     goto   8_while_cond
l_test_7:
    jmp     l_test_1_while_cond     #  15:     goto   1_while_cond
l_test_0:
    movl    $97, %eax               #  17:     if     97 > 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_11_if_true      
    jmp     l_test_12_if_false      #  18:     goto   12_if_false
l_test_11_if_true:
l_test_15_while_cond:
    movl    $98, %eax               #  21:     if     98 # 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_16_while_body   
    jmp     l_test_14               #  22:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  24:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
l_test_20_while_cond:
    jmp     l_test_20_while_cond    #  28:     goto   20_while_cond
    movl    $11650, %eax            #  29:     assign v0 <- 11650
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_10               #  31:     goto   10
l_test_12_if_false:
l_test_10:
l_test_25_while_cond:
    movl    $98, %eax               #  35:     if     98 < 99 goto 26_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_26_while_body   
    jmp     l_test_24               #  36:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  38:     goto   25_while_cond
l_test_24:
    movl    $60094, %eax            #  40:     sub    t1 <- 60094, 27223
    movl    $27223, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  41:     sub    t2 <- t1, 39195
    movl    $39195, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    call    f1                      #  42:     call   t3 <- f1
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  43:     add    t4 <- t2, t3
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  44:     assign v0 <- t4
    movl    %eax, v0               
    movl    $97, %eax               #  45:     if     97 < 99 goto 30_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_30_if_true      
    jmp     l_test_31_if_false      #  46:     goto   31_if_false
l_test_30_if_true:
l_test_34_while_cond:
    movl    $32824, %eax            #  49:     if     32824 # 42478 goto 35_while_body
    movl    $42478, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_35_while_body   
    jmp     l_test_33               #  50:     goto   33
l_test_35_while_body:
    jmp     l_test_34_while_cond    #  52:     goto   34_while_cond
l_test_33:
    jmp     l_test_exit            
    jmp     l_test_29               #  55:     goto   29
l_test_31_if_false:
l_test_29:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
