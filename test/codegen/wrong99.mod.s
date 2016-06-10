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
    #    -57(%ebp)   1  [ $t4       <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 1 of <array 6 of <array 4 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 7 of <array 2 of <array 2 of <array 10 of <bool>>>>>>> %ebp+20 ]
    #    -81(%ebp)   1  [ $v4       <char> %ebp-81 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -57(%ebp)         
    movl    $0, %eax                #   1:     if     0 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    movl    $44623, %eax            #   6:     assign v1 <- 44623
    movl    %eax, 12(%ebp)         
    jmp     l_f0_1                  #   7:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  12:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $19075, %eax            #  13:     mul    t6 <- 19075, t5
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  14:     add    t7 <- t6, 6654
    movl    $6654, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  18:     mul    t9 <- t7, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  19:     add    t10 <- t9, 45539
    movl    $45539, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  23:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t13 <- t12, 3217
    movl    $3217, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t16 <- t15, 43572
    movl    $43572, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  32:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  33:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  34:     add    t20 <- v0, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $99, %eax               #  35:     assign @t20 <- 99
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_exit              
    jmp     l_f0_13                 #  37:     goto   13
l_f0_13:
l_f0_17_while_cond:
    movl    $98, %eax               #  40:     if     98 < 99 goto 18_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_18_while_body     
    jmp     l_f0_16                 #  41:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  43:     goto   17_while_cond
l_f0_16:
    movl    $99, %eax               #  45:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  46:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_8                  #  47:     goto   8
l_f0_8:

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 5 of <array 2 of <array 1 of <array 3 of <bool>>>>>>> %ebp+8 ]

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
    movl    $3223, %eax             #   0:     div    t4 <- 3223, 88514
    movl    $88514, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 75097
    movl    $75097, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 75311
    movl    $75311, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t6
    jmp     l_f1_exit              
    call    dummyProcedure          #   4:     call   dummyProcedure
    call    dummyCHARfunc           #   5:     call   t7 <- dummyCHARfunc
    movb    %al, -25(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    movl    $0, %eax                #   0:     if     0 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $88114, %eax            #   3:     if     88114 <= 78756 goto 5_if_true
    movl    $78756, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $46552, %eax            #   9:     return 46552
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  10:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $60505, %eax            #  11:     param  0 <- 60505
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
l_f2_12_while_cond:
    jmp     l_f2_11                 #  14:     goto   11
    jmp     l_f2_12_while_cond      #  15:     goto   12_while_cond
l_f2_11:
    jmp     l_f2_0                  #  17:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_16_if_false        #  20:     goto   16_if_false
l_f2_18_while_cond:
    movl    $78538, %eax            #  22:     if     78538 > 89622 goto 19_while_body
    movl    $89622, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_19_while_body     
    jmp     l_f2_17                 #  23:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  25:     goto   18_while_cond
l_f2_17:
l_f2_22_while_cond:
    movl    $8531, %eax             #  28:     if     8531 > 52137 goto 23_while_body
    movl    $52137, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_23_while_body     
    jmp     l_f2_21                 #  29:     goto   21
l_f2_23_while_body:
    jmp     l_f2_22_while_cond      #  31:     goto   22_while_cond
l_f2_21:
l_f2_26_while_cond:
    jmp     l_f2_26_while_cond      #  34:     goto   26_while_cond
l_f2_29_while_cond:
    jmp     l_f2_28                 #  36:     goto   28
    jmp     l_f2_29_while_cond      #  37:     goto   29_while_cond
l_f2_28:
    movl    $86832, %eax            #  39:     return 86832
    jmp     l_f2_exit              
    jmp     l_f2_14                 #  40:     goto   14
l_f2_16_if_false:
l_f2_14:
    movl    $65895, %eax            #  43:     assign v1 <- 65895
    movl    %eax, -20(%ebp)        

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <array 5 of <array 2 of <array 1 of <array 3 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    movl    $54656, %eax            #   0:     if     54656 > 14697 goto 1_if_true
    movl    $14697, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    call    ReadInt                 #   4:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
l_test_7_while_cond:
    jmp     l_test_6                #   9:     goto   6
    jmp     l_test_exit            
    leal    v0, %eax                #  11:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  13:     call   t2 <- f1
    addl    $4, %esp               
    movl    %eax, -24(%ebp)        
    movl    $0, %eax                #  14:     if     0 # 1 goto 12_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_12_if_true      
    jmp     l_test_13_if_false      #  15:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  17:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $100, %eax              #  20:     if     100 # 99 goto 16_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_16_if_true      
    jmp     l_test_17_if_false      #  21:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  23:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_7_while_cond     #  26:     goto   7_while_cond
l_test_6:
    movl    $1, %eax                #  28:     assign v1 <- 1
    movb    %al, v1                
    call    dummyCHARfunc           #  29:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         

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
v0:                                 # <array 7 of <array 5 of <array 2 of <array 1 of <array 3 of <bool>>>>>>
    .long    5
    .long    7
    .long    5
    .long    2
    .long    1
    .long    3
    .skip  210
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
