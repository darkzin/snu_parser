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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 15 of <array 25 of <array 23 of <array 55 of <array 26 of <bool>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    movl    $9837, %eax             #   0:     add    t5 <- 9837, 40144
    movl    $40144, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t5 # 66141 goto 1_if_true
    movl    $66141, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    movl    $98, %eax               #   4:     if     98 >= 98 goto 5
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_5                 
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $1, %eax                #   7:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_7                  #   8:     goto   7
l_f0_6:
    movl    $0, %eax                #  10:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f0_7:
    movzbl  -17(%ebp), %eax         #  12:     return t6
    jmp     l_f0_exit              
    movl    $0, %eax                #  13:     if     0 # 1 goto 10_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  14:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  16:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_0                  #  19:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $31431, %eax            #  22:     assign v2 <- 31431
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #  23:     call   t7 <- dummyCHARfunc
    movb    %al, -18(%ebp)         

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -45(%ebp)   1  [ $t5       <char> %ebp-45 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 17 of <array 95 of <array 49 of <array 97 of <array 23 of <bool>>>>>>> %ebp+8 ]
    #    -65(%ebp)   1  [ $v2       <char> %ebp-65 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $56, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $35469, %eax            #   1:     if     35469 < 38635 goto 2_while_body
    movl    $38635, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyCHARfunc           #   4:     call   t5 <- dummyCHARfunc
    movb    %al, -45(%ebp)         
l_f1_6_while_cond:
    movl    $15059, %eax            #   6:     if     15059 > 48860 goto 7_while_body
    movl    $48860, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   9:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_11_if_false        #  11:     goto   11_if_false
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $100, %eax              #  15:     assign v2 <- 100
    movb    %al, -65(%ebp)         
    jmp     l_f1_1_while_cond       #  16:     goto   1_while_cond
l_f1_0:
l_f1_14_while_cond:
    movl    $5896, %eax             #  19:     div    t6 <- 5896, 87160
    movl    $87160, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  20:     div    t7 <- t6, 19135
    movl    $19135, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  21:     div    t8 <- t7, 62589
    movl    $62589, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  22:     div    t9 <- t8, 67624
    movl    $67624, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  23:     mul    t10 <- t9, 49821
    movl    $49821, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  24:     mul    t11 <- t10, 62469
    movl    $62469, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     mul    t12 <- t11, 12091
    movl    $12091, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     div    t13 <- t12, 15505
    movl    $15505, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t14 <- t13, 30345
    movl    $30345, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     add    t15 <- t14, 61784
    movl    $61784, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t16 <- t15, 80286
    movl    $80286, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     add    t17 <- t16, 9190
    movl    $9190, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     if     t17 < 80261 goto 15_while_body
    movl    $80261, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  32:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  34:     goto   14_while_cond
l_f1_13:
    movl    $100, %eax              #  36:     if     100 = 97 goto 18_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  37:     goto   19_if_false
l_f1_18_if_true:
    movl    $97, %eax               #  39:     assign v2 <- 97
    movb    %al, -65(%ebp)         
    jmp     l_f1_22                 #  40:     goto   22
l_f1_22:
l_f1_26_while_cond:
    movl    $99, %eax               #  43:     if     99 # 100 goto 27_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_27_while_body     
    jmp     l_f1_25                 #  44:     goto   25
l_f1_27_while_body:
    jmp     l_f1_26_while_cond      #  46:     goto   26_while_cond
l_f1_25:
    jmp     l_f1_17                 #  48:     goto   17
l_f1_19_if_false:
l_f1_17:

l_f1_exit:
    # epilogue
    addl    $56, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

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
    movl    $38549, %eax            #   0:     add    t5 <- 38549, 63981
    movl    $63981, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t6 <- t5, 96803
    movl    $96803, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t6
    movl    %eax, -28(%ebp)        
l_f2_2_while_cond:
    call    dummyCHARfunc           #   4:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #   5:     if     100 # t7 goto 3_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_3_while_body      
    jmp     l_f2_1                  #   6:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   8:     goto   2_while_cond
l_f2_1:
    movl    $1, %eax                #  10:     assign v2 <- 1
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 17 of <array 95 of <array 49 of <array 97 of <array 23 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 15 of <array 25 of <array 23 of <array 55 of <array 26 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   4:     goto   6_while_cond
l_test_9_while_cond:
    jmp     l_test_8                #   6:     goto   8
    jmp     l_test_8                #   7:     goto   8
    jmp     l_test_9_while_cond     #   8:     goto   9_while_cond
l_test_8:
    jmp     l_test_1                #  10:     goto   1
l_test_1:
    movl    $0, %eax                #  12:     if     0 # 0 goto 14_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_14_if_true      
    jmp     l_test_15_if_false      #  13:     goto   15_if_false
l_test_14_if_true:
    movl    $47319, %eax            #  15:     if     47319 > 91453 goto 18_if_true
    movl    $91453, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_18_if_true      
    jmp     l_test_19_if_false      #  16:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  18:     goto   17
l_test_19_if_false:
l_test_17:
l_test_22_while_cond:
    jmp     l_test_21               #  22:     goto   21
    jmp     l_test_22_while_cond    #  23:     goto   22_while_cond
l_test_21:
    leal    v1, %eax                #  25:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  27:     call   t2 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_13               #  29:     goto   13
l_test_15_if_false:
l_test_13:
    leal    v2, %eax                #  32:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  34:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
    movl    $32055, %eax            #  35:     if     32055 = 22709 goto 28_if_true
    movl    $22709, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_28_if_true      
    jmp     l_test_29_if_false      #  36:     goto   29_if_false
l_test_28_if_true:
    movl    $97, %eax               #  38:     if     97 <= 100 goto 32_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_32_if_true      
    jmp     l_test_33_if_false      #  39:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_exit            
    jmp     l_test_31               #  42:     goto   31
l_test_33_if_false:
l_test_31:
    jmp     l_test_27               #  45:     goto   27
l_test_29_if_false:
l_test_27:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 17 of <array 95 of <array 49 of <array 97 of <array 23 of <bool>>>>>>
    .long    5
    .long   17
    .long   95
    .long   49
    .long   97
    .long   23
    .skip 176550185
    .align   4
v2:                                 # <array 15 of <array 25 of <array 23 of <array 55 of <array 26 of <bool>>>>>>
    .long    5
    .long   15
    .long   25
    .long   23
    .long   55
    .long   26
    .skip 12333750








    # end of global data section
    #-----------------------------------------

    .end
##################################################
