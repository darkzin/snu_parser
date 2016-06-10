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
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t5       <char> %ebp-81 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t9       <bool> %ebp-97 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 93 of <array 88 of <array 48 of <array 17 of <array 54 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 47 of <array 27 of <array 35 of <array 62 of <array 74 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 24 of <array 81 of <array 4 of <array 86 of <array 61 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <bool> %ebp+20 ]
    #    -98(%ebp)   1  [ $v6       <char> %ebp-98 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -81(%ebp)         
    movzbl  -81(%ebp), %eax         #   1:     assign v6 <- t5
    movb    %al, -98(%ebp)         
l_f0_2_while_cond:
    movl    $26168, %eax            #   3:     mul    t6 <- 26168, 79416
    movl    $79416, %ebx           
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   4:     mul    t7 <- t6, 19792
    movl    $19792, %ebx           
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   5:     mul    t8 <- t7, 77401
    movl    $77401, %ebx           
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   6:     if     t8 > 33561 goto 3_while_body
    movl    $33561, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   7:     goto   1
l_f0_3_while_body:
    movl    $0, %eax                #   9:     if     0 # 0 goto 6
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_6                 
    jmp     l_f0_7                  #  10:     goto   7
l_f0_6:
    movl    $1, %eax                #  12:     assign t9 <- 1
    movb    %al, -97(%ebp)         
    jmp     l_f0_8                  #  13:     goto   8
l_f0_7:
    movl    $0, %eax                #  15:     assign t9 <- 0
    movb    %al, -97(%ebp)         
l_f0_8:
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $92685, %eax            #  20:     mul    t11 <- 92685, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     add    t12 <- t11, 8030
    movl    $8030, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  24:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  25:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t15 <- t14, 78933
    movl    $78933, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  29:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  30:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     add    t18 <- t17, 13143
    movl    $13143, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  33:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  34:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  35:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  36:     add    t21 <- t20, 83516
    movl    $83516, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  37:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  38:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  39:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  40:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  41:     add    t25 <- v2, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -97(%ebp), %eax         #  42:     assign @t25 <- t9
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_12_if_false        #  43:     goto   12_if_false
    jmp     l_f0_10                 #  44:     goto   10
l_f0_12_if_false:
l_f0_10:
    movl    $99, %eax               #  47:     assign v6 <- 99
    movb    %al, -98(%ebp)         
    jmp     l_f0_2_while_cond       #  48:     goto   2_while_cond
l_f0_1:
l_f0_15_while_cond:
    movl    $2516, %eax             #  51:     add    t26 <- 2516, 27180
    movl    $27180, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $48806, %eax            #  52:     if     48806 < t26 goto 16_while_body
    movl    -80(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_16_while_body     
    jmp     l_f0_14                 #  53:     goto   14
l_f0_16_while_body:
    movl    $100, %eax              #  55:     if     100 > 98 goto 19_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  56:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  58:     goto   18
l_f0_20_if_false:
l_f0_18:
    jmp     l_f0_15_while_cond      #  61:     goto   15_while_cond
l_f0_14:

l_f0_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 88 of <array 41 of <array 60 of <array 92 of <array 15 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 55 of <array 4 of <array 81 of <array 92 of <array 56 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #    -25(%ebp)   1  [ $v5       <bool> %ebp-25 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_1_if_true          #   1:     goto   1_if_true
    jmp     l_f1_1_if_true          #   2:     goto   1_if_true
l_f1_1_if_true:
    jmp     l_f1_exit              
    leal    _str_1, %eax            #   5:     &()    t5 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   7:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   9:     goto   0
l_f1_0:
    jmp     l_f1_15                 #  11:     goto   15
    movl    $47420, %eax            #  12:     if     47420 = 79179 goto 14
    movl    $79179, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_14                
    jmp     l_f1_15                 #  13:     goto   15
l_f1_14:
    movl    $1, %eax                #  15:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_16                 #  16:     goto   16
l_f1_15:
    movl    $0, %eax                #  18:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f1_16:
    movzbl  -17(%ebp), %eax         #  20:     assign v5 <- t6
    movb    %al, -25(%ebp)         
    jmp     l_f1_21_if_false        #  21:     goto   21_if_false
    movl    $97, %eax               #  22:     assign v4 <- 97
    movb    %al, 16(%ebp)          
    jmp     l_f1_25_if_false        #  23:     goto   25_if_false
    jmp     l_f1_23                 #  24:     goto   23
l_f1_25_if_false:
l_f1_23:
    movl    $99, %eax               #  27:     if     99 # 100 goto 27_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_27_if_true        
    jmp     l_f1_28_if_false        #  28:     goto   28_if_false
l_f1_27_if_true:
    jmp     l_f1_32_if_false        #  30:     goto   32_if_false
    jmp     l_f1_30                 #  31:     goto   30
l_f1_32_if_false:
l_f1_30:
    call    ReadInt                 #  34:     call   t7 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $54676, %eax            #  35:     if     54676 <= 95761 goto 35_if_true
    movl    $95761, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_35_if_true        
    jmp     l_f1_36_if_false        #  36:     goto   36_if_false
l_f1_35_if_true:
    jmp     l_f1_34                 #  38:     goto   34
l_f1_36_if_false:
l_f1_34:
    movl    $92261, %eax            #  41:     if     92261 < 82593 goto 39_if_true
    movl    $82593, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_39_if_true        
    jmp     l_f1_40_if_false        #  42:     goto   40_if_false
l_f1_39_if_true:
    jmp     l_f1_38                 #  44:     goto   38
l_f1_40_if_false:
l_f1_38:
    jmp     l_f1_26                 #  47:     goto   26
l_f1_28_if_false:
l_f1_26:
    jmp     l_f1_19                 #  50:     goto   19
l_f1_21_if_false:
l_f1_19:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 80 of <array 14 of <array 10 of <array 49 of <array 92 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 13 of <array 79 of <array 34 of <array 6 of <array 34 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 51 of <array 41 of <array 80 of <array 11 of <array 29 of <bool>>>>>>> %ebp+20 ]

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
    movl    $75504, %eax            #   0:     div    t5 <- 75504, 69617
    movl    $69617, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v3 <- t5
    movl    %eax, 12(%ebp)         
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
l_f2_3_while_cond:
    jmp     l_f2_4_while_body       #   4:     goto   4_while_body
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #   6:     goto   3_while_cond

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
    movl    $69405, %eax            #   0:     div    t0 <- 69405, 13700
    movl    $13700, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t0 = 99561 goto 1
    movl    $99561, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    movl    $97, %eax               #  10:     if     97 < 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #  11:     goto   7_if_false
l_test_6_if_true:
l_test_10_while_cond:
    movl    $97, %eax               #  14:     if     97 > 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #  15:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  17:     goto   10_while_cond
l_test_9:
    movl    $97, %eax               #  19:     if     97 = 97 goto 14
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_14              
    jmp     l_test_15               #  20:     goto   15
l_test_14:
    movl    $1, %eax                #  22:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_16               #  23:     goto   16
l_test_15:
    movl    $0, %eax                #  25:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_16:
    movzbl  -18(%ebp), %eax         #  27:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_5                #  28:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyINTfunc            #  31:     call   t3 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     assign v1 <- t3
    movl    %eax, v1               
    movl    $0, %eax                #  33:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_25_if_false      #  34:     goto   25_if_false
    jmp     l_test_23               #  35:     goto   23
l_test_25_if_false:
l_test_23:
    movl    $67656, %eax            #  38:     sub    t4 <- 67656, 13781
    movl    $13781, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  39:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #  40:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_19               #  41:     goto   19
l_test_19:
    jmp     l_test_exit            
l_test_29_while_cond:
    jmp     l_test_28               #  45:     goto   28
    jmp     l_test_exit            
l_test_33_while_cond:
    movl    $33430, %eax            #  48:     if     33430 >= 23642 goto 34_while_body
    movl    $23642, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_34_while_body   
    jmp     l_test_32               #  49:     goto   32
l_test_34_while_body:
    jmp     l_test_33_while_cond    #  51:     goto   33_while_cond
l_test_32:
    jmp     l_test_29_while_cond    #  53:     goto   29_while_cond
l_test_28:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
