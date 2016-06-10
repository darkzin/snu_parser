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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]

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
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f0_2_while_cond:
    jmp     l_f0_1                  #   2:     goto   1
    jmp     l_f0_1                  #   3:     goto   1
    jmp     l_f0_2_while_cond       #   4:     goto   2_while_cond
l_f0_1:
    movl    $31085, %eax            #   6:     add    t2 <- 31085, 57010
    movl    $57010, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     sub    t3 <- t2, 98983
    movl    $98983, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     sub    t4 <- t3, 3485
    movl    $3485, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     sub    t5 <- t4, 25845
    movl    $25845, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     return t5
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t6       <char> %ebp-27 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 40 of <array 71 of <array 3 of <array 98 of <array 74 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]

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
    movl    $96576, %eax            #   0:     mul    t1 <- 96576, 42370
    movl    $42370, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t2 <- t1, 2687
    movl    $2687, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t3 <- t2, 81931
    movl    $81931, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $61093, %eax            #   3:     if     61093 # t3 goto 1
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #   4:     goto   2
l_f1_1:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f1_3:
    movzbl  -25(%ebp), %eax         #  11:     return t4
    jmp     l_f1_exit              
    movl    $1, %eax                #  12:     if     1 # 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  13:     goto   7_if_false
l_f1_6_if_true:
    movl    $28147, %eax            #  15:     if     28147 < 94986 goto 10_if_true
    movl    $94986, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  16:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  18:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $78765, %eax            #  21:     if     78765 > 20775 goto 14
    movl    $20775, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_14                
    jmp     l_f1_15                 #  22:     goto   15
l_f1_14:
    movl    $1, %eax                #  24:     assign t5 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_16                 #  25:     goto   16
l_f1_15:
    movl    $0, %eax                #  27:     assign t5 <- 0
    movb    %al, -26(%ebp)         
l_f1_16:
    movzbl  -26(%ebp), %eax         #  29:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_5                  #  30:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_20_if_false        #  33:     goto   20_if_false
    call    dummyCHARfunc           #  34:     call   t6 <- dummyCHARfunc
    movb    %al, -27(%ebp)         
    movl    $28687, %eax            #  35:     if     28687 < 35701 goto 23_if_true
    movl    $35701, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  36:     goto   24_if_false
l_f1_23_if_true:
    jmp     l_f1_22                 #  38:     goto   22
l_f1_24_if_false:
l_f1_22:
    movl    $0, %eax                #  41:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_18                 #  42:     goto   18
l_f1_20_if_false:
l_f1_18:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 49 of <array 95 of <array 3 of <array 14 of <array 98 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 18 of <array 66 of <array 11 of <array 79 of <char>>>>>>> %ebp+12 ]

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
    jmp     l_f2_1                  #   0:     goto   1
    jmp     l_f2_1                  #   1:     goto   1
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     return t1
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f2_11_while_cond:
    jmp     l_f2_14                 #  12:     goto   14
l_f2_14:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_16                 #  15:     goto   16
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f2_16:
    movl    $1, %eax                #  18:     if     1 = t3 goto 12_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_12_while_body     
    jmp     l_f2_10                 #  19:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  21:     goto   11_while_cond
l_f2_10:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    movl    $98, %eax               #   0:     if     98 > 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $20319, %eax            #   3:     assign v0 <- 20319
    movl    %eax, v0               
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
    movl    $99, %eax               #   8:     if     99 >= 97 goto 9
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_9               
    jmp     l_test_10               #   9:     goto   10
l_test_9:
    movl    $1, %eax                #  11:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_11               #  12:     goto   11
l_test_10:
    movl    $0, %eax                #  14:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_11:
    movzbl  -13(%ebp), %eax         #  16:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_13               #  17:     goto   13
l_test_13:
l_test_17_while_cond:
    jmp     l_test_17_while_cond    #  20:     goto   17_while_cond
    jmp     l_test_19               #  21:     goto   19
l_test_19:
    jmp     l_test_5                #  23:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_25_while_cond:
l_test_28_while_cond:
    jmp     l_test_27               #  30:     goto   27
    jmp     l_test_28_while_cond    #  31:     goto   28_while_cond
l_test_27:
    call    dummyProcedure          #  33:     call   dummyProcedure
l_test_32_while_cond:
    jmp     l_test_32_while_cond    #  35:     goto   32_while_cond
    jmp     l_test_25_while_cond    #  36:     goto   25_while_cond

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
