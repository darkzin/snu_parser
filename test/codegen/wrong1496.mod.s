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
    #    -41(%ebp)   1  [ $t5       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <int> %ebp-60 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -41(%ebp)         
    movl    $91142, %eax            #   1:     mul    t6 <- 91142, 62199
    movl    $62199, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   2:     mul    t7 <- t6, 12315
    movl    $12315, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   3:     mul    t8 <- t7, 76277
    movl    $76277, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   4:     div    t9 <- t8, 71975
    movl    $71975, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   5:     mul    t10 <- t9, 50418
    movl    $50418, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     mul    t11 <- t10, 18167
    movl    $18167, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     add    t12 <- t11, 87211
    movl    $87211, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     sub    t13 <- t12, 66489
    movl    $66489, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     add    t14 <- t13, 1779
    movl    $1779, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     sub    t15 <- t14, 3029
    movl    $3029, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     sub    t16 <- t15, 70810
    movl    $70810, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     if     t16 > 68247 goto 2_if_true
    movl    $68247, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #  13:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #  15:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $99, %eax               #  18:     assign v1 <- 99
    movb    %al, 8(%ebp)           

l_f0_exit:
    # epilogue
    addl    $48, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_exit              
l_f1_7_while_cond:
    movl    $99336, %eax            #   3:     if     99336 < 2372 goto 8_while_body
    movl    $2372, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_8_while_body      
    jmp     l_f1_6                  #   4:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #   6:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_2                  #   8:     goto   2
l_f1_2:

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
    #    -61(%ebp)   1  [ $t22      <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t23      <bool> %ebp-62 ]
    #    -63(%ebp)   1  [ $t24      <char> %ebp-63 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 50 of <array 61 of <array 73 of <array 67 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 87 of <array 64 of <array 50 of <array 41 of <array 82 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 99 of <array 86 of <array 42 of <array 66 of <array 74 of <bool>>>>>>> %ebp+16 ]
    #    -88(%ebp)   4  [ $v4       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $v5       <bool> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 = 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    movl    $100, %eax              #   5:     if     100 > 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   8:     goto   5_while_cond
l_f2_4:
    movl    $72185, %eax            #  10:     add    t5 <- 72185, 43781
    movl    $43781, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $54361, %eax            #  14:     mul    t7 <- 54361, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  15:     add    t8 <- t7, 91895
    movl    $91895, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  19:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     add    t11 <- t10, 53710
    movl    $53710, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  24:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t14 <- t13, 66923
    movl    $66923, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     add    t17 <- t16, 87170
    movl    $87170, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  33:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  34:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  35:     add    t21 <- v2, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -68(%ebp), %eax         #  36:     assign @t21 <- t5
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_1_while_cond       #  37:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  39:     call   t22 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #  40:     if     t22 >= 100 goto 10
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_10                
    jmp     l_f2_11                 #  41:     goto   11
l_f2_10:
    movl    $1, %eax                #  43:     assign t23 <- 1
    movb    %al, -62(%ebp)         
    jmp     l_f2_12                 #  44:     goto   12
l_f2_11:
    movl    $0, %eax                #  46:     assign t23 <- 0
    movb    %al, -62(%ebp)         
l_f2_12:
    movzbl  -62(%ebp), %eax         #  48:     assign v5 <- t23
    movb    %al, -89(%ebp)         
l_f2_15_while_cond:
    jmp     l_f2_14                 #  50:     goto   14
    call    dummyCHARfunc           #  51:     call   t24 <- dummyCHARfunc
    movb    %al, -63(%ebp)         
    movl    $1, %eax                #  52:     if     1 = 0 goto 20_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  53:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  55:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_15_while_cond      #  58:     goto   15_while_cond
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

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
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_exit            
    movl    $31252, %eax            #   3:     assign v0 <- 31252
    movl    %eax, v0               
    call    dummyBOOLfunc           #   4:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $19244, %eax            #   5:     assign v0 <- 19244
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    movl    $19599, %eax            #   8:     div    t1 <- 19599, 51597
    movl    $51597, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     if     t1 = 28425 goto 9_if_true
    movl    $28425, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
l_test_9_if_true:
l_test_13_while_cond:
    jmp     l_test_12               #  13:     goto   12
    jmp     l_test_13_while_cond    #  14:     goto   13_while_cond
l_test_12:
l_test_16_while_cond:
    jmp     l_test_16_while_cond    #  17:     goto   16_while_cond
    jmp     l_test_8                #  18:     goto   8
l_test_10_if_false:
l_test_8:
l_test_19_while_cond:
    movl    $97, %eax               #  22:     if     97 # 99 goto 20_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_20_while_body   
    jmp     l_test_18               #  23:     goto   18
l_test_20_while_body:
l_test_23_while_cond:
    movl    $27326, %eax            #  26:     if     27326 > 75582 goto 24_while_body
    movl    $75582, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_24_while_body   
    jmp     l_test_22               #  27:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  29:     goto   23_while_cond
l_test_22:
l_test_27_while_cond:
    movl    $99, %eax               #  32:     if     99 <= 98 goto 28_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_28_while_body   
    jmp     l_test_26               #  33:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  35:     goto   27_while_cond
l_test_26:
    movl    $100, %eax              #  37:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_19_while_cond    #  38:     goto   19_while_cond
l_test_18:
l_test_32_while_cond:
    movl    $66834, %eax            #  41:     if     66834 > 64424 goto 33_while_body
    movl    $64424, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_33_while_body   
    jmp     l_test_31               #  42:     goto   31
l_test_33_while_body:
l_test_36_while_cond:
    movl    $2542, %eax             #  45:     sub    t2 <- 2542, 36776
    movl    $36776, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  46:     add    t3 <- t2, 44589
    movl    $44589, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  47:     if     t3 = 6364 goto 37_while_body
    movl    $6364, %ebx            
    cmpl    %ebx, %eax             
    je      l_test_37_while_body   
    jmp     l_test_35               #  48:     goto   35
l_test_37_while_body:
    jmp     l_test_36_while_cond    #  50:     goto   36_while_cond
l_test_35:
    jmp     l_test_32_while_cond    #  52:     goto   32_while_cond
l_test_31:
    jmp     l_test_40               #  54:     goto   40
    jmp     l_test_40               #  55:     goto   40
    jmp     l_test_41               #  56:     goto   41
l_test_40:
    movl    $1, %eax                #  58:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_42               #  59:     goto   42
l_test_41:
    movl    $0, %eax                #  61:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_42:
    movzbl  -29(%ebp), %eax         #  63:     assign v2 <- t4
    movb    %al, v2                

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
v1:                                 # <char>
    .skip    1
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
