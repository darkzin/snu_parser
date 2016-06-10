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
    #    -16(%ebp)   4  [ $v2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v3       <char> %ebp-17 ]

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
    movl    $73206, %eax            #   0:     return 73206
    jmp     l_f0_exit              
    movl    $13634, %eax            #   1:     assign v2 <- 13634
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   2:     assign v3 <- 97
    movb    %al, -17(%ebp)         
    jmp     l_f0_0                  #   3:     goto   0
l_f0_0:
l_f0_9_while_cond:
    jmp     l_f0_8                  #   6:     goto   8
    movl    $90403, %eax            #   7:     return 90403
    jmp     l_f0_exit              
    movl    $94847, %eax            #   8:     if     94847 <= 96555 goto 13_if_true
    movl    $96555, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #   9:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  11:     goto   12
l_f0_14_if_false:
l_f0_12:
l_f0_17_while_cond:
    jmp     l_f0_16                 #  15:     goto   16
    jmp     l_f0_17_while_cond      #  16:     goto   17_while_cond
l_f0_16:
l_f0_20_while_cond:
    movl    $67626, %eax            #  19:     if     67626 < 21222 goto 21_while_body
    movl    $21222, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_21_while_body     
    jmp     l_f0_19                 #  20:     goto   19
l_f0_21_while_body:
    jmp     l_f0_20_while_cond      #  22:     goto   20_while_cond
l_f0_19:
    jmp     l_f0_9_while_cond       #  24:     goto   9_while_cond
l_f0_8:
    call    WriteLn                 #  26:     call   WriteLn

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 9 of <array 2 of <array 2 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 10 of <array 4 of <array 1 of <array 8 of <char>>>>>>> %ebp+12 ]

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
    jmp     l_f1_6                  #   0:     goto   6
l_f1_6:
    jmp     l_f1_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     return t2
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   9:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_16                 #  10:     goto   16
    jmp     l_f1_13                 #  11:     goto   13
l_f1_16:
l_f1_13:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_15                 #  15:     goto   15
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f1_15:
    movzbl  -15(%ebp), %eax         #  18:     return t4
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $54749, %eax            #   0:     sub    t2 <- 54749, 80261
    movl    $80261, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     add    t3 <- t2, 12257
    movl    $12257, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     return t3
    jmp     l_f2_exit              
    movl    $11577, %eax            #   3:     mul    t4 <- 11577, 8801
    movl    $8801, %ebx            
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     sub    t5 <- t4, 87730
    movl    $87730, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     sub    t6 <- t5, 41597
    movl    $41597, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     add    t7 <- t6, 98448
    movl    $98448, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     add    t8 <- t7, 13332
    movl    $13332, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   8:     sub    t9 <- t8, 78128
    movl    $78128, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   9:     sub    t10 <- t9, 32619
    movl    $32619, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     add    t11 <- t10, 14933
    movl    $14933, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t12 <- t11, 90555
    movl    $90555, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     return t12
    jmp     l_f2_exit              
    movl    $92103, %eax            #  13:     if     92103 # 96716 goto 3_if_true
    movl    $96716, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #  14:     goto   4_if_false
l_f2_3_if_true:
    movl    $17391, %eax            #  16:     assign v4 <- 17391
    movl    %eax, 16(%ebp)         
    movl    $97, %eax               #  17:     if     97 > 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #  18:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #  20:     goto   7
l_f2_9_if_false:
l_f2_7:
    movl    $43170, %eax            #  23:     if     43170 < 56100 goto 12_if_true
    movl    $56100, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  24:     goto   13_if_false
l_f2_12_if_true:
l_f2_16_while_cond:
    movl    $99, %eax               #  27:     if     99 > 100 goto 17_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_17_while_body     
    jmp     l_f2_15                 #  28:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  30:     goto   16_while_cond
l_f2_15:
    jmp     l_f2_11                 #  32:     goto   11
l_f2_13_if_false:
l_f2_11:
    jmp     l_f2_2                  #  35:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
    movl    $41784, %eax            #   0:     if     41784 >= 17053 goto 1
    movl    $17053, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    movl    $99, %eax               #   9:     if     99 <= 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_6_if_true       
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
l_test_6_if_true:
    call    dummyCHARfunc           #  12:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  13:     assign v1 <- 100
    movb    %al, v1                
l_test_12_while_cond:
    movl    $35841, %eax            #  15:     if     35841 = 6351 goto 13_while_body
    movl    $6351, %ebx            
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  16:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  18:     goto   12_while_cond
l_test_11:
    movl    $1, %eax                #  20:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_5                #  21:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    movl    $69599, %eax            #  25:     assign v2 <- 69599
    movl    %eax, v2               
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
