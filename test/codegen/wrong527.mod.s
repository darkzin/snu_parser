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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 9 of <array 2 of <array 7 of <array 2 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 7 of <array 3 of <array 5 of <array 3 of <array 7 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f0_5_if_false         #   1:     goto   5_if_false
    jmp     l_f0_3                  #   2:     goto   3
l_f0_5_if_false:
l_f0_3:
l_f0_7_while_cond:
    jmp     l_f0_7_while_cond       #   6:     goto   7_while_cond
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
    jmp     l_f0_10_if_true         #   8:     goto   10_if_true
    jmp     l_f0_10_if_true         #   9:     goto   10_if_true
    jmp     l_f0_11_if_false        #  10:     goto   11_if_false
l_f0_10_if_true:
    movl    $1, %eax                #  12:     if     1 = 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  13:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  15:     goto   14
l_f0_16_if_false:
l_f0_14:
    jmp     l_f0_9                  #  18:     goto   9
l_f0_11_if_false:
l_f0_9:
    call    dummyBOOLfunc           #  21:     call   t9 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  22:     if     t9 = 1 goto 24
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_24                
    jmp     l_f0_20                 #  23:     goto   20
l_f0_24:
    jmp     l_f0_20                 #  25:     goto   20
    movl    $1, %eax                #  26:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_21                 #  27:     goto   21
l_f0_20:
    movl    $0, %eax                #  29:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_21:
    movzbl  -13(%ebp), %eax         #  31:     return t10
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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 7 of <array 6 of <array 10 of <array 4 of <int>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
    movl    $100, %eax              #   0:     assign v3 <- 100
    movb    %al, -15(%ebp)         
l_f1_2_while_cond:
    movl    $1, %eax                #   2:     assign t9 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_7                  #   3:     goto   7
    movl    $0, %eax                #   4:     assign t9 <- 0
    movb    %al, -14(%ebp)         
l_f1_7:
    movl    $1, %eax                #   6:     if     1 # t9 goto 3_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_3_while_body      
    jmp     l_f1_1                  #   7:     goto   1
l_f1_3_while_body:
    movl    $1, %eax                #   9:     return 1
    jmp     l_f1_exit              
    movl    $98, %eax               #  10:     assign v3 <- 98
    movb    %al, -15(%ebp)         
    jmp     l_f1_2_while_cond       #  11:     goto   2_while_cond
l_f1_1:
l_f1_12_while_cond:
    movl    $98, %eax               #  14:     if     98 = 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_13_while_body     
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_while_body:
    movl    $99, %eax               #  17:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  18:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #  19:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_12_while_cond      #  20:     goto   12_while_cond
l_f1_11:

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
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 2 of <array 3 of <array 2 of <array 7 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 6 of <array 6 of <array 3 of <array 6 of <array 6 of <char>>>>>>> %ebp+20 ]

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
    movl    $99596, %eax            #   0:     if     99596 >= 81021 goto 1_if_true
    movl    $81021, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $100, %eax              #   3:     if     100 <= 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $60441, %eax            #   9:     assign v3 <- 60441
    movl    %eax, 12(%ebp)         
l_f2_10_while_cond:
    movl    $90009, %eax            #  11:     if     90009 # 64704 goto 11_while_body
    movl    $64704, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_11_while_body     
    jmp     l_f2_9                  #  12:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  14:     goto   10_while_cond
l_f2_9:
    movl    $37373, %eax            #  16:     return 37373
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  17:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $11836, %eax            #  20:     mul    t9 <- 11836, 77082
    movl    $77082, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t10 <- t9, 74933
    movl    $74933, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     add    t11 <- t10, 81054
    movl    $81054, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     sub    t12 <- t11, 9378
    movl    $9378, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t13 <- t12, 46643
    movl    $46643, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     return t13
    jmp     l_f2_exit              
    movl    $98, %eax               #  26:     assign v2 <- 98
    movb    %al, 8(%ebp)           

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <array 3 of <array 5 of <array 3 of <array 7 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 9 of <array 2 of <array 7 of <array 2 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 > t0 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    movl    $97, %eax               #  10:     if     97 > 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #  11:     goto   7_if_false
l_test_6_if_true:
l_test_10_while_cond:
    jmp     l_test_9                #  14:     goto   9
    jmp     l_test_10_while_cond    #  15:     goto   10_while_cond
l_test_9:
    movl    $98, %eax               #  17:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_5                #  18:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyCHARfunc           #  21:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    leal    v3, %eax                #  22:     &()    t3 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  3 <- t3
    pushl   %eax                   
    leal    v2, %eax                #  24:     &()    t4 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     param  2 <- t4
    pushl   %eax                   
    movl    $1, %eax                #  26:     param  1 <- 1
    pushl   %eax                   
    movl    $1, %eax                #  27:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #  28:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movl    $100, %eax              #  29:     if     100 >= 97 goto 16
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_16              
    jmp     l_test_17               #  30:     goto   17
l_test_16:
    movl    $1, %eax                #  32:     assign t6 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_18               #  33:     goto   18
l_test_17:
    movl    $0, %eax                #  35:     assign t6 <- 0
    movb    %al, -26(%ebp)         
l_test_18:
    movzbl  -26(%ebp), %eax         #  37:     assign v0 <- t6
    movb    %al, v0                
    movl    $52782, %eax            #  38:     add    t7 <- 52782, 17461
    movl    $17461, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  39:     if     t7 = 81037 goto 21
    movl    $81037, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_21              
    jmp     l_test_22               #  40:     goto   22
l_test_21:
    movl    $1, %eax                #  42:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_23               #  43:     goto   23
l_test_22:
    movl    $0, %eax                #  45:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_test_23:
    movzbl  -33(%ebp), %eax         #  47:     assign v0 <- t8
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v2:                                 # <array 6 of <array 9 of <array 2 of <array 7 of <array 2 of <int>>>>>>
    .long    5
    .long    6
    .long    9
    .long    2
    .long    7
    .long    2
    .skip 6048
v3:                                 # <array 7 of <array 3 of <array 5 of <array 3 of <array 7 of <int>>>>>>
    .long    5
    .long    7
    .long    3
    .long    5
    .long    3
    .long    7
    .skip 8820








    # end of global data section
    #-----------------------------------------

    .end
##################################################
