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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 4 of <array 3 of <array 2 of <array 9 of <int>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f0_1_while_cond:
l_f0_4_while_cond:
    movl    $3481, %eax             #   2:     if     3481 >= 97375 goto 5_while_body
    movl    $97375, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_5_while_body      
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_while_body:
    jmp     l_f0_4_while_cond       #   5:     goto   4_while_cond
l_f0_3:
l_f0_8_while_cond:
    jmp     l_f0_8_while_cond       #   8:     goto   8_while_cond
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
    jmp     l_f0_exit              
    movl    $97, %eax               #  11:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 2 of <array 7 of <array 3 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_7_while_cond:
    movl    $99, %eax               #   8:     if     99 < 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_8_while_body      
    jmp     l_f1_6                  #   9:     goto   6
l_f1_8_while_body:
l_f1_11_while_cond:
    jmp     l_f1_10                 #  12:     goto   10
    jmp     l_f1_11_while_cond      #  13:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_7_while_cond       #  15:     goto   7_while_cond
l_f1_6:
    movl    $99, %eax               #  17:     if     99 < 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  18:     goto   15_if_false
l_f1_14_if_true:
l_f1_18_while_cond:
    jmp     l_f1_17                 #  21:     goto   17
    movl    $77366, %eax            #  22:     if     77366 <= 14277 goto 21
    movl    $14277, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_21                
    jmp     l_f1_22                 #  23:     goto   22
l_f1_21:
    movl    $1, %eax                #  25:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_23                 #  26:     goto   23
l_f1_22:
    movl    $0, %eax                #  28:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_23:
    movzbl  -13(%ebp), %eax         #  30:     return t1
    jmp     l_f1_exit              
    jmp     l_f1_18_while_cond      #  31:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_13                 #  33:     goto   13
l_f1_15_if_false:
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t4       <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 7 of <array 5 of <array 7 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #    -93(%ebp)   1  [ $v1       <bool> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    movl    $75010, %eax            #   1:     if     75010 # 61522 goto 2_while_body
    movl    $61522, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    jmp     l_f2_4                  #   5:     goto   4
    jmp     l_f2_5_while_cond       #   6:     goto   5_while_cond
l_f2_4:
    movl    $97, %eax               #   8:     if     97 <= 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   9:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #  11:     goto   7
l_f2_9_if_false:
l_f2_7:
    movl    $85233, %eax            #  14:     return 85233
    jmp     l_f2_exit              
l_f2_13_while_cond:
    movl    $92073, %eax            #  16:     if     92073 < 84594 goto 14_while_body
    movl    $84594, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_14_while_body     
    jmp     l_f2_12                 #  17:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  19:     goto   13_while_cond
l_f2_12:
    movl    $81332, %eax            #  21:     return 81332
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  22:     goto   1_while_cond
l_f2_0:
    call    dummyINTfunc            #  24:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #  25:     call   t2 <- ReadInt
    movl    %eax, -60(%ebp)        
    movl    $78785, %eax            #  26:     add    t3 <- 78785, 76020
    movl    $76020, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  27:     if     t2 <= t3 goto 19
    movl    -68(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_19                
    jmp     l_f2_20                 #  28:     goto   20
l_f2_19:
    movl    $1, %eax                #  30:     assign t4 <- 1
    movb    %al, -69(%ebp)         
    jmp     l_f2_21                 #  31:     goto   21
l_f2_20:
    movl    $0, %eax                #  33:     assign t4 <- 0
    movb    %al, -69(%ebp)         
l_f2_21:
    movl    $2, %eax                #  35:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  37:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $28208, %eax            #  38:     mul    t6 <- 28208, t5
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  39:     add    t7 <- t6, 84407
    movl    $84407, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  40:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  41:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  42:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  43:     mul    t9 <- t7, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  44:     add    t10 <- t9, 49088
    movl    $49088, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  45:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  46:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  47:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  48:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  49:     add    t13 <- t12, 33297
    movl    $33297, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  50:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  51:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  52:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  53:     mul    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  54:     add    t16 <- t15, 79169
    movl    $79169, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  55:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  56:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  57:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  58:     add    t19 <- t17, t18
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  59:     add    t20 <- v0, t19
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -69(%ebp), %eax         #  60:     assign @t20 <- t4
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   3:     goto   2_while_cond
l_test_7_while_cond:
    jmp     l_test_6                #   5:     goto   6
l_test_11_while_cond:
    movl    $85420, %eax            #   7:     if     85420 > 81149 goto 12_while_body
    movl    $81149, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_12_while_body   
    jmp     l_test_10               #   8:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  10:     goto   11_while_cond
l_test_10:
    call    ReadInt                 #  12:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_7_while_cond     #  13:     goto   7_while_cond
l_test_6:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
