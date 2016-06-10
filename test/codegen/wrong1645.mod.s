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
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 78 of <array 82 of <array 1 of <array 81 of <array 64 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 42 of <array 3 of <array 95 of <array 26 of <array 26 of <int>>>>>>> %ebp+20 ]

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
    movl    $33886, %eax            #   0:     add    t8 <- 33886, 98809
    movl    $98809, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     if     t8 > 86239 goto 1
    movl    $86239, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f0_3:
    movzbl  -21(%ebp), %eax         #   9:     return t9
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  10:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #  11:     if     100 > t10 goto 6_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  12:     goto   7_if_false
l_f0_6_if_true:
    movl    $0, %eax                #  14:     return 0
    jmp     l_f0_exit              
    movl    $1, %eax                #  15:     return 1
    jmp     l_f0_exit              
    movl    $92094, %eax            #  16:     if     92094 # 96004 goto 12
    movl    $96004, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_12                
    jmp     l_f0_13                 #  17:     goto   13
l_f0_12:
    movl    $1, %eax                #  19:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_14                 #  20:     goto   14
l_f0_13:
    movl    $0, %eax                #  22:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f0_14:
    movzbl  -14(%ebp), %eax         #  24:     assign v1 <- t11
    movb    %al, 12(%ebp)          
    jmp     l_f0_5                  #  25:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_17_while_cond:
    call    dummyBOOLfunc           #  29:     call   t12 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  30:     if     t12 = 1 goto 19
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_19                
    jmp     l_f0_16                 #  31:     goto   16
l_f0_19:
    jmp     l_f0_16                 #  33:     goto   16
    jmp     l_f0_17_while_cond      #  34:     goto   17_while_cond
l_f0_16:

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
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 3 of <array 46 of <array 93 of <array 84 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 59 of <array 8 of <array 36 of <array 77 of <array 80 of <int>>>>>>> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t8 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   2:     goto   3_while_body
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    call    WriteLn                 #   5:     call   WriteLn
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
    call    dummyCHARfunc           #   8:     call   t9 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 78 of <array 82 of <array 1 of <array 81 of <array 64 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t13      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 42 of <array 3 of <array 95 of <array 26 of <array 26 of <int>>>>>>> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 26 of <array 39 of <array 18 of <array 25 of <array 63 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 40 of <array 54 of <array 23 of <array 89 of <array 86 of <char>>>>>>> %ebp+20 ]
    #    -29(%ebp)   1  [ $v4       <char> %ebp-29 ]
    #   -132627512(%ebp)  132627480  [ $v5       <array 78 of <array 82 of <array 1 of <array 81 of <array 64 of <int>>>>>> %ebp-132627512 ]
    #   -164994416(%ebp)  32366904  [ $v6       <array 42 of <array 3 of <array 95 of <array 26 of <array 26 of <int>>>>>> %ebp-164994416 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $164994404, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $41248601, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-132627512(%ebp)     # local array 'v5': 5 dimensions
    movl    $78,-132627508(%ebp)    #   dimension 1: 78 elements
    movl    $82,-132627504(%ebp)    #   dimension 2: 82 elements
    movl    $1,-132627500(%ebp)     #   dimension 3: 1 elements
    movl    $81,-132627496(%ebp)    #   dimension 4: 81 elements
    movl    $64,-132627492(%ebp)    #   dimension 5: 64 elements
    movl    $5,-164994416(%ebp)     # local array 'v6': 5 dimensions
    movl    $42,-164994412(%ebp)    #   dimension 1: 42 elements
    movl    $3,-164994408(%ebp)     #   dimension 2: 3 elements
    movl    $95,-164994404(%ebp)    #   dimension 3: 95 elements
    movl    $26,-164994400(%ebp)    #   dimension 4: 26 elements
    movl    $26,-164994396(%ebp)    #   dimension 5: 26 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #   1:     assign v4 <- t8
    movb    %al, -29(%ebp)         
    jmp     l_f2_exit              
    leal    -164994416(%ebp), %eax  #   3:     &()    t9 <- v6
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     param  3 <- t9
    pushl   %eax                   
    movl    $38248, %eax            #   5:     if     38248 >= 66630 goto 3
    movl    $66630, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_3                 
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $1, %eax                #   8:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_5                  #   9:     goto   5
l_f2_4:
    movl    $0, %eax                #  11:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_5:
    movzbl  -13(%ebp), %eax         #  13:     param  2 <- t10
    pushl   %eax                   
    movl    $97, %eax               #  14:     if     97 # 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_7                 
    jmp     l_f2_8                  #  15:     goto   8
l_f2_7:
    movl    $1, %eax                #  17:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_9                  #  18:     goto   9
l_f2_8:
    movl    $0, %eax                #  20:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_9:
    movzbl  -14(%ebp), %eax         #  22:     param  1 <- t11
    pushl   %eax                   
    leal    -132627512(%ebp), %eax  #  23:     &()    t12 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  25:     call   t13 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $164994404, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 40 of <array 54 of <array 23 of <array 89 of <array 86 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 26 of <array 39 of <array 18 of <array 25 of <array 63 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $t6       <bool> %ebp-31 ]
    #    -32(%ebp)   1  [ $t7       <char> %ebp-32 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 = 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $98, %eax               #   4:     if     98 <= 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    movl    $100, %eax              #   7:     if     100 >= 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_9_if_true       
    jmp     l_test_10_if_false      #   8:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  10:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_4                #  13:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_1_while_cond     #  16:     goto   1_while_cond
l_test_0:
    leal    v1, %eax                #  18:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     param  3 <- t0
    pushl   %eax                   
    leal    v0, %eax                #  20:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     param  2 <- t1
    pushl   %eax                   
    movl    $7702, %eax             #  22:     param  1 <- 7702
    pushl   %eax                   
    movl    $0, %eax                #  23:     param  0 <- 0
    pushl   %eax                   
    call    f2                      #  24:     call   f2
    addl    $16, %esp              
    movl    $1839, %eax             #  25:     mul    t2 <- 1839, 89428
    movl    $89428, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     div    t3 <- t2, 12302
    movl    $12302, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     if     t3 < 14324 goto 14_if_true
    movl    $14324, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_14_if_true      
    jmp     l_test_15_if_false      #  28:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  31:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    call    dummyCHARfunc           #  32:     call   t5 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    call    dummyBOOLfunc           #  33:     call   t6 <- dummyBOOLfunc
    movb    %al, -31(%ebp)         
    jmp     l_test_13               #  34:     goto   13
l_test_15_if_false:
l_test_13:
    call    dummyCHARfunc           #  37:     call   t7 <- dummyCHARfunc
    movb    %al, -32(%ebp)         

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
v0:                                 # <array 26 of <array 39 of <array 18 of <array 25 of <array 63 of <bool>>>>>>
    .long    5
    .long   26
    .long   39
    .long   18
    .long   25
    .long   63
    .skip 28746900
v1:                                 # <array 40 of <array 54 of <array 23 of <array 89 of <array 86 of <char>>>>>>
    .long    5
    .long   40
    .long   54
    .long   23
    .long   89
    .long   86
    .skip 380250720








    # end of global data section
    #-----------------------------------------

    .end
##################################################
