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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 67 of <array 43 of <array 45 of <array 22 of <array 60 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -37(%ebp)   1  [ $v2       <char> %ebp-37 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t4
    movb    %al, -37(%ebp)         
    movl    $90182, %eax            #   2:     div    t5 <- 90182, 9506
    movl    $9506, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $88716, %eax            #   3:     sub    t6 <- 88716, t5
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     return t6
    jmp     l_f0_exit              
    movl    $93347, %eax            #   5:     div    t7 <- 93347, 67589
    movl    $67589, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     div    t8 <- t7, 8933
    movl    $8933, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     div    t9 <- t8, 81964
    movl    $81964, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     return t9
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 67 of <array 43 of <array 45 of <array 22 of <array 60 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $v0       <bool> %ebp-30 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]
    #   -171131460(%ebp)  171131424  [ $v2       <array 67 of <array 43 of <array 45 of <array 22 of <array 60 of <bool>>>>>> %ebp-171131460 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $171131448, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $42782862, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-171131460(%ebp)     # local array 'v2': 5 dimensions
    movl    $67,-171131456(%ebp)    #   dimension 1: 67 elements
    movl    $43,-171131452(%ebp)    #   dimension 2: 43 elements
    movl    $45,-171131448(%ebp)    #   dimension 3: 45 elements
    movl    $22,-171131444(%ebp)    #   dimension 4: 22 elements
    movl    $60,-171131440(%ebp)    #   dimension 5: 60 elements

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $100, %eax              #   1:     return 100
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   3:     if     100 >= 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #   4:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #   6:     goto   9
l_f1_11_if_false:
l_f1_9:
l_f1_14_while_cond:
    jmp     l_f1_14_while_cond      #  10:     goto   14_while_cond
    jmp     l_f1_4                  #  11:     goto   4
l_f1_4:
    jmp     l_f1_0                  #  13:     goto   0
l_f1_0:
    jmp     l_f1_18_if_false        #  15:     goto   18_if_false
    movl    $1, %eax                #  16:     assign v0 <- 1
    movb    %al, -30(%ebp)         
    movl    $98, %eax               #  17:     return 98
    jmp     l_f1_exit              
    movl    $98, %eax               #  18:     return 98
    jmp     l_f1_exit              
l_f1_23_while_cond:
    movl    $35131, %eax            #  20:     if     35131 = 39270 goto 24_while_body
    movl    $39270, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_24_while_body     
    jmp     l_f1_22                 #  21:     goto   22
l_f1_24_while_body:
    jmp     l_f1_23_while_cond      #  23:     goto   23_while_cond
l_f1_22:
    movl    $34361, %eax            #  25:     assign v1 <- 34361
    movl    %eax, -36(%ebp)        
    call    dummyBOOLfunc           #  26:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f1_29_while_cond:
    movl    $88513, %eax            #  28:     if     88513 <= 2611 goto 30_while_body
    movl    $2611, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_30_while_body     
    jmp     l_f1_28                 #  29:     goto   28
l_f1_30_while_body:
    jmp     l_f1_29_while_cond      #  31:     goto   29_while_cond
l_f1_28:
    movl    $19909, %eax            #  33:     sub    t6 <- 19909, 53498
    movl    $53498, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  34:     param  1 <- t6
    pushl   %eax                   
    leal    -171131460(%ebp), %eax  #  35:     &()    t7 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  36:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  37:     call   t8 <- f0
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    jmp     l_f1_16                 #  38:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_38                 #  41:     goto   38
    movl    $1, %eax                #  42:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_39                 #  43:     goto   39
l_f1_38:
    movl    $0, %eax                #  45:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f1_39:
    movl    $0, %eax                #  47:     if     0 = t9 goto 34_if_true
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_34_if_true        
    jmp     l_f1_35_if_false        #  48:     goto   35_if_false
l_f1_34_if_true:
    movl    $99, %eax               #  50:     if     99 <= 100 goto 42_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_42_if_true        
    jmp     l_f1_43_if_false        #  51:     goto   43_if_false
l_f1_42_if_true:
    jmp     l_f1_41                 #  53:     goto   41
l_f1_43_if_false:
l_f1_41:
    jmp     l_f1_33                 #  56:     goto   33
l_f1_35_if_false:
l_f1_33:

l_f1_exit:
    # epilogue
    addl    $171131448, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -25(%ebp)   1  [ $v1       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]

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
    jmp     l_f2_1                  #   0:     goto   1
    movl    $99, %eax               #   1:     if     99 >= 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t4
    movb    %al, -25(%ebp)         
    call    f1                      #  10:     call   t5 <- f1
    movb    %al, -14(%ebp)         
    movl    $55025, %eax            #  11:     add    t6 <- 55025, 63651
    movl    $63651, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     sub    t7 <- t6, 7637
    movl    $7637, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3224, %eax             #  13:     if     3224 >= t7 goto 8_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #  14:     goto   9_if_false
l_f2_8_if_true:
    movl    $62414, %eax            #  16:     if     62414 > 75726 goto 12_if_true
    movl    $75726, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  17:     goto   13_if_false
l_f2_12_if_true:
    jmp     l_f2_11                 #  19:     goto   11
l_f2_13_if_false:
l_f2_11:
    movl    $1, %eax                #  22:     assign v1 <- 1
    movb    %al, -25(%ebp)         
    movl    $9977, %eax             #  23:     assign v2 <- 9977
    movl    %eax, -32(%ebp)        
    movl    $97, %eax               #  24:     if     97 >= 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  25:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  27:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_7                  #  30:     goto   7
l_f2_9_if_false:
l_f2_7:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     assign v0 <- t1
    movb    %al, v0                
l_test_3_while_cond:
    jmp     l_test_2                #   4:     goto   2
    movl    $25656, %eax            #   5:     if     25656 >= 45064 goto 6
    movl    $45064, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_6               
    jmp     l_test_7                #   6:     goto   7
l_test_6:
    movl    $1, %eax                #   8:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_8                #   9:     goto   8
l_test_7:
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_8:
    movzbl  -18(%ebp), %eax         #  13:     assign v1 <- t2
    movb    %al, v1                
    call    dummyINTfunc            #  14:     call   t3 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_exit            
    movl    $15867, %eax            #  16:     assign v2 <- 15867
    movl    %eax, v2               
l_test_14_while_cond:
    movl    $65852, %eax            #  18:     if     65852 < 7426 goto 15_while_body
    movl    $7426, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  19:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  21:     goto   14_while_cond
l_test_13:
    jmp     l_test_3_while_cond     #  23:     goto   3_while_cond
l_test_2:

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
