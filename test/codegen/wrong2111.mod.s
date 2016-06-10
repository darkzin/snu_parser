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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
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
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 40 of <array 67 of <array 35 of <array 27 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 62 of <array 81 of <array 91 of <array 75 of <array 29 of <bool>>>>>>> %ebp+12 ]
    #    -93(%ebp)   1  [ $v2       <bool> %ebp-93 ]

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
l_f0_1_while_cond:
    movl    $62217, %eax            #   1:     sub    t9 <- 62217, 85215
    movl    $85215, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $96780, %eax            #   2:     add    t10 <- 96780, 66319
    movl    $66319, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -92(%ebp), %eax         #   3:     if     t9 < t10 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    movl    $100, %eax              #   8:     if     100 < 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   9:     goto   6_if_false
l_f0_5_if_true:
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #  12:     goto   9_while_cond
    call    ReadInt                 #  13:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #  14:     call   t12 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $94780, %eax            #  18:     mul    t14 <- 94780, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     add    t15 <- t14, 73288
    movl    $73288, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  23:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     add    t18 <- t17, 13678
    movl    $13678, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  28:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  29:     add    t21 <- t20, 12690
    movl    $12690, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  33:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  34:     add    t24 <- t23, 26299
    movl    $26299, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  35:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  36:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  37:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  38:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    12(%ebp), %eax          #  39:     add    t28 <- v1, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movzbl  -21(%ebp), %eax         #  40:     assign @t28 <- t12
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_4                  #  41:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_15_if_false        #  44:     goto   15_if_false
    movl    $0, %eax                #  45:     if     0 = 1 goto 17_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  46:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  48:     goto   16
l_f0_18_if_false:
l_f0_16:
    jmp     l_f0_13                 #  51:     goto   13
l_f0_15_if_false:
l_f0_13:

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    movl    $100, %eax              #   0:     if     100 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $0, %eax                #   4:     if     0 # 0 goto 6_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_6_while_body      
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_while_body:
    jmp     l_f1_10_if_false        #   7:     goto   10_if_false
    jmp     l_f1_8                  #   8:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $17678, %eax            #  11:     param  0 <- 17678
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #  13:     call   t9 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_5_while_cond       #  14:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_0                  #  16:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $6591, %eax             #  19:     if     6591 = 90117 goto 14_if_true
    movl    $90117, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  20:     goto   15_if_false
l_f1_14_if_true:
l_f1_18_while_cond:
    jmp     l_f1_18_while_cond      #  23:     goto   18_while_cond
    movl    $0, %eax                #  24:     if     0 # 1 goto 21_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_21_if_true        
    jmp     l_f1_22_if_false        #  25:     goto   22_if_false
l_f1_21_if_true:
    jmp     l_f1_20                 #  27:     goto   20
l_f1_22_if_false:
l_f1_20:
    movl    $97, %eax               #  30:     if     97 >= 99 goto 25_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_25_if_true        
    jmp     l_f1_26_if_false        #  31:     goto   26_if_false
l_f1_25_if_true:
    jmp     l_f1_24                 #  33:     goto   24
l_f1_26_if_false:
l_f1_24:
    jmp     l_f1_13                 #  36:     goto   13
l_f1_15_if_false:
l_f1_13:
    call    dummyINTfunc            #  39:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    call    ReadInt                 #   0:     call   t9 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f2_0                  #   1:     goto   0
l_f2_0:
    call    dummyINTfunc            #   3:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $69418, %eax            #   4:     if     69418 > 70099 goto 9
    movl    $70099, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_9                 
    jmp     l_f2_10                 #   5:     goto   10
l_f2_9:
    movl    $1, %eax                #   7:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_11                 #   8:     goto   11
l_f2_10:
    movl    $0, %eax                #  10:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_11:
    movzbl  -17(%ebp), %eax         #  12:     assign v0 <- t11
    movb    %al, 8(%ebp)           
l_f2_14_while_cond:
    movl    $97, %eax               #  14:     if     97 < 97 goto 15_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_15_while_body     
    jmp     l_f2_13                 #  15:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  17:     goto   14_while_cond
l_f2_13:
    movl    $97, %eax               #  19:     if     97 # 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  20:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  22:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_4                  #  25:     goto   4
l_f2_4:
    movl    $44648, %eax            #  27:     param  0 <- 44648
    pushl   %eax                   
    call    WriteInt                #  28:     call   WriteInt
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <char> %ebp-37 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <char>>> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    movl    $86539, %eax            #   5:     assign v0 <- 86539
    movl    %eax, v0               
    call    ReadInt                 #   6:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
    jmp     l_test_6                #   8:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $99, %eax               #  11:     param  1 <- 99
    pushl   %eax                   
    jmp     l_test_10               #  12:     goto   10
    jmp     l_test_11               #  13:     goto   11
l_test_10:
    movl    $1, %eax                #  15:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_12               #  16:     goto   12
l_test_11:
    movl    $0, %eax                #  18:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_12:
    movzbl  -21(%ebp), %eax         #  20:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  21:     call   t3 <- f2
    addl    $8, %esp               
    movb    %al, -22(%ebp)         
    jmp     l_test_0                #  22:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $16115, %eax            #  25:     add    t4 <- 16115, 29625
    movl    $29625, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     sub    t5 <- t4, 58845
    movl    $58845, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     if     t5 # 69036 goto 15_if_true
    movl    $69036, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_15_if_true      
    jmp     l_test_16_if_false      #  28:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_exit            
    jmp     l_test_14               #  31:     goto   14
l_test_16_if_false:
l_test_14:
    movl    $100, %eax              #  34:     if     100 > 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_20_if_true      
    jmp     l_test_21_if_false      #  35:     goto   21_if_false
l_test_20_if_true:
    call    ReadInt                 #  37:     call   t6 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    $68211, %eax            #  38:     assign v0 <- 68211
    movl    %eax, v0               
l_test_26_while_cond:
    jmp     l_test_25               #  40:     goto   25
    jmp     l_test_26_while_cond    #  41:     goto   26_while_cond
l_test_25:
    movl    $82616, %eax            #  43:     param  0 <- 82616
    pushl   %eax                   
    call    f1                      #  44:     call   t7 <- f1
    addl    $4, %esp               
    movb    %al, -37(%ebp)         
    movl    $46412, %eax            #  45:     if     46412 < 46529 goto 30_if_true
    movl    $46529, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_30_if_true      
    jmp     l_test_31_if_false      #  46:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_29               #  48:     goto   29
l_test_31_if_false:
l_test_29:
    call    dummyProcedure          #  51:     call   dummyProcedure
    leal    _str_1, %eax            #  52:     &()    t8 <- _str_1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  53:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #  54:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_37_if_false      #  55:     goto   37_if_false
    jmp     l_test_35               #  56:     goto   35
l_test_37_if_false:
l_test_35:
    jmp     l_test_19               #  59:     goto   19
l_test_21_if_false:
l_test_19:

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
