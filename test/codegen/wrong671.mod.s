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
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t10
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   2:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t11
    jmp     l_f0_exit              
    movl    $4085, %eax             #   4:     if     4085 >= 29354 goto 3_if_true
    movl    $29354, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   5:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $98, %eax               #  11:     if     98 < 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  12:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  14:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $99, %eax               #  17:     assign v3 <- 99
    movb    %al, 20(%ebp)          
    movl    $97, %eax               #  18:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_2                  #  19:     goto   2
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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t15      <char> %ebp-30 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 8 of <array 2 of <array 3 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 5 of <array 7 of <array 1 of <array 3 of <bool>>>>>>> %ebp+16 ]

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
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   1:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     param  0 <- t10
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
l_f1_3_while_cond:
    movl    $97, %eax               #   5:     param  3 <- 97
    pushl   %eax                   
    movl    $93865, %eax            #   6:     mul    t11 <- 93865, 45474
    movl    $45474, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     div    t12 <- t11, 18355
    movl    $18355, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     mul    t13 <- t12, 57316
    movl    $57316, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     param  2 <- t13
    pushl   %eax                   
    movl    $53987, %eax            #  10:     if     53987 < 217 goto 6
    movl    $217, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_6                 
    jmp     l_f1_7                  #  11:     goto   7
l_f1_6:
    movl    $1, %eax                #  13:     assign t14 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_8                  #  14:     goto   8
l_f1_7:
    movl    $0, %eax                #  16:     assign t14 <- 0
    movb    %al, -29(%ebp)         
l_f1_8:
    movzbl  -29(%ebp), %eax         #  18:     param  1 <- t14
    pushl   %eax                   
    movl    $97, %eax               #  19:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  20:     call   t15 <- f0
    addl    $16, %esp              
    movb    %al, -30(%ebp)         
    movl    $97, %eax               #  21:     if     97 < t15 goto 4_while_body
    movzbl  -30(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_4_while_body      
    jmp     l_f1_2                  #  22:     goto   2
l_f1_4_while_body:
    jmp     l_f1_10                 #  24:     goto   10
l_f1_10:
    jmp     l_f1_3_while_cond       #  26:     goto   3_while_cond
l_f1_2:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 1 of <array 5 of <array 7 of <array 1 of <array 3 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 8 of <array 8 of <array 2 of <array 3 of <array 8 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #   -12368(%ebp)  12312  [ $v2       <array 8 of <array 8 of <array 2 of <array 3 of <array 8 of <int>>>>>> %ebp-12368 ]
    #   -12500(%ebp)  129  [ $v3       <array 1 of <array 5 of <array 7 of <array 1 of <array 3 of <bool>>>>>> %ebp-12500 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12488, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3122, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-12368(%ebp)         # local array 'v2': 5 dimensions
    movl    $8,-12364(%ebp)         #   dimension 1: 8 elements
    movl    $8,-12360(%ebp)         #   dimension 2: 8 elements
    movl    $2,-12356(%ebp)         #   dimension 3: 2 elements
    movl    $3,-12352(%ebp)         #   dimension 4: 3 elements
    movl    $8,-12348(%ebp)         #   dimension 5: 8 elements
    movl    $5,-12500(%ebp)         # local array 'v3': 5 dimensions
    movl    $1,-12496(%ebp)         #   dimension 1: 1 elements
    movl    $5,-12492(%ebp)         #   dimension 2: 5 elements
    movl    $7,-12488(%ebp)         #   dimension 3: 7 elements
    movl    $1,-12484(%ebp)         #   dimension 4: 1 elements
    movl    $3,-12480(%ebp)         #   dimension 5: 3 elements

    # function body
    leal    -12500(%ebp), %eax      #   0:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t10
    pushl   %eax                   
    leal    -12368(%ebp), %eax      #   2:     &()    t11 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t11
    pushl   %eax                   
    movl    $24748, %eax            #   4:     div    t12 <- 24748, 33979
    movl    $33979, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     div    t13 <- t12, 49772
    movl    $49772, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     div    t14 <- t13, 49492
    movl    $49492, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     mul    t15 <- t14, 63206
    movl    $63206, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     div    t16 <- t15, 74103
    movl    $74103, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     mul    t17 <- t16, 1053
    movl    $1053, %ebx            
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  10:     add    t18 <- t17, 1214
    movl    $1214, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  11:     add    t19 <- t18, 14184
    movl    $14184, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  12:     add    t20 <- t19, 46438
    movl    $46438, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  13:     param  0 <- t20
    pushl   %eax                   
    call    f1                      #  14:     call   f1
    addl    $12, %esp              
l_f2_2_while_cond:
    jmp     l_f2_1                  #  16:     goto   1
    jmp     l_f2_1                  #  17:     goto   1
    jmp     l_f2_1                  #  18:     goto   1
    jmp     l_f2_1                  #  19:     goto   1
    jmp     l_f2_2_while_cond       #  20:     goto   2_while_cond
l_f2_1:
l_f2_8_while_cond:
    movl    $69089, %eax            #  23:     assign v0 <- 69089
    movl    %eax, 8(%ebp)          
    jmp     l_f2_8_while_cond       #  24:     goto   8_while_cond

l_f2_exit:
    # epilogue
    addl    $12488, %esp            # remove locals
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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t5       <char> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t8       <char> %ebp-27 ]
    #    -28(%ebp)   1  [ $t9       <bool> %ebp-28 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_4_while_cond:
    jmp     l_test_4_while_cond     #   3:     goto   4_while_cond
l_test_7_while_cond:
    movl    $29277, %eax            #   5:     if     29277 = 1286 goto 8_while_body
    movl    $1286, %ebx            
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #   6:     goto   6
l_test_8_while_body:
    movl    $21799, %eax            #   8:     param  0 <- 21799
    pushl   %eax                   
    call    WriteInt                #   9:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_7_while_cond     #  10:     goto   7_while_cond
l_test_6:
    jmp     l_test_1_while_cond     #  12:     goto   1_while_cond
l_test_0:
l_test_12_while_cond:
    call    ReadInt                 #  15:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $11970, %eax            #  16:     if     11970 >= t0 goto 13_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_13_while_body   
    jmp     l_test_11               #  17:     goto   11
l_test_13_while_body:
    call    dummyINTfunc            #  19:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_12_while_cond    #  20:     goto   12_while_cond
l_test_11:
    call    dummyCHARfunc           #  22:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #  23:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  24:     if     t3 <= 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_18_if_true      
    jmp     l_test_19_if_false      #  25:     goto   19_if_false
l_test_18_if_true:
l_test_22_while_cond:
    movl    $98, %eax               #  28:     if     98 <= 99 goto 23_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_23_while_body   
    jmp     l_test_21               #  29:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  31:     goto   22_while_cond
l_test_21:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  35:     call   t4 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    jmp     l_test_28               #  36:     goto   28
l_test_28:
    movl    $20822, %eax            #  38:     if     20822 > 55147 goto 32_if_true
    movl    $55147, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_32_if_true      
    jmp     l_test_33_if_false      #  39:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_31               #  41:     goto   31
l_test_33_if_false:
l_test_31:
    call    dummyCHARfunc           #  44:     call   t5 <- dummyCHARfunc
    movb    %al, -24(%ebp)         
    jmp     l_test_17               #  45:     goto   17
l_test_19_if_false:
l_test_17:
    movl    $99, %eax               #  48:     param  3 <- 99
    pushl   %eax                   
    movl    $94155, %eax            #  49:     param  2 <- 94155
    pushl   %eax                   
    movl    $98, %eax               #  50:     if     98 <= 97 goto 37
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_37              
    jmp     l_test_38               #  51:     goto   38
l_test_37:
    movl    $1, %eax                #  53:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_39               #  54:     goto   39
l_test_38:
    movl    $0, %eax                #  56:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_test_39:
    movzbl  -25(%ebp), %eax         #  58:     param  1 <- t6
    pushl   %eax                   
    call    dummyCHARfunc           #  59:     call   t7 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  60:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  61:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -27(%ebp)         
    call    dummyBOOLfunc           #  62:     call   t9 <- dummyBOOLfunc
    movb    %al, -28(%ebp)         

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
