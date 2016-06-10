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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 10 of <array 2 of <array 10 of <array 1 of <int>>>>>>> %ebp+8 ]
    #    -40(%ebp)   4  [ $v1       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $v2       <bool> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $68163, %eax            #   1:     div    t5 <- 68163, 91418
    movl    $91418, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t6 <- t5, 52361
    movl    $52361, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     if     t6 # 42347 goto 2_while_body
    movl    $42347, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    movl    $97, %eax               #   7:     if     97 < 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_6_while_body      
    jmp     l_f0_4                  #   8:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  10:     goto   5_while_cond
l_f0_4:
    call    dummyINTfunc            #  12:     call   t7 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    $47730, %eax            #  13:     return 47730
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
    movl    $26853, %eax            #  16:     add    t8 <- 26853, 83507
    movl    $83507, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     assign v1 <- t8
    movl    %eax, -40(%ebp)        
    movl    $59957, %eax            #  18:     add    t9 <- 59957, 14264
    movl    $14264, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     if     t9 = 31191 goto 12
    movl    $31191, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_12                
    jmp     l_f0_13                 #  20:     goto   13
l_f0_12:
    movl    $1, %eax                #  22:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_14                 #  23:     goto   14
l_f0_13:
    movl    $0, %eax                #  25:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_14:
    movzbl  -13(%ebp), %eax         #  27:     assign v2 <- t10
    movb    %al, -41(%ebp)         

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 4 of <array 4 of <array 2 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 10 of <array 6 of <array 3 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $94256, %eax            #   1:     if     94256 < 66762 goto 2_if_true
    movl    $66762, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_5                  #   4:     goto   5
l_f1_5:
    movl    $1, %eax                #   6:     assign v0 <- 1
    movb    %al, 8(%ebp)           
l_f1_10_while_cond:
    movl    $93712, %eax            #   8:     if     93712 < 8732 goto 11_while_body
    movl    $8732, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_11_while_body     
    jmp     l_f1_9                  #   9:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  11:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_1                  #  13:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  16:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  17:     return t6
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 4 of <array 10 of <array 6 of <array 3 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 8 of <array 4 of <array 4 of <array 2 of <array 7 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 4 of <array 10 of <array 6 of <array 3 of <array 7 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 8 of <array 4 of <array 4 of <array 2 of <array 7 of <bool>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t9       <char> %ebp-42 ]
    #    -43(%ebp)   1  [ $v0       <bool> %ebp-43 ]
    #   -1860(%ebp)  1816  [ $v1       <array 8 of <array 4 of <array 4 of <array 2 of <array 7 of <bool>>>>>> %ebp-1860 ]
    #   -6924(%ebp)  5064  [ $v2       <array 4 of <array 10 of <array 6 of <array 3 of <array 7 of <bool>>>>>> %ebp-6924 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $6912, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1728, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1860(%ebp)          # local array 'v1': 5 dimensions
    movl    $8,-1856(%ebp)          #   dimension 1: 8 elements
    movl    $4,-1852(%ebp)          #   dimension 2: 4 elements
    movl    $4,-1848(%ebp)          #   dimension 3: 4 elements
    movl    $2,-1844(%ebp)          #   dimension 4: 2 elements
    movl    $7,-1840(%ebp)          #   dimension 5: 7 elements
    movl    $5,-6924(%ebp)          # local array 'v2': 5 dimensions
    movl    $4,-6920(%ebp)          #   dimension 1: 4 elements
    movl    $10,-6916(%ebp)         #   dimension 2: 10 elements
    movl    $6,-6912(%ebp)          #   dimension 3: 6 elements
    movl    $3,-6908(%ebp)          #   dimension 4: 3 elements
    movl    $7,-6904(%ebp)          #   dimension 5: 7 elements

    # function body
    movl    $0, %eax                #   0:     if     0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    dummyINTfunc            #   3:     call   t5 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_6_while_cond:
    movl    $17099, %eax            #   8:     param  3 <- 17099
    pushl   %eax                   
    leal    -6924(%ebp), %eax       #   9:     &()    t6 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     param  2 <- t6
    pushl   %eax                   
    leal    -1860(%ebp), %eax       #  11:     &()    t7 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     param  1 <- t7
    pushl   %eax                   
    movl    $3608, %eax             #  13:     if     3608 = 25137 goto 9
    movl    $25137, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_9                 
    jmp     l_f2_10                 #  14:     goto   10
l_f2_9:
    movl    $1, %eax                #  16:     assign t8 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f2_11                 #  17:     goto   11
l_f2_10:
    movl    $0, %eax                #  19:     assign t8 <- 0
    movb    %al, -41(%ebp)         
l_f2_11:
    movzbl  -41(%ebp), %eax         #  21:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  22:     call   t9 <- f1
    addl    $16, %esp              
    movb    %al, -42(%ebp)         
    movl    $98, %eax               #  23:     if     98 >= t9 goto 7_while_body
    movzbl  -42(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_7_while_body      
    jmp     l_f2_5                  #  24:     goto   5
l_f2_7_while_body:
    movl    $1, %eax                #  26:     assign v0 <- 1
    movb    %al, -43(%ebp)         
    movl    $0, %eax                #  27:     assign v0 <- 0
    movb    %al, -43(%ebp)         
l_f2_16_while_cond:
    jmp     l_f2_16_while_cond      #  29:     goto   16_while_cond
    movl    $56408, %eax            #  30:     param  0 <- 56408
    pushl   %eax                   
    call    WriteInt                #  31:     call   WriteInt
    addl    $4, %esp               
    movl    $100, %eax              #  32:     return 100
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  33:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_22_while_cond:
    jmp     l_f2_21                 #  35:     goto   21
    jmp     l_f2_22_while_cond      #  36:     goto   22_while_cond
l_f2_21:
    jmp     l_f2_6_while_cond       #  38:     goto   6_while_cond
l_f2_5:
    movl    $35049, %eax            #  40:     param  3 <- 35049
    pushl   %eax                   
    leal    -6924(%ebp), %eax       #  41:     &()    t11 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  42:     param  2 <- t11
    pushl   %eax                   
    leal    -1860(%ebp), %eax       #  43:     &()    t12 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  44:     param  1 <- t12
    pushl   %eax                   
    movl    $100, %eax              #  45:     if     100 < 100 goto 25
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_25                
    jmp     l_f2_26                 #  46:     goto   26
l_f2_25:
    movl    $1, %eax                #  48:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_27                 #  49:     goto   27
l_f2_26:
    movl    $0, %eax                #  51:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f2_27:
    movzbl  -25(%ebp), %eax         #  53:     param  0 <- t13
    pushl   %eax                   
    call    f1                      #  54:     call   t14 <- f1
    addl    $16, %esp              
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  55:     return t14
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $6912, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 10 of <array 6 of <array 3 of <array 7 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 4 of <array 4 of <array 2 of <array 7 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    movl    $97, %eax               #   1:     if     97 >= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    call    dummyBOOLfunc           #   4:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     if     t0 = 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #   6:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   8:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
    movl    $97, %eax               #  13:     if     97 > 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_8_if_true       
    jmp     l_test_9_if_false       #  14:     goto   9_if_false
l_test_8_if_true:
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  17:     goto   12_while_cond
    movl    $0, %eax                #  18:     if     0 = 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15_if_true      
    jmp     l_test_16_if_false      #  19:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  21:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_20_if_false      #  24:     goto   20_if_false
    jmp     l_test_18               #  25:     goto   18
l_test_20_if_false:
l_test_18:
    movl    $98, %eax               #  28:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  29:     call   WriteChar
    addl    $4, %esp               
    movl    $98, %eax               #  30:     assign v0 <- 98
    movb    %al, v0                
l_test_24_while_cond:
    movl    $100, %eax              #  32:     if     100 <= 99 goto 25_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_25_while_body   
    jmp     l_test_23               #  33:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  35:     goto   24_while_cond
l_test_23:
    movl    $99, %eax               #  37:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_exit            
    call    ReadInt                 #  39:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_7                #  40:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_exit            
    movl    $18853, %eax            #  44:     param  3 <- 18853
    pushl   %eax                   
    leal    v2, %eax                #  45:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  46:     param  2 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  47:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  48:     param  1 <- t3
    pushl   %eax                   
    movl    $0, %eax                #  49:     param  0 <- 0
    pushl   %eax                   
    call    f1                      #  50:     call   t4 <- f1
    addl    $16, %esp              
    movb    %al, -29(%ebp)         

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
v1:                                 # <array 8 of <array 4 of <array 4 of <array 2 of <array 7 of <bool>>>>>>
    .long    5
    .long    8
    .long    4
    .long    4
    .long    2
    .long    7
    .skip 1792
v2:                                 # <array 4 of <array 10 of <array 6 of <array 3 of <array 7 of <bool>>>>>>
    .long    5
    .long    4
    .long   10
    .long    6
    .long    3
    .long    7
    .skip 5040








    # end of global data section
    #-----------------------------------------

    .end
##################################################
