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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t9       <char> %ebp-23 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -24(%ebp)   1  [ $v2       <bool> %ebp-24 ]
    #    -25(%ebp)   1  [ $v3       <char> %ebp-25 ]

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
l_f0_1_while_cond:
    movl    $65280, %eax            #   1:     return 65280
    jmp     l_f0_exit              
    movl    $70717, %eax            #   2:     return 70717
    jmp     l_f0_exit              
    movl    $42761, %eax            #   3:     if     42761 <= 33965 goto 6
    movl    $33965, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_6                 
    jmp     l_f0_7                  #   4:     goto   7
l_f0_6:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #   7:     goto   8
l_f0_7:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movzbl  -13(%ebp), %eax         #  11:     assign v2 <- t5
    movb    %al, -24(%ebp)         
    movl    $97, %eax               #  12:     assign v3 <- 97
    movb    %al, -25(%ebp)         
    movl    $13071, %eax            #  13:     return 13071
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
    jmp     l_f0_14_if_false        #  15:     goto   14_if_false
l_f0_16_while_cond:
    movl    $97, %eax               #  17:     if     97 <= 100 goto 17_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_17_while_body     
    jmp     l_f0_15                 #  18:     goto   15
l_f0_17_while_body:
    jmp     l_f0_16_while_cond      #  20:     goto   16_while_cond
l_f0_15:
    call    ReadInt                 #  22:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #  23:     call   t7 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #  24:     call   t8 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    jmp     l_f0_12                 #  25:     goto   12
l_f0_14_if_false:
l_f0_12:
l_f0_23_while_cond:
    call    dummyCHARfunc           #  29:     call   t9 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  30:     if     t9 >= 99 goto 24_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_24_while_body     
    jmp     l_f0_22                 #  31:     goto   22
l_f0_24_while_body:
    movl    $44211, %eax            #  33:     return 44211
    jmp     l_f0_exit              
    jmp     l_f0_23_while_cond      #  34:     goto   23_while_cond
l_f0_22:

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
    #    -69(%ebp)   1  [ $t5       <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 76 of <array 74 of <array 60 of <array 95 of <char>>>>>>> %ebp+8 ]
    #    -89(%ebp)   1  [ $v1       <char> %ebp-89 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -69(%ebp)         
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   4:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $65541, %eax            #   5:     mul    t7 <- 65541, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   6:     add    t8 <- t7, 32275
    movl    $32275, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   9:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  10:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $88623, %eax            #  11:     sub    t11 <- 88623, 65959
    movl    $65959, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     sub    t12 <- t11, 2093
    movl    $2093, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #  13:     add    t13 <- t10, t12
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  17:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     add    t16 <- t15, 41495
    movl    $41495, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  22:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  23:     add    t19 <- t18, 6351
    movl    $6351, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  24:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  26:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  27:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t23 <- v0, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $99, %eax               #  29:     assign @t23 <- 99
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 8 of <array 76 of <array 74 of <array 60 of <array 95 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 8 of <array 76 of <array 74 of <array 60 of <array 95 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 38 of <array 90 of <array 76 of <array 16 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 61 of <array 68 of <array 17 of <array 77 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -37(%ebp)   1  [ $v3       <char> %ebp-37 ]
    #   -256454464(%ebp)  256454424  [ $v4       <array 8 of <array 76 of <array 74 of <array 60 of <array 95 of <char>>>>>> %ebp-256454464 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $256454452, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $64113613, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-256454464(%ebp)     # local array 'v4': 5 dimensions
    movl    $8,-256454460(%ebp)     #   dimension 1: 8 elements
    movl    $76,-256454456(%ebp)    #   dimension 2: 76 elements
    movl    $74,-256454452(%ebp)    #   dimension 3: 74 elements
    movl    $60,-256454448(%ebp)    #   dimension 4: 60 elements
    movl    $95,-256454444(%ebp)    #   dimension 5: 95 elements

    # function body
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   2:     if     t5 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    movl    $99, %eax               #   5:     assign v3 <- 99
    movb    %al, -37(%ebp)         
    leal    -256454464(%ebp), %eax  #   6:     &()    t6 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #   8:     call   t7 <- f1
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    jmp     l_f2_1_while_cond       #   9:     goto   1_while_cond
l_f2_0:
    movl    $70792, %eax            #  11:     add    t8 <- 70792, 11632
    movl    $11632, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     sub    t9 <- t8, 6897
    movl    $6897, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $19950, %eax            #  13:     if     19950 # t9 goto 7_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  14:     goto   8_if_false
l_f2_7_if_true:
    movl    $85327, %eax            #  16:     return 85327
    jmp     l_f2_exit              
    movl    $12623, %eax            #  17:     return 12623
    jmp     l_f2_exit              
    jmp     l_f2_6                  #  18:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $100, %eax              #  21:     if     100 >= 100 goto 13_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  22:     goto   14_if_false
l_f2_13_if_true:
    leal    -256454464(%ebp), %eax  #  24:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  26:     call   t11 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movl    $97, %eax               #  27:     if     97 = t11 goto 17_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  28:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  30:     goto   16
l_f2_18_if_false:
l_f2_16:
    jmp     l_f2_12                 #  33:     goto   12
l_f2_14_if_false:
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $256454452, %esp        # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 76 of <array 74 of <array 60 of <array 95 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    movl    $99, %eax               #   0:     if     99 <= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $87024, %eax            #   4:     if     87024 < 41050 goto 6_while_body
    movl    $41050, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    jmp     l_test_10_if_false      #   9:     goto   10_if_false
    jmp     l_test_8                #  10:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_0                #  13:     goto   0
l_test_2_if_false:
l_test_0:
l_test_15_while_cond:
    jmp     l_test_14               #  17:     goto   14
    jmp     l_test_15_while_cond    #  18:     goto   15_while_cond
l_test_14:
    movl    $53411, %eax            #  20:     sub    t0 <- 53411, 72474
    movl    $72474, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     sub    t1 <- t0, 38184
    movl    $38184, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     add    t2 <- t1, 93065
    movl    $93065, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     if     t2 # 75270 goto 18_if_true
    movl    $75270, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_18_if_true      
    jmp     l_test_19_if_false      #  24:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  26:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_11               #  29:     goto   11
l_test_11:
    leal    v0, %eax                #  31:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  33:     call   t4 <- f1
    addl    $4, %esp               
    movb    %al, -29(%ebp)         

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
v0:                                 # <array 8 of <array 76 of <array 74 of <array 60 of <array 95 of <char>>>>>>
    .long    5
    .long    8
    .long   76
    .long   74
    .long   60
    .long   95
    .skip 256454400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
