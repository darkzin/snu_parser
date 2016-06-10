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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 7 of <array 9 of <array 10 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 6 of <array 1 of <array 3 of <array 4 of <bool>>>>>>> %ebp+16 ]
    #    -36(%ebp)   4  [ $v3       <int> %ebp-36 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $886, %eax              #   1:     assign v3 <- 886
    movl    %eax, -36(%ebp)        
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    ReadInt                 #   5:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $50699, %eax            #   6:     add    t5 <- 50699, 74805
    movl    $74805, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     sub    t6 <- t5, 20501
    movl    $20501, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $6194, %eax             #   8:     div    t7 <- 6194, 33824
    movl    $33824, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   9:     if     t6 <= t7 goto 6
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_6                 
    jmp     l_f0_7                  #  10:     goto   7
l_f0_6:
    movl    $1, %eax                #  12:     assign t8 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_8                  #  13:     goto   8
l_f0_7:
    movl    $0, %eax                #  15:     assign t8 <- 0
    movb    %al, -29(%ebp)         
l_f0_8:
    movzbl  -29(%ebp), %eax         #  17:     return t8
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 7 of <array 7 of <array 9 of <array 10 of <array 3 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t13      <ptr(4) to <array 10 of <array 6 of <array 1 of <array 3 of <array 4 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t15      <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t16      <ptr(4) to <array 7 of <array 7 of <array 9 of <array 10 of <array 3 of <char>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t17      <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t4       <ptr(4) to <array 10 of <array 6 of <array 1 of <array 3 of <array 4 of <bool>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <ptr(4) to <array 10 of <array 6 of <array 1 of <array 3 of <array 4 of <bool>>>>>>> %ebp-48 ]
    #    -49(%ebp)   1  [ $t6       <bool> %ebp-49 ]
    #    -56(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <array 7 of <array 9 of <array 10 of <array 3 of <char>>>>>>> %ebp-56 ]
    #    -57(%ebp)   1  [ $t8       <bool> %ebp-57 ]
    #    -58(%ebp)   1  [ $t9       <bool> %ebp-58 ]
    #   -13312(%ebp)  13254  [ $v0       <array 7 of <array 7 of <array 9 of <array 10 of <array 3 of <char>>>>>> %ebp-13312 ]
    #   -14056(%ebp)  744  [ $v1       <array 10 of <array 6 of <array 1 of <array 3 of <array 4 of <bool>>>>>> %ebp-14056 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $14044, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3511, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-13312(%ebp)         # local array 'v0': 5 dimensions
    movl    $7,-13308(%ebp)         #   dimension 1: 7 elements
    movl    $7,-13304(%ebp)         #   dimension 2: 7 elements
    movl    $9,-13300(%ebp)         #   dimension 3: 9 elements
    movl    $10,-13296(%ebp)        #   dimension 4: 10 elements
    movl    $3,-13292(%ebp)         #   dimension 5: 3 elements
    movl    $5,-14056(%ebp)         # local array 'v1': 5 dimensions
    movl    $10,-14052(%ebp)        #   dimension 1: 10 elements
    movl    $6,-14048(%ebp)         #   dimension 2: 6 elements
    movl    $1,-14044(%ebp)         #   dimension 3: 1 elements
    movl    $3,-14040(%ebp)         #   dimension 4: 3 elements
    movl    $4,-14036(%ebp)         #   dimension 5: 4 elements

    # function body
    leal    -14056(%ebp), %eax      #   0:     &()    t4 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   1:     param  2 <- t4
    pushl   %eax                   
    jmp     l_f1_1                  #   2:     goto   1
    jmp     l_f1_1                  #   3:     goto   1
    leal    -14056(%ebp), %eax      #   4:     &()    t5 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   5:     param  2 <- t5
    pushl   %eax                   
    movl    $99, %eax               #   6:     if     99 = 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $1, %eax                #   9:     assign t6 <- 1
    movb    %al, -49(%ebp)         
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $0, %eax                #  12:     assign t6 <- 0
    movb    %al, -49(%ebp)         
l_f1_8:
    movzbl  -49(%ebp), %eax         #  14:     param  1 <- t6
    pushl   %eax                   
    leal    -13312(%ebp), %eax      #  15:     &()    t7 <- v0
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  16:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  17:     call   t8 <- f0
    addl    $12, %esp              
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #  18:     if     t8 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #  19:     goto   2
l_f1_1:
    movl    $1, %eax                #  21:     assign t9 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f1_3                  #  22:     goto   3
l_f1_2:
    movl    $0, %eax                #  24:     assign t9 <- 0
    movb    %al, -58(%ebp)         
l_f1_3:
    movzbl  -58(%ebp), %eax         #  26:     param  1 <- t9
    pushl   %eax                   
    leal    -13312(%ebp), %eax      #  27:     &()    t10 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  28:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  29:     call   t11 <- f0
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #  30:     call   t12 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  31:     return t12
    jmp     l_f1_exit              
l_f1_12_while_cond:
    movl    $100, %eax              #  33:     if     100 # 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_13_while_body     
    jmp     l_f1_11                 #  34:     goto   11
l_f1_13_while_body:
    leal    -14056(%ebp), %eax      #  36:     &()    t13 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     param  2 <- t13
    pushl   %eax                   
    movl    $44168, %eax            #  38:     mul    t14 <- 44168, 63602
    movl    $63602, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $32314, %eax            #  39:     if     32314 > t14 goto 16
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_16                
    jmp     l_f1_17                 #  40:     goto   17
l_f1_16:
    movl    $1, %eax                #  42:     assign t15 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_18                 #  43:     goto   18
l_f1_17:
    movl    $0, %eax                #  45:     assign t15 <- 0
    movb    %al, -29(%ebp)         
l_f1_18:
    movzbl  -29(%ebp), %eax         #  47:     param  1 <- t15
    pushl   %eax                   
    leal    -13312(%ebp), %eax      #  48:     &()    t16 <- v0
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  49:     param  0 <- t16
    pushl   %eax                   
    call    f0                      #  50:     call   t17 <- f0
    addl    $12, %esp              
    movb    %al, -37(%ebp)         
    jmp     l_f1_12_while_cond      #  51:     goto   12_while_cond
l_f1_11:

l_f1_exit:
    # epilogue
    addl    $14044, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -49(%ebp)   1  [ $v1       <char> %ebp-49 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     assign v1 <- 100
    movb    %al, -49(%ebp)         
    movl    $59862, %eax            #   1:     sub    t4 <- 59862, 71079
    movl    $71079, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     add    t5 <- t4, 80210
    movl    $80210, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     sub    t6 <- t5, 49808
    movl    $49808, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     add    t7 <- t6, 19239
    movl    $19239, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     sub    t8 <- t7, 73847
    movl    $73847, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     sub    t9 <- t8, 94283
    movl    $94283, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     add    t10 <- t9, 14928
    movl    $14928, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $19184, %eax            #   8:     add    t11 <- 19184, 86175
    movl    $86175, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   9:     if     t10 = t11 goto 2
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2                 
    jmp     l_f2_3                  #  10:     goto   3
l_f2_2:
    movl    $1, %eax                #  12:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_4                  #  13:     goto   4
l_f2_3:
    movl    $0, %eax                #  15:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f2_4:
    movzbl  -21(%ebp), %eax         #  17:     return t12
    jmp     l_f2_exit              
    movl    $97, %eax               #  18:     assign v1 <- 97
    movb    %al, -49(%ebp)         

l_f2_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
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
    movl    $97, %eax               #   0:     if     97 # 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $98, %eax               #   4:     if     98 <= 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    movl    $70297, %eax            #   9:     if     70297 # 10712 goto 9_if_true
    movl    $10712, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_9_if_true       
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  12:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_0                #  15:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #  18:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_14_while_cond:
    movl    $21321, %eax            #  20:     sub    t1 <- 21321, 74733
    movl    $74733, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $30435, %eax            #  21:     if     30435 < t1 goto 15_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  22:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  24:     goto   14_while_cond
l_test_13:
    movl    $0, %eax                #  26:     assign v0 <- 0
    movb    %al, v0                
    movl    $92888, %eax            #  27:     add    t2 <- 92888, 52474
    movl    $52474, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     sub    t3 <- t2, 61536
    movl    $61536, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     assign v1 <- t3
    movl    %eax, v1               

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
