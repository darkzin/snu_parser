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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

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
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    movl    $12025, %eax            #   2:     mul    t5 <- 12025, 21633
    movl    $21633, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     div    t6 <- t5, 41484
    movl    $41484, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     mul    t7 <- t6, 99572
    movl    $99572, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     div    t8 <- t7, 98007
    movl    $98007, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     assign v1 <- t8
    movl    %eax, -32(%ebp)        

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t5
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f1_3_while_cond:
    call    dummyBOOLfunc           #   4:     call   t7 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   5:     if     t7 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_4_while_body      
    jmp     l_f1_2                  #   6:     goto   2
l_f1_4_while_body:
    movl    $48747, %eax            #   8:     return 48747
    jmp     l_f1_exit              
    movl    $95146, %eax            #   9:     if     95146 = 18995 goto 7
    movl    $18995, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_7                 
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $1, %eax                #  12:     assign t8 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_9                  #  13:     goto   9
l_f1_8:
    movl    $0, %eax                #  15:     assign t8 <- 0
    movb    %al, -16(%ebp)         
l_f1_9:
    movzbl  -16(%ebp), %eax         #  17:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  18:     call   f0
    addl    $4, %esp               
    jmp     l_f1_3_while_cond       #  19:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 28 of <array 62 of <array 66 of <array 65 of <array 88 of <bool>>>>>>> %ebp+16 ]
    #    -33(%ebp)   1  [ $v3       <char> %ebp-33 ]

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
    movl    $27092, %eax            #   0:     param  1 <- 27092
    pushl   %eax                   
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #   3:     call   t6 <- f1
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $2523, %eax             #   4:     if     2523 < 22965 goto 2_if_true
    movl    $22965, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   5:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    movl    $31444, %eax            #   8:     if     31444 >= 71093 goto 7_while_body
    movl    $71093, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_7_while_body      
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  11:     goto   6_while_cond
l_f2_5:
l_f2_10_while_cond:
    movl    $98, %eax               #  14:     if     98 >= 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_11_while_body     
    jmp     l_f2_9                  #  15:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  17:     goto   10_while_cond
l_f2_9:
    call    dummyBOOLfunc           #  19:     call   t7 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f2_1                  #  20:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_15_while_cond:
    movl    $38809, %eax            #  24:     mul    t8 <- 38809, 77893
    movl    $77893, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     mul    t9 <- t8, 39076
    movl    $39076, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $24791, %eax            #  26:     if     24791 > t9 goto 16_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_16_while_body     
    jmp     l_f2_14                 #  27:     goto   14
l_f2_16_while_body:
    movl    $48977, %eax            #  29:     if     48977 < 34569 goto 19_if_true
    movl    $34569, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  30:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  32:     goto   18
l_f2_20_if_false:
l_f2_18:
    movl    $98, %eax               #  35:     assign v3 <- 98
    movb    %al, -33(%ebp)         
    jmp     l_f2_15_while_cond      #  36:     goto   15_while_cond
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -19(%ebp)   1  [ $t3       <char> %ebp-19 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]

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
    movl    $97805, %eax            #   0:     add    t0 <- 97805, 14934
    movl    $14934, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t0 > 77655 goto 1
    movl    $77655, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_8                #  10:     goto   8
l_test_8:
    movl    $41342, %eax            #  12:     if     41342 = 20286 goto 12
    movl    $20286, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_12              
    jmp     l_test_13               #  13:     goto   13
l_test_12:
    movl    $1, %eax                #  15:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_14               #  16:     goto   14
l_test_13:
    movl    $0, %eax                #  18:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_14:
    movzbl  -18(%ebp), %eax         #  20:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_exit            
l_test_18_while_cond:
    movl    $31101, %eax            #  23:     if     31101 = 19283 goto 19_while_body
    movl    $19283, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_19_while_body   
    jmp     l_test_17               #  24:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  26:     goto   18_while_cond
l_test_17:
    call    dummyCHARfunc           #  28:     call   t3 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movl    $44039, %eax            #  29:     assign v1 <- 44039
    movl    %eax, v1               
    movl    $26218, %eax            #  30:     param  1 <- 26218
    pushl   %eax                   
    movl    $99, %eax               #  31:     param  0 <- 99
    pushl   %eax                   
    call    f1                      #  32:     call   t4 <- f1
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    jmp     l_test_exit            
    movl    $35153, %eax            #  34:     assign v1 <- 35153
    movl    %eax, v1               
    jmp     l_test_5                #  35:     goto   5
l_test_5:
    movl    $74375, %eax            #  37:     if     74375 < 93044 goto 32_if_true
    movl    $93044, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_32_if_true      
    jmp     l_test_33_if_false      #  38:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_31               #  40:     goto   31
l_test_33_if_false:
l_test_31:
l_test_36_while_cond:
    jmp     l_test_35               #  44:     goto   35
    jmp     l_test_36_while_cond    #  45:     goto   36_while_cond
l_test_35:
    movl    $100, %eax              #  47:     assign v2 <- 100
    movb    %al, v2                
    movl    $65093, %eax            #  48:     if     65093 > 18580 goto 40_if_true
    movl    $18580, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_40_if_true      
    jmp     l_test_41_if_false      #  49:     goto   41_if_false
l_test_40_if_true:
    jmp     l_test_39               #  51:     goto   39
l_test_41_if_false:
l_test_39:
    jmp     l_test_45_if_false      #  54:     goto   45_if_false
    jmp     l_test_43               #  55:     goto   43
l_test_45_if_false:
l_test_43:
    jmp     l_test_26               #  58:     goto   26
l_test_26:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
