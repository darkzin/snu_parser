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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 18 of <array 68 of <array 15 of <array 33 of <array 21 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 58 of <array 43 of <array 49 of <array 63 of <array 82 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    movl    $98, %eax               #   0:     if     98 # 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $60957, %eax            #   3:     assign v3 <- 60957
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #   4:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   5:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $98, %eax               #   9:     return 98
    jmp     l_f0_exit              
l_f0_9_while_cond:
    movl    $49542, %eax            #  11:     if     49542 >= 22823 goto 10_while_body
    movl    $22823, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_10_while_body     
    jmp     l_f0_8                  #  12:     goto   8
l_f0_10_while_body:
    movl    $99, %eax               #  14:     return 99
    jmp     l_f0_exit              
l_f0_14_while_cond:
    jmp     l_f0_13                 #  16:     goto   13
    jmp     l_f0_14_while_cond      #  17:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_9_while_cond       #  19:     goto   9_while_cond
l_f0_8:

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]

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
    movl    $35786, %eax            #   0:     add    t7 <- 35786, 50889
    movl    $50889, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t7
    movl    %eax, -28(%ebp)        
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   3:     goto   3_while_body
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    movl    $97, %eax               #   6:     if     97 >= 97 goto 6
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_6                 
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $1, %eax                #   9:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $0, %eax                #  12:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f1_8:
    movzbl  -17(%ebp), %eax         #  14:     return t8
    jmp     l_f1_exit              
    movl    $1, %eax                #  15:     return 1
    jmp     l_f1_exit              
l_f1_12_while_cond:
    jmp     l_f1_12_while_cond      #  17:     goto   12_while_cond
    jmp     l_f1_2_while_cond       #  18:     goto   2_while_cond
l_f1_1:
    call    dummyINTfunc            #  20:     call   t9 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t7       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t8       <bool> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 18 of <array 24 of <array 92 of <array 29 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    call    f1                      #   0:     call   t7 <- f1
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #   1:     if     t7 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -20(%ebp)         
l_f2_3:
    movzbl  -20(%ebp), %eax         #   9:     return t8
    jmp     l_f2_exit              
l_f2_6_while_cond:
    movl    $3911, %eax             #  11:     add    t9 <- 3911, 81907
    movl    $81907, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t10 <- t9, 40087
    movl    $40087, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     if     t10 < 10276 goto 7_while_body
    movl    $10276, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_7_while_body      
    jmp     l_f2_5                  #  14:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  16:     goto   6_while_cond
l_f2_5:
    call    dummyBOOLfunc           #  18:     call   t11 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  19:     if     t11 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #  20:     goto   11
l_f2_10:
    movl    $1, %eax                #  22:     assign t12 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_12                 #  23:     goto   12
l_f2_11:
    movl    $0, %eax                #  25:     assign t12 <- 0
    movb    %al, -18(%ebp)         
l_f2_12:
    movzbl  -18(%ebp), %eax         #  27:     return t12
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 18 of <array 24 of <array 92 of <array 29 of <array 8 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 18 of <array 24 of <array 92 of <array 29 of <array 8 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]

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
    movl    $100, %eax              #   0:     if     100 > 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $99, %eax               #   7:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_exit            
l_test_8_while_cond:
    jmp     l_test_7                #  10:     goto   7
l_test_12_while_cond:
    jmp     l_test_11               #  12:     goto   11
    jmp     l_test_12_while_cond    #  13:     goto   12_while_cond
l_test_11:
    movl    $1, %eax                #  15:     if     1 = 0 goto 15
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15              
    jmp     l_test_16               #  16:     goto   16
l_test_15:
    movl    $1, %eax                #  18:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_17               #  19:     goto   17
l_test_16:
    movl    $0, %eax                #  21:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_17:
    movzbl  -14(%ebp), %eax         #  23:     param  2 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  24:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     param  1 <- t2
    pushl   %eax                   
    movl    $5275, %eax             #  26:     param  0 <- 5275
    pushl   %eax                   
    call    f2                      #  27:     call   t3 <- f2
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  28:     if     97 >= 99 goto 20
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_20              
    jmp     l_test_21               #  29:     goto   21
l_test_20:
    movl    $1, %eax                #  31:     assign t4 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_22               #  32:     goto   22
l_test_21:
    movl    $0, %eax                #  34:     assign t4 <- 0
    movb    %al, -22(%ebp)         
l_test_22:
    movzbl  -22(%ebp), %eax         #  36:     param  2 <- t4
    pushl   %eax                   
    leal    v1, %eax                #  37:     &()    t5 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  38:     param  1 <- t5
    pushl   %eax                   
    movl    $40504, %eax            #  39:     param  0 <- 40504
    pushl   %eax                   
    call    f2                      #  40:     call   t6 <- f2
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
l_test_25_while_cond:
    movl    $100, %eax              #  42:     if     100 >= 100 goto 26_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_26_while_body   
    jmp     l_test_24               #  43:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  45:     goto   25_while_cond
l_test_24:
l_test_29_while_cond:
    movl    $99, %eax               #  48:     if     99 <= 97 goto 30_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_30_while_body   
    jmp     l_test_28               #  49:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  51:     goto   29_while_cond
l_test_28:
    jmp     l_test_8_while_cond     #  53:     goto   8_while_cond
l_test_7:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 18 of <array 24 of <array 92 of <array 29 of <array 8 of <char>>>>>>
    .long    5
    .long   18
    .long   24
    .long   92
    .long   29
    .long    8
    .skip 9220608








    # end of global data section
    #-----------------------------------------

    .end
##################################################
