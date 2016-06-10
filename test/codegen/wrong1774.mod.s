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
    #    -18(%ebp)   1  [ $t12      <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t14      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $v1       <bool> %ebp-26 ]

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
    movl    $32882, %eax            #   0:     mul    t10 <- 32882, 11600
    movl    $11600, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t10 <= 75666 goto 1_if_true
    movl    $75666, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    call    dummyProcedure          #   4:     call   dummyProcedure
    movl    $0, %eax                #   5:     return 0
    jmp     l_f0_exit              
    movl    $98, %eax               #   6:     if     98 <= 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $76432, %eax            #  12:     if     76432 <= 36918 goto 11
    movl    $36918, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_11                
    jmp     l_f0_12                 #  13:     goto   12
l_f0_11:
    movl    $1, %eax                #  15:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_13                 #  16:     goto   13
l_f0_12:
    movl    $0, %eax                #  18:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f0_13:
    movzbl  -17(%ebp), %eax         #  20:     return t11
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  21:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  24:     call   t12 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  25:     param  0 <- t12
    pushl   %eax                   
    call    WriteChar               #  26:     call   WriteChar
    addl    $4, %esp               
    movl    $69716, %eax            #  27:     div    t13 <- 69716, 70411
    movl    $70411, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $87497, %eax            #  28:     if     87497 <= t13 goto 17
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_17                
    jmp     l_f0_18                 #  29:     goto   18
l_f0_17:
    movl    $1, %eax                #  31:     assign t14 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_19                 #  32:     goto   19
l_f0_18:
    movl    $0, %eax                #  34:     assign t14 <- 0
    movb    %al, -25(%ebp)         
l_f0_19:
    movzbl  -25(%ebp), %eax         #  36:     assign v1 <- t14
    movb    %al, -26(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t15      <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $v1       <bool> %ebp-34 ]
    #    -40(%ebp)   4  [ $v2       <int> %ebp-40 ]

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
    movl    $71911, %eax            #   0:     add    t10 <- 71911, 91187
    movl    $91187, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t11 <- t10, 87824
    movl    $87824, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $43133, %eax            #   2:     sub    t12 <- 43133, 7879
    movl    $7879, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t13 <- t12, 2773
    movl    $2773, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     sub    t14 <- t13, 99140
    movl    $99140, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -20(%ebp), %eax         #   5:     if     t11 # t14 goto 1
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #   6:     goto   2
l_f1_1:
    movl    $1, %eax                #   8:     assign t15 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_3                  #   9:     goto   3
l_f1_2:
    movl    $0, %eax                #  11:     assign t15 <- 0
    movb    %al, -33(%ebp)         
l_f1_3:
    movzbl  -33(%ebp), %eax         #  13:     assign v1 <- t15
    movb    %al, -34(%ebp)         
    call    WriteLn                 #  14:     call   WriteLn
    movl    $56652, %eax            #  15:     assign v2 <- 56652
    movl    %eax, -40(%ebp)        

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 87 of <array 63 of <array 12 of <array 71 of <array 16 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 81 of <array 86 of <array 3 of <array 100 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 63 of <array 99 of <array 83 of <array 61 of <array 27 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 100 of <array 19 of <array 35 of <array 61 of <array 42 of <char>>>>>>> %ebp+20 ]
    #    -15(%ebp)   1  [ $v5       <bool> %ebp-15 ]

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
    jmp     l_f2_1                  #   2:     goto   1
    jmp     l_f2_1                  #   3:     goto   1
    jmp     l_f2_1                  #   4:     goto   1
    jmp     l_f2_1                  #   5:     goto   1
l_f2_1:
    movl    $1, %eax                #   7:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   8:     goto   3
    movl    $0, %eax                #   9:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #  11:     assign v5 <- t10
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  12:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  13:     return t11
    jmp     l_f2_exit              
    movl    $27586, %eax            #  14:     param  0 <- 27586
    pushl   %eax                   
    call    WriteInt                #  15:     call   WriteInt
    addl    $4, %esp               

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 100 of <array 19 of <array 35 of <array 61 of <array 42 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 63 of <array 99 of <array 83 of <array 61 of <array 27 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 8 of <array 81 of <array 86 of <array 3 of <array 100 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 87 of <array 63 of <array 12 of <array 71 of <array 16 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t9       <bool> %ebp-34 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_8                #   2:     goto   8
    jmp     l_test_8                #   3:     goto   8
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_9                #   5:     goto   9
l_test_8:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_9:
    movzbl  -14(%ebp), %eax         #   9:     if     t1 = 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3               
    jmp     l_test_4                #  10:     goto   4
l_test_3:
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_5                #  13:     goto   5
l_test_4:
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_5:
    movzbl  -15(%ebp), %eax         #  17:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyCHARfunc           #  19:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    leal    v4, %eax                #  20:     &()    t4 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     param  3 <- t4
    pushl   %eax                   
    leal    v3, %eax                #  22:     &()    t5 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     param  2 <- t5
    pushl   %eax                   
    leal    v2, %eax                #  24:     &()    t6 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     param  1 <- t6
    pushl   %eax                   
    leal    v1, %eax                #  26:     &()    t7 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     param  0 <- t7
    pushl   %eax                   
    call    f2                      #  28:     call   t8 <- f2
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -16(%ebp), %eax         #  29:     if     t3 <= t8 goto 13
    movzbl  -33(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_13              
    jmp     l_test_14               #  30:     goto   14
l_test_13:
    movl    $1, %eax                #  32:     assign t9 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_test_15               #  33:     goto   15
l_test_14:
    movl    $0, %eax                #  35:     assign t9 <- 0
    movb    %al, -34(%ebp)         
l_test_15:
    movzbl  -34(%ebp), %eax         #  37:     assign v0 <- t9
    movb    %al, v0                
l_test_18_while_cond:
    movl    $100, %eax              #  39:     if     100 >= 99 goto 19_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_19_while_body   
    jmp     l_test_17               #  40:     goto   17
l_test_19_while_body:
    jmp     l_test_21               #  42:     goto   21
l_test_21:
    jmp     l_test_24               #  44:     goto   24
l_test_24:
    jmp     l_test_18_while_cond    #  46:     goto   18_while_cond
l_test_17:

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
    .align   4
v1:                                 # <array 87 of <array 63 of <array 12 of <array 71 of <array 16 of <char>>>>>>
    .long    5
    .long   87
    .long   63
    .long   12
    .long   71
    .long   16
    .skip 74716992
v2:                                 # <array 8 of <array 81 of <array 86 of <array 3 of <array 100 of <int>>>>>>
    .long    5
    .long    8
    .long   81
    .long   86
    .long    3
    .long  100
    .skip 66873600
v3:                                 # <array 63 of <array 99 of <array 83 of <array 61 of <array 27 of <int>>>>>>
    .long    5
    .long   63
    .long   99
    .long   83
    .long   61
    .long   27
    .skip -884550748
v4:                                 # <array 100 of <array 19 of <array 35 of <array 61 of <array 42 of <char>>>>>>
    .long    5
    .long  100
    .long   19
    .long   35
    .long   61
    .long   42
    .skip 170373000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
