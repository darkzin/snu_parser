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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 45 of <array 1 of <array 73 of <array 23 of <array 79 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 53 of <array 63 of <array 79 of <array 75 of <array 96 of <bool>>>>>>> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $87429, %eax            #   1:     param  0 <- 87429
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
    movl    $100, %eax              #   3:     if     100 >= 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   4:     goto   4_if_false
l_f0_3_if_true:
l_f0_7_while_cond:
    movl    $97, %eax               #   7:     if     97 < 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_8_while_body      
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  10:     goto   7_while_cond
l_f0_6:
l_f0_11_while_cond:
    movl    $32890, %eax            #  13:     if     32890 > 3541 goto 12_while_body
    movl    $3541, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f0_12_while_body     
    jmp     l_f0_10                 #  14:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  16:     goto   11_while_cond
l_f0_10:
    movl    $54771, %eax            #  18:     if     54771 < 34332 goto 15_if_true
    movl    $34332, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  19:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  21:     goto   14
l_f0_16_if_false:
l_f0_14:
l_f0_19_while_cond:
    jmp     l_f0_18                 #  25:     goto   18
    jmp     l_f0_19_while_cond      #  26:     goto   19_while_cond
l_f0_18:
    call    dummyINTfunc            #  28:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $51983, %eax            #  29:     if     51983 <= 93410 goto 23_if_true
    movl    $93410, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_23_if_true        
    jmp     l_f0_24_if_false        #  30:     goto   24_if_false
l_f0_23_if_true:
    jmp     l_f0_22                 #  32:     goto   22
l_f0_24_if_false:
l_f0_22:
    jmp     l_f0_28_if_false        #  35:     goto   28_if_false
    jmp     l_f0_26                 #  36:     goto   26
l_f0_28_if_false:
l_f0_26:
    jmp     l_f0_31_if_false        #  39:     goto   31_if_false
    jmp     l_f0_29                 #  40:     goto   29
l_f0_31_if_false:
l_f0_29:
    jmp     l_f0_2                  #  43:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 47 of <array 85 of <array 32 of <array 81 of <array 80 of <int>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    movl    $72905, %eax            #   2:     if     72905 > 90519 goto 3_while_body
    movl    $90519, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    jmp     l_f1_5                  #   5:     goto   5
l_f1_5:
    jmp     l_f1_2_while_cond       #   7:     goto   2_while_cond
l_f1_1:
    call    dummyINTfunc            #   9:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $20417, %eax            #  10:     if     20417 <= t5 goto 9_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  11:     goto   10_if_false
l_f1_9_if_true:
    movl    $53269, %eax            #  13:     return 53269
    jmp     l_f1_exit              
    call    WriteLn                 #  14:     call   WriteLn
    jmp     l_f1_8                  #  15:     goto   8
l_f1_10_if_false:
l_f1_8:

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
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 63 of <array 5 of <array 49 of <array 25 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 20 of <array 15 of <array 15 of <array 21 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -88(%ebp)   4  [ $v3       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $v4       <char> %ebp-89 ]

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
    movl    $29101, %eax            #   0:     sub    t4 <- 29101, 38530
    movl    $38530, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   1:     sub    t5 <- t4, 3987
    movl    $3987, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   4:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $51835, %eax            #   5:     mul    t7 <- 51835, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   6:     add    t8 <- t7, 98435
    movl    $98435, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  10:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t11 <- t10, 22103
    movl    $22103, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  15:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     add    t14 <- t13, 15762
    movl    $15762, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  20:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     add    t17 <- t16, 7902
    movl    $7902, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  22:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  25:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t21 <- v1, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -68(%ebp), %eax         #  27:     assign @t21 <- t5
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $97, %eax               #  28:     assign v4 <- 97
    movb    %al, -89(%ebp)         
    movl    $100, %eax              #  29:     if     100 > 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #  30:     goto   4_if_false
l_f2_3_if_true:
l_f2_7_while_cond:
    jmp     l_f2_6                  #  33:     goto   6
    jmp     l_f2_7_while_cond       #  34:     goto   7_while_cond
l_f2_6:
    movl    $78494, %eax            #  36:     if     78494 <= 42081 goto 10_if_true
    movl    $42081, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  37:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  39:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $100, %eax              #  42:     if     100 <= 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  43:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  45:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_exit              
    jmp     l_f2_2                  #  49:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 47 of <array 85 of <array 32 of <array 81 of <array 80 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    movl    $1983, %eax             #   0:     if     1983 <= 46418 goto 1_if_true
    movl    $46418, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyProcedure          #   3:     call   dummyProcedure
    jmp     l_test_exit            
    call    ReadInt                 #   5:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    movl    $1, %eax                #   7:     if     1 # 0 goto 9_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_9_if_true       
    jmp     l_test_10_if_false      #   8:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  10:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_0                #  13:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #  16:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_15_if_false      #  17:     goto   15_if_false
    movl    $97, %eax               #  18:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  19:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_17               #  20:     goto   17
l_test_17:
    jmp     l_test_13               #  22:     goto   13
l_test_15_if_false:
l_test_13:
l_test_21_while_cond:
    jmp     l_test_exit            
    movl    $100, %eax              #  27:     assign v0 <- 100
    movb    %al, v0                
l_test_26_while_cond:
    jmp     l_test_26_while_cond    #  29:     goto   26_while_cond
    jmp     l_test_21_while_cond    #  30:     goto   21_while_cond
    jmp     l_test_30_if_false      #  31:     goto   30_if_false
l_test_32_while_cond:
    movl    $99343, %eax            #  33:     if     99343 # 9375 goto 33_while_body
    movl    $9375, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_33_while_body   
    jmp     l_test_31               #  34:     goto   31
l_test_33_while_body:
    jmp     l_test_32_while_cond    #  36:     goto   32_while_cond
l_test_31:
    movl    $1, %eax                #  38:     assign v1 <- 1
    movb    %al, v1                
    leal    v2, %eax                #  39:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  40:     param  1 <- t2
    pushl   %eax                   
    movl    $100, %eax              #  41:     param  0 <- 100
    pushl   %eax                   
    call    f1                      #  42:     call   t3 <- f1
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    jmp     l_test_28               #  43:     goto   28
l_test_30_if_false:
l_test_28:

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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 47 of <array 85 of <array 32 of <array 81 of <array 80 of <int>>>>>>
    .long    5
    .long   47
    .long   85
    .long   32
    .long   81
    .long   80
    .skip -981354496








    # end of global data section
    #-----------------------------------------

    .end
##################################################
