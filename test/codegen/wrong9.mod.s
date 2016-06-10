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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 9 of <array 3 of <array 10 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    movl    $98, %eax               #   0:     return 98
    jmp     l_f0_exit              
    call    dummyINTfunc            #   1:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_3_if_true          #   2:     goto   3_if_true
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
l_f0_3_if_true:
    movl    $99, %eax               #   5:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_2                  #   6:     goto   2
l_f0_4_if_false:
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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 4 of <array 4 of <array 9 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 9 of <array 6 of <array 3 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 8 of <array 5 of <array 5 of <array 6 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -30(%ebp)   1  [ $v5       <char> %ebp-30 ]

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
    call    ReadInt                 #   0:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $98001, %eax            #   1:     add    t7 <- 98001, 86805
    movl    $86805, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     sub    t8 <- t7, 55648
    movl    $55648, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t6 < t8 goto 1
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   4:     goto   2
l_f1_1:
    movl    $1, %eax                #   6:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $0, %eax                #   9:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f1_3:
    movzbl  -29(%ebp), %eax         #  11:     return t9
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  12:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #  13:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  14:     assign v5 <- t11
    movb    %al, -30(%ebp)         

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 8 of <array 4 of <array 4 of <array 9 of <array 9 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <ptr(4) to <array 3 of <array 8 of <array 5 of <array 5 of <array 6 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <array 9 of <array 6 of <array 3 of <array 4 of <bool>>>>>>> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 10 of <array 7 of <array 10 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 2 of <array 7 of <array 4 of <array 1 of <char>>>>>>> %ebp+16 ]
    #   -41532(%ebp)  41496  [ $v4       <array 8 of <array 4 of <array 4 of <array 9 of <array 9 of <int>>>>>> %ebp-41532 ]
    #   -44796(%ebp)  3264  [ $v5       <array 5 of <array 9 of <array 6 of <array 3 of <array 4 of <bool>>>>>> %ebp-44796 ]
    #   -59220(%ebp)  14424  [ $v6       <array 3 of <array 8 of <array 5 of <array 5 of <array 6 of <int>>>>>> %ebp-59220 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $59208, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14802, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-41532(%ebp)         # local array 'v4': 5 dimensions
    movl    $8,-41528(%ebp)         #   dimension 1: 8 elements
    movl    $4,-41524(%ebp)         #   dimension 2: 4 elements
    movl    $4,-41520(%ebp)         #   dimension 3: 4 elements
    movl    $9,-41516(%ebp)         #   dimension 4: 9 elements
    movl    $9,-41512(%ebp)         #   dimension 5: 9 elements
    movl    $5,-44796(%ebp)         # local array 'v5': 5 dimensions
    movl    $5,-44792(%ebp)         #   dimension 1: 5 elements
    movl    $9,-44788(%ebp)         #   dimension 2: 9 elements
    movl    $6,-44784(%ebp)         #   dimension 3: 6 elements
    movl    $3,-44780(%ebp)         #   dimension 4: 3 elements
    movl    $4,-44776(%ebp)         #   dimension 5: 4 elements
    movl    $5,-59220(%ebp)         # local array 'v6': 5 dimensions
    movl    $3,-59216(%ebp)         #   dimension 1: 3 elements
    movl    $8,-59212(%ebp)         #   dimension 2: 8 elements
    movl    $5,-59208(%ebp)         #   dimension 3: 5 elements
    movl    $5,-59204(%ebp)         #   dimension 4: 5 elements
    movl    $6,-59200(%ebp)         #   dimension 5: 6 elements

    # function body
    movl    $47551, %eax            #   0:     if     47551 # 49885 goto 1_if_true
    movl    $49885, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $15335, %eax            #   3:     return 15335
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyINTfunc            #   7:     call   t6 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
l_f2_7_while_cond:
    movl    $100, %eax              #   9:     if     100 # 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #  10:     goto   6
l_f2_8_while_body:
    jmp     l_f2_12_if_false        #  12:     goto   12_if_false
    jmp     l_f2_10                 #  13:     goto   10
l_f2_12_if_false:
l_f2_10:
    movl    $56568, %eax            #  16:     if     56568 >= 6039 goto 14
    movl    $6039, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f2_14                
    jmp     l_f2_15                 #  17:     goto   15
l_f2_14:
    movl    $1, %eax                #  19:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_16                 #  20:     goto   16
l_f2_15:
    movl    $0, %eax                #  22:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f2_16:
    movzbl  -25(%ebp), %eax         #  24:     param  3 <- t7
    pushl   %eax                   
    leal    -59220(%ebp), %eax      #  25:     &()    t8 <- v6
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     param  2 <- t8
    pushl   %eax                   
    leal    -44796(%ebp), %eax      #  27:     &()    t9 <- v5
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     param  1 <- t9
    pushl   %eax                   
    leal    -41532(%ebp), %eax      #  29:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  30:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  31:     call   t11 <- f1
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    jmp     l_f2_7_while_cond       #  32:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $59208, %esp            # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 8 of <array 5 of <array 5 of <array 6 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 9 of <array 6 of <array 3 of <array 4 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 8 of <array 4 of <array 4 of <array 9 of <array 9 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]

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
    movl    $9061, %eax             #   0:     if     9061 < 21011 goto 1
    movl    $21011, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
l_test_6_while_cond:
    movl    $22217, %eax            #  10:     if     22217 <= 38456 goto 7_while_body
    movl    $38456, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_7_while_body    
    jmp     l_test_5                #  11:     goto   5
l_test_7_while_body:
l_test_10_while_cond:
    movl    $49478, %eax            #  14:     if     49478 > 35482 goto 11_while_body
    movl    $35482, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #  15:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  17:     goto   10_while_cond
l_test_9:
    jmp     l_test_exit            
l_test_15_while_cond:
    jmp     l_test_14               #  21:     goto   14
    jmp     l_test_15_while_cond    #  22:     goto   15_while_cond
l_test_14:
    movl    $99, %eax               #  24:     if     99 # 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_18_if_true      
    jmp     l_test_19_if_false      #  25:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  27:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_6_while_cond     #  30:     goto   6_while_cond
l_test_5:
    movl    $0, %eax                #  32:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_27_if_false      #  33:     goto   27_if_false
    jmp     l_test_25               #  34:     goto   25
l_test_27_if_false:
l_test_25:
    movl    $25111, %eax            #  37:     if     25111 # 75659 goto 29_if_true
    movl    $75659, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_29_if_true      
    jmp     l_test_30_if_false      #  38:     goto   30_if_false
l_test_29_if_true:
    jmp     l_test_28               #  40:     goto   28
l_test_30_if_false:
l_test_28:
    call    ReadInt                 #  43:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_22               #  44:     goto   22
l_test_22:
    movl    $1, %eax                #  46:     param  3 <- 1
    pushl   %eax                   
    leal    v3, %eax                #  47:     &()    t2 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  48:     param  2 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  49:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  50:     param  1 <- t3
    pushl   %eax                   
    leal    v1, %eax                #  51:     &()    t4 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  52:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  53:     call   t5 <- f1
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
l_test_35_while_cond:
    jmp     l_test_36_while_body    #  55:     goto   36_while_body
    jmp     l_test_34               #  56:     goto   34
l_test_36_while_body:
    jmp     l_test_35_while_cond    #  58:     goto   35_while_cond
l_test_34:

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
v1:                                 # <array 8 of <array 4 of <array 4 of <array 9 of <array 9 of <int>>>>>>
    .long    5
    .long    8
    .long    4
    .long    4
    .long    9
    .long    9
    .skip 41472
v2:                                 # <array 5 of <array 9 of <array 6 of <array 3 of <array 4 of <bool>>>>>>
    .long    5
    .long    5
    .long    9
    .long    6
    .long    3
    .long    4
    .skip 3240
v3:                                 # <array 3 of <array 8 of <array 5 of <array 5 of <array 6 of <int>>>>>>
    .long    5
    .long    3
    .long    8
    .long    5
    .long    5
    .long    6
    .skip 14400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
