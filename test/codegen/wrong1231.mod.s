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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 85 of <array 74 of <array 72 of <array 26 of <array 11 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 7 of <array 34 of <array 38 of <array 75 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   1:     return t9
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     assign v4 <- t10
    movb    %al, 20(%ebp)          
    movl    $97, %eax               #   4:     return 97
    jmp     l_f0_exit              

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
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $v1       <char> %ebp-26 ]

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
    movl    $98, %eax               #   0:     assign v1 <- 98
    movb    %al, -26(%ebp)         
    jmp     l_f1_0                  #   1:     goto   0
l_f1_0:
    call    dummyCHARfunc           #   3:     call   t9 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $99, %eax               #   4:     if     99 >= t9 goto 5_if_true
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   5:     goto   6_if_false
l_f1_5_if_true:
l_f1_9_while_cond:
    movl    $9383, %eax             #   8:     if     9383 = 19530 goto 10_while_body
    movl    $19530, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_10_while_body     
    jmp     l_f1_8                  #   9:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  11:     goto   9_while_cond
l_f1_8:
    movl    $99, %eax               #  13:     if     99 <= 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  14:     goto   14_if_false
l_f1_13_if_true:
    jmp     l_f1_12                 #  16:     goto   12
l_f1_14_if_false:
l_f1_12:
    jmp     l_f1_4                  #  19:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $63951, %eax            #  22:     sub    t10 <- 63951, 58839
    movl    $58839, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     add    t11 <- t10, 11767
    movl    $11767, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $15548, %eax            #  24:     add    t12 <- 15548, 11113
    movl    $11113, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  25:     if     t11 >= t12 goto 17_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  26:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  28:     goto   16
l_f1_18_if_false:
l_f1_16:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <char> %ebp-16 ]

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
    jmp     l_f2_5                  #   0:     goto   5
    jmp     l_f2_1                  #   1:     goto   1
l_f2_5:
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t9 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t9 <- 0
    movb    %al, -15(%ebp)         
l_f2_3:
    movzbl  -15(%ebp), %eax         #  10:     return t9
    jmp     l_f2_exit              
    movl    $98, %eax               #  11:     if     98 < 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #  12:     goto   9_if_false
l_f2_8_if_true:
    movl    $43373, %eax            #  14:     if     43373 = 61485 goto 12_if_true
    movl    $61485, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  15:     goto   13_if_false
l_f2_12_if_true:
    jmp     l_f2_11                 #  17:     goto   11
l_f2_13_if_false:
l_f2_11:
    movl    $42166, %eax            #  20:     if     42166 = 66822 goto 16
    movl    $66822, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_16                
    jmp     l_f2_17                 #  21:     goto   17
l_f2_16:
    movl    $1, %eax                #  23:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_18                 #  24:     goto   18
l_f2_17:
    movl    $0, %eax                #  26:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_18:
    movzbl  -13(%ebp), %eax         #  28:     return t10
    jmp     l_f2_exit              
    jmp     l_f2_7                  #  29:     goto   7
l_f2_9_if_false:
l_f2_7:
    call    f1                      #  32:     call   t11 <- f1
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  33:     assign v1 <- t11
    movb    %al, -16(%ebp)         

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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 7 of <array 34 of <array 38 of <array 75 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 85 of <array 74 of <array 72 of <array 26 of <array 11 of <int>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <bool> %ebp-38 ]
    #    -39(%ebp)   1  [ $t8       <bool> %ebp-39 ]

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
    movl    $4775, %eax             #   0:     mul    t0 <- 4775, 31622
    movl    $31622, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 93029
    movl    $93029, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 55751
    movl    $55751, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     div    t3 <- t2, 99619
    movl    $99619, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v0 <- t3
    movl    %eax, v0               
l_test_2_while_cond:
    movl    $88760, %eax            #   6:     if     88760 # 61996 goto 3_while_body
    movl    $61996, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   7:     goto   1
l_test_3_while_body:
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #  10:     goto   2_while_cond
l_test_1:
    movl    $99, %eax               #  12:     param  3 <- 99
    pushl   %eax                   
    movl    $88468, %eax            #  13:     param  2 <- 88468
    pushl   %eax                   
    leal    v2, %eax                #  14:     &()    t4 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     param  1 <- t4
    pushl   %eax                   
    leal    v1, %eax                #  16:     &()    t5 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  18:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
    movl    $97, %eax               #  19:     if     97 # 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_8_if_true       
    jmp     l_test_9_if_false       #  20:     goto   9_if_false
l_test_8_if_true:
    call    f2                      #  22:     call   t7 <- f2
    movb    %al, -38(%ebp)         
    call    f2                      #  23:     call   t8 <- f2
    movb    %al, -39(%ebp)         
    movzbl  -39(%ebp), %eax         #  24:     if     t8 = 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_if_true      
    jmp     l_test_14_if_false      #  25:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  27:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_7                #  30:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_exit            

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
v1:                                 # <array 85 of <array 74 of <array 72 of <array 26 of <array 11 of <int>>>>>>
    .long    5
    .long   85
    .long   74
    .long   72
    .long   26
    .long   11
    .skip 518094720
v2:                                 # <array 7 of <array 7 of <array 34 of <array 38 of <array 75 of <bool>>>>>>
    .long    5
    .long    7
    .long    7
    .long   34
    .long   38
    .long   75
    .skip 4748100








    # end of global data section
    #-----------------------------------------

    .end
##################################################
