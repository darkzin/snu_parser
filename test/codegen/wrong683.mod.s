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
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t23      <bool> %ebp-62 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 7 of <array 1 of <array 1 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 5 of <array 9 of <array 9 of <array 9 of <int>>>>>>> %ebp+12 ]
    #    -89(%ebp)   1  [ $v3       <char> %ebp-89 ]
    #    -96(%ebp)   4  [ $v4       <int> %ebp-96 ]

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
    movl    $67274, %eax            #   0:     sub    t4 <- 67274, 98785
    movl    $98785, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   1:     sub    t5 <- t4, 56755
    movl    $56755, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   2:     return t5
    jmp     l_f0_exit              
    movl    $0, %eax                #   3:     if     0 # 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   4:     goto   3_if_false
l_f0_2_if_true:
    movl    $99, %eax               #   6:     assign v3 <- 99
    movb    %al, -89(%ebp)         
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   9:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $88197, %eax            #  10:     mul    t7 <- 88197, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  11:     add    t8 <- t7, 72659
    movl    $72659, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  15:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     add    t11 <- t10, 15729
    movl    $15729, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  20:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     add    t14 <- t13, 945
    movl    $945, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  24:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  25:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     add    t17 <- t16, 65414
    movl    $65414, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  27:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  28:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  29:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  30:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  31:     add    t21 <- v2, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $27208, %eax            #  32:     assign @t21 <- 27208
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_1                  #  33:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_8_while_cond:
    jmp     l_f0_9_while_body       #  37:     goto   9_while_body
    jmp     l_f0_7                  #  38:     goto   7
l_f0_9_while_body:
    call    dummyBOOLfunc           #  40:     call   t22 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         
    call    dummyBOOLfunc           #  41:     call   t23 <- dummyBOOLfunc
    movb    %al, -62(%ebp)         
    call    WriteLn                 #  42:     call   WriteLn
    jmp     l_f0_8_while_cond       #  43:     goto   8_while_cond
l_f0_7:

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 6 of <array 1 of <array 8 of <array 10 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 4 of <array 5 of <array 8 of <array 8 of <array 4 of <int>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $21531, %eax            #   1:     sub    t5 <- 21531, 21751
    movl    $21751, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   2:     call   t6 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t7 <- t5, t6
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t7
    jmp     l_f1_exit              
    call    ReadInt                 #   5:     call   t8 <- ReadInt
    movl    %eax, -32(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 9 of <array 5 of <array 10 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    movl    $1589, %eax             #   0:     sub    t4 <- 1589, 44602
    movl    $44602, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $7062, %eax             #   1:     if     7062 = t4 goto 1_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #   7:     call   t5 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   8:     if     t5 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_6                  #   9:     goto   6
l_f2_5:
    movl    $1, %eax                #  11:     assign t6 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_7                  #  12:     goto   7
l_f2_6:
    movl    $0, %eax                #  14:     assign t6 <- 0
    movb    %al, -26(%ebp)         
l_f2_7:
    movzbl  -26(%ebp), %eax         #  16:     return t6
    jmp     l_f2_exit              
    movl    $43577, %eax            #  17:     sub    t7 <- 43577, 40791
    movl    $40791, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     sub    t8 <- t7, 18277
    movl    $18277, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $37438, %eax            #  19:     add    t9 <- 37438, 41947
    movl    $41947, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  20:     add    t10 <- t9, 63453
    movl    $63453, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -36(%ebp), %eax         #  21:     if     t8 # t10 goto 10
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_10                
    jmp     l_f2_11                 #  22:     goto   11
l_f2_10:
    movl    $1, %eax                #  24:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_12                 #  25:     goto   12
l_f2_11:
    movl    $0, %eax                #  27:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_12:
    movzbl  -17(%ebp), %eax         #  29:     return t11
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 2 of <array 5 of <array 9 of <array 9 of <array 9 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 7 of <array 1 of <array 1 of <array 3 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

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
l_test_1_while_cond:
    movl    $95939, %eax            #   1:     if     95939 <= 74683 goto 2_while_body
    movl    $74683, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $99, %eax               #   4:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
l_test_6_while_cond:
    movl    $0, %eax                #   8:     if     0 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_7_while_body    
    jmp     l_test_5                #   9:     goto   5
l_test_7_while_body:
    jmp     l_test_exit            
l_test_11_while_cond:
    jmp     l_test_12_while_body    #  13:     goto   12_while_body
    jmp     l_test_10               #  14:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  16:     goto   11_while_cond
l_test_10:
    jmp     l_test_6_while_cond     #  18:     goto   6_while_cond
l_test_5:
    leal    v2, %eax                #  20:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     param  1 <- t0
    pushl   %eax                   
    leal    v1, %eax                #  22:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  24:     call   t2 <- f0
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    call    dummyBOOLfunc           #  25:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 10 of <array 7 of <array 1 of <array 1 of <array 3 of <char>>>>>>
    .long    5
    .long   10
    .long    7
    .long    1
    .long    1
    .long    3
    .skip  210
    .align   4
v2:                                 # <array 2 of <array 5 of <array 9 of <array 9 of <array 9 of <int>>>>>>
    .long    5
    .long    2
    .long    5
    .long    9
    .long    9
    .long    9
    .skip 29160








    # end of global data section
    #-----------------------------------------

    .end
##################################################
