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
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t28      <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 62 of <array 23 of <array 69 of <array 86 of <array 23 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   1:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   2:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $80741, %eax            #   3:     mul    t8 <- 80741, t7
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    $88855, %eax            #   4:     mul    t9 <- 88855, 79741
    movl    $79741, %ebx           
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   5:     div    t10 <- t9, 4206
    movl    $4206, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -96(%ebp), %eax         #   6:     add    t11 <- t8, t10
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  10:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     add    t14 <- t13, 96165
    movl    $96165, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  15:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $72889, %eax            #  16:     div    t17 <- 72889, 3848
    movl    $3848, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  17:     mul    t18 <- t17, 83214
    movl    $83214, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  18:     div    t19 <- t18, 68839
    movl    $68839, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -40(%ebp), %eax         #  19:     add    t20 <- t16, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  23:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  24:     add    t23 <- t22, 99250
    movl    $99250, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  25:     mul    t24 <- t23, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  27:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  28:     add    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    8(%ebp), %eax           #  29:     add    t27 <- v1, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $23988, %eax            #  30:     assign @t27 <- 23988
    movl    -84(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_exit              
    movl    $0, %eax                #  32:     if     0 # 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_3                 
    jmp     l_f0_4                  #  33:     goto   4
l_f0_3:
    movl    $1, %eax                #  35:     assign t28 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f0_5                  #  36:     goto   5
l_f0_4:
    movl    $0, %eax                #  38:     assign t28 <- 0
    movb    %al, -85(%ebp)         
l_f0_5:
    movzbl  -85(%ebp), %eax         #  40:     assign v3 <- t28
    movb    %al, 16(%ebp)          

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t8       <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 85 of <array 42 of <array 81 of <array 95 of <array 51 of <char>>>>>>> %ebp+8 ]

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
    jmp     l_f1_6                  #   0:     goto   6
    movl    $1, %eax                #   1:     assign t7 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_7                  #   2:     goto   7
l_f1_6:
    movl    $0, %eax                #   4:     assign t7 <- 0
    movb    %al, -26(%ebp)         
l_f1_7:
    movzbl  -26(%ebp), %eax         #   6:     if     t7 # 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #   7:     goto   2
l_f1_1:
    movl    $1, %eax                #   9:     assign t8 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f1_3                  #  10:     goto   3
l_f1_2:
    movl    $0, %eax                #  12:     assign t8 <- 0
    movb    %al, -27(%ebp)         
l_f1_3:
    movzbl  -27(%ebp), %eax         #  14:     return t8
    jmp     l_f1_exit              
    movl    $30054, %eax            #  15:     sub    t9 <- 30054, 13472
    movl    $13472, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $84149, %eax            #  16:     add    t10 <- 84149, 24456
    movl    $24456, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     add    t11 <- t10, 25710
    movl    $25710, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     add    t12 <- t11, 21556
    movl    $21556, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -32(%ebp), %eax         #  19:     if     t9 = t12 goto 10
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_11                 #  20:     goto   11
l_f1_10:
    movl    $1, %eax                #  22:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_12                 #  23:     goto   12
l_f1_11:
    movl    $0, %eax                #  25:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f1_12:
    movzbl  -25(%ebp), %eax         #  27:     return t13
    jmp     l_f1_exit              
l_f1_15_while_cond:
    movl    $97, %eax               #  29:     if     97 > 97 goto 16_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_16_while_body     
    jmp     l_f1_14                 #  30:     goto   14
l_f1_16_while_body:
    movl    $1, %eax                #  32:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_15_while_cond      #  33:     goto   15_while_cond
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 70 of <array 61 of <array 46 of <array 45 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    leal    _str_1, %eax            #   2:     &()    t7 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <char> %ebp-30 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyCHARfunc           #   4:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     assign v1 <- t1
    movb    %al, v1                
l_test_5_while_cond:
    movl    $4216, %eax             #   7:     sub    t2 <- 4216, 75453
    movl    $75453, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t3 <- t2, 28486
    movl    $28486, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     sub    t4 <- t3, 34540
    movl    $34540, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $65575, %eax            #  10:     if     65575 > t4 goto 6_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_6_while_body    
    jmp     l_test_4                #  11:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #  13:     goto   5_while_cond
l_test_4:
    movl    $12128, %eax            #  15:     if     12128 > 18006 goto 9_if_true
    movl    $18006, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_9_if_true       
    jmp     l_test_10_if_false      #  16:     goto   10_if_false
l_test_9_if_true:
    call    dummyBOOLfunc           #  18:     call   t5 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movl    $48119, %eax            #  19:     assign v2 <- 48119
    movl    %eax, v2               
    jmp     l_test_exit            
    call    dummyCHARfunc           #  21:     call   t6 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movl    $32504, %eax            #  22:     assign v2 <- 32504
    movl    %eax, v2               
l_test_18_while_cond:
    jmp     l_test_17               #  24:     goto   17
    jmp     l_test_18_while_cond    #  25:     goto   18_while_cond
l_test_17:
    jmp     l_test_8                #  27:     goto   8
l_test_10_if_false:
l_test_8:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
