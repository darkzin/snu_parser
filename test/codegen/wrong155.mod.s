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
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 8 of <array 5 of <array 4 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 2 of <array 4 of <array 10 of <array 2 of <char>>>>>>> %ebp+12 ]
    #    -44(%ebp)   4  [ $v3       <int> %ebp-44 ]

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
    movl    $98792, %eax            #   0:     sub    t5 <- 98792, 9838
    movl    $9838, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     add    t6 <- t5, 13264
    movl    $13264, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $51370, %eax            #   2:     div    t7 <- 51370, t6
    movl    -28(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
l_f0_2_while_cond:
    movl    $98, %eax               #   6:     if     98 > 99 goto 5
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_5                 
    jmp     l_f0_6                  #   7:     goto   6
l_f0_5:
    movl    $1, %eax                #   9:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_7                  #  10:     goto   7
l_f0_6:
    movl    $0, %eax                #  12:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f0_7:
    movl    $1, %eax                #  14:     if     1 # t8 goto 3_while_body
    movzbl  -33(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_3_while_body      
    jmp     l_f0_1                  #  15:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  17:     goto   2_while_cond
l_f0_1:
    movl    $81826, %eax            #  19:     sub    t9 <- 81826, 94711
    movl    $94711, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  20:     sub    t10 <- t9, 89925
    movl    $89925, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     add    t11 <- t10, 45804
    movl    $45804, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     assign v3 <- t11
    movl    %eax, -44(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 7 of <array 8 of <array 5 of <array 4 of <array 6 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t9       <ptr(4) to <array 1 of <array 2 of <array 4 of <array 10 of <array 2 of <char>>>>>>> %ebp-36 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 5 of <array 9 of <array 3 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 10 of <array 7 of <array 6 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 10 of <array 7 of <array 10 of <array 1 of <array 6 of <int>>>>>>> %ebp+20 ]
    #   -26940(%ebp)  26904  [ $v5       <array 7 of <array 8 of <array 5 of <array 4 of <array 6 of <int>>>>>> %ebp-26940 ]
    #   -27124(%ebp)  184  [ $v6       <array 1 of <array 2 of <array 4 of <array 10 of <array 2 of <char>>>>>> %ebp-27124 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $27112, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6778, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-26940(%ebp)         # local array 'v5': 5 dimensions
    movl    $7,-26936(%ebp)         #   dimension 1: 7 elements
    movl    $8,-26932(%ebp)         #   dimension 2: 8 elements
    movl    $5,-26928(%ebp)         #   dimension 3: 5 elements
    movl    $4,-26924(%ebp)         #   dimension 4: 4 elements
    movl    $6,-26920(%ebp)         #   dimension 5: 6 elements
    movl    $5,-27124(%ebp)         # local array 'v6': 5 dimensions
    movl    $1,-27120(%ebp)         #   dimension 1: 1 elements
    movl    $2,-27116(%ebp)         #   dimension 2: 2 elements
    movl    $4,-27112(%ebp)         #   dimension 3: 4 elements
    movl    $10,-27108(%ebp)        #   dimension 4: 10 elements
    movl    $2,-27104(%ebp)         #   dimension 5: 2 elements

    # function body
    movl    $98, %eax               #   0:     return 98
    jmp     l_f1_exit              
    movl    $78553, %eax            #   1:     add    t5 <- 78553, 86653
    movl    $86653, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t6 <- t5, 24448
    movl    $24448, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t7 <- t6, 85772
    movl    $85772, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     if     t7 < 32962 goto 2
    movl    $32962, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2                 
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $1, %eax                #   7:     assign t8 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_4                  #   8:     goto   4
l_f1_3:
    movl    $0, %eax                #  10:     assign t8 <- 0
    movb    %al, -29(%ebp)         
l_f1_4:
    movzbl  -29(%ebp), %eax         #  12:     assign v1 <- t8
    movb    %al, 8(%ebp)           
    leal    -27124(%ebp), %eax      #  13:     &()    t9 <- v6
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     param  1 <- t9
    pushl   %eax                   
    leal    -26940(%ebp), %eax      #  15:     &()    t10 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  17:     call   f0
    addl    $8, %esp               

l_f1_exit:
    # epilogue
    addl    $27112, %esp            # remove locals
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
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 2 of <array 4 of <array 10 of <array 2 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <array 8 of <array 5 of <array 4 of <array 6 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <ptr(4) to <array 10 of <array 7 of <array 10 of <array 1 of <array 6 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <ptr(4) to <array 6 of <array 10 of <array 7 of <array 6 of <array 3 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <ptr(4) to <array 10 of <array 5 of <array 9 of <array 3 of <array 3 of <int>>>>>>> %ebp-36 ]
    #   -26940(%ebp)  26904  [ $v1       <array 7 of <array 8 of <array 5 of <array 4 of <array 6 of <int>>>>>> %ebp-26940 ]
    #   -27124(%ebp)  184  [ $v2       <array 1 of <array 2 of <array 4 of <array 10 of <array 2 of <char>>>>>> %ebp-27124 ]
    #   -43348(%ebp)  16224  [ $v3       <array 10 of <array 5 of <array 9 of <array 3 of <array 3 of <int>>>>>> %ebp-43348 ]
    #   -50932(%ebp)  7584  [ $v4       <array 6 of <array 10 of <array 7 of <array 6 of <array 3 of <bool>>>>>> %ebp-50932 ]
    #   -67756(%ebp)  16824  [ $v5       <array 10 of <array 7 of <array 10 of <array 1 of <array 6 of <int>>>>>> %ebp-67756 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $67744, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $16936, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-26940(%ebp)         # local array 'v1': 5 dimensions
    movl    $7,-26936(%ebp)         #   dimension 1: 7 elements
    movl    $8,-26932(%ebp)         #   dimension 2: 8 elements
    movl    $5,-26928(%ebp)         #   dimension 3: 5 elements
    movl    $4,-26924(%ebp)         #   dimension 4: 4 elements
    movl    $6,-26920(%ebp)         #   dimension 5: 6 elements
    movl    $5,-27124(%ebp)         # local array 'v2': 5 dimensions
    movl    $1,-27120(%ebp)         #   dimension 1: 1 elements
    movl    $2,-27116(%ebp)         #   dimension 2: 2 elements
    movl    $4,-27112(%ebp)         #   dimension 3: 4 elements
    movl    $10,-27108(%ebp)        #   dimension 4: 10 elements
    movl    $2,-27104(%ebp)         #   dimension 5: 2 elements
    movl    $5,-43348(%ebp)         # local array 'v3': 5 dimensions
    movl    $10,-43344(%ebp)        #   dimension 1: 10 elements
    movl    $5,-43340(%ebp)         #   dimension 2: 5 elements
    movl    $9,-43336(%ebp)         #   dimension 3: 9 elements
    movl    $3,-43332(%ebp)         #   dimension 4: 3 elements
    movl    $3,-43328(%ebp)         #   dimension 5: 3 elements
    movl    $5,-50932(%ebp)         # local array 'v4': 5 dimensions
    movl    $6,-50928(%ebp)         #   dimension 1: 6 elements
    movl    $10,-50924(%ebp)        #   dimension 2: 10 elements
    movl    $7,-50920(%ebp)         #   dimension 3: 7 elements
    movl    $6,-50916(%ebp)         #   dimension 4: 6 elements
    movl    $3,-50912(%ebp)         #   dimension 5: 3 elements
    movl    $5,-67756(%ebp)         # local array 'v5': 5 dimensions
    movl    $10,-67752(%ebp)        #   dimension 1: 10 elements
    movl    $7,-67748(%ebp)         #   dimension 2: 7 elements
    movl    $10,-67744(%ebp)        #   dimension 3: 10 elements
    movl    $1,-67740(%ebp)         #   dimension 4: 1 elements
    movl    $6,-67736(%ebp)         #   dimension 5: 6 elements

    # function body
    leal    -27124(%ebp), %eax      #   0:     &()    t5 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     param  1 <- t5
    pushl   %eax                   
    leal    -26940(%ebp), %eax      #   2:     &()    t6 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   4:     call   f0
    addl    $8, %esp               
    jmp     l_f2_2_if_true          #   5:     goto   2_if_true
    jmp     l_f2_3_if_false         #   6:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_1                  #   8:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_8_while_cond:
    leal    -67756(%ebp), %eax      #  12:     &()    t7 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     param  3 <- t7
    pushl   %eax                   
    leal    -50932(%ebp), %eax      #  14:     &()    t8 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     param  2 <- t8
    pushl   %eax                   
    leal    -43348(%ebp), %eax      #  16:     &()    t9 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     param  1 <- t9
    pushl   %eax                   
    movl    $70905, %eax            #  18:     if     70905 > 57561 goto 11
    movl    $57561, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_11                
    jmp     l_f2_12                 #  19:     goto   12
l_f2_11:
    movl    $1, %eax                #  21:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_13                 #  22:     goto   13
l_f2_12:
    movl    $0, %eax                #  24:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_13:
    movzbl  -13(%ebp), %eax         #  26:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  27:     call   t11 <- f1
    addl    $16, %esp              
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  28:     if     t11 >= 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_9_while_body      
    jmp     l_f2_7                  #  29:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  31:     goto   8_while_cond
l_f2_7:

l_f2_exit:
    # epilogue
    addl    $67744, %esp            # remove locals
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
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
    movl    $16860, %eax            #   0:     sub    t0 <- 16860, 74014
    movl    $74014, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    call    dummyBOOLfunc           #   2:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_3                #   3:     goto   3
    jmp     l_test_4                #   4:     goto   4
l_test_3:
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_5                #   7:     goto   5
l_test_4:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_5:
    movzbl  -18(%ebp), %eax         #  11:     assign v1 <- t2
    movb    %al, v1                
l_test_8_while_cond:
    jmp     l_test_7                #  13:     goto   7
l_test_12_while_cond:
    movl    $38369, %eax            #  15:     if     38369 = 43867 goto 13_while_body
    movl    $43867, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  16:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  18:     goto   12_while_cond
l_test_11:
    jmp     l_test_8_while_cond     #  20:     goto   8_while_cond
l_test_7:
l_test_16_while_cond:
    call    ReadInt                 #  23:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t4 <- t3, 16931
    movl    $16931, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $45973, %eax            #  25:     if     45973 # t4 goto 17_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_17_while_body   
    jmp     l_test_15               #  26:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  28:     goto   16_while_cond
l_test_15:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
