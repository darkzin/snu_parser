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
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 89 of <array 25 of <array 58 of <array 73 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 36 of <array 96 of <array 17 of <array 54 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 47 of <array 80 of <array 92 of <array 43 of <array 34 of <char>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    movl    $97, %eax               #   2:     if     97 = 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
l_f0_6_while_cond:
    movl    $98, %eax               #   6:     if     98 > 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_7_while_body      
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_while_body:
    movl    $100, %eax              #   9:     if     100 < 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  10:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_6_while_cond       #  15:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_2_while_cond       #  17:     goto   2_while_cond
l_f0_1:
    call    dummyCHARfunc           #  19:     call   t12 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t11      <ptr(4) to <array 47 of <array 80 of <array 92 of <array 43 of <array 34 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 36 of <array 96 of <array 17 of <array 54 of <array 1 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <ptr(4) to <array 2 of <array 89 of <array 25 of <array 58 of <array 73 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t14      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t15      <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #   -18841368(%ebp)  18841324  [ $v5       <array 2 of <array 89 of <array 25 of <array 58 of <array 73 of <char>>>>>> %ebp-18841368 ]
    #   -31531824(%ebp)  12690456  [ $v6       <array 36 of <array 96 of <array 17 of <array 54 of <array 1 of <int>>>>>> %ebp-31531824 ]
    #   -537266888(%ebp)  505735064  [ $v7       <array 47 of <array 80 of <array 92 of <array 43 of <array 34 of <char>>>>>> %ebp-537266888 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $537266876, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $134316719, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-18841368(%ebp)      # local array 'v5': 5 dimensions
    movl    $2,-18841364(%ebp)      #   dimension 1: 2 elements
    movl    $89,-18841360(%ebp)     #   dimension 2: 89 elements
    movl    $25,-18841356(%ebp)     #   dimension 3: 25 elements
    movl    $58,-18841352(%ebp)     #   dimension 4: 58 elements
    movl    $73,-18841348(%ebp)     #   dimension 5: 73 elements
    movl    $5,-31531824(%ebp)      # local array 'v6': 5 dimensions
    movl    $36,-31531820(%ebp)     #   dimension 1: 36 elements
    movl    $96,-31531816(%ebp)     #   dimension 2: 96 elements
    movl    $17,-31531812(%ebp)     #   dimension 3: 17 elements
    movl    $54,-31531808(%ebp)     #   dimension 4: 54 elements
    movl    $1,-31531804(%ebp)      #   dimension 5: 1 elements
    movl    $5,-537266888(%ebp)     # local array 'v7': 5 dimensions
    movl    $47,-537266884(%ebp)    #   dimension 1: 47 elements
    movl    $80,-537266880(%ebp)    #   dimension 2: 80 elements
    movl    $92,-537266876(%ebp)    #   dimension 3: 92 elements
    movl    $43,-537266872(%ebp)    #   dimension 4: 43 elements
    movl    $34,-537266868(%ebp)    #   dimension 5: 34 elements

    # function body
    leal    -537266888(%ebp), %eax  #   0:     &()    t11 <- v7
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t11
    pushl   %eax                   
    movl    $0, %eax                #   2:     param  2 <- 0
    pushl   %eax                   
    leal    -31531824(%ebp), %eax   #   3:     &()    t12 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t12
    pushl   %eax                   
    leal    -18841368(%ebp), %eax   #   5:     &()    t13 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t13
    pushl   %eax                   
    call    f0                      #   7:     call   t14 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_f1_2                  #   8:     goto   2
l_f1_2:
    movl    $1, %eax                #  10:     assign t15 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_4                  #  11:     goto   4
    movl    $0, %eax                #  12:     assign t15 <- 0
    movb    %al, -26(%ebp)         
l_f1_4:
    movzbl  -26(%ebp), %eax         #  14:     assign v4 <- t15
    movb    %al, 20(%ebp)          
    movl    $3558, %eax             #  15:     mul    t16 <- 3558, 25631
    movl    $25631, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     mul    t17 <- t16, 54543
    movl    $54543, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     mul    t18 <- t17, 99591
    movl    $99591, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $46778, %eax            #  18:     add    t19 <- 46778, t18
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  19:     return t19
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $537266876, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t13      <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t14      <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]

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
    jmp     l_f2_4                  #   0:     goto   4
l_f2_4:
    jmp     l_f2_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     return t11
    jmp     l_f2_exit              
    movl    $77770, %eax            #   9:     if     77770 # 74927 goto 9_if_true
    movl    $74927, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  10:     goto   10_if_false
l_f2_9_if_true:
    movl    $87815, %eax            #  12:     if     87815 < 78034 goto 13
    movl    $78034, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_13                
    jmp     l_f2_14                 #  13:     goto   14
l_f2_13:
    movl    $1, %eax                #  15:     assign t12 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_15                 #  16:     goto   15
l_f2_14:
    movl    $0, %eax                #  18:     assign t12 <- 0
    movb    %al, -14(%ebp)         
l_f2_15:
    movzbl  -14(%ebp), %eax         #  20:     param  3 <- t12
    pushl   %eax                   
    movl    $97, %eax               #  21:     param  2 <- 97
    pushl   %eax                   
    movl    $1, %eax                #  22:     param  1 <- 1
    pushl   %eax                   
    call    dummyCHARfunc           #  23:     call   t13 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $100, %eax              #  24:     if     100 > t13 goto 17
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_17                
    jmp     l_f2_18                 #  25:     goto   18
l_f2_17:
    movl    $1, %eax                #  27:     assign t14 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_19                 #  28:     goto   19
l_f2_18:
    movl    $0, %eax                #  30:     assign t14 <- 0
    movb    %al, -16(%ebp)         
l_f2_19:
    movzbl  -16(%ebp), %eax         #  32:     param  0 <- t14
    pushl   %eax                   
    call    f1                      #  33:     call   t15 <- f1
    addl    $16, %esp              
    movl    %eax, -20(%ebp)        
    jmp     l_f2_8                  #  34:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $100, %eax              #  37:     if     100 > 100 goto 22_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_22_if_true        
    jmp     l_f2_23_if_false        #  38:     goto   23_if_false
l_f2_22_if_true:
    movl    $0, %eax                #  40:     return 0
    jmp     l_f2_exit              
    call    dummyINTfunc            #  41:     call   t16 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f2_21                 #  42:     goto   21
l_f2_23_if_false:
l_f2_21:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t4       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t5       <ptr(4) to <array 47 of <array 80 of <array 92 of <array 43 of <array 34 of <char>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t6       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t7       <ptr(4) to <array 36 of <array 96 of <array 17 of <array 54 of <array 1 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <ptr(4) to <array 2 of <array 89 of <array 25 of <array 58 of <array 73 of <char>>>>>>> %ebp-52 ]
    #    -53(%ebp)   1  [ $t9       <bool> %ebp-53 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    movl    $97, %eax               #   3:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
l_test_1:
    movl    $97, %eax               #   6:     assign v0 <- 97
    movb    %al, v0                
    movl    $17370, %eax            #   7:     mul    t0 <- 17370, 81681
    movl    $81681, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     mul    t1 <- t0, 21699
    movl    $21699, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     mul    t2 <- t1, 56566
    movl    $56566, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $133, %eax              #  10:     add    t3 <- 133, t2
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     if     t3 < 29595 goto 7
    movl    $29595, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_7               
    jmp     l_test_8                #  12:     goto   8
l_test_7:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_9                #  15:     goto   9
l_test_8:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -33(%ebp)         
l_test_9:
    movzbl  -33(%ebp), %eax         #  19:     assign v1 <- t4
    movb    %al, v1                
    leal    v4, %eax                #  20:     &()    t5 <- v4
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     param  3 <- t5
    pushl   %eax                   
    movl    $74957, %eax            #  22:     if     74957 >= 39510 goto 15
    movl    $39510, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_15              
    jmp     l_test_16               #  23:     goto   16
l_test_15:
    movl    $1, %eax                #  25:     assign t6 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_test_17               #  26:     goto   17
l_test_16:
    movl    $0, %eax                #  28:     assign t6 <- 0
    movb    %al, -41(%ebp)         
l_test_17:
    movzbl  -41(%ebp), %eax         #  30:     param  2 <- t6
    pushl   %eax                   
    leal    v3, %eax                #  31:     &()    t7 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     param  1 <- t7
    pushl   %eax                   
    leal    v2, %eax                #  33:     &()    t8 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  34:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  35:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -53(%ebp)         
    movl    $27921, %eax            #  36:     if     27921 > 26633 goto 20
    movl    $26633, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_20              
    jmp     l_test_21               #  37:     goto   21
l_test_20:
    movl    $1, %eax                #  39:     assign t10 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_22               #  40:     goto   22
l_test_21:
    movl    $0, %eax                #  42:     assign t10 <- 0
    movb    %al, -21(%ebp)         
l_test_22:
    movzbl  -21(%ebp), %eax         #  44:     assign v1 <- t10
    movb    %al, v1                
    jmp     l_test_11               #  45:     goto   11
l_test_11:
    movl    $64278, %eax            #  47:     if     64278 < 86024 goto 25_if_true
    movl    $86024, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_25_if_true      
    jmp     l_test_26_if_false      #  48:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_exit            
    jmp     l_test_24               #  51:     goto   24
l_test_26_if_false:
l_test_24:

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 2 of <array 89 of <array 25 of <array 58 of <array 73 of <char>>>>>>
    .long    5
    .long    2
    .long   89
    .long   25
    .long   58
    .long   73
    .skip 18841300
v3:                                 # <array 36 of <array 96 of <array 17 of <array 54 of <array 1 of <int>>>>>>
    .long    5
    .long   36
    .long   96
    .long   17
    .long   54
    .long    1
    .skip 12690432
v4:                                 # <array 47 of <array 80 of <array 92 of <array 43 of <array 34 of <char>>>>>>
    .long    5
    .long   47
    .long   80
    .long   92
    .long   43
    .long   34
    .skip 505735040








    # end of global data section
    #-----------------------------------------

    .end
##################################################
