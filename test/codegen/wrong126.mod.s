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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 1 of <array 1 of <array 2 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 6 of <array 7 of <array 2 of <array 4 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 6 of <array 8 of <array 3 of <array 10 of <bool>>>>>>> %ebp+16 ]

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
l_f0_4_while_cond:
    movl    $100, %eax              #   2:     if     100 > 100 goto 5_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_5_while_body      
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_while_body:
    jmp     l_f0_4_while_cond       #   5:     goto   4_while_cond
l_f0_3:
    movl    $98, %eax               #   7:     return 98
    jmp     l_f0_exit              
l_f0_9_while_cond:
    movl    $12839, %eax            #   9:     if     12839 = 21231 goto 10_while_body
    movl    $21231, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_10_while_body     
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  12:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_0                  #  14:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  17:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  18:     return t8
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  19:     call   t9 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  20:     return t9
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 10 of <array 10 of <array 9 of <array 5 of <char>>>>>>> %ebp+12 ]

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
    movl    $99, %eax               #   1:     if     99 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyCHARfunc           #   4:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     return t8
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #   8:     call   t9 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     return t9
    jmp     l_f1_exit              
l_f1_7_while_cond:
    movl    $99, %eax               #  11:     if     99 < 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_8_while_body      
    jmp     l_f1_6                  #  12:     goto   6
l_f1_8_while_body:
    movl    $99, %eax               #  14:     if     99 >= 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  15:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  17:     goto   10
l_f1_12_if_false:
l_f1_10:
l_f1_15_while_cond:
    jmp     l_f1_15_while_cond      #  21:     goto   15_while_cond
    movl    $97, %eax               #  22:     if     97 >= 99 goto 18_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  23:     goto   19_if_false
l_f1_18_if_true:
    movl    $98, %eax               #  25:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_17                 #  26:     goto   17
l_f1_19_if_false:
l_f1_17:
    jmp     l_f1_7_while_cond       #  29:     goto   7_while_cond
l_f1_6:

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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 10 of <array 6 of <array 8 of <array 3 of <array 10 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 8 of <array 6 of <array 7 of <array 2 of <array 4 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 2 of <array 1 of <array 1 of <array 2 of <array 3 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t15      <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t16      <ptr(4) to <array 10 of <array 6 of <array 8 of <array 3 of <array 10 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <ptr(4) to <array 8 of <array 6 of <array 7 of <array 2 of <array 4 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 2 of <array 1 of <array 1 of <array 2 of <array 3 of <bool>>>>>>> %ebp-48 ]
    #    -49(%ebp)   1  [ $t19      <char> %ebp-49 ]
    #    -56(%ebp)   4  [ $t20      <ptr(4) to <array 10 of <array 6 of <array 8 of <array 3 of <array 10 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <ptr(4) to <array 8 of <array 6 of <array 7 of <array 2 of <array 4 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 2 of <array 1 of <array 1 of <array 2 of <array 3 of <bool>>>>>>> %ebp-64 ]
    #    -65(%ebp)   1  [ $t23      <char> %ebp-65 ]
    #    -72(%ebp)   4  [ $t8       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t9       <int> %ebp-76 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 6 of <array 4 of <array 3 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 4 of <array 2 of <array 7 of <array 2 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 8 of <array 6 of <array 8 of <array 7 of <bool>>>>>>> %ebp+20 ]
    #   -112(%ebp)  36  [ $v5       <array 2 of <array 1 of <array 1 of <array 2 of <array 3 of <bool>>>>>> %ebp-112 ]
    #   -10888(%ebp)  10776  [ $v6       <array 8 of <array 6 of <array 7 of <array 2 of <array 4 of <int>>>>>> %ebp-10888 ]
    #   -25312(%ebp)  14424  [ $v7       <array 10 of <array 6 of <array 8 of <array 3 of <array 10 of <bool>>>>>> %ebp-25312 ]
    #   -25313(%ebp)   1  [ $v8       <bool> %ebp-25313 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $25304, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6326, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-112(%ebp)           # local array 'v5': 5 dimensions
    movl    $2,-108(%ebp)           #   dimension 1: 2 elements
    movl    $1,-104(%ebp)           #   dimension 2: 1 elements
    movl    $1,-100(%ebp)           #   dimension 3: 1 elements
    movl    $2,-96(%ebp)            #   dimension 4: 2 elements
    movl    $3,-92(%ebp)            #   dimension 5: 3 elements
    movl    $5,-10888(%ebp)         # local array 'v6': 5 dimensions
    movl    $8,-10884(%ebp)         #   dimension 1: 8 elements
    movl    $6,-10880(%ebp)         #   dimension 2: 6 elements
    movl    $7,-10876(%ebp)         #   dimension 3: 7 elements
    movl    $2,-10872(%ebp)         #   dimension 4: 2 elements
    movl    $4,-10868(%ebp)         #   dimension 5: 4 elements
    movl    $5,-25312(%ebp)         # local array 'v7': 5 dimensions
    movl    $10,-25308(%ebp)        #   dimension 1: 10 elements
    movl    $6,-25304(%ebp)         #   dimension 2: 6 elements
    movl    $8,-25300(%ebp)         #   dimension 3: 8 elements
    movl    $3,-25296(%ebp)         #   dimension 4: 3 elements
    movl    $10,-25292(%ebp)        #   dimension 5: 10 elements

    # function body
    movl    $35400, %eax            #   0:     add    t8 <- 35400, 88856
    movl    $88856, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $6532, %eax             #   1:     div    t9 <- 6532, 65990
    movl    $65990, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #   2:     add    t10 <- t8, t9
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $10984, %eax            #   3:     if     10984 >= t10 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   4:     goto   2
l_f2_1:
    movl    $1, %eax                #   6:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_3:
    movzbl  -17(%ebp), %eax         #  11:     return t11
    jmp     l_f2_exit              
l_f2_6_while_cond:
    leal    -25312(%ebp), %eax      #  13:     &()    t12 <- v7
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  2 <- t12
    pushl   %eax                   
    leal    -10888(%ebp), %eax      #  15:     &()    t13 <- v6
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     param  1 <- t13
    pushl   %eax                   
    leal    -112(%ebp), %eax        #  17:     &()    t14 <- v5
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     param  0 <- t14
    pushl   %eax                   
    call    f0                      #  19:     call   t15 <- f0
    addl    $12, %esp              
    movb    %al, -33(%ebp)         
    leal    -25312(%ebp), %eax      #  20:     &()    t16 <- v7
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     param  2 <- t16
    pushl   %eax                   
    leal    -10888(%ebp), %eax      #  22:     &()    t17 <- v6
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     param  1 <- t17
    pushl   %eax                   
    leal    -112(%ebp), %eax        #  24:     &()    t18 <- v5
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     param  0 <- t18
    pushl   %eax                   
    call    f0                      #  26:     call   t19 <- f0
    addl    $12, %esp              
    movb    %al, -49(%ebp)         
    movzbl  -33(%ebp), %eax         #  27:     if     t15 <= t19 goto 7_while_body
    movzbl  -49(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_7_while_body      
    jmp     l_f2_5                  #  28:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  30:     goto   6_while_cond
l_f2_5:
l_f2_10_while_cond:
    leal    -25312(%ebp), %eax      #  33:     &()    t20 <- v7
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  34:     param  2 <- t20
    pushl   %eax                   
    leal    -10888(%ebp), %eax      #  35:     &()    t21 <- v6
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  36:     param  1 <- t21
    pushl   %eax                   
    leal    -112(%ebp), %eax        #  37:     &()    t22 <- v5
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  38:     param  0 <- t22
    pushl   %eax                   
    call    f0                      #  39:     call   t23 <- f0
    addl    $12, %esp              
    movb    %al, -65(%ebp)         
    movl    $100, %eax              #  40:     if     100 <= t23 goto 11_while_body
    movzbl  -65(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_11_while_body     
    jmp     l_f2_9                  #  41:     goto   9
l_f2_11_while_body:
    movl    $81429, %eax            #  43:     if     81429 < 71067 goto 14_if_true
    movl    $71067, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  44:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  46:     goto   13
l_f2_15_if_false:
l_f2_13:
    movl    $0, %eax                #  49:     assign v8 <- 0
    movb    %al, -25313(%ebp)      
    movl    $31341, %eax            #  50:     if     31341 > 95542 goto 19_if_true
    movl    $95542, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  51:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  53:     goto   18
l_f2_20_if_false:
l_f2_18:
    jmp     l_f2_10_while_cond      #  56:     goto   10_while_cond
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $25304, %esp            # remove locals
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
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 10 of <array 6 of <array 8 of <array 3 of <array 10 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 6 of <array 7 of <array 2 of <array 4 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 1 of <array 1 of <array 2 of <array 3 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]

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
    movl    $61236, %eax            #   0:     assign v0 <- 61236
    movl    %eax, v0               
l_test_2_while_cond:
    jmp     l_test_6                #   2:     goto   6
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   4:     goto   7
l_test_6:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    jmp     l_test_10               #   8:     goto   10
    jmp     l_test_10               #   9:     goto   10
    jmp     l_test_10               #  10:     goto   10
    jmp     l_test_10               #  11:     goto   10
    jmp     l_test_11               #  12:     goto   11
l_test_10:
    movl    $1, %eax                #  14:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_12               #  15:     goto   12
l_test_11:
    movl    $0, %eax                #  17:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_12:
    movzbl  -13(%ebp), %eax         #  19:     if     t0 = t1 goto 3_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #  20:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #  22:     goto   2_while_cond
l_test_1:
    call    dummyBOOLfunc           #  24:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  25:     if     t2 = 1 goto 24
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_24              
    jmp     l_test_25               #  26:     goto   25
l_test_24:
    movl    $1, %eax                #  28:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_26               #  29:     goto   26
l_test_25:
    movl    $0, %eax                #  31:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_26:
    movzbl  -16(%ebp), %eax         #  33:     assign v1 <- t3
    movb    %al, v1                
    movl    $97, %eax               #  34:     assign v2 <- 97
    movb    %al, v2                
    leal    v5, %eax                #  35:     &()    t4 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  36:     param  2 <- t4
    pushl   %eax                   
    leal    v4, %eax                #  37:     &()    t5 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  38:     param  1 <- t5
    pushl   %eax                   
    leal    v3, %eax                #  39:     &()    t6 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  40:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  41:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movl    $100, %eax              #  42:     if     100 = t7 goto 30_if_true
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_30_if_true      
    jmp     l_test_31_if_false      #  43:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_exit            
    jmp     l_test_29               #  46:     goto   29
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
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1
    .align   4
v3:                                 # <array 2 of <array 1 of <array 1 of <array 2 of <array 3 of <bool>>>>>>
    .long    5
    .long    2
    .long    1
    .long    1
    .long    2
    .long    3
    .skip   12
v4:                                 # <array 8 of <array 6 of <array 7 of <array 2 of <array 4 of <int>>>>>>
    .long    5
    .long    8
    .long    6
    .long    7
    .long    2
    .long    4
    .skip 10752
v5:                                 # <array 10 of <array 6 of <array 8 of <array 3 of <array 10 of <bool>>>>>>
    .long    5
    .long   10
    .long    6
    .long    8
    .long    3
    .long   10
    .skip 14400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
