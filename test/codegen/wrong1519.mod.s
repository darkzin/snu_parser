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
    #    -13(%ebp)   1  [ $t12      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t13      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t14      <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
    movl    $35791, %eax            #   0:     if     35791 > 9235 goto 1
    movl    $9235, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t12 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t12 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t12
    movb    %al, -16(%ebp)         
    call    dummyBOOLfunc           #   9:     call   t13 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  10:     call   t14 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  11:     assign v1 <- t14
    movb    %al, 8(%ebp)           

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
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t13      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t14      <ptr(4) to <array 5 of <char>>> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 20 of <array 7 of <array 46 of <array 30 of <array 94 of <int>>>>>>> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t12 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t13 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     return t13
    jmp     l_f1_exit              
    jmp     l_f1_3_if_true          #   3:     goto   3_if_true
    jmp     l_f1_3_if_true          #   4:     goto   3_if_true
    jmp     l_f1_3_if_true          #   5:     goto   3_if_true
    jmp     l_f1_3_if_true          #   6:     goto   3_if_true
l_f1_3_if_true:
    leal    _str_1, %eax            #   8:     &()    t14 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  0 <- t14
    pushl   %eax                   
    call    WriteStr                #  10:     call   WriteStr
    addl    $4, %esp               
l_f1_12_while_cond:
    movl    $74977, %eax            #  12:     if     74977 < 51190 goto 13_while_body
    movl    $51190, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_13_while_body     
    jmp     l_f1_11                 #  13:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  15:     goto   12_while_cond
l_f1_11:
l_f1_16_while_cond:
    jmp     l_f1_16_while_cond      #  18:     goto   16_while_cond
    jmp     l_f1_2                  #  19:     goto   2
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t12      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 92 of <array 14 of <array 66 of <array 76 of <array 22 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 27 of <array 21 of <array 27 of <array 33 of <array 84 of <int>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    call    dummyBOOLfunc           #   0:     call   t12 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    jmp     l_f2_1                  #   2:     goto   1
    movl    $100, %eax              #   3:     if     100 > 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   4:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #   6:     goto   7
l_f2_9_if_false:
l_f2_7:
    call    ReadInt                 #   9:     call   t13 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f2_12                 #  10:     goto   12
l_f2_12:
    jmp     l_f2_2_while_cond       #  12:     goto   2_while_cond
l_f2_1:
    movl    $20613, %eax            #  14:     if     20613 < 19387 goto 16_if_true
    movl    $19387, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  15:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_21_if_false        #  17:     goto   21_if_false
    jmp     l_f2_19                 #  18:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_24_if_false        #  21:     goto   24_if_false
    jmp     l_f2_22                 #  22:     goto   22
l_f2_24_if_false:
l_f2_22:
    movl    $59786, %eax            #  25:     assign v3 <- 59786
    movl    %eax, -24(%ebp)        
    movl    $1, %eax                #  26:     return 1
    jmp     l_f2_exit              
l_f2_28_while_cond:
    jmp     l_f2_28_while_cond      #  28:     goto   28_while_cond
    jmp     l_f2_15                 #  29:     goto   15
l_f2_17_if_false:
l_f2_15:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t2       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t3       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t5       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <int> %ebp-60 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 > t0 goto 2_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    movl    $98, %eax               #   5:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_1                #   6:     goto   1
l_test_3_if_false:
l_test_1:
l_test_7_while_cond:
    movl    $34086, %eax            #  10:     add    t1 <- 34086, 88761
    movl    $88761, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     sub    t2 <- t1, 58775
    movl    $58775, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $91007, %eax            #  12:     if     91007 >= t2 goto 8_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_8_while_body    
    jmp     l_test_6                #  13:     goto   6
l_test_8_while_body:
l_test_11_while_cond:
    movl    $99, %eax               #  16:     if     99 < 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_12_while_body   
    jmp     l_test_10               #  17:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  19:     goto   11_while_cond
l_test_10:
    jmp     l_test_7_while_cond     #  21:     goto   7_while_cond
l_test_6:
    movl    $1320, %eax             #  23:     sub    t3 <- 1320, 85830
    movl    $85830, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     sub    t4 <- t3, 52959
    movl    $52959, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  25:     sub    t5 <- t4, 96054
    movl    $96054, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  26:     sub    t6 <- t5, 84956
    movl    $84956, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  27:     add    t7 <- t6, 33461
    movl    $33461, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  28:     sub    t8 <- t7, 52991
    movl    $52991, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  29:     add    t9 <- t8, 66426
    movl    $66426, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  30:     assign v1 <- t9
    movl    %eax, v1               
l_test_16_while_cond:
    movl    $0, %eax                #  32:     if     0 # 0 goto 17_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_17_while_body   
    jmp     l_test_15               #  33:     goto   15
l_test_17_while_body:
    movl    $97, %eax               #  35:     if     97 >= 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_20_if_true      
    jmp     l_test_21_if_false      #  36:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  38:     goto   19
l_test_21_if_false:
l_test_19:
l_test_24_while_cond:
    movl    $0, %eax                #  42:     if     0 # 0 goto 25_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_25_while_body   
    jmp     l_test_23               #  43:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  45:     goto   24_while_cond
l_test_23:
    call    ReadInt                 #  47:     call   t10 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_test_16_while_cond    #  48:     goto   16_while_cond
l_test_15:
l_test_29_while_cond:
    jmp     l_test_28               #  51:     goto   28
    call    dummyCHARfunc           #  52:     call   t11 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_29_while_cond    #  53:     goto   29_while_cond
l_test_28:

l_test_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
