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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t5 # 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   8:     if     98 < 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   9:     goto   7_if_false
l_f0_6_if_true:
    call    ReadInt                 #  11:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #  12:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $97401, %eax            #  13:     if     97401 >= 56408 goto 12_if_true
    movl    $56408, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  14:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  16:     goto   11
l_f0_13_if_false:
l_f0_11:
l_f0_16_while_cond:
    call    dummyBOOLfunc           #  20:     call   t9 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  21:     if     t9 = 1 goto 17_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_17_while_body     
    jmp     l_f0_15                 #  22:     goto   15
l_f0_17_while_body:
    jmp     l_f0_16_while_cond      #  24:     goto   16_while_cond
l_f0_15:
    jmp     l_f0_5                  #  26:     goto   5
l_f0_7_if_false:
l_f0_5:

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 72 of <array 71 of <array 3 of <array 21 of <array 54 of <int>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_4_if_false         #   2:     goto   4_if_false
    movl    $16800, %eax            #   3:     if     16800 # 85029 goto 6
    movl    $85029, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_6                 
    jmp     l_f1_7                  #   4:     goto   7
l_f1_6:
    movl    $1, %eax                #   6:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_8                  #   7:     goto   8
l_f1_7:
    movl    $0, %eax                #   9:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f1_8:
    movzbl  -15(%ebp), %eax         #  11:     return t7
    jmp     l_f1_exit              
    movl    $1, %eax                #  12:     if     1 # 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  13:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  15:     goto   10
l_f1_12_if_false:
l_f1_10:
    jmp     l_f1_2                  #  18:     goto   2
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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 68 of <array 27 of <array 58 of <array 21 of <array 80 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 62 of <array 62 of <array 8 of <array 23 of <array 41 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 38 of <array 14 of <array 24 of <array 27 of <array 94 of <char>>>>>>> %ebp+20 ]

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
    movl    $66897, %eax            #   0:     sub    t5 <- 66897, 92088
    movl    $92088, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   2:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     param  0 <- t6
    pushl   %eax                   
    call    WriteChar               #   4:     call   WriteChar
    addl    $4, %esp               
    movl    $99, %eax               #   5:     return 99
    jmp     l_f2_exit              
    movl    $86887, %eax            #   6:     param  0 <- 86887
    pushl   %eax                   
    call    f0                      #   7:     call   t7 <- f0
    addl    $4, %esp               
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   8:     assign v3 <- t7
    movb    %al, 16(%ebp)          

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
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <char> %ebp-20 ]

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
    movl    $93100, %eax            #   0:     sub    t0 <- 93100, 87120
    movl    $87120, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_3_while_cond:
    call    dummyCHARfunc           #   4:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $97, %eax               #   5:     if     97 # t1 goto 4_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_4_while_body    
    jmp     l_test_2                #   6:     goto   2
l_test_4_while_body:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_9_while_cond:
    jmp     l_test_8                #  11:     goto   8
    jmp     l_test_9_while_cond     #  12:     goto   9_while_cond
l_test_8:
    jmp     l_test_3_while_cond     #  14:     goto   3_while_cond
l_test_2:
l_test_12_while_cond:
    movl    $100, %eax              #  17:     if     100 = 100 goto 15
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_15              
    jmp     l_test_16               #  18:     goto   16
l_test_15:
    movl    $1, %eax                #  20:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_17               #  21:     goto   17
l_test_16:
    movl    $0, %eax                #  23:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_17:
    movzbl  -18(%ebp), %eax         #  25:     assign v1 <- t2
    movb    %al, v1                
    movl    $7652, %eax             #  26:     if     7652 # 2408 goto 20
    movl    $2408, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_20              
    jmp     l_test_21               #  27:     goto   21
l_test_20:
    movl    $1, %eax                #  29:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_test_22               #  30:     goto   22
l_test_21:
    movl    $0, %eax                #  32:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_test_22:
    movzbl  -19(%ebp), %eax         #  34:     assign v1 <- t3
    movb    %al, v1                
l_test_25_while_cond:
    jmp     l_test_24               #  36:     goto   24
l_test_28_while_cond:
    jmp     l_test_27               #  38:     goto   27
    jmp     l_test_28_while_cond    #  39:     goto   28_while_cond
l_test_27:
    movl    $97, %eax               #  41:     assign v2 <- 97
    movb    %al, v2                
    jmp     l_test_33_if_false      #  42:     goto   33_if_false
    jmp     l_test_31               #  43:     goto   31
l_test_33_if_false:
l_test_31:
    jmp     l_test_25_while_cond    #  46:     goto   25_while_cond
l_test_24:
    jmp     l_test_12_while_cond    #  48:     goto   12_while_cond
    jmp     l_test_36_if_false      #  49:     goto   36_if_false
    movl    $43841, %eax            #  50:     param  0 <- 43841
    pushl   %eax                   
    call    f0                      #  51:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -20(%ebp)         
    movl    $48329, %eax            #  52:     assign v0 <- 48329
    movl    %eax, v0               
    movl    $99, %eax               #  53:     assign v2 <- 99
    movb    %al, v2                
    jmp     l_test_34               #  54:     goto   34
l_test_36_if_false:
l_test_34:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
