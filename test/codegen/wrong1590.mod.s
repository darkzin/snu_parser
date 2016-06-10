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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]

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
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $50175, %eax            #   2:     mul    t9 <- 50175, 82212
    movl    $82212, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     div    t10 <- t9, 89046
    movl    $89046, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     mul    t11 <- t10, 72244
    movl    $72244, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     if     t11 > 33915 goto 3_while_body
    movl    $33915, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_while_body:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   9:     goto   5
    jmp     l_f0_6_while_cond       #  10:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_2_while_cond       #  12:     goto   2_while_cond
l_f0_1:
    call    dummyBOOLfunc           #  14:     call   t12 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 35 of <array 72 of <array 70 of <array 51 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 48 of <array 87 of <array 76 of <array 27 of <array 22 of <bool>>>>>>> %ebp+16 ]

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
    jmp     l_f1_1                  #   0:     goto   1
l_f1_1:
    movl    $1, %eax                #   2:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f1_3:
    movzbl  -21(%ebp), %eax         #   6:     return t9
    jmp     l_f1_exit              
    movl    $29692, %eax            #   7:     if     29692 >= 47907 goto 7
    movl    $47907, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7                 
    jmp     l_f1_7                  #   8:     goto   7
    jmp     l_f1_7                  #   9:     goto   7
l_f1_7:
    movl    $1, %eax                #  11:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_9                  #  12:     goto   9
    movl    $0, %eax                #  13:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_9:
    movzbl  -13(%ebp), %eax         #  15:     return t10
    jmp     l_f1_exit              
    call    ReadInt                 #  16:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 35 of <array 72 of <array 70 of <array 51 of <array 2 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t13      <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $t14      <char> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <ptr(4) to <array 48 of <array 87 of <array 76 of <array 27 of <array 22 of <bool>>>>>>> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 43 of <array 74 of <array 81 of <array 24 of <array 87 of <char>>>>>>> %ebp+20 ]
    #   -17992848(%ebp)  17992824  [ $v5       <array 35 of <array 72 of <array 70 of <array 51 of <array 2 of <char>>>>>> %ebp-17992848 ]
    #   -206514216(%ebp)  188521368  [ $v6       <array 48 of <array 87 of <array 76 of <array 27 of <array 22 of <bool>>>>>> %ebp-206514216 ]
    #   -206514220(%ebp)   4  [ $v7       <int> %ebp-206514220 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $206514208, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $51628552, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-17992848(%ebp)      # local array 'v5': 5 dimensions
    movl    $35,-17992844(%ebp)     #   dimension 1: 35 elements
    movl    $72,-17992840(%ebp)     #   dimension 2: 72 elements
    movl    $70,-17992836(%ebp)     #   dimension 3: 70 elements
    movl    $51,-17992832(%ebp)     #   dimension 4: 51 elements
    movl    $2,-17992828(%ebp)      #   dimension 5: 2 elements
    movl    $5,-206514216(%ebp)     # local array 'v6': 5 dimensions
    movl    $48,-206514212(%ebp)    #   dimension 1: 48 elements
    movl    $87,-206514208(%ebp)    #   dimension 2: 87 elements
    movl    $76,-206514204(%ebp)    #   dimension 3: 76 elements
    movl    $27,-206514200(%ebp)    #   dimension 4: 27 elements
    movl    $22,-206514196(%ebp)    #   dimension 5: 22 elements

    # function body
    leal    -206514216(%ebp), %eax  #   0:     &()    t9 <- v6
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     param  2 <- t9
    pushl   %eax                   
    leal    -17992848(%ebp), %eax   #   2:     &()    t10 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  1 <- t10
    pushl   %eax                   
    call    dummyCHARfunc           #   4:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #   6:     call   t12 <- f1
    addl    $12, %esp              
    movb    %al, -18(%ebp)         
    call    dummyCHARfunc           #   7:     call   t13 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movl    $100, %eax              #   8:     if     100 > t13 goto 2_if_true
    movzbl  -19(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   9:     goto   3_if_false
l_f2_2_if_true:
    movl    $53512, %eax            #  11:     assign v7 <- 53512
    movl    %eax, -206514220(%ebp) 
    jmp     l_f2_1                  #  12:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyCHARfunc           #  15:     call   t14 <- dummyCHARfunc
    movb    %al, -20(%ebp)         
    movzbl  -20(%ebp), %eax         #  16:     return t14
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $206514208, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 43 of <array 74 of <array 81 of <array 24 of <array 87 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 48 of <array 87 of <array 76 of <array 27 of <array 22 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 35 of <array 72 of <array 70 of <array 51 of <array 2 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t5       <char> %ebp-27 ]
    #    -32(%ebp)   4  [ $t6       <ptr(4) to <array 43 of <array 74 of <array 81 of <array 24 of <array 87 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t8       <char> %ebp-34 ]

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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 < 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $81517, %eax            #   4:     assign v0 <- 81517
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    leal    v3, %eax                #   7:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     param  3 <- t0
    pushl   %eax                   
    movl    $100, %eax              #   9:     param  2 <- 100
    pushl   %eax                   
    movl    $97, %eax               #  10:     param  1 <- 97
    pushl   %eax                   
    leal    v2, %eax                #  11:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  2 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  13:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  1 <- t2
    pushl   %eax                   
    call    dummyCHARfunc           #  15:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  16:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  17:     call   t4 <- f1
    addl    $12, %esp              
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  18:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  19:     call   t5 <- f2
    addl    $16, %esp              
    movb    %al, -27(%ebp)         
    movl    $26762, %eax            #  20:     if     26762 < 34324 goto 7_if_true
    movl    $34324, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_7_if_true       
    jmp     l_test_8_if_false       #  21:     goto   8_if_false
l_test_7_if_true:
    leal    v3, %eax                #  23:     &()    t6 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     param  3 <- t6
    pushl   %eax                   
    movl    $97, %eax               #  25:     param  2 <- 97
    pushl   %eax                   
    call    dummyCHARfunc           #  26:     call   t7 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  27:     param  1 <- t7
    pushl   %eax                   
    movl    $1, %eax                #  28:     param  0 <- 1
    pushl   %eax                   
    call    f2                      #  29:     call   t8 <- f2
    addl    $16, %esp              
    movb    %al, -34(%ebp)         
    jmp     l_test_6                #  30:     goto   6
l_test_8_if_false:
l_test_6:
l_test_12_while_cond:
    movl    $56517, %eax            #  34:     if     56517 <= 58025 goto 13_while_body
    movl    $58025, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_13_while_body   
    jmp     l_test_11               #  35:     goto   11
l_test_13_while_body:
    movl    $97, %eax               #  37:     if     97 >= 99 goto 16_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_16_if_true      
    jmp     l_test_17_if_false      #  38:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  40:     goto   15
l_test_17_if_false:
l_test_15:
l_test_20_while_cond:
    jmp     l_test_19               #  44:     goto   19
    jmp     l_test_20_while_cond    #  45:     goto   20_while_cond
l_test_19:
    jmp     l_test_12_while_cond    #  47:     goto   12_while_cond
l_test_11:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 35 of <array 72 of <array 70 of <array 51 of <array 2 of <char>>>>>>
    .long    5
    .long   35
    .long   72
    .long   70
    .long   51
    .long    2
    .skip 17992800
v2:                                 # <array 48 of <array 87 of <array 76 of <array 27 of <array 22 of <bool>>>>>>
    .long    5
    .long   48
    .long   87
    .long   76
    .long   27
    .long   22
    .skip 188521344
v3:                                 # <array 43 of <array 74 of <array 81 of <array 24 of <array 87 of <char>>>>>>
    .long    5
    .long   43
    .long   74
    .long   81
    .long   24
    .long   87
    .skip 538165296








    # end of global data section
    #-----------------------------------------

    .end
##################################################
