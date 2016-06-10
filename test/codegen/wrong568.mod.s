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
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 1 of <array 6 of <array 5 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 3 of <array 4 of <array 6 of <array 5 of <array 9 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <int> %ebp+20 ]
    #    -13(%ebp)   1  [ $v6       <bool> %ebp-13 ]

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
    call    dummyProcedure          #   1:     call   dummyProcedure
    movl    $1, %eax                #   2:     assign v6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #   7:     goto   9_while_cond
    movl    $82896, %eax            #   8:     return 82896
    jmp     l_f0_exit              
    movl    $75649, %eax            #   9:     return 75649
    jmp     l_f0_exit              
    movl    $79986, %eax            #  10:     if     79986 >= 84572 goto 14_if_true
    movl    $84572, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  11:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  13:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_5                  #  16:     goto   5
l_f0_5:
    jmp     l_f0_22                 #  18:     goto   22
    jmp     l_f0_22                 #  19:     goto   22
    jmp     l_f0_18_if_true         #  20:     goto   18_if_true
l_f0_22:
    jmp     l_f0_18_if_true         #  22:     goto   18_if_true
    jmp     l_f0_19_if_false        #  23:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  25:     goto   17
l_f0_19_if_false:
l_f0_17:

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 3 of <array 10 of <array 7 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]

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
    movl    $100, %eax              #   0:     if     100 < 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   3:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_6_while_cond:
    call    dummyCHARfunc           #   8:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     if     t8 >= 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_7_while_body      
    jmp     l_f1_5                  #  10:     goto   5
l_f1_7_while_body:
l_f1_10_while_cond:
    jmp     l_f1_9                  #  13:     goto   9
    jmp     l_f1_10_while_cond      #  14:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_6_while_cond       #  16:     goto   6_while_cond
l_f1_5:
    movl    $0, %eax                #  18:     assign v3 <- 0
    movb    %al, 12(%ebp)          

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 9 of <array 7 of <array 7 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]

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
    jmp     l_f2_6                  #   0:     goto   6
    jmp     l_f2_1_if_true          #   1:     goto   1_if_true
l_f2_6:
l_f2_1_if_true:
    jmp     l_f2_0                  #   4:     goto   0
l_f2_0:
    call    dummyCHARfunc           #   6:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   7:     if     97 <= t7 goto 9
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_9                 
    jmp     l_f2_10                 #   8:     goto   10
l_f2_9:
    movl    $1, %eax                #  10:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_11                 #  11:     goto   11
l_f2_10:
    movl    $0, %eax                #  13:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f2_11:
    movzbl  -14(%ebp), %eax         #  15:     return t8
    jmp     l_f2_exit              
    jmp     l_f2_14                 #  16:     goto   14
    jmp     l_f2_15                 #  17:     goto   15
    jmp     l_f2_15                 #  18:     goto   15
    jmp     l_f2_15                 #  19:     goto   15
    jmp     l_f2_15                 #  20:     goto   15
l_f2_14:
    movl    $1, %eax                #  22:     assign t9 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_16                 #  23:     goto   16
l_f2_15:
    movl    $0, %eax                #  25:     assign t9 <- 0
    movb    %al, -15(%ebp)         
l_f2_16:
    movzbl  -15(%ebp), %eax         #  27:     return t9
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 3 of <array 4 of <array 6 of <array 5 of <array 9 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 6 of <array 1 of <array 6 of <array 5 of <array 8 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

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
    movl    $72974, %eax            #   0:     assign v0 <- 72974
    movl    %eax, v0               
    movl    $100, %eax              #   1:     if     100 > 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
    jmp     l_test_exit            
    movl    $97, %eax               #   7:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_exit            
l_test_12_while_cond:
    movl    $99, %eax               #  10:     if     99 # 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_13_while_body   
    jmp     l_test_11               #  11:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  13:     goto   12_while_cond
l_test_11:
    movl    $64637, %eax            #  15:     assign v0 <- 64637
    movl    %eax, v0               
    movl    $51617, %eax            #  16:     assign v0 <- 51617
    movl    %eax, v0               
    jmp     l_test_1                #  17:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $48868, %eax            #  20:     param  3 <- 48868
    pushl   %eax                   
    leal    v3, %eax                #  21:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     param  2 <- t0
    pushl   %eax                   
    leal    v2, %eax                #  23:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  1 <- t1
    pushl   %eax                   
    movl    $42675, %eax            #  25:     div    t2 <- 42675, 1941
    movl    $1941, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  27:     call   t3 <- f0
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
l_test_19_while_cond:
    movl    $79042, %eax            #  29:     add    t4 <- 79042, 3205
    movl    $3205, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     sub    t5 <- t4, 59617
    movl    $59617, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t6 <- t5, 80445
    movl    $80445, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     if     t6 >= 35357 goto 20_while_body
    movl    $35357, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_20_while_body   
    jmp     l_test_18               #  33:     goto   18
l_test_20_while_body:
    jmp     l_test_exit            
    jmp     l_test_19_while_cond    #  36:     goto   19_while_cond
l_test_18:
    jmp     l_test_24_if_true       #  38:     goto   24_if_true
    jmp     l_test_24_if_true       #  39:     goto   24_if_true
l_test_24_if_true:
    movl    $56904, %eax            #  41:     assign v0 <- 56904
    movl    %eax, v0               
    jmp     l_test_23               #  42:     goto   23
l_test_23:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 6 of <array 1 of <array 6 of <array 5 of <array 8 of <char>>>>>>
    .long    5
    .long    6
    .long    1
    .long    6
    .long    5
    .long    8
    .skip 1440
v3:                                 # <array 3 of <array 4 of <array 6 of <array 5 of <array 9 of <int>>>>>>
    .long    5
    .long    3
    .long    4
    .long    6
    .long    5
    .long    9
    .skip 12960








    # end of global data section
    #-----------------------------------------

    .end
##################################################
