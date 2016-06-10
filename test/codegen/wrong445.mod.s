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
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 6 of <array 5 of <array 1 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 7 of <array 2 of <array 2 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $0, %eax                #   1:     return 0
    jmp     l_f0_exit              
    call    dummyINTfunc            #   2:     call   t9 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #   3:     if     1 # 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_6                 
    jmp     l_f0_7                  #   4:     goto   7
l_f0_6:
    movl    $1, %eax                #   6:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #   7:     goto   8
l_f0_7:
    movl    $0, %eax                #   9:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movzbl  -13(%ebp), %eax         #  11:     return t10
    jmp     l_f0_exit              
    movl    $70454, %eax            #  12:     assign v4 <- 70454
    movl    %eax, -24(%ebp)        
    movl    $54932, %eax            #  13:     if     54932 = 41379 goto 12
    movl    $41379, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_12                
    jmp     l_f0_13                 #  14:     goto   13
l_f0_12:
    movl    $1, %eax                #  16:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_14                 #  17:     goto   14
l_f0_13:
    movl    $0, %eax                #  19:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f0_14:
    movzbl  -14(%ebp), %eax         #  21:     assign v3 <- t11
    movb    %al, 16(%ebp)          
    jmp     l_f0_0                  #  22:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  25:     call   t12 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
l_f0_18_while_cond:
    jmp     l_f0_17                 #  27:     goto   17
l_f0_21_while_cond:
    jmp     l_f0_21_while_cond      #  29:     goto   21_while_cond
    jmp     l_f0_18_while_cond      #  30:     goto   18_while_cond
l_f0_17:

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
    #    -13(%ebp)   1  [ $t9       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 8 of <array 10 of <array 7 of <array 10 of <char>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <bool> %ebp-14 ]
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
    movl    $1, %eax                #   0:     if     1 # 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t9 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t9 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t9
    movb    %al, -14(%ebp)         
    call    dummyProcedure          #   9:     call   dummyProcedure
    movl    $85985, %eax            #  10:     if     85985 > 24022 goto 7_if_true
    movl    $24022, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  11:     goto   8_if_false
l_f1_7_if_true:
l_f1_11_while_cond:
    movl    $3796, %eax             #  14:     if     3796 <= 73174 goto 12_while_body
    movl    $73174, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_12_while_body     
    jmp     l_f1_10                 #  15:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  17:     goto   11_while_cond
l_f1_10:
    movl    $98, %eax               #  19:     if     98 = 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  20:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  22:     goto   14
l_f1_16_if_false:
l_f1_14:
    movl    $97, %eax               #  25:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  26:     call   WriteChar
    addl    $4, %esp               
    movl    $99, %eax               #  27:     assign v3 <- 99
    movb    %al, -15(%ebp)         
    jmp     l_f1_6                  #  28:     goto   6
l_f1_8_if_false:
l_f1_6:

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
    #    -25(%ebp)   1  [ $t9       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $76624, %eax            #   1:     sub    t10 <- 76624, 69358
    movl    $69358, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t11 <- t10, 48971
    movl    $48971, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t12 <- t11, 85200
    movl    $85200, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v1 <- t12
    movl    %eax, 8(%ebp)          
    jmp     l_f2_3_if_true          #   5:     goto   3_if_true
    jmp     l_f2_4_if_false         #   6:     goto   4_if_false
l_f2_3_if_true:
    movl    $87191, %eax            #   8:     assign v1 <- 87191
    movl    %eax, 8(%ebp)          
    jmp     l_f2_2                  #   9:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   2:     if     98 <= t0 goto 2
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2               
    jmp     l_test_3                #   3:     goto   3
l_test_2:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_4                #   6:     goto   4
l_test_3:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_4:
    movzbl  -14(%ebp), %eax         #  10:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_7                #  11:     goto   7
    jmp     l_test_8                #  12:     goto   8
l_test_7:
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_9                #  15:     goto   9
l_test_8:
    movl    $0, %eax                #  17:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_9:
    movzbl  -15(%ebp), %eax         #  19:     assign v0 <- t2
    movb    %al, v0                
l_test_14_while_cond:
    movl    $43982, %eax            #  21:     if     43982 < 51582 goto 15_while_body
    movl    $51582, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  22:     goto   13
l_test_15_while_body:
    call    dummyCHARfunc           #  24:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $72252, %eax            #  25:     assign v1 <- 72252
    movl    %eax, v1               
    jmp     l_test_14_while_cond    #  26:     goto   14_while_cond
l_test_13:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  29:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #  30:     if     100 <= t4 goto 21
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_21              
    jmp     l_test_22               #  31:     goto   22
l_test_21:
    movl    $1, %eax                #  33:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_23               #  34:     goto   23
l_test_22:
    movl    $0, %eax                #  36:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_test_23:
    movzbl  -18(%ebp), %eax         #  38:     param  1 <- t5
    pushl   %eax                   
    movl    $63618, %eax            #  39:     sub    t6 <- 63618, 32151
    movl    $32151, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  40:     add    t7 <- t6, 29691
    movl    $29691, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  41:     param  0 <- t7
    pushl   %eax                   
    call    f2                      #  42:     call   t8 <- f2
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
