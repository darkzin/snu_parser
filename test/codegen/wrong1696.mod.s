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
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t9       <char> %ebp-26 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #   1:     return t9
    jmp     l_f0_exit              
    movl    $100, %eax              #   2:     if     100 > 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    movl    $99, %eax               #   5:     return 99
    jmp     l_f0_exit              
    movl    $25535, %eax            #   6:     if     25535 # 77979 goto 7_if_true
    movl    $77979, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $1, %eax                #  12:     assign v1 <- 1
    movb    %al, 8(%ebp)           
    movl    $91584, %eax            #  13:     div    t10 <- 91584, 20210
    movl    $20210, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     div    t11 <- t10, 2549
    movl    $2549, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     div    t12 <- t11, 53415
    movl    $53415, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  0 <- t12
    pushl   %eax                   
    call    WriteInt                #  17:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_1                  #  18:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_14_if_false        #  21:     goto   14_if_false
    movl    $1, %eax                #  22:     assign v1 <- 1
    movb    %al, 8(%ebp)           
l_f0_17_while_cond:
    movl    $100, %eax              #  24:     if     100 > 99 goto 18_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_18_while_body     
    jmp     l_f0_16                 #  25:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  27:     goto   17_while_cond
l_f0_16:
    call    dummyBOOLfunc           #  29:     call   t13 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_f0_12                 #  30:     goto   12
l_f0_14_if_false:
l_f0_12:

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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t26      <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 74 of <array 17 of <array 90 of <array 86 of <array 80 of <char>>>>>>> %ebp+16 ]
    #    -85(%ebp)   1  [ $v4       <char> %ebp-85 ]

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
    movl    $33954, %eax            #   0:     add    t9 <- 33954, 76900
    movl    $76900, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   2:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   3:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #   4:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     add    t12 <- t11, 82081
    movl    $82081, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   7:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   8:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   9:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     add    t15 <- t14, 39830
    movl    $39830, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  13:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  14:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  15:     add    t18 <- t17, 21815
    movl    $21815, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  18:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  19:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  20:     add    t21 <- t20, 72308
    movl    $72308, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  21:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  23:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  24:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  25:     add    t25 <- v3, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $100, %eax              #  26:     assign @t25 <- 100
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  27:     call   t26 <- dummyBOOLfunc
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #  28:     if     t26 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_if_true         
    jmp     l_f1_2_if_true          #  29:     goto   2_if_true
l_f1_2_if_true:
    jmp     l_f1_1                  #  31:     goto   1
l_f1_1:
    jmp     l_f1_12                 #  33:     goto   12
    jmp     l_f1_12                 #  34:     goto   12
    jmp     l_f1_8_if_true          #  35:     goto   8_if_true
l_f1_12:
    jmp     l_f1_8_if_true          #  37:     goto   8_if_true
    jmp     l_f1_8_if_true          #  38:     goto   8_if_true
l_f1_8_if_true:
    jmp     l_f1_7                  #  40:     goto   7
l_f1_7:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t15      <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $t16      <bool> %ebp-31 ]
    #    -32(%ebp)   1  [ $t9       <char> %ebp-32 ]
    #    -33(%ebp)   1  [ $v1       <bool> %ebp-33 ]

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
l_f2_1_while_cond:
    jmp     l_f2_6                  #   1:     goto   6
    jmp     l_f2_6                  #   2:     goto   6
    jmp     l_f2_6                  #   3:     goto   6
    jmp     l_f2_6                  #   4:     goto   6
    jmp     l_f2_6                  #   5:     goto   6
    jmp     l_f2_6                  #   6:     goto   6
l_f2_6:
    jmp     l_f2_2_while_body       #   8:     goto   2_while_body
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  13:     call   t9 <- dummyCHARfunc
    movb    %al, -32(%ebp)         
l_f2_16_while_cond:
    movl    $48654, %eax            #  15:     if     48654 = 23368 goto 17_while_body
    movl    $23368, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_17_while_body     
    jmp     l_f2_15                 #  16:     goto   15
l_f2_17_while_body:
    call    dummyINTfunc            #  18:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $99, %eax               #  19:     if     99 >= 99 goto 25
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_25                
    jmp     l_f2_26                 #  20:     goto   26
l_f2_25:
    movl    $1, %eax                #  22:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_27                 #  23:     goto   27
l_f2_26:
    movl    $0, %eax                #  25:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_27:
    movzbl  -17(%ebp), %eax         #  27:     param  3 <- t11
    pushl   %eax                   
    movl    $0, %eax                #  28:     param  2 <- 0
    pushl   %eax                   
    movl    $97, %eax               #  29:     param  1 <- 97
    pushl   %eax                   
    movl    $31768, %eax            #  30:     div    t12 <- 31768, 38690
    movl    $38690, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     div    t13 <- t12, 37911
    movl    $37911, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $23218, %eax            #  32:     if     23218 # t13 goto 29
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_29                
    jmp     l_f2_30                 #  33:     goto   30
l_f2_29:
    movl    $1, %eax                #  35:     assign t14 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_31                 #  36:     goto   31
l_f2_30:
    movl    $0, %eax                #  38:     assign t14 <- 0
    movb    %al, -29(%ebp)         
l_f2_31:
    movzbl  -29(%ebp), %eax         #  40:     param  0 <- t14
    pushl   %eax                   
    call    f0                      #  41:     call   t15 <- f0
    addl    $16, %esp              
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  42:     if     t15 # 98 goto 21
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_21                
    jmp     l_f2_22                 #  43:     goto   22
l_f2_21:
    movl    $1, %eax                #  45:     assign t16 <- 1
    movb    %al, -31(%ebp)         
    jmp     l_f2_23                 #  46:     goto   23
l_f2_22:
    movl    $0, %eax                #  48:     assign t16 <- 0
    movb    %al, -31(%ebp)         
l_f2_23:
    movzbl  -31(%ebp), %eax         #  50:     assign v1 <- t16
    movb    %al, -33(%ebp)         
    jmp     l_f2_16_while_cond      #  51:     goto   16_while_cond
l_f2_15:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $t8       <char> %ebp-24 ]

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
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
l_test_2_while_body:
    movl    $28812, %eax            #   3:     if     28812 < 93278 goto 5
    movl    $93278, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_5               
    jmp     l_test_6                #   4:     goto   6
l_test_5:
    movl    $1, %eax                #   6:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   7:     goto   7
l_test_6:
    movl    $0, %eax                #   9:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t0
    movb    %al, v0                
    call    dummyBOOLfunc           #  12:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_test_11_while_cond:
    movl    $89394, %eax            #  14:     if     89394 <= 51158 goto 12_while_body
    movl    $51158, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_12_while_body   
    jmp     l_test_10               #  15:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  17:     goto   11_while_cond
l_test_10:
    movl    $34455, %eax            #  19:     if     34455 = 85598 goto 15
    movl    $85598, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_15              
    jmp     l_test_16               #  20:     goto   16
l_test_15:
    movl    $1, %eax                #  22:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_17               #  23:     goto   17
l_test_16:
    movl    $0, %eax                #  25:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_17:
    movzbl  -15(%ebp), %eax         #  27:     assign v0 <- t2
    movb    %al, v0                
    movl    $97, %eax               #  28:     if     97 < 99 goto 20
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_20              
    jmp     l_test_21               #  29:     goto   21
l_test_20:
    movl    $1, %eax                #  31:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_22               #  32:     goto   22
l_test_21:
    movl    $0, %eax                #  34:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_22:
    movzbl  -16(%ebp), %eax         #  36:     assign v0 <- t3
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #  38:     goto   1_while_cond
    call    dummyINTfunc            #  39:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #  40:     if     1 = 1 goto 27
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_27              
    jmp     l_test_28               #  41:     goto   28
l_test_27:
    movl    $1, %eax                #  43:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_29               #  44:     goto   29
l_test_28:
    movl    $0, %eax                #  46:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_test_29:
    movzbl  -21(%ebp), %eax         #  48:     param  3 <- t5
    pushl   %eax                   
    movl    $39707, %eax            #  49:     if     39707 > 19926 goto 31
    movl    $19926, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_31              
    jmp     l_test_32               #  50:     goto   32
l_test_31:
    movl    $1, %eax                #  52:     assign t6 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_33               #  53:     goto   33
l_test_32:
    movl    $0, %eax                #  55:     assign t6 <- 0
    movb    %al, -22(%ebp)         
l_test_33:
    movzbl  -22(%ebp), %eax         #  57:     param  2 <- t6
    pushl   %eax                   
    call    dummyCHARfunc           #  58:     call   t7 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  59:     param  1 <- t7
    pushl   %eax                   
    movl    $0, %eax                #  60:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  61:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -24(%ebp)         
l_test_36_while_cond:
    movl    $100, %eax              #  63:     if     100 < 99 goto 37_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_37_while_body   
    jmp     l_test_35               #  64:     goto   35
l_test_37_while_body:
    jmp     l_test_exit            
    movl    $86261, %eax            #  67:     assign v1 <- 86261
    movl    %eax, v1               
    jmp     l_test_36_while_cond    #  68:     goto   36_while_cond
l_test_35:
    movl    $63663, %eax            #  70:     assign v1 <- 63663
    movl    %eax, v1               

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
