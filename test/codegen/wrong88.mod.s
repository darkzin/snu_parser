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
    #    -13(%ebp)   1  [ $t17      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t18      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t19      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t20      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t21      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t22      <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v3       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 5 of <array 7 of <array 1 of <array 10 of <array 8 of <int>>>>>>> %ebp+12 ]
    #    -34(%ebp)   1  [ $v5       <bool> %ebp-34 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
l_f0_1_if_true:
    jmp     l_f0_0                  #   2:     goto   0
l_f0_0:
    movl    $1, %eax                #   4:     if     1 = 0 goto 7_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   5:     goto   8_if_false
l_f0_7_if_true:
    movl    $63643, %eax            #   7:     assign v3 <- 63643
    movl    %eax, 8(%ebp)          
    movl    $98, %eax               #   8:     if     98 <= 98 goto 12
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_12                
    jmp     l_f0_13                 #   9:     goto   13
l_f0_12:
    movl    $1, %eax                #  11:     assign t17 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_14                 #  12:     goto   14
l_f0_13:
    movl    $0, %eax                #  14:     assign t17 <- 0
    movb    %al, -13(%ebp)         
l_f0_14:
    movzbl  -13(%ebp), %eax         #  16:     assign v5 <- t17
    movb    %al, -34(%ebp)         
    movl    $37309, %eax            #  17:     return 37309
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  18:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $81585, %eax            #  21:     add    t18 <- 81585, 69512
    movl    $69512, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     add    t19 <- t18, 23097
    movl    $23097, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     sub    t20 <- t19, 82043
    movl    $82043, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     add    t21 <- t20, 80300
    movl    $80300, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  25:     if     t21 = 29015 goto 18
    movl    $29015, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_18                
    jmp     l_f0_19                 #  26:     goto   19
l_f0_18:
    movl    $1, %eax                #  28:     assign t22 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_20                 #  29:     goto   20
l_f0_19:
    movl    $0, %eax                #  31:     assign t22 <- 0
    movb    %al, -33(%ebp)         
l_f0_20:
    movzbl  -33(%ebp), %eax         #  33:     assign v5 <- t22
    movb    %al, -34(%ebp)         

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t17      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t18      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v4       <char> %ebp-16 ]

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
    movl    $0, %eax                #   0:     assign v3 <- 0
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   1:     call   t17 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v4 <- t17
    movb    %al, -16(%ebp)         
l_f1_3_while_cond:
    movl    $3507, %eax             #   4:     if     3507 > 75542 goto 4_while_body
    movl    $75542, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_4_while_body      
    jmp     l_f1_2                  #   5:     goto   2
l_f1_4_while_body:
    jmp     l_f1_8                  #   7:     goto   8
    movl    $1, %eax                #   8:     assign t18 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_9                  #   9:     goto   9
l_f1_8:
    movl    $0, %eax                #  11:     assign t18 <- 0
    movb    %al, -14(%ebp)         
l_f1_9:
    movzbl  -14(%ebp), %eax         #  13:     assign v3 <- t18
    movb    %al, -15(%ebp)         
    jmp     l_f1_3_while_cond       #  14:     goto   3_while_cond
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
    #    -13(%ebp)   1  [ $t17      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t18      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t19      <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v3       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 3 of <array 9 of <array 4 of <array 10 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <ptr(4) to <array 6 of <array 9 of <array 4 of <array 2 of <array 7 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v6       <int> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t17 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    movl    $97, %eax               #   2:     if     97 <= 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    jmp     l_f2_9                  #   6:     goto   9
    jmp     l_f2_9                  #   7:     goto   9
    jmp     l_f2_9                  #   8:     goto   9
    jmp     l_f2_10                 #   9:     goto   10
l_f2_9:
    movl    $1, %eax                #  11:     assign t18 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_11                 #  12:     goto   11
l_f2_10:
    movl    $0, %eax                #  14:     assign t18 <- 0
    movb    %al, -14(%ebp)         
l_f2_11:
    movzbl  -14(%ebp), %eax         #  16:     if     t18 = 0 goto 7_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  17:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  19:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_2_while_cond       #  21:     goto   2_while_cond
l_f2_1:
l_f2_18_while_cond:
    call    dummyCHARfunc           #  24:     call   t19 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  25:     if     t19 >= 99 goto 19_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_19_while_body     
    jmp     l_f2_17                 #  26:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  28:     goto   18_while_cond
l_f2_17:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 3 of <array 9 of <array 4 of <array 10 of <array 2 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t12      <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t13      <ptr(4) to <array 5 of <array 7 of <array 1 of <array 10 of <array 8 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t16      <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t2       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t3       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t4       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t5       <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t6       <bool> %ebp-61 ]
    #    -68(%ebp)   4  [ $t7       <ptr(4) to <array 6 of <array 9 of <array 4 of <array 2 of <array 7 of <int>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t8       <ptr(4) to <array 3 of <array 9 of <array 4 of <array 10 of <array 2 of <char>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t9       <ptr(4) to <array 6 of <array 9 of <array 4 of <array 2 of <array 7 of <int>>>>>>> %ebp-76 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $64, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $16, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    movl    $70394, %eax            #   1:     mul    t0 <- 70394, 21221
    movl    $21221, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t1 <- t0, 28583
    movl    $28583, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 51416
    movl    $51416, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   4:     add    t3 <- t2, 55597
    movl    $55597, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   5:     add    t4 <- t3, 30449
    movl    $30449, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   6:     sub    t5 <- t4, 4836
    movl    $4836, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   7:     assign v1 <- t5
    movl    %eax, v1               
    movl    $0, %eax                #   8:     if     0 # 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_3               
    jmp     l_test_4                #   9:     goto   4
l_test_3:
    movl    $1, %eax                #  11:     assign t6 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_test_5                #  12:     goto   5
l_test_4:
    movl    $0, %eax                #  14:     assign t6 <- 0
    movb    %al, -61(%ebp)         
l_test_5:
    movzbl  -61(%ebp), %eax         #  16:     assign v2 <- t6
    movb    %al, v2                
    movl    $90929, %eax            #  17:     param  3 <- 90929
    pushl   %eax                   
    leal    v4, %eax                #  18:     &()    t7 <- v4
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  19:     param  2 <- t7
    pushl   %eax                   
    leal    v3, %eax                #  20:     &()    t8 <- v3
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  21:     param  1 <- t8
    pushl   %eax                   
    movl    $9648, %eax             #  22:     param  3 <- 9648
    pushl   %eax                   
    leal    v4, %eax                #  23:     &()    t9 <- v4
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  24:     param  2 <- t9
    pushl   %eax                   
    leal    v3, %eax                #  25:     &()    t10 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     param  1 <- t10
    pushl   %eax                   
    movl    $100, %eax              #  27:     param  0 <- 100
    pushl   %eax                   
    call    f2                      #  28:     call   t11 <- f2
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  29:     param  0 <- t11
    pushl   %eax                   
    call    f2                      #  30:     call   t12 <- f2
    addl    $16, %esp              
    movb    %al, -26(%ebp)         
l_test_9_while_cond:
    jmp     l_test_8                #  32:     goto   8
    leal    v5, %eax                #  33:     &()    t13 <- v5
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     param  1 <- t13
    pushl   %eax                   
    movl    $60189, %eax            #  35:     sub    t14 <- 60189, 93454
    movl    $93454, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  36:     param  0 <- t14
    pushl   %eax                   
    call    f0                      #  37:     call   t15 <- f0
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    jmp     l_test_9_while_cond     #  38:     goto   9_while_cond
l_test_8:
    call    dummyCHARfunc           #  40:     call   t16 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  41:     if     t16 = 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_15_if_true      
    jmp     l_test_16_if_false      #  42:     goto   16_if_false
l_test_15_if_true:
l_test_19_while_cond:
    jmp     l_test_18               #  45:     goto   18
    jmp     l_test_19_while_cond    #  46:     goto   19_while_cond
l_test_18:
    jmp     l_test_14               #  48:     goto   14
l_test_16_if_false:
l_test_14:

l_test_exit:
    # epilogue
    addl    $64, %esp               # remove locals
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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <bool>
    .skip    1
    .align   4
v3:                                 # <array 3 of <array 9 of <array 4 of <array 10 of <array 2 of <char>>>>>>
    .long    5
    .long    3
    .long    9
    .long    4
    .long   10
    .long    2
    .skip 2160
v4:                                 # <array 6 of <array 9 of <array 4 of <array 2 of <array 7 of <int>>>>>>
    .long    5
    .long    6
    .long    9
    .long    4
    .long    2
    .long    7
    .skip 12096
v5:                                 # <array 5 of <array 7 of <array 1 of <array 10 of <array 8 of <int>>>>>>
    .long    5
    .long    5
    .long    7
    .long    1
    .long   10
    .long    8
    .skip 11200








    # end of global data section
    #-----------------------------------------

    .end
##################################################
