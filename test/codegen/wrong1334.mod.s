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
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 73 of <array 1 of <array 82 of <array 47 of <array 95 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    jmp     l_f0_4                  #   0:     goto   4
    jmp     l_f0_4                  #   1:     goto   4
    jmp     l_f0_1                  #   2:     goto   1
l_f0_4:
l_f0_1:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   9:     return t7
    jmp     l_f0_exit              
    call    dummyINTfunc            #  10:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $3644, %eax             #  11:     if     3644 < 24252 goto 12_if_true
    movl    $24252, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  12:     goto   13_if_false
l_f0_12_if_true:
l_f0_16_while_cond:
    movl    $73639, %eax            #  15:     if     73639 < 42846 goto 17_while_body
    movl    $42846, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_17_while_body     
    jmp     l_f0_15                 #  16:     goto   15
l_f0_17_while_body:
    jmp     l_f0_16_while_cond      #  18:     goto   16_while_cond
l_f0_15:
l_f0_20_while_cond:
    jmp     l_f0_19                 #  21:     goto   19
    jmp     l_f0_20_while_cond      #  22:     goto   20_while_cond
l_f0_19:
    movl    $8674, %eax             #  24:     assign v1 <- 8674
    movl    %eax, 12(%ebp)         
    movl    $0, %eax                #  25:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_11                 #  26:     goto   11
l_f0_13_if_false:
l_f0_11:

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
    #    -16(%ebp)   4  [ $t7       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <ptr(4) to <array 73 of <array 1 of <array 82 of <array 47 of <array 95 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #   -26727536(%ebp)  26727514  [ $v1       <array 73 of <array 1 of <array 82 of <array 47 of <array 95 of <bool>>>>>> %ebp-26727536 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $26727524, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6681881, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-26727536(%ebp)      # local array 'v1': 5 dimensions
    movl    $73,-26727532(%ebp)     #   dimension 1: 73 elements
    movl    $1,-26727528(%ebp)      #   dimension 2: 1 elements
    movl    $82,-26727524(%ebp)     #   dimension 3: 82 elements
    movl    $47,-26727520(%ebp)     #   dimension 4: 47 elements
    movl    $95,-26727516(%ebp)     #   dimension 5: 95 elements

    # function body
l_f1_1_while_cond:
    call    WriteLn                 #   1:     call   WriteLn
    movl    $97, %eax               #   2:     return 97
    jmp     l_f1_exit              
    leal    _str_1, %eax            #   3:     &()    t7 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #   5:     call   WriteStr
    addl    $4, %esp               
    movl    $41529, %eax            #   6:     param  0 <- 41529
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
    movl    $22240, %eax            #   9:     param  1 <- 22240
    pushl   %eax                   
    leal    -26727536(%ebp), %eax   #  10:     &()    t8 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  12:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #  13:     return 98
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $26727524, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    movl    $100, %eax              #   0:     if     100 > 98 goto 4
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_4                 
    jmp     l_f2_5                  #   1:     goto   5
l_f2_4:
    movl    $1, %eax                #   3:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $0, %eax                #   6:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #   8:     if     t7 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   9:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_8                  #  11:     goto   8
l_f2_8:
    jmp     l_f2_0                  #  13:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  16:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f2_13_while_cond:
    jmp     l_f2_12                 #  18:     goto   12
    movl    $97, %eax               #  19:     assign v2 <- 97
    movb    %al, -15(%ebp)         
l_f2_17_while_cond:
    movl    $53635, %eax            #  21:     if     53635 # 4113 goto 18_while_body
    movl    $4113, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_18_while_body     
    jmp     l_f2_16                 #  22:     goto   16
l_f2_18_while_body:
    movl    $8641, %eax             #  24:     return 8641
    jmp     l_f2_exit              
l_f2_22_while_cond:
    jmp     l_f2_22_while_cond      #  26:     goto   22_while_cond
    call    dummyProcedure          #  27:     call   dummyProcedure
    movl    $99, %eax               #  28:     if     99 < 98 goto 26_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_26_if_true        
    jmp     l_f2_27_if_false        #  29:     goto   27_if_false
l_f2_26_if_true:
    jmp     l_f2_25                 #  31:     goto   25
l_f2_27_if_false:
l_f2_25:
    jmp     l_f2_17_while_cond      #  34:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_13_while_cond      #  36:     goto   13_while_cond
l_f2_12:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $t6       <bool> %ebp-31 ]

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
l_test_4_while_cond:
    jmp     l_test_3                #   2:     goto   3
    jmp     l_test_4_while_cond     #   3:     goto   4_while_cond
l_test_3:
    movl    $52038, %eax            #   5:     div    t0 <- 52038, 845
    movl    $845, %ebx             
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     div    t1 <- t0, 78124
    movl    $78124, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  1 <- t1
    pushl   %eax                   
    movl    $98, %eax               #   8:     if     98 # 99 goto 7
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_7               
    jmp     l_test_8                #   9:     goto   8
l_test_7:
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_9                #  12:     goto   9
l_test_8:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_9:
    movzbl  -21(%ebp), %eax         #  16:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  17:     call   t3 <- f2
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    jmp     l_test_1_while_cond     #  18:     goto   1_while_cond
    movl    $0, %eax                #  19:     if     0 = 0 goto 12
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_12              
    jmp     l_test_13               #  20:     goto   13
l_test_12:
    movl    $1, %eax                #  22:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_14               #  23:     goto   14
l_test_13:
    movl    $0, %eax                #  25:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_14:
    movzbl  -29(%ebp), %eax         #  27:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  28:     call   t5 <- f1
    addl    $4, %esp               
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  29:     assign v0 <- t5
    movb    %al, v0                
    movl    $44770, %eax            #  30:     assign v1 <- 44770
    movl    %eax, v1               
    movl    $100, %eax              #  31:     if     100 < 100 goto 21
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_21              
    jmp     l_test_22               #  32:     goto   22
l_test_21:
    movl    $1, %eax                #  34:     assign t6 <- 1
    movb    %al, -31(%ebp)         
    jmp     l_test_23               #  35:     goto   23
l_test_22:
    movl    $0, %eax                #  37:     assign t6 <- 0
    movb    %al, -31(%ebp)         
l_test_23:
    movzbl  -31(%ebp), %eax         #  39:     assign v2 <- t6
    movb    %al, v2                
l_test_26_while_cond:
    movl    $70374, %eax            #  41:     if     70374 # 25474 goto 27_while_body
    movl    $25474, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_27_while_body   
    jmp     l_test_25               #  42:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  44:     goto   26_while_cond
l_test_25:
    jmp     l_test_16               #  46:     goto   16
l_test_16:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
