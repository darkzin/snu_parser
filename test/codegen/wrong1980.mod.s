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
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t5       <char> %ebp-73 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 98 of <array 7 of <array 43 of <array 22 of <array 65 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 94 of <array 94 of <array 97 of <array 43 of <array 16 of <char>>>>>>> %ebp+12 ]
    #    -93(%ebp)   1  [ $v4       <char> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    movl    $40814, %eax            #   1:     sub    t6 <- 40814, 55393
    movl    $55393, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   4:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #   5:     mul    t8 <- t6, t7
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   6:     add    t9 <- t8, 94739
    movl    $94739, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -92(%ebp), %eax         #  10:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t12 <- t11, 56532
    movl    $56532, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t15 <- t14, 73819
    movl    $73819, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  20:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     add    t18 <- t17, 39940
    movl    $39940, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  24:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  25:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t22 <- v3, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -73(%ebp), %eax         #  27:     assign @t22 <- t5
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_2_while_cond:
    call    dummyINTfunc            #  29:     call   t23 <- dummyINTfunc
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  30:     if     t23 = 76614 goto 3_while_body
    movl    $76614, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #  31:     goto   1
l_f0_3_while_body:
    movl    $70919, %eax            #  33:     if     70919 > 37644 goto 6_if_true
    movl    $37644, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  34:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #  36:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_2_while_cond       #  39:     goto   2_while_cond
l_f0_1:
    movl    $19418, %eax            #  41:     add    t24 <- 19418, 85989
    movl    $85989, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  42:     if     t24 > 89002 goto 10_if_true
    movl    $89002, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  43:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  45:     goto   9
l_f0_11_if_false:
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 94 of <array 94 of <array 97 of <array 43 of <array 16 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 98 of <array 7 of <array 43 of <array 22 of <array 65 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $v2       <int> %ebp-44 ]
    #   -42182208(%ebp)  42182164  [ $v3       <array 98 of <array 7 of <array 43 of <array 22 of <array 65 of <bool>>>>>> %ebp-42182208 ]
    #   -631861528(%ebp)  589679320  [ $v4       <array 94 of <array 94 of <array 97 of <array 43 of <array 16 of <char>>>>>> %ebp-631861528 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $631861516, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $157965379, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-42182208(%ebp)      # local array 'v3': 5 dimensions
    movl    $98,-42182204(%ebp)     #   dimension 1: 98 elements
    movl    $7,-42182200(%ebp)      #   dimension 2: 7 elements
    movl    $43,-42182196(%ebp)     #   dimension 3: 43 elements
    movl    $22,-42182192(%ebp)     #   dimension 4: 22 elements
    movl    $65,-42182188(%ebp)     #   dimension 5: 65 elements
    movl    $5,-631861528(%ebp)     # local array 'v4': 5 dimensions
    movl    $94,-631861524(%ebp)    #   dimension 1: 94 elements
    movl    $94,-631861520(%ebp)    #   dimension 2: 94 elements
    movl    $97,-631861516(%ebp)    #   dimension 3: 97 elements
    movl    $43,-631861512(%ebp)    #   dimension 4: 43 elements
    movl    $16,-631861508(%ebp)    #   dimension 5: 16 elements

    # function body
l_f1_1_while_cond:
    leal    -631861528(%ebp), %eax  #   1:     &()    t5 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     param  1 <- t5
    pushl   %eax                   
    leal    -42182208(%ebp), %eax   #   3:     &()    t6 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   5:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   6:     if     t7 # 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_while_body:
    movl    $30716, %eax            #   9:     assign v2 <- 30716
    movl    %eax, -44(%ebp)        
    jmp     l_f1_1_while_cond       #  10:     goto   1_while_cond
l_f1_0:
l_f1_6_while_cond:
    movl    $16493, %eax            #  13:     div    t8 <- 16493, 34889
    movl    $34889, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     if     t8 < 36889 goto 7_while_body
    movl    $36889, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7_while_body      
    jmp     l_f1_5                  #  15:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  17:     goto   6_while_cond
l_f1_5:
    movl    $17484, %eax            #  19:     div    t9 <- 17484, 86710
    movl    $86710, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  20:     add    t10 <- t9, 8054
    movl    $8054, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     sub    t11 <- t10, 37735
    movl    $37735, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     return t11
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $631861516, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 94 of <array 94 of <array 97 of <array 43 of <array 16 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 98 of <array 7 of <array 43 of <array 22 of <array 65 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t9       <bool> %ebp-26 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #   -42182192(%ebp)  42182164  [ $v5       <array 98 of <array 7 of <array 43 of <array 22 of <array 65 of <bool>>>>>> %ebp-42182192 ]
    #   -631861512(%ebp)  589679320  [ $v6       <array 94 of <array 94 of <array 97 of <array 43 of <array 16 of <char>>>>>> %ebp-631861512 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $631861500, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $157965375, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-42182192(%ebp)      # local array 'v5': 5 dimensions
    movl    $98,-42182188(%ebp)     #   dimension 1: 98 elements
    movl    $7,-42182184(%ebp)      #   dimension 2: 7 elements
    movl    $43,-42182180(%ebp)     #   dimension 3: 43 elements
    movl    $22,-42182176(%ebp)     #   dimension 4: 22 elements
    movl    $65,-42182172(%ebp)     #   dimension 5: 65 elements
    movl    $5,-631861512(%ebp)     # local array 'v6': 5 dimensions
    movl    $94,-631861508(%ebp)    #   dimension 1: 94 elements
    movl    $94,-631861504(%ebp)    #   dimension 2: 94 elements
    movl    $97,-631861500(%ebp)    #   dimension 3: 97 elements
    movl    $43,-631861496(%ebp)    #   dimension 4: 43 elements
    movl    $16,-631861492(%ebp)    #   dimension 5: 16 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t5
    jmp     l_f2_exit              
    leal    -631861512(%ebp), %eax  #   2:     &()    t6 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t6
    pushl   %eax                   
    leal    -42182192(%ebp), %eax   #   4:     &()    t7 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #   6:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   7:     param  0 <- t8
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
l_f2_3_while_cond:
    jmp     l_f2_6                  #  10:     goto   6
l_f2_6:
    movl    $1, %eax                #  12:     assign t9 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_8                  #  13:     goto   8
    movl    $0, %eax                #  14:     assign t9 <- 0
    movb    %al, -26(%ebp)         
l_f2_8:
    movzbl  -26(%ebp), %eax         #  16:     if     t9 # 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_4_while_body      
    jmp     l_f2_2                  #  17:     goto   2
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #  19:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $631861500, %esp        # remove locals
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
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
    movl    $17944, %eax            #   0:     div    t0 <- 17944, 82564
    movl    $82564, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 91029
    movl    $91029, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 24704
    movl    $24704, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v0 <- t2
    movl    %eax, v0               
    jmp     l_test_3_if_false       #   4:     goto   3_if_false
    movl    $98, %eax               #   5:     if     98 <= 99 goto 5
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_5               
    jmp     l_test_6                #   6:     goto   6
l_test_5:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_7                #   9:     goto   7
l_test_6:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_7:
    movzbl  -25(%ebp), %eax         #  13:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_1                #  14:     goto   1
l_test_3_if_false:
l_test_1:
l_test_10_while_cond:
    movl    $100, %eax              #  18:     if     100 < 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_11_while_body   
    jmp     l_test_9                #  19:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  21:     goto   10_while_cond
l_test_9:
    movl    $97775, %eax            #  23:     add    t4 <- 97775, 47925
    movl    $47925, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     assign v0 <- t4
    movl    %eax, v0               
    movl    $97, %eax               #  25:     assign v2 <- 97
    movb    %al, v2                
l_test_16_while_cond:
    movl    $98, %eax               #  27:     if     98 = 100 goto 19_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_19_if_true      
    jmp     l_test_20_if_false      #  28:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  30:     goto   18
l_test_20_if_false:
l_test_18:
    movl    $99, %eax               #  33:     assign v2 <- 99
    movb    %al, v2                
    jmp     l_test_16_while_cond    #  34:     goto   16_while_cond

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
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
