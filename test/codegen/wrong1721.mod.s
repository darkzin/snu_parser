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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 66 of <array 54 of <array 90 of <array 78 of <array 16 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 1 of <array 10 of <array 27 of <array 88 of <bool>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $99, %eax               #   1:     return 99
    jmp     l_f0_exit              
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   3:     goto   5_while_cond
    movl    $98, %eax               #   4:     return 98
    jmp     l_f0_exit              
l_f0_9_while_cond:
    jmp     l_f0_8                  #   6:     goto   8
    jmp     l_f0_9_while_cond       #   7:     goto   9_while_cond
l_f0_8:
    call    dummyCHARfunc           #   9:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $97, %eax               #  13:     assign v3 <- 97
    movb    %al, -14(%ebp)         
l_f0_14_while_cond:
    movl    $100, %eax              #  15:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  16:     call   WriteChar
    addl    $4, %esp               
l_f0_18_while_cond:
    movl    $99, %eax               #  18:     if     99 >= 98 goto 19_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_19_while_body     
    jmp     l_f0_17                 #  19:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  21:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_14_while_cond      #  23:     goto   14_while_cond

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 51 of <array 64 of <array 84 of <array 29 of <array 6 of <bool>>>>>>> %ebp+12 ]

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
l_f1_1_while_cond:
    movl    $100, %eax              #   1:     if     100 < 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    movl    $100, %eax              #   5:     if     100 = 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_1_while_cond       #  10:     goto   1_while_cond
l_f1_0:
    movl    $99, %eax               #  12:     assign v1 <- 99
    movb    %al, 8(%ebp)           
    leal    _str_1, %eax            #  13:     &()    t10 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     param  0 <- t10
    pushl   %eax                   
    call    WriteStr                #  15:     call   WriteStr
    addl    $4, %esp               
l_f1_14_while_cond:
    jmp     l_f1_13                 #  17:     goto   13
    jmp     l_f1_14_while_cond      #  18:     goto   14_while_cond
l_f1_13:
l_f1_17_while_cond:
    jmp     l_f1_17_while_cond      #  21:     goto   17_while_cond
    jmp     l_f1_9                  #  22:     goto   9
l_f1_9:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 51 of <array 64 of <array 84 of <array 29 of <array 6 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 3 of <array 1 of <array 10 of <array 27 of <array 88 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 66 of <array 54 of <array 90 of <array 78 of <array 16 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t16      <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t17      <bool> %ebp-34 ]
    #    -35(%ebp)   1  [ $t18      <bool> %ebp-35 ]
    #    -36(%ebp)   1  [ $t19      <bool> %ebp-36 ]
    #    -37(%ebp)   1  [ $t20      <bool> %ebp-37 ]
    #   -400308544(%ebp)  400308504  [ $v1       <array 66 of <array 54 of <array 90 of <array 78 of <array 16 of <bool>>>>>> %ebp-400308544 ]
    #   -400379848(%ebp)  71304  [ $v2       <array 3 of <array 1 of <array 10 of <array 27 of <array 88 of <bool>>>>>> %ebp-400379848 ]
    #   -448086496(%ebp)  47706648  [ $v3       <array 51 of <array 64 of <array 84 of <array 29 of <array 6 of <bool>>>>>> %ebp-448086496 ]
    #   -448086497(%ebp)   1  [ $v4       <bool> %ebp-448086497 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $448086488, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $112021622, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-400308544(%ebp)     # local array 'v1': 5 dimensions
    movl    $66,-400308540(%ebp)    #   dimension 1: 66 elements
    movl    $54,-400308536(%ebp)    #   dimension 2: 54 elements
    movl    $90,-400308532(%ebp)    #   dimension 3: 90 elements
    movl    $78,-400308528(%ebp)    #   dimension 4: 78 elements
    movl    $16,-400308524(%ebp)    #   dimension 5: 16 elements
    movl    $5,-400379848(%ebp)     # local array 'v2': 5 dimensions
    movl    $3,-400379844(%ebp)     #   dimension 1: 3 elements
    movl    $1,-400379840(%ebp)     #   dimension 2: 1 elements
    movl    $10,-400379836(%ebp)    #   dimension 3: 10 elements
    movl    $27,-400379832(%ebp)    #   dimension 4: 27 elements
    movl    $88,-400379828(%ebp)    #   dimension 5: 88 elements
    movl    $5,-448086496(%ebp)     # local array 'v3': 5 dimensions
    movl    $51,-448086492(%ebp)    #   dimension 1: 51 elements
    movl    $64,-448086488(%ebp)    #   dimension 2: 64 elements
    movl    $84,-448086484(%ebp)    #   dimension 3: 84 elements
    movl    $29,-448086480(%ebp)    #   dimension 4: 29 elements
    movl    $6,-448086476(%ebp)     #   dimension 5: 6 elements

    # function body
l_f2_1_while_cond:
    leal    -448086496(%ebp), %eax  #   1:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t10
    pushl   %eax                   
    leal    -400379848(%ebp), %eax  #   3:     &()    t11 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t11
    pushl   %eax                   
    leal    -400308544(%ebp), %eax  #   5:     &()    t12 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #   7:     call   t13 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   8:     param  0 <- t13
    pushl   %eax                   
    call    f1                      #   9:     call   t14 <- f1
    addl    $8, %esp               
    movb    %al, -26(%ebp)         
l_f2_5_while_cond:
    movl    $58746, %eax            #  11:     if     58746 > 99059 goto 6_while_body
    movl    $99059, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #  12:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #  14:     goto   5_while_cond
l_f2_4:
    call    dummyINTfunc            #  16:     call   t15 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
l_f2_10_while_cond:
    movl    $97, %eax               #  18:     if     97 < 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_11_while_body     
    jmp     l_f2_9                  #  19:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  21:     goto   10_while_cond
l_f2_9:
    movl    $39828, %eax            #  23:     if     39828 > 92857 goto 14
    movl    $92857, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_14                
    jmp     l_f2_15                 #  24:     goto   15
l_f2_14:
    movl    $1, %eax                #  26:     assign t16 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_16                 #  27:     goto   16
l_f2_15:
    movl    $0, %eax                #  29:     assign t16 <- 0
    movb    %al, -33(%ebp)         
l_f2_16:
    movzbl  -33(%ebp), %eax         #  31:     assign v4 <- t16
    movb    %al, -448086497(%ebp)  
    jmp     l_f2_1_while_cond       #  32:     goto   1_while_cond
    call    dummyBOOLfunc           #  33:     call   t17 <- dummyBOOLfunc
    movb    %al, -34(%ebp)         
    movzbl  -34(%ebp), %eax         #  34:     if     t17 = 1 goto 23
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_23                
    jmp     l_f2_24                 #  35:     goto   24
l_f2_23:
    movl    $1, %eax                #  37:     assign t18 <- 1
    movb    %al, -35(%ebp)         
    jmp     l_f2_25                 #  38:     goto   25
l_f2_24:
    movl    $0, %eax                #  40:     assign t18 <- 0
    movb    %al, -35(%ebp)         
l_f2_25:
    movzbl  -35(%ebp), %eax         #  42:     if     t18 # 0 goto 19
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_19                
    jmp     l_f2_20                 #  43:     goto   20
l_f2_19:
    movl    $1, %eax                #  45:     assign t19 <- 1
    movb    %al, -36(%ebp)         
    jmp     l_f2_21                 #  46:     goto   21
l_f2_20:
    movl    $0, %eax                #  48:     assign t19 <- 0
    movb    %al, -36(%ebp)         
l_f2_21:
    movzbl  -36(%ebp), %eax         #  50:     return t19
    jmp     l_f2_exit              
    jmp     l_f2_35                 #  51:     goto   35
    jmp     l_f2_35                 #  52:     goto   35
l_f2_35:
    jmp     l_f2_28                 #  54:     goto   28
    jmp     l_f2_28                 #  55:     goto   28
l_f2_28:
    movl    $1, %eax                #  57:     assign t20 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_30                 #  58:     goto   30
    movl    $0, %eax                #  59:     assign t20 <- 0
    movb    %al, -37(%ebp)         
l_f2_30:
    movzbl  -37(%ebp), %eax         #  61:     assign v4 <- t20
    movb    %al, -448086497(%ebp)  

l_f2_exit:
    # epilogue
    addl    $448086488, %esp        # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 1 of <array 10 of <array 27 of <array 88 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 66 of <array 54 of <array 90 of <array 78 of <array 16 of <bool>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <char> %ebp-41 ]
    #    -42(%ebp)   1  [ $t9       <bool> %ebp-42 ]

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
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, v0                
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $10521, %eax            #   4:     if     10521 = 56827 goto 6
    movl    $56827, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_6               
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $1, %eax                #   7:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_8                #   8:     goto   8
l_test_7:
    movl    $0, %eax                #  10:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_8:
    movzbl  -14(%ebp), %eax         #  12:     assign v0 <- t1
    movb    %al, v0                
    call    ReadInt                 #  13:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    f2                      #  14:     call   t3 <- f2
    movb    %al, -21(%ebp)         
    jmp     l_test_2_while_cond     #  15:     goto   2_while_cond
l_test_1:
    movl    $81999, %eax            #  17:     mul    t4 <- 81999, 85265
    movl    $85265, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     div    t5 <- t4, 43999
    movl    $43999, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $61603, %eax            #  19:     if     61603 <= t5 goto 13_if_true
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_13_if_true      
    jmp     l_test_14_if_false      #  20:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  22:     goto   12
l_test_14_if_false:
l_test_12:
    leal    v2, %eax                #  25:     &()    t6 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  26:     param  1 <- t6
    pushl   %eax                   
    leal    v1, %eax                #  27:     &()    t7 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  29:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  30:     if     t8 > 100 goto 17
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_17              
    jmp     l_test_18               #  31:     goto   18
l_test_17:
    movl    $1, %eax                #  33:     assign t9 <- 1
    movb    %al, -42(%ebp)         
    jmp     l_test_19               #  34:     goto   19
l_test_18:
    movl    $0, %eax                #  36:     assign t9 <- 0
    movb    %al, -42(%ebp)         
l_test_19:
    movzbl  -42(%ebp), %eax         #  38:     assign v0 <- t9
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 66 of <array 54 of <array 90 of <array 78 of <array 16 of <bool>>>>>>
    .long    5
    .long   66
    .long   54
    .long   90
    .long   78
    .long   16
    .skip 400308480
v2:                                 # <array 3 of <array 1 of <array 10 of <array 27 of <array 88 of <bool>>>>>>
    .long    5
    .long    3
    .long    1
    .long   10
    .long   27
    .long   88
    .skip 71280








    # end of global data section
    #-----------------------------------------

    .end
##################################################
