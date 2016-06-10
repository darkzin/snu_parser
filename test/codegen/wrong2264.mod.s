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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 21 of <array 20 of <array 92 of <array 99 of <array 8 of <bool>>>>>>> %ebp+16 ]
    #    -13(%ebp)   1  [ $v3       <char> %ebp-13 ]

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
    movl    $66154, %eax            #   0:     param  0 <- 66154
    pushl   %eax                   
    call    WriteInt                #   1:     call   WriteInt
    addl    $4, %esp               
    movl    $97, %eax               #   2:     assign v3 <- 97
    movb    %al, -13(%ebp)         
    jmp     l_f0_3_if_true          #   3:     goto   3_if_true
    jmp     l_f0_3_if_true          #   4:     goto   3_if_true
l_f0_3_if_true:
l_f0_15_while_cond:
    jmp     l_f0_15_while_cond      #   7:     goto   15_while_cond
    jmp     l_f0_2                  #   8:     goto   2
l_f0_2:

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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 21 of <array 20 of <array 92 of <array 99 of <array 8 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t7       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t8       <bool> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #   -30602924(%ebp)  30602904  [ $v2       <array 21 of <array 20 of <array 92 of <array 99 of <array 8 of <bool>>>>>> %ebp-30602924 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $30602912, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7650728, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-30602924(%ebp)      # local array 'v2': 5 dimensions
    movl    $21,-30602920(%ebp)     #   dimension 1: 21 elements
    movl    $20,-30602916(%ebp)     #   dimension 2: 20 elements
    movl    $92,-30602912(%ebp)     #   dimension 3: 92 elements
    movl    $99,-30602908(%ebp)     #   dimension 4: 99 elements
    movl    $8,-30602904(%ebp)      #   dimension 5: 8 elements

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    movl    $97, %eax               #   1:     return 97
    jmp     l_f1_exit              
    leal    -30602924(%ebp), %eax   #   2:     &()    t4 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  2 <- t4
    pushl   %eax                   
    call    dummyCHARfunc           #   4:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #   5:     if     98 >= t5 goto 3
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_3                 
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_5                  #   9:     goto   5
l_f1_4:
    movl    $0, %eax                #  11:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f1_5:
    movzbl  -18(%ebp), %eax         #  13:     param  1 <- t6
    pushl   %eax                   
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f1_9                  #  15:     goto   9
    movl    $0, %eax                #  16:     assign t7 <- 0
    movb    %al, -19(%ebp)         
l_f1_9:
    movzbl  -19(%ebp), %eax         #  18:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  19:     call   t8 <- f0
    addl    $12, %esp              
    movb    %al, -20(%ebp)         

l_f1_exit:
    # epilogue
    addl    $30602912, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 85 of <array 43 of <array 96 of <array 61 of <array 73 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 95 of <array 14 of <array 28 of <array 57 of <array 45 of <bool>>>>>>> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t5 <- t4, 91738
    movl    $91738, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t5
    jmp     l_f2_exit              
    movl    $26912, %eax            #   3:     if     26912 # 944 goto 2_if_true
    movl    $944, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   4:     goto   3_if_false
l_f2_2_if_true:
    movl    $98, %eax               #   6:     if     98 < 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   7:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_if_false:
l_f2_5:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  13:     goto   9
    movl    $76478, %eax            #  14:     return 76478
    jmp     l_f2_exit              
    jmp     l_f2_10_while_cond      #  15:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_1                  #  17:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyProcedure          #  20:     call   dummyProcedure

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 95 of <array 14 of <array 28 of <array 57 of <array 45 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 85 of <array 43 of <array 96 of <array 61 of <array 73 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    movl    $98, %eax               #   0:     if     98 < 100 goto 4_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_4_if_true       
    jmp     l_test_5_if_false       #   1:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_exit            
    jmp     l_test_3                #   4:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_0                #   7:     goto   0
l_test_0:
    movl    $40612, %eax            #   9:     sub    t0 <- 40612, 83
    movl    $83, %ebx              
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $36917, %eax            #  10:     if     36917 < t0 goto 9_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_9_if_true       
    jmp     l_test_10_if_false      #  11:     goto   10_if_false
l_test_9_if_true:
    movl    $99, %eax               #  13:     if     99 >= 100 goto 13_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_13_if_true      
    jmp     l_test_14_if_false      #  14:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  16:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_8                #  19:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $97, %eax               #  22:     assign v0 <- 97
    movb    %al, v0                
    movl    $99, %eax               #  23:     if     99 # 99 goto 21_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_21_if_true      
    jmp     l_test_22_if_false      #  24:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  26:     goto   20
l_test_22_if_false:
l_test_20:
    movl    $49223, %eax            #  29:     assign v1 <- 49223
    movl    %eax, v1               
l_test_26_while_cond:
    jmp     l_test_25               #  31:     goto   25
    jmp     l_test_26_while_cond    #  32:     goto   26_while_cond
l_test_25:
l_test_29_while_cond:
    jmp     l_test_28               #  35:     goto   28
    jmp     l_test_29_while_cond    #  36:     goto   29_while_cond
l_test_28:
    jmp     l_test_16               #  38:     goto   16
l_test_16:
    movl    $100, %eax              #  40:     if     100 >= 97 goto 32_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_32_if_true      
    jmp     l_test_33_if_false      #  41:     goto   33_if_false
l_test_32_if_true:
    movl    $100, %eax              #  43:     if     100 < 99 goto 36_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_36_if_true      
    jmp     l_test_37_if_false      #  44:     goto   37_if_false
l_test_36_if_true:
    jmp     l_test_35               #  46:     goto   35
l_test_37_if_false:
l_test_35:
    leal    v3, %eax                #  49:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  50:     param  3 <- t1
    pushl   %eax                   
    movl    $98, %eax               #  51:     param  2 <- 98
    pushl   %eax                   
    leal    v2, %eax                #  52:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  53:     param  1 <- t2
    pushl   %eax                   
    movl    $0, %eax                #  54:     param  0 <- 0
    pushl   %eax                   
    call    f2                      #  55:     call   t3 <- f2
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    jmp     l_test_31               #  56:     goto   31
l_test_33_if_false:
l_test_31:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v1:                                 # <int>
    .skip    4
v2:                                 # <array 85 of <array 43 of <array 96 of <array 61 of <array 73 of <int>>>>>>
    .long    5
    .long   85
    .long   43
    .long   96
    .long   61
    .long   73
    .skip 1954907264
v3:                                 # <array 95 of <array 14 of <array 28 of <array 57 of <array 45 of <bool>>>>>>
    .long    5
    .long   95
    .long   14
    .long   28
    .long   57
    .long   45
    .skip 95520600








    # end of global data section
    #-----------------------------------------

    .end
##################################################
