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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t13      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t14      <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t15      <bool> %ebp-17 ]

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
    movl    $0, %eax                #   0:     if     0 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t11 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   4:     if     99 > 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   5:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_14                 #  13:     goto   14
l_f0_14:
    movl    $1, %eax                #  15:     assign t12 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_16                 #  16:     goto   16
    movl    $0, %eax                #  17:     assign t12 <- 0
    movb    %al, -14(%ebp)         
l_f0_16:
    jmp     l_f0_21                 #  19:     goto   21
    movl    $1, %eax                #  20:     assign t13 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_22                 #  21:     goto   22
l_f0_21:
    movl    $0, %eax                #  23:     assign t13 <- 0
    movb    %al, -15(%ebp)         
l_f0_22:
    movzbl  -14(%ebp), %eax         #  25:     if     t12 # t13 goto 10
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_10                
    jmp     l_f0_11                 #  26:     goto   11
l_f0_10:
    movl    $1, %eax                #  28:     assign t14 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_12                 #  29:     goto   12
l_f0_11:
    movl    $0, %eax                #  31:     assign t14 <- 0
    movb    %al, -16(%ebp)         
l_f0_12:
    movzbl  -16(%ebp), %eax         #  33:     return t14
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  34:     call   t15 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         

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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t14      <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 8 of <array 3 of <array 9 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 6 of <array 8 of <array 8 of <array 3 of <bool>>>>>>> %ebp+16 ]

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
    jmp     l_f1_1                  #   0:     goto   1
l_f1_1:
    movl    $1, %eax                #   2:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     return t11
    jmp     l_f1_exit              
    movl    $81367, %eax            #   7:     add    t12 <- 81367, 48499
    movl    $48499, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t13 <- t12, 18948
    movl    $18948, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $51310, %eax            #   9:     if     51310 <= t13 goto 7_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  10:     goto   8_if_false
l_f1_7_if_true:
    movl    $99, %eax               #  12:     if     99 <= 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  13:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  15:     goto   10
l_f1_12_if_false:
l_f1_10:
    jmp     l_f1_6                  #  18:     goto   6
l_f1_8_if_false:
l_f1_6:
    call    f0                      #  21:     call   t14 <- f0
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  22:     if     t14 = 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  23:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_19_if_false        #  25:     goto   19_if_false
    jmp     l_f1_17                 #  26:     goto   17
l_f1_19_if_false:
l_f1_17:
    movl    $1, %eax                #  29:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_14                 #  30:     goto   14
l_f1_16_if_false:
l_f1_14:

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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    movl    $15483, %eax            #   0:     assign v2 <- 15483
    movl    %eax, -20(%ebp)        
l_f2_2_while_cond:
    movl    $1, %eax                #   2:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   3:     goto   7
    movl    $0, %eax                #   4:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #   6:     if     t11 = 0 goto 3_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_while_body:
    jmp     l_f2_exit              
    call    WriteLn                 #  10:     call   WriteLn
    jmp     l_f2_2_while_cond       #  11:     goto   2_while_cond
l_f2_1:
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]

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
    jmp     l_test_exit            
    movl    $71103, %eax            #   1:     mul    t0 <- 71103, 40542
    movl    $40542, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t1 <- t0, 64929
    movl    $64929, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 1291
    movl    $1291, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     sub    t3 <- t2, 90812
    movl    $90812, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t4 <- t3, 41321
    movl    $41321, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     assign v0 <- t4
    movl    %eax, v0               
    movl    $3025, %eax             #   7:     mul    t5 <- 3025, 25097
    movl    $25097, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   8:     div    t6 <- t5, 20739
    movl    $20739, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   9:     mul    t7 <- t6, 58078
    movl    $58078, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  10:     mul    t8 <- t7, 95706
    movl    $95706, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  11:     mul    t9 <- t8, 81960
    movl    $81960, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  12:     assign v0 <- t9
    movl    %eax, v0               
l_test_4_while_cond:
    jmp     l_test_3                #  14:     goto   3
l_test_7_while_cond:
    jmp     l_test_8_while_body     #  16:     goto   8_while_body
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  18:     goto   7_while_cond
    jmp     l_test_4_while_cond     #  19:     goto   4_while_cond
l_test_3:
l_test_13_while_cond:
    jmp     l_test_12               #  22:     goto   12
    movl    $97, %eax               #  23:     assign v1 <- 97
    movb    %al, v1                
    call    dummyCHARfunc           #  24:     call   t10 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_13_while_cond    #  25:     goto   13_while_cond
l_test_12:

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
