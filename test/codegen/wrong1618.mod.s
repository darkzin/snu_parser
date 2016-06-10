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
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 57 of <array 43 of <array 19 of <array 26 of <array 34 of <char>>>>>>> %ebp+20 ]
    #    -40(%ebp)   4  [ $v5       <int> %ebp-40 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $28099, %eax            #   1:     div    t6 <- 28099, 16522
    movl    $16522, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #   2:     call   t7 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   3:     div    t8 <- t6, t7
    movl    -28(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     return t8
    jmp     l_f0_exit              
    movl    $100, %eax              #   5:     if     100 # 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   6:     goto   4_if_false
l_f0_3_if_true:
    movl    $95674, %eax            #   8:     assign v5 <- 95674
    movl    %eax, -40(%ebp)        
    movl    $37306, %eax            #   9:     div    t9 <- 37306, 28806
    movl    $28806, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     mul    t10 <- t9, 6160
    movl    $6160, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     param  0 <- t10
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_2                  #  13:     goto   2
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
    #    -69(%ebp)   1  [ $t5       <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t7       <char> %ebp-77 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 89 of <array 98 of <array 93 of <array 79 of <array 25 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 17 of <array 62 of <array 90 of <array 99 of <array 11 of <char>>>>>>> %ebp+16 ]
    #    -92(%ebp)   4  [ $v4       <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $v5       <char> %ebp-93 ]

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
l_f1_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -69(%ebp)         
    jmp     l_f1_1_while_cond       #   2:     goto   1_while_cond
    movl    $19238, %eax            #   3:     add    t6 <- 19238, 60522
    movl    $60522, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   4:     assign v4 <- t6
    movl    %eax, -92(%ebp)        
    call    dummyCHARfunc           #   5:     call   t7 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   7:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   8:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $84533, %eax            #   9:     mul    t9 <- 84533, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  10:     add    t10 <- t9, 60431
    movl    $60431, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  14:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     add    t13 <- t12, 51845
    movl    $51845, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  19:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     add    t16 <- t15, 50321
    movl    $50321, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  24:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     add    t19 <- t18, 44266
    movl    $44266, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  26:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  28:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  29:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  30:     add    t23 <- v2, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -77(%ebp), %eax         #  31:     assign @t23 <- t7
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 97 of <array 80 of <array 57 of <array 80 of <array 5 of <int>>>>>>> %ebp+12 ]
    #    -19(%ebp)   1  [ $v3       <char> %ebp-19 ]

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
l_f2_1_while_cond:
    movl    $70548, %eax            #   1:     if     70548 = 911 goto 2_while_body
    movl    $911, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    call    ReadInt                 #   4:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $6527, %eax             #   5:     if     6527 < 73696 goto 6_if_true
    movl    $73696, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   6:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_if_false:
l_f2_5:
l_f2_10_while_cond:
    jmp     l_f2_10_while_cond      #  12:     goto   10_while_cond
    jmp     l_f2_12                 #  13:     goto   12
l_f2_12:
    jmp     l_f2_1_while_cond       #  15:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  17:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  18:     assign v3 <- t6
    movb    %al, -19(%ebp)         
    jmp     l_f2_18                 #  19:     goto   18
    movl    $1, %eax                #  20:     assign t7 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_19                 #  21:     goto   19
l_f2_18:
    movl    $0, %eax                #  23:     assign t7 <- 0
    movb    %al, -18(%ebp)         
l_f2_19:
    movzbl  -18(%ebp), %eax         #  25:     assign v1 <- t7
    movb    %al, 8(%ebp)           

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
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_6_while_cond:
    movl    $73480, %eax            #   3:     if     73480 >= 45730 goto 7_while_body
    movl    $45730, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #   4:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
l_test_5:
    jmp     l_test_0                #   8:     goto   0
l_test_0:
l_test_10_while_cond:
    movl    $48251, %eax            #  11:     if     48251 < 89290 goto 11_while_body
    movl    $89290, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_11_while_body   
    jmp     l_test_9                #  12:     goto   9
l_test_11_while_body:
    jmp     l_test_exit            
    movl    $36578, %eax            #  15:     if     36578 <= 87490 goto 15
    movl    $87490, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_15              
    jmp     l_test_16               #  16:     goto   16
l_test_15:
    movl    $1, %eax                #  18:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_17               #  19:     goto   17
l_test_16:
    movl    $0, %eax                #  21:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_17:
    movzbl  -13(%ebp), %eax         #  23:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_10_while_cond    #  25:     goto   10_while_cond
l_test_9:
    movl    $54968, %eax            #  27:     add    t1 <- 54968, 30610
    movl    $30610, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     add    t2 <- t1, 89350
    movl    $89350, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $22178, %eax            #  29:     if     22178 < t2 goto 21_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_21_if_true      
    jmp     l_test_22_if_false      #  30:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_exit            
    jmp     l_test_20               #  33:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_exit            
    movl    $19774, %eax            #  37:     add    t3 <- 19774, 31958
    movl    $31958, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  38:     add    t4 <- t3, 27390
    movl    $27390, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  39:     assign v1 <- t4
    movl    %eax, v1               

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
