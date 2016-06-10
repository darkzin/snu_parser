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
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t15      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t17      <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 64 of <array 17 of <array 69 of <array 66 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 69 of <array 72 of <array 89 of <array 38 of <array 41 of <bool>>>>>>> %ebp+16 ]

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
l_f0_1_while_cond:
    call    dummyINTfunc            #   1:     call   t14 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   2:     call   t15 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $90480, %eax            #   3:     if     90480 # 17319 goto 6_if_true
    movl    $17319, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
    movl    $53785, %eax            #  10:     add    t16 <- 53785, 67570
    movl    $67570, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     return t16
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  12:     call   t17 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t14      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]

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
    call    dummyBOOLfunc           #   0:     call   t14 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_3_if_true          #   2:     goto   3_if_true
    jmp     l_f1_3_if_true          #   3:     goto   3_if_true
    jmp     l_f1_3_if_true          #   4:     goto   3_if_true
    jmp     l_f1_4_if_false         #   5:     goto   4_if_false
l_f1_3_if_true:
    movl    $97, %eax               #   7:     assign v0 <- 97
    movb    %al, -14(%ebp)         
    jmp     l_f1_10                 #   8:     goto   10
l_f1_10:
l_f1_14_while_cond:
    movl    $62661, %eax            #  11:     if     62661 <= 85795 goto 15_while_body
    movl    $85795, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_15_while_body     
    jmp     l_f1_13                 #  12:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  14:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_2                  #  16:     goto   2
l_f1_4_if_false:
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
    #    -13(%ebp)   1  [ $t14      <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 96 of <array 42 of <array 70 of <array 75 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 27 of <array 63 of <array 83 of <array 24 of <array 87 of <int>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <bool> %ebp-14 ]

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
l_f2_4_while_cond:
    jmp     l_f2_3                  #   1:     goto   3
    jmp     l_f2_4_while_cond       #   2:     goto   4_while_cond
l_f2_3:
    movl    $0, %eax                #   4:     assign v3 <- 0
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   5:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   6:     goto   0
l_f2_0:
    call    dummyCHARfunc           #   8:     call   t14 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     return t14
    jmp     l_f2_exit              
    jmp     l_f2_10_if_true         #  10:     goto   10_if_true
    jmp     l_f2_11_if_false        #  11:     goto   11_if_false
l_f2_10_if_true:
    movl    $97, %eax               #  13:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f2_9                  #  14:     goto   9
l_f2_11_if_false:
l_f2_9:

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
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 27 of <array 63 of <array 83 of <array 24 of <array 87 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 9 of <array 96 of <array 42 of <array 70 of <array 75 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t12      <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t13      <char> %ebp-30 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <ptr(4) to <array 27 of <array 63 of <array 83 of <array 24 of <array 87 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <ptr(4) to <array 9 of <array 96 of <array 42 of <array 70 of <array 75 of <int>>>>>>> %ebp-64 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $55478, %eax            #   0:     sub    t0 <- 55478, 28002
    movl    $28002, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $79153, %eax            #   1:     div    t1 <- 79153, 32826
    movl    $32826, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t2 <- t1, 19969
    movl    $19969, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t3 <- t0, t2
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     assign v0 <- t3
    movl    %eax, v0               
    movl    $31211, %eax            #   5:     add    t4 <- 31211, 97637
    movl    $97637, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     add    t5 <- t4, 25435
    movl    $25435, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     add    t6 <- t5, 60039
    movl    $60039, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   8:     sub    t7 <- t6, 72544
    movl    $72544, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   9:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #  10:     call   WriteInt
    addl    $4, %esp               
    movl    $98, %eax               #  11:     if     98 < 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_3_if_true       
    jmp     l_test_4_if_false       #  12:     goto   4_if_false
l_test_3_if_true:
    leal    v2, %eax                #  14:     &()    t8 <- v2
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  15:     param  2 <- t8
    pushl   %eax                   
    leal    v1, %eax                #  16:     &()    t9 <- v1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  17:     param  1 <- t9
    pushl   %eax                   
    leal    v2, %eax                #  18:     &()    t10 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     param  2 <- t10
    pushl   %eax                   
    leal    v1, %eax                #  20:     &()    t11 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     param  1 <- t11
    pushl   %eax                   
    movl    $97, %eax               #  22:     param  0 <- 97
    pushl   %eax                   
    call    f2                      #  23:     call   t12 <- f2
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  24:     param  0 <- t12
    pushl   %eax                   
    call    f2                      #  25:     call   t13 <- f2
    addl    $12, %esp              
    movb    %al, -30(%ebp)         
    jmp     l_test_exit            
    movl    $99, %eax               #  27:     if     99 >= 97 goto 9_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_9_if_true       
    jmp     l_test_10_if_false      #  28:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  30:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_2                #  33:     goto   2
l_test_4_if_false:
l_test_2:

l_test_exit:
    # epilogue
    addl    $52, %esp               # remove locals
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
v1:                                 # <array 9 of <array 96 of <array 42 of <array 70 of <array 75 of <int>>>>>>
    .long    5
    .long    9
    .long   96
    .long   42
    .long   70
    .long   75
    .skip 762048000
v2:                                 # <array 27 of <array 63 of <array 83 of <array 24 of <array 87 of <int>>>>>>
    .long    5
    .long   27
    .long   63
    .long   83
    .long   24
    .long   87
    .skip 1179160416








    # end of global data section
    #-----------------------------------------

    .end
##################################################
