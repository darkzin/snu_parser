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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t19      <bool> %ebp-53 ]
    #    -54(%ebp)   1  [ $t2       <bool> %ebp-54 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 76 of <array 28 of <array 39 of <array 51 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 12 of <array 96 of <array 83 of <array 41 of <array 49 of <bool>>>>>>> %ebp+16 ]
    #    -85(%ebp)   1  [ $v3       <bool> %ebp-85 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     assign v0 <- 100
    movb    %al, 8(%ebp)           
    movl    $63318, %eax            #   2:     if     63318 = 71243 goto 6
    movl    $71243, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_6                 
    jmp     l_f0_7                  #   3:     goto   7
l_f0_6:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -54(%ebp)         
    jmp     l_f0_8                  #   6:     goto   8
l_f0_7:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -54(%ebp)         
l_f0_8:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $43951, %eax            #  13:     mul    t4 <- 43951, t3
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  14:     add    t5 <- t4, 90121
    movl    $90121, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  18:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  19:     add    t8 <- t7, 92284
    movl    $92284, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  23:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     add    t11 <- t10, 47496
    movl    $47496, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  28:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     add    t14 <- t13, 10142
    movl    $10142, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  33:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  34:     add    t18 <- v1, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -54(%ebp), %eax         #  35:     assign @t18 <- t2
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_10                 #  36:     goto   10
l_f0_10:
l_f0_14_while_cond:
    jmp     l_f0_14_while_cond      #  39:     goto   14_while_cond
    movl    $99, %eax               #  40:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    movl    $85105, %eax            #  41:     return 85105
    jmp     l_f0_exit              
    movl    $44044, %eax            #  42:     return 44044
    jmp     l_f0_exit              
l_f0_20_while_cond:
    jmp     l_f0_19                 #  44:     goto   19
    jmp     l_f0_20_while_cond      #  45:     goto   20_while_cond
l_f0_19:
    jmp     l_f0_24_if_false        #  47:     goto   24_if_false
    jmp     l_f0_22                 #  48:     goto   22
l_f0_24_if_false:
l_f0_22:
    movl    $25384, %eax            #  51:     if     25384 <= 67934 goto 26
    movl    $67934, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_26                
    jmp     l_f0_27                 #  52:     goto   27
l_f0_26:
    movl    $1, %eax                #  54:     assign t19 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f0_28                 #  55:     goto   28
l_f0_27:
    movl    $0, %eax                #  57:     assign t19 <- 0
    movb    %al, -53(%ebp)         
l_f0_28:
    movzbl  -53(%ebp), %eax         #  59:     assign v3 <- t19
    movb    %al, -85(%ebp)         
    jmp     l_f0_1                  #  60:     goto   1
l_f0_1:
    movl    $37314, %eax            #  62:     if     37314 # 36825 goto 31_if_true
    movl    $36825, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_31_if_true        
    jmp     l_f0_32_if_false        #  63:     goto   32_if_false
l_f0_31_if_true:
    movl    $72607, %eax            #  65:     return 72607
    jmp     l_f0_exit              
    movl    $25962, %eax            #  66:     return 25962
    jmp     l_f0_exit              
    jmp     l_f0_30                 #  67:     goto   30
l_f0_32_if_false:
l_f0_30:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t6       <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $t7       <char> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 36 of <array 82 of <array 18 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #    -33(%ebp)   1  [ $v1       <char> %ebp-33 ]

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
    movl    $49060, %eax            #   0:     mul    t1 <- 49060, 12520
    movl    $12520, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t2 <- t1, 7241
    movl    $7241, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $47791, %eax            #   2:     sub    t3 <- 47791, 36059
    movl    $36059, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t2 < t3 goto 1_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   4:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_8                  #   9:     goto   8
    jmp     l_f1_9                  #  10:     goto   9
l_f1_8:
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_10                 #  13:     goto   10
l_f1_9:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f1_10:
    movl    $1, %eax                #  17:     if     1 # t4 goto 5_if_true
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #  18:     goto   6_if_false
l_f1_5_if_true:
    movl    $51230, %eax            #  20:     return 51230
    jmp     l_f1_exit              
    movl    $98, %eax               #  21:     assign v1 <- 98
    movb    %al, -33(%ebp)         
l_f1_18_while_cond:
    jmp     l_f1_18_while_cond      #  23:     goto   18_while_cond
    jmp     l_f1_20                 #  24:     goto   20
l_f1_20:
    call    dummyCHARfunc           #  26:     call   t5 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movl    $5679, %eax             #  27:     return 5679
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  28:     call   t6 <- dummyBOOLfunc
    movb    %al, -27(%ebp)         
    jmp     l_f1_4                  #  29:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_28_if_false        #  32:     goto   28_if_false
    call    dummyCHARfunc           #  33:     call   t7 <- dummyCHARfunc
    movb    %al, -28(%ebp)         
    call    dummyINTfunc            #  34:     call   t8 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
l_f1_32_while_cond:
    jmp     l_f1_31                 #  36:     goto   31
    jmp     l_f1_32_while_cond      #  37:     goto   32_while_cond
l_f1_31:
    movl    $75552, %eax            #  39:     return 75552
    jmp     l_f1_exit              
    jmp     l_f1_26                 #  40:     goto   26
l_f1_28_if_false:
l_f1_26:

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 38 of <array 65 of <array 88 of <array 7 of <array 63 of <bool>>>>>>> %ebp+12 ]
    #    -17(%ebp)   1  [ $v2       <bool> %ebp-17 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $93396, %eax            #   1:     if     93396 = 15424 goto 5
    movl    $15424, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_6                  #   2:     goto   6
l_f2_5:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_7                  #   5:     goto   7
l_f2_6:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_7:
    movzbl  -14(%ebp), %eax         #   9:     return t2
    jmp     l_f2_exit              
l_f2_10_while_cond:
    movl    $0, %eax                #  11:     if     0 # 0 goto 11_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_11_while_body     
    jmp     l_f2_9                  #  12:     goto   9
l_f2_11_while_body:
    movl    $36204, %eax            #  14:     if     36204 >= 74676 goto 14
    movl    $74676, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_14                
    jmp     l_f2_15                 #  15:     goto   15
l_f2_14:
    movl    $1, %eax                #  17:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_16                 #  18:     goto   16
l_f2_15:
    movl    $0, %eax                #  20:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f2_16:
    movzbl  -15(%ebp), %eax         #  22:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_10_while_cond      #  23:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_1                  #  25:     goto   1
l_f2_1:
    jmp     l_f2_19                 #  27:     goto   19
    jmp     l_f2_20                 #  28:     goto   20
l_f2_19:
    movl    $1, %eax                #  30:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_21                 #  31:     goto   21
l_f2_20:
    movl    $0, %eax                #  33:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f2_21:
    movzbl  -16(%ebp), %eax         #  35:     assign v2 <- t4
    movb    %al, -17(%ebp)         

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
