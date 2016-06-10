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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]

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
l_f0_1_while_cond:
    movl    $21399, %eax            #   1:     sub    t6 <- 21399, 63325
    movl    $63325, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     add    t7 <- t6, 63302
    movl    $63302, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $56521, %eax            #   3:     sub    t8 <- 56521, 79996
    movl    $79996, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     sub    t9 <- t8, 40075
    movl    $40075, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #   5:     if     t7 < t9 goto 2_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   8:     goto   1_while_cond
l_f0_0:
    movl    $22028, %eax            #  10:     if     22028 <= 32160 goto 5_if_true
    movl    $32160, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #  11:     goto   6_if_false
l_f0_5_if_true:
    movl    $96308, %eax            #  13:     if     96308 < 83810 goto 9_if_true
    movl    $83810, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  14:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  16:     goto   8
l_f0_10_if_false:
l_f0_8:
l_f0_13_while_cond:
    jmp     l_f0_12                 #  20:     goto   12
    jmp     l_f0_13_while_cond      #  21:     goto   13_while_cond
l_f0_12:
    call    dummyBOOLfunc           #  23:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  24:     if     t10 = 1 goto 16_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  25:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_15                 #  27:     goto   15
l_f0_17_if_false:
l_f0_15:
    jmp     l_f0_4                  #  30:     goto   4
l_f0_6_if_false:
l_f0_4:
    call    ReadInt                 #  33:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 7 of <array 9 of <array 9 of <array 9 of <bool>>>>>>> %ebp+8 ]

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
    movl    $89641, %eax            #   0:     mul    t6 <- 89641, 31391
    movl    $31391, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     return t6
    jmp     l_f1_exit              
    movl    $59905, %eax            #   2:     mul    t7 <- 59905, 6916
    movl    $6916, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     div    t8 <- t7, 30537
    movl    $30537, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t9 <- t8, 20785
    movl    $20785, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     add    t10 <- t9, 16555
    movl    $16555, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $38374, %eax            #   6:     if     38374 >= t10 goto 2_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   7:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $5567, %eax             #  12:     if     5567 # 75646 goto 6_if_true
    movl    $75646, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  13:     goto   7_if_false
l_f1_6_if_true:
    movl    $93856, %eax            #  15:     return 93856
    jmp     l_f1_exit              
    jmp     l_f1_5                  #  16:     goto   5
l_f1_7_if_false:
l_f1_5:

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
    #    -16(%ebp)   4  [ $t6       <ptr(4) to <array 6 of <array 7 of <array 9 of <array 9 of <array 9 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <char> %ebp-25 ]
    #   -30668(%ebp)  30642  [ $v1       <array 6 of <array 7 of <array 9 of <array 9 of <array 9 of <bool>>>>>> %ebp-30668 ]
    #   -30669(%ebp)   1  [ $v2       <char> %ebp-30669 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $30660, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7665, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-30668(%ebp)         # local array 'v1': 5 dimensions
    movl    $6,-30664(%ebp)         #   dimension 1: 6 elements
    movl    $7,-30660(%ebp)         #   dimension 2: 7 elements
    movl    $9,-30656(%ebp)         #   dimension 3: 9 elements
    movl    $9,-30652(%ebp)         #   dimension 4: 9 elements
    movl    $9,-30648(%ebp)         #   dimension 5: 9 elements

    # function body
    leal    -30668(%ebp), %eax      #   0:     &()    t6 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #   2:     call   t7 <- f1
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t8 <- t7, 10437
    movl    $10437, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     return t8
    jmp     l_f2_exit              
l_f2_2_while_cond:
    jmp     l_f2_3_while_body       #   6:     goto   3_while_body
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_while_body:
    movl    $15633, %eax            #   9:     return 15633
    jmp     l_f2_exit              
    movl    $97, %eax               #  10:     assign v2 <- 97
    movb    %al, -30669(%ebp)      
    jmp     l_f2_2_while_cond       #  11:     goto   2_while_cond
l_f2_1:
l_f2_8_while_cond:
l_f2_11_while_cond:
    movl    $74879, %eax            #  15:     if     74879 # 54631 goto 12_while_body
    movl    $54631, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_12_while_body     
    jmp     l_f2_10                 #  16:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  18:     goto   11_while_cond
l_f2_10:
l_f2_15_while_cond:
    movl    $52633, %eax            #  21:     if     52633 < 63363 goto 16_while_body
    movl    $63363, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_16_while_body     
    jmp     l_f2_14                 #  22:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  24:     goto   15_while_cond
l_f2_14:
    call    dummyCHARfunc           #  26:     call   t9 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    jmp     l_f2_8_while_cond       #  27:     goto   8_while_cond

l_f2_exit:
    # epilogue
    addl    $30660, %esp            # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 86
    movl    $86, %ebx              
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 52027
    movl    $52027, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     mul    t3 <- t2, 82726
    movl    $82726, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v0 <- t3
    movl    %eax, v0               
    jmp     l_test_3_if_false       #   5:     goto   3_if_false
    jmp     l_test_exit            
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
    jmp     l_test_10_if_false      #   9:     goto   10_if_false
    jmp     l_test_8                #  10:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_1                #  13:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
l_test_16_while_cond:
    jmp     l_test_15               #  18:     goto   15
    jmp     l_test_16_while_cond    #  19:     goto   16_while_cond
l_test_15:
    movl    $70378, %eax            #  21:     if     70378 >= 12716 goto 19
    movl    $12716, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_19              
    jmp     l_test_20               #  22:     goto   20
l_test_19:
    movl    $1, %eax                #  24:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_21               #  25:     goto   21
l_test_20:
    movl    $0, %eax                #  27:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_21:
    movzbl  -29(%ebp), %eax         #  29:     assign v1 <- t4
    movb    %al, v1                
    jmp     l_test_12               #  30:     goto   12
l_test_12:
    movl    $9361, %eax             #  32:     if     9361 >= 45338 goto 24
    movl    $45338, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_24              
    jmp     l_test_25               #  33:     goto   25
l_test_24:
    movl    $1, %eax                #  35:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_26               #  36:     goto   26
l_test_25:
    movl    $0, %eax                #  38:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_test_26:
    movzbl  -30(%ebp), %eax         #  40:     assign v1 <- t5
    movb    %al, v1                

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
