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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t8       <char> %ebp-19 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    movl    $100, %eax              #   0:     if     100 # 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyCHARfunc           #   3:     call   t8 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
l_f0_6_while_cond:
    jmp     l_f0_6_while_cond       #   5:     goto   6_while_cond
    movl    $97, %eax               #   6:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f0_9                  #   7:     goto   9
l_f0_9:
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    ReadInt                 #  12:     call   t9 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     div    t10 <- t9, 67537
    movl    $67537, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $49712, %eax            #  14:     if     49712 <= t10 goto 13_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  15:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  17:     goto   12
l_f0_14_if_false:
l_f0_12:
l_f0_17_while_cond:
    movl    $99, %eax               #  21:     if     99 <= 100 goto 20
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_20                
    jmp     l_f0_21                 #  22:     goto   21
l_f0_20:
    movl    $1, %eax                #  24:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_22                 #  25:     goto   22
l_f0_21:
    movl    $0, %eax                #  27:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f0_22:
    movzbl  -17(%ebp), %eax         #  29:     return t11
    jmp     l_f0_exit              
    jmp     l_f0_24                 #  30:     goto   24
l_f0_24:
    movl    $97, %eax               #  32:     if     97 >= 99 goto 28_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_28_if_true        
    jmp     l_f0_29_if_false        #  33:     goto   29_if_false
l_f0_28_if_true:
    jmp     l_f0_27                 #  35:     goto   27
l_f0_29_if_false:
l_f0_27:
    movl    $59067, %eax            #  38:     if     59067 >= 77603 goto 32
    movl    $77603, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_32                
    jmp     l_f0_33                 #  39:     goto   33
l_f0_32:
    movl    $1, %eax                #  41:     assign t12 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_34                 #  42:     goto   34
l_f0_33:
    movl    $0, %eax                #  44:     assign t12 <- 0
    movb    %al, -18(%ebp)         
l_f0_34:
    movzbl  -18(%ebp), %eax         #  46:     return t12
    jmp     l_f0_exit              
    jmp     l_f0_17_while_cond      #  47:     goto   17_while_cond

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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 41 of <array 21 of <array 55 of <array 93 of <array 38 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $5396, %eax             #   0:     if     5396 >= 60801 goto 1_if_true
    movl    $60801, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $97, %eax               #   3:     return 97
    jmp     l_f1_exit              
    movl    $1, %eax                #   4:     assign v3 <- 1
    movb    %al, 20(%ebp)          
    call    dummyINTfunc            #   5:     call   t8 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   9:     call   t9 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  10:     return t9
    jmp     l_f1_exit              
l_f1_9_while_cond:
    jmp     l_f1_8                  #  12:     goto   8
    jmp     l_f1_9_while_cond       #  13:     goto   9_while_cond
l_f1_8:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 44 of <array 76 of <array 50 of <array 63 of <array 59 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 81 of <array 16 of <array 63 of <array 56 of <array 47 of <int>>>>>>> %ebp+20 ]

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
    movl    $98512, %eax            #   0:     add    t8 <- 98512, 62673
    movl    $62673, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   1:     sub    t9 <- t8, 5025
    movl    $5025, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   2:     sub    t10 <- t9, 28526
    movl    $28526, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t11 <- t10, 80387
    movl    $80387, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t12 <- t11, 28261
    movl    $28261, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t13 <- t12, 6613
    movl    $6613, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     param  0 <- t13
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
    movl    $2384, %eax             #   8:     if     2384 < 74216 goto 5_if_true
    movl    $74216, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   9:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #  11:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1                  #  14:     goto   1
l_f2_1:
    call    ReadInt                 #  16:     call   t14 <- ReadInt
    movl    %eax, -32(%ebp)        

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 41 of <array 21 of <array 55 of <array 93 of <array 38 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <bool> %ebp-38 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    movl    $100, %eax              #   1:     if     100 = 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_2               
    jmp     l_test_3                #   2:     goto   3
l_test_2:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   5:     goto   4
l_test_3:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   9:     param  3 <- t0
    pushl   %eax                   
    leal    v0, %eax                #  10:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  2 <- t1
    pushl   %eax                   
    movl    $21739, %eax            #  12:     add    t2 <- 21739, 49315
    movl    $49315, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     add    t3 <- t2, 35947
    movl    $35947, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     param  1 <- t3
    pushl   %eax                   
    call    ReadInt                 #  15:     call   t4 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     div    t5 <- t4, 19765
    movl    $19765, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  18:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
l_test_7_while_cond:
    jmp     l_test_10               #  20:     goto   10
    jmp     l_test_11               #  21:     goto   11
l_test_10:
    movl    $1, %eax                #  23:     assign t7 <- 1
    movb    %al, -38(%ebp)         
    jmp     l_test_12               #  24:     goto   12
l_test_11:
    movl    $0, %eax                #  26:     assign t7 <- 0
    movb    %al, -38(%ebp)         
l_test_12:
    movl    $1, %eax                #  28:     if     1 # t7 goto 8_while_body
    movzbl  -38(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_8_while_body    
    jmp     l_test_6                #  29:     goto   6
l_test_8_while_body:
    jmp     l_test_14               #  31:     goto   14
l_test_14:
    jmp     l_test_7_while_cond     #  33:     goto   7_while_cond
l_test_6:

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
v0:                                 # <array 41 of <array 21 of <array 55 of <array 93 of <array 38 of <int>>>>>>
    .long    5
    .long   41
    .long   21
    .long   55
    .long   93
    .long   38
    .skip 669410280








    # end of global data section
    #-----------------------------------------

    .end
##################################################
