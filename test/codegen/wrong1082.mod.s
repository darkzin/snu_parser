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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 31 of <array 85 of <array 41 of <array 34 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 75 of <array 15 of <array 1 of <array 35 of <array 13 of <int>>>>>>> %ebp+16 ]

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
l_f0_1_while_cond:
    movl    $100, %eax              #   1:     if     100 # 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $84829, %eax            #   4:     assign v0 <- 84829
    movl    %eax, 8(%ebp)          
l_f0_6_while_cond:
    jmp     l_f0_5                  #   6:     goto   5
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
l_f0_5:
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #  10:     goto   9_while_cond
    movl    $90668, %eax            #  11:     return 90668
    jmp     l_f0_exit              
    movl    $90996, %eax            #  12:     return 90996
    jmp     l_f0_exit              
    movl    $3963, %eax             #  13:     if     3963 < 73596 goto 14_if_true
    movl    $73596, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  14:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  16:     goto   13
l_f0_15_if_false:
l_f0_13:
l_f0_18_while_cond:
    jmp     l_f0_18_while_cond      #  20:     goto   18_while_cond
    jmp     l_f0_1_while_cond       #  21:     goto   1_while_cond
l_f0_0:
    call    dummyINTfunc            #  23:     call   t7 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f0_22_while_cond:
    jmp     l_f0_21                 #  25:     goto   21
    jmp     l_f0_21                 #  26:     goto   21
    jmp     l_f0_21                 #  27:     goto   21
    jmp     l_f0_22_while_cond      #  28:     goto   22_while_cond
l_f0_21:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 91 of <array 10 of <array 51 of <array 5 of <array 73 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 75 of <array 63 of <array 31 of <array 10 of <bool>>>>>>> %ebp+20 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    jmp     l_f1_6_if_false         #   2:     goto   6_if_false
    jmp     l_f1_4                  #   3:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $75561, %eax            #   6:     return 75561
    jmp     l_f1_exit              
    movl    $4557, %eax             #   7:     return 4557
    jmp     l_f1_exit              
l_f1_10_while_cond:
    movl    $87903, %eax            #   9:     if     87903 <= 24995 goto 11_while_body
    movl    $24995, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  10:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  12:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_0                  #  14:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $18612, %eax            #  17:     add    t8 <- 18612, 14783
    movl    $14783, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     add    t9 <- t8, 3961
    movl    $3961, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     add    t10 <- t9, 61197
    movl    $61197, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     sub    t11 <- t10, 86958
    movl    $86958, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     return t11
    jmp     l_f1_exit              
l_f1_15_while_cond:
    call    dummyCHARfunc           #  23:     call   t12 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #  24:     if     98 <= t12 goto 16_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_16_while_body     
    jmp     l_f1_14                 #  25:     goto   14
l_f1_16_while_body:
l_f1_19_while_cond:
    movl    $89689, %eax            #  28:     if     89689 # 74414 goto 20_while_body
    movl    $74414, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_20_while_body     
    jmp     l_f1_18                 #  29:     goto   18
l_f1_20_while_body:
    jmp     l_f1_19_while_cond      #  31:     goto   19_while_cond
l_f1_18:
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
    #    -73(%ebp)   1  [ $t25      <char> %ebp-73 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 67 of <array 5 of <array 55 of <array 14 of <array 65 of <int>>>>>>> %ebp+16 ]
    #    -92(%ebp)   4  [ $v3       <int> %ebp-92 ]

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
    movl    $81471, %eax            #   0:     sub    t7 <- 81471, 27556
    movl    $27556, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   1:     sub    t8 <- t7, 16353
    movl    $16353, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   3:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   4:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $17843, %eax            #   5:     mul    t10 <- 17843, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     add    t11 <- t10, 30377
    movl    $30377, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   8:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   9:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  10:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     add    t14 <- t13, 46156
    movl    $46156, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  15:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     add    t17 <- t16, 57432
    movl    $57432, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  20:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  21:     add    t20 <- t19, 84240
    movl    $84240, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  22:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  24:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  25:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  26:     add    t24 <- v2, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -84(%ebp), %eax         #  27:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  28:     call   t25 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
l_f2_3_while_cond:
l_f2_6_while_cond:
    movl    $97, %eax               #  31:     if     97 <= 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_7_while_body      
    jmp     l_f2_5                  #  32:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  34:     goto   6_while_cond
l_f2_5:
    movl    $97, %eax               #  36:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  37:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_3_while_cond       #  38:     goto   3_while_cond

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 67 of <array 5 of <array 55 of <array 14 of <array 65 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <bool> %ebp-30 ]

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
    movl    $97, %eax               #   0:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyINTfunc            #   4:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     assign v0 <- t2
    movl    %eax, v0               
    movl    $100, %eax              #   6:     if     100 = 99 goto 5
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_5               
    jmp     l_test_6                #   7:     goto   6
l_test_5:
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_7                #  10:     goto   7
l_test_6:
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_test_7:
    movzbl  -21(%ebp), %eax         #  14:     assign v1 <- t3
    movb    %al, v1                
    leal    v2, %eax                #  15:     &()    t4 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     param  2 <- t4
    pushl   %eax                   
    call    dummyCHARfunc           #  17:     call   t5 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  18:     param  1 <- t5
    pushl   %eax                   
    movl    $100, %eax              #  19:     if     100 # 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_10              
    jmp     l_test_11               #  20:     goto   11
l_test_10:
    movl    $1, %eax                #  22:     assign t6 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_12               #  23:     goto   12
l_test_11:
    movl    $0, %eax                #  25:     assign t6 <- 0
    movb    %al, -30(%ebp)         
l_test_12:
    movzbl  -30(%ebp), %eax         #  27:     param  0 <- t6
    pushl   %eax                   
    call    f2                      #  28:     call   f2
    addl    $12, %esp              

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
    .align   4
v2:                                 # <array 67 of <array 5 of <array 55 of <array 14 of <array 65 of <int>>>>>>
    .long    5
    .long   67
    .long    5
    .long   55
    .long   14
    .long   65
    .skip 67067000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
