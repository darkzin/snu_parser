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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
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
l_f0_1_while_cond:
    movl    $99, %eax               #   1:     if     99 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $55892, %eax            #   4:     if     55892 < 76674 goto 5_if_true
    movl    $76674, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_8                  #  10:     goto   8
l_f0_8:
l_f0_12_while_cond:
    jmp     l_f0_11                 #  13:     goto   11
    jmp     l_f0_12_while_cond      #  14:     goto   12_while_cond
l_f0_11:
    jmp     l_f0_1_while_cond       #  16:     goto   1_while_cond
l_f0_0:
    movl    $98, %eax               #  18:     assign v0 <- 98
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  19:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 10 of <array 8 of <array 8 of <array 5 of <int>>>>>>> %ebp+16 ]
    #    -30(%ebp)   1  [ $v3       <bool> %ebp-30 ]

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
l_f1_1_while_cond:
    movl    $30837, %eax            #   1:     if     30837 <= 98961 goto 2_while_body
    movl    $98961, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    movl    $86517, %eax            #   5:     return 86517
    jmp     l_f1_exit              
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
    call    dummyINTfunc            #   9:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     mul    t7 <- t6, 8965
    movl    $8965, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     mul    t8 <- t7, 51205
    movl    $51205, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $43840, %eax            #  12:     if     43840 >= t8 goto 9
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_9                 
    jmp     l_f1_10                 #  13:     goto   10
l_f1_9:
    movl    $1, %eax                #  15:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_11                 #  16:     goto   11
l_f1_10:
    movl    $0, %eax                #  18:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f1_11:
    movzbl  -29(%ebp), %eax         #  20:     assign v3 <- t9
    movb    %al, -30(%ebp)         
    call    f0                      #  21:     call   t10 <- f0
    movb    %al, -13(%ebp)         

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 8 of <array 2 of <array 6 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 9 of <array 10 of <array 9 of <array 2 of <bool>>>>>>> %ebp+12 ]

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
    movl    $1, %eax                #   0:     if     1 # 1 goto 4_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   1:     goto   5_if_false
l_f2_4_if_true:
l_f2_8_while_cond:
    jmp     l_f2_7                  #   4:     goto   7
    jmp     l_f2_8_while_cond       #   5:     goto   8_while_cond
l_f2_7:
    movl    $40549, %eax            #   7:     if     40549 > 58251 goto 11
    movl    $58251, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_11                
    jmp     l_f2_12                 #   8:     goto   12
l_f2_11:
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_13                 #  11:     goto   13
l_f2_12:
    movl    $0, %eax                #  13:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f2_13:
    movzbl  -14(%ebp), %eax         #  15:     return t6
    jmp     l_f2_exit              
l_f2_16_while_cond:
    movl    $26278, %eax            #  17:     if     26278 > 73850 goto 17_while_body
    movl    $73850, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_17_while_body     
    jmp     l_f2_15                 #  18:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  20:     goto   16_while_cond
l_f2_15:
l_f2_20_while_cond:
    movl    $72231, %eax            #  23:     if     72231 <= 71784 goto 21_while_body
    movl    $71784, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_21_while_body     
    jmp     l_f2_19                 #  24:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  26:     goto   20_while_cond
l_f2_19:
    jmp     l_f2_3                  #  28:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_0                  #  31:     goto   0
l_f2_0:
    jmp     l_f2_28                 #  33:     goto   28
    call    dummyBOOLfunc           #  34:     call   t7 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  35:     if     t7 = 1 goto 28
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_28                
    jmp     l_f2_29                 #  36:     goto   29
l_f2_28:
    movl    $1, %eax                #  38:     assign t8 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_30                 #  39:     goto   30
l_f2_29:
    movl    $0, %eax                #  41:     assign t8 <- 0
    movb    %al, -16(%ebp)         
l_f2_30:
    movzbl  -16(%ebp), %eax         #  43:     if     t8 = 0 goto 24
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_24                
    jmp     l_f2_25                 #  44:     goto   25
l_f2_24:
    movl    $1, %eax                #  46:     assign t9 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_26                 #  47:     goto   26
l_f2_25:
    movl    $0, %eax                #  49:     assign t9 <- 0
    movb    %al, -17(%ebp)         
l_f2_26:
    movzbl  -17(%ebp), %eax         #  51:     return t9
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  52:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 9 of <array 10 of <array 9 of <array 2 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 8 of <array 2 of <array 6 of <array 6 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]

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
    movl    $31714, %eax            #   0:     div    t0 <- 31714, 29857
    movl    $29857, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $59247, %eax            #   1:     if     59247 = t0 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
l_test_6_while_cond:
    jmp     l_test_10               #   9:     goto   10
    jmp     l_test_10               #  10:     goto   10
    jmp     l_test_10               #  11:     goto   10
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_11               #  13:     goto   11
l_test_10:
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_11:
    movl    $97, %eax               #  17:     if     97 > 100 goto 15
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_15              
    jmp     l_test_16               #  18:     goto   16
l_test_15:
    movl    $1, %eax                #  20:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_17               #  21:     goto   17
l_test_16:
    movl    $0, %eax                #  23:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_17:
    movzbl  -17(%ebp), %eax         #  25:     if     t1 = t2 goto 7_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_7_while_body    
    jmp     l_test_5                #  26:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  28:     goto   6_while_cond
l_test_5:
    leal    v1, %eax                #  30:     &()    t3 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     param  1 <- t3
    pushl   %eax                   
    leal    v0, %eax                #  32:     &()    t4 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  34:     call   t5 <- f2
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <array 7 of <array 8 of <array 2 of <array 6 of <array 6 of <int>>>>>>
    .long    5
    .long    7
    .long    8
    .long    2
    .long    6
    .long    6
    .skip 16128
v1:                                 # <array 3 of <array 9 of <array 10 of <array 9 of <array 2 of <bool>>>>>>
    .long    5
    .long    3
    .long    9
    .long   10
    .long    9
    .long    2
    .skip 4860








    # end of global data section
    #-----------------------------------------

    .end
##################################################
