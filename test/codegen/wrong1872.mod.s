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
    #    -16(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 68 of <array 69 of <array 6 of <array 46 of <array 77 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
    leal    _str_1, %eax            #   2:     &()    t8 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               
    movl    $97, %eax               #   5:     if     97 > 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   6:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #   8:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyBOOLfunc           #  14:     call   t9 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    WriteLn                 #  15:     call   WriteLn

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -25(%ebp)   1  [ $t13      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 22 of <array 70 of <array 95 of <array 57 of <array 77 of <int>>>>>>> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t8 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     div    t9 <- t8, 31340
    movl    $31340, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     div    t10 <- t9, 2367
    movl    $2367, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     return t10
    jmp     l_f1_exit              
    movl    $96816, %eax            #   4:     add    t11 <- 96816, 87154
    movl    $87154, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     sub    t12 <- t11, 42757
    movl    $42757, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     return t12
    jmp     l_f1_exit              
    movl    $66773, %eax            #   7:     return 66773
    jmp     l_f1_exit              
    movl    $94222, %eax            #   8:     if     94222 # 23987 goto 7_if_true
    movl    $23987, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   9:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  11:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_10                 #  14:     goto   10
l_f1_10:
    call    dummyCHARfunc           #  16:     call   t13 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $1, %eax                #  17:     assign v1 <- 1
    movb    %al, 12(%ebp)          
    jmp     l_f1_2                  #  18:     goto   2
l_f1_2:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 22 of <array 70 of <array 95 of <array 57 of <array 77 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t15      <char> %ebp-27 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <ptr(4) to <array 22 of <array 70 of <array 95 of <array 57 of <array 77 of <int>>>>>>> %ebp-52 ]
    #    -53(%ebp)   1  [ $t22      <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t8       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t9       <int> %ebp-72 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 68 of <array 81 of <array 14 of <array 8 of <array 76 of <int>>>>>>> %ebp+12 ]
    #   1726524400(%ebp)  -1726524472  [ $v2       <array 22 of <array 70 of <array 95 of <array 57 of <array 77 of <int>>>>>> %ebp+1726524400 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1726524412, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-431631103, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,1726524400(%ebp)     # local array 'v2': 5 dimensions
    movl    $22,1726524404(%ebp)    #   dimension 1: 22 elements
    movl    $70,1726524408(%ebp)    #   dimension 2: 70 elements
    movl    $95,1726524412(%ebp)    #   dimension 3: 95 elements
    movl    $57,1726524416(%ebp)    #   dimension 4: 57 elements
    movl    $77,1726524420(%ebp)    #   dimension 5: 77 elements

    # function body
    movl    $4466, %eax             #   0:     mul    t8 <- 4466, 21756
    movl    $21756, %ebx           
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   1:     sub    t9 <- t8, 93765
    movl    $93765, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   2:     sub    t10 <- t9, 27772
    movl    $27772, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $92911, %eax            #   3:     if     92911 <= t10 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
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
    leal    1726524400(%ebp), %eax  #  12:     &()    t12 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  2 <- t12
    pushl   %eax                   
    call    dummyBOOLfunc           #  14:     call   t13 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  15:     if     t13 = 1 goto 11
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11                
    jmp     l_f2_7                  #  16:     goto   7
l_f2_11:
    jmp     l_f2_7                  #  18:     goto   7
    movl    $1, %eax                #  19:     assign t14 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_8                  #  20:     goto   8
l_f2_7:
    movl    $0, %eax                #  22:     assign t14 <- 0
    movb    %al, -26(%ebp)         
l_f2_8:
    movzbl  -26(%ebp), %eax         #  24:     param  1 <- t14
    pushl   %eax                   
    call    dummyCHARfunc           #  25:     call   t15 <- dummyCHARfunc
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #  26:     param  0 <- t15
    pushl   %eax                   
    call    f1                      #  27:     call   t16 <- f1
    addl    $12, %esp              
    movl    %eax, -32(%ebp)        
l_f2_13_while_cond:
    movl    $37688, %eax            #  29:     add    t17 <- 37688, 55291
    movl    $55291, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     sub    t18 <- t17, 19399
    movl    $19399, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     add    t19 <- t18, 30726
    movl    $30726, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  32:     add    t20 <- t19, 79878
    movl    $79878, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    leal    1726524400(%ebp), %eax  #  33:     &()    t21 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  34:     param  2 <- t21
    pushl   %eax                   
    movl    $39208, %eax            #  35:     if     39208 >= 8817 goto 16
    movl    $8817, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f2_16                
    jmp     l_f2_17                 #  36:     goto   17
l_f2_16:
    movl    $1, %eax                #  38:     assign t22 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f2_18                 #  39:     goto   18
l_f2_17:
    movl    $0, %eax                #  41:     assign t22 <- 0
    movb    %al, -53(%ebp)         
l_f2_18:
    movzbl  -53(%ebp), %eax         #  43:     param  1 <- t22
    pushl   %eax                   
    movl    $99, %eax               #  44:     param  0 <- 99
    pushl   %eax                   
    call    f1                      #  45:     call   t23 <- f1
    addl    $12, %esp              
    movl    %eax, -60(%ebp)        
    movl    -48(%ebp), %eax         #  46:     sub    t24 <- t20, t23
    movl    -60(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  47:     if     t24 > 51741 goto 14_while_body
    movl    $51741, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_14_while_body     
    jmp     l_f2_12                 #  48:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  50:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $-1726524412, %esp      # remove locals
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
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 68 of <array 81 of <array 14 of <array 8 of <array 76 of <int>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <char> %ebp-38 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
l_test_9_while_cond:
    movl    $37904, %eax            #   6:     div    t1 <- 37904, 70817
    movl    $70817, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     div    t2 <- t1, 42073
    movl    $42073, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     div    t3 <- t2, 87299
    movl    $87299, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $92527, %eax            #   9:     if     92527 > t3 goto 10_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_10_while_body   
    jmp     l_test_8                #  10:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  12:     goto   9_while_cond
l_test_8:
l_test_13_while_cond:
    movl    $97, %eax               #  15:     if     97 >= 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_14_while_body   
    jmp     l_test_12               #  16:     goto   12
l_test_14_while_body:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $97, %eax               #  20:     if     97 # 99 goto 19_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_19_if_true      
    jmp     l_test_20_if_false      #  21:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  23:     goto   18
l_test_20_if_false:
l_test_18:
    movl    $99, %eax               #  26:     assign v0 <- 99
    movb    %al, v0                
    call    dummyCHARfunc           #  27:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_13_while_cond    #  28:     goto   13_while_cond
l_test_12:
    leal    v1, %eax                #  30:     &()    t5 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     param  1 <- t5
    pushl   %eax                   
    movl    $0, %eax                #  32:     param  0 <- 0
    pushl   %eax                   
    call    f2                      #  33:     call   t6 <- f2
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
    call    dummyCHARfunc           #  34:     call   t7 <- dummyCHARfunc
    movb    %al, -38(%ebp)         
    movzbl  -38(%ebp), %eax         #  35:     assign v0 <- t7
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 68 of <array 81 of <array 14 of <array 8 of <array 76 of <int>>>>>>
    .long    5
    .long   68
    .long   81
    .long   14
    .long    8
    .long   76
    .skip 187536384








    # end of global data section
    #-----------------------------------------

    .end
##################################################
