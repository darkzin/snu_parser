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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 74 of <array 86 of <array 50 of <array 42 of <array 62 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 99 of <array 87 of <array 90 of <array 63 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 63 of <array 24 of <array 35 of <array 22 of <array 89 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 43 of <array 91 of <array 36 of <array 59 of <array 55 of <char>>>>>>> %ebp+20 ]
    #    -24(%ebp)   4  [ $v5       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t7
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $6606, %eax             #   3:     add    t8 <- 6606, 26445
    movl    $26445, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t8 > 60998 goto 3_while_body
    movl    $60998, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
    movl    $100, %eax              #   7:     return 100
    jmp     l_f0_exit              
l_f0_7_while_cond:
    movl    $5729, %eax             #   9:     if     5729 > 19989 goto 8_while_body
    movl    $19989, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_8_while_body      
    jmp     l_f0_6                  #  10:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  12:     goto   7_while_cond
l_f0_6:
    movl    $98, %eax               #  14:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #  15:     goto   2_while_cond
l_f0_1:
l_f0_12_while_cond:
    jmp     l_f0_11                 #  18:     goto   11
    movl    $58537, %eax            #  19:     assign v5 <- 58537
    movl    %eax, -24(%ebp)        
    movl    $98, %eax               #  20:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_12_while_cond      #  21:     goto   12_while_cond
l_f0_11:

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
    movl    $90643, %eax            #   2:     if     90643 # 33172 goto 5_if_true
    movl    $33172, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $52648, %eax            #   8:     if     52648 # 44347 goto 9_if_true
    movl    $44347, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_if_false:
l_f1_8:
l_f1_13_while_cond:
    movl    $293, %eax              #  15:     if     293 >= 29304 goto 14_while_body
    movl    $29304, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_14_while_body     
    jmp     l_f1_12                 #  16:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  18:     goto   13_while_cond
l_f1_12:
l_f1_17_while_cond:
    movl    $5957, %eax             #  21:     if     5957 >= 55336 goto 18_while_body
    movl    $55336, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_18_while_body     
    jmp     l_f1_16                 #  22:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  24:     goto   17_while_cond
l_f1_16:
    movl    $100, %eax              #  26:     if     100 = 99 goto 21
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_21                
    jmp     l_f1_22                 #  27:     goto   22
l_f1_21:
    movl    $1, %eax                #  29:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_23                 #  30:     goto   23
l_f1_22:
    movl    $0, %eax                #  32:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f1_23:
    movzbl  -13(%ebp), %eax         #  34:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  35:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_27_if_false        #  38:     goto   27_if_false
    call    dummyProcedure          #  39:     call   dummyProcedure
l_f1_30_while_cond:
    jmp     l_f1_30_while_cond      #  41:     goto   30_while_cond
    jmp     l_f1_25                 #  42:     goto   25
l_f1_27_if_false:
l_f1_25:
    call    dummyCHARfunc           #  45:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  46:     assign v1 <- t8
    movb    %al, -15(%ebp)         

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
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t16      <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t17      <bool> %ebp-38 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $v1       <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $v2       <char> %ebp-57 ]
    #    -58(%ebp)   1  [ $v3       <bool> %ebp-58 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $53559, %eax            #   0:     mul    t7 <- 53559, 12150
    movl    $12150, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   1:     mul    t8 <- t7, 32617
    movl    $32617, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   2:     mul    t9 <- t8, 7163
    movl    $7163, %ebx            
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   3:     div    t10 <- t9, 57026
    movl    $57026, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     mul    t11 <- t10, 30885
    movl    $30885, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     div    t12 <- t11, 57103
    movl    $57103, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     sub    t13 <- t12, 58886
    movl    $58886, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     add    t14 <- t13, 8882
    movl    $8882, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     assign v1 <- t14
    movl    %eax, -56(%ebp)        
l_f2_2_while_cond:
    movl    $63855, %eax            #  10:     if     63855 < 95982 goto 3_while_body
    movl    $95982, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #  11:     goto   1
l_f2_3_while_body:
    call    ReadInt                 #  13:     call   t15 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    $100, %eax              #  14:     assign v2 <- 100
    movb    %al, -57(%ebp)         
    movl    $46338, %eax            #  15:     if     46338 > 38710 goto 8
    movl    $38710, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_8                 
    jmp     l_f2_9                  #  16:     goto   9
l_f2_8:
    movl    $1, %eax                #  18:     assign t16 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_10                 #  19:     goto   10
l_f2_9:
    movl    $0, %eax                #  21:     assign t16 <- 0
    movb    %al, -37(%ebp)         
l_f2_10:
    movzbl  -37(%ebp), %eax         #  23:     assign v3 <- t16
    movb    %al, -58(%ebp)         
    movl    $1, %eax                #  24:     return 1
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #  25:     goto   2_while_cond
l_f2_1:
    call    dummyBOOLfunc           #  27:     call   t17 <- dummyBOOLfunc
    movb    %al, -38(%ebp)         

l_f2_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 43 of <array 91 of <array 36 of <array 59 of <array 55 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 63 of <array 24 of <array 35 of <array 22 of <array 89 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 99 of <array 87 of <array 90 of <array 63 of <array 10 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 74 of <array 86 of <array 50 of <array 42 of <array 62 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $27782, %eax            #   1:     if     27782 >= t0 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
l_test_6_while_cond:
    jmp     l_test_5                #  11:     goto   5
    jmp     l_test_5                #  12:     goto   5
    jmp     l_test_5                #  13:     goto   5
    jmp     l_test_5                #  14:     goto   5
l_test_16_while_cond:
    jmp     l_test_16_while_cond    #  16:     goto   16_while_cond
    jmp     l_test_6_while_cond     #  17:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    movl    $97, %eax               #  20:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_exit            
    leal    v5, %eax                #  22:     &()    t2 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     param  3 <- t2
    pushl   %eax                   
    leal    v4, %eax                #  24:     &()    t3 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     param  2 <- t3
    pushl   %eax                   
    leal    v3, %eax                #  26:     &()    t4 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     param  1 <- t4
    pushl   %eax                   
    leal    v2, %eax                #  28:     &()    t5 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  30:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -37(%ebp)         

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 74 of <array 86 of <array 50 of <array 42 of <array 62 of <bool>>>>>>
    .long    5
    .long   74
    .long   86
    .long   50
    .long   42
    .long   62
    .skip 828592800
v3:                                 # <array 99 of <array 87 of <array 90 of <array 63 of <array 10 of <char>>>>>>
    .long    5
    .long   99
    .long   87
    .long   90
    .long   63
    .long   10
    .skip 488357100
v4:                                 # <array 63 of <array 24 of <array 35 of <array 22 of <array 89 of <bool>>>>>>
    .long    5
    .long   63
    .long   24
    .long   35
    .long   22
    .long   89
    .skip 103617360
v5:                                 # <array 43 of <array 91 of <array 36 of <array 59 of <array 55 of <char>>>>>>
    .long    5
    .long   43
    .long   91
    .long   36
    .long   59
    .long   55
    .skip 457116660








    # end of global data section
    #-----------------------------------------

    .end
##################################################
