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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 2 of <array 10 of <array 9 of <array 1 of <char>>>>>>> %ebp+8 ]

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
    movl    $43041, %eax            #   0:     add    t2 <- 43041, 59866
    movl    $59866, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t3 <- t2, 59556
    movl    $59556, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t4 <- t3, 68909
    movl    $68909, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t4
    jmp     l_f0_exit              
    movl    $72676, %eax            #   4:     add    t5 <- 72676, 17927
    movl    $17927, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     sub    t6 <- t5, 25384
    movl    $25384, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_1                  #   7:     goto   1
l_f0_1:
    movl    $77103, %eax            #   9:     if     77103 # 57058 goto 6_if_true
    movl    $57058, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  10:     goto   7_if_false
l_f0_6_if_true:
l_f0_10_while_cond:
    jmp     l_f0_13                 #  13:     goto   13
l_f0_13:
    movl    $1, %eax                #  15:     assign t7 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_15                 #  16:     goto   15
    movl    $0, %eax                #  17:     assign t7 <- 0
    movb    %al, -33(%ebp)         
l_f0_15:
    movzbl  -33(%ebp), %eax         #  19:     if     t7 # 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_11_while_body     
    jmp     l_f0_9                  #  20:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  22:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_5                  #  24:     goto   5
l_f0_7_if_false:
l_f0_5:

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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t2       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t3       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t5       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <int> %ebp-60 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 7 of <array 9 of <array 3 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 9 of <array 3 of <array 4 of <array 9 of <bool>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $72522, %eax            #   0:     mul    t2 <- 72522, 74485
    movl    $74485, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     sub    t3 <- t2, 79515
    movl    $79515, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     add    t4 <- t3, 64028
    movl    $64028, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     sub    t5 <- t4, 73159
    movl    $73159, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $90193, %eax            #   4:     if     90193 < t5 goto 1_if_true
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   5:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $43185, %eax            #  10:     div    t6 <- 43185, 95220
    movl    $95220, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  11:     div    t7 <- t6, 45183
    movl    $45183, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  12:     div    t8 <- t7, 39794
    movl    $39794, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  13:     div    t9 <- t8, 2876
    movl    $2876, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  14:     add    t10 <- t9, 52973
    movl    $52973, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     return t10
    jmp     l_f1_exit              
    movl    $92158, %eax            #  16:     sub    t11 <- 92158, 21085
    movl    $21085, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     sub    t12 <- t11, 94523
    movl    $94523, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     add    t13 <- t12, 94156
    movl    $94156, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     assign v1 <- t13
    movl    %eax, 8(%ebp)          

l_f1_exit:
    # epilogue
    addl    $48, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 4 of <array 4 of <array 6 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -40(%ebp)   4  [ $v4       <int> %ebp-40 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t3 <- t2, 28166
    movl    $28166, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v4 <- t3
    movl    %eax, -40(%ebp)        
    movl    $74513, %eax            #   3:     sub    t4 <- 74513, 5379
    movl    $5379, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t5 <- t4, 37444
    movl    $37444, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t6 <- t5, 72001
    movl    $72001, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     add    t7 <- t6, 58763
    movl    $58763, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     assign v4 <- t7
    movl    %eax, -40(%ebp)        
l_f2_3_while_cond:
    jmp     l_f2_exit              
    movl    $33151, %eax            #  10:     assign v4 <- 33151
    movl    %eax, -40(%ebp)        
    jmp     l_f2_3_while_cond       #  11:     goto   3_while_cond

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    movl    $93754, %eax            #   0:     assign v0 <- 93754
    movl    %eax, v0               
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_3_while_cond:
l_test_6_while_cond:
    movl    $62129, %eax            #   4:     if     62129 >= 80370 goto 7_while_body
    movl    $80370, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #   5:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  11:     goto   11_while_cond
    jmp     l_test_13               #  12:     goto   13
l_test_13:
l_test_17_while_cond:
    jmp     l_test_16               #  15:     goto   16
    jmp     l_test_17_while_cond    #  16:     goto   17_while_cond
l_test_16:
    jmp     l_test_3_while_cond     #  18:     goto   3_while_cond
l_test_23_while_cond:
    jmp     l_test_22               #  20:     goto   22
    jmp     l_test_23_while_cond    #  21:     goto   23_while_cond
l_test_22:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_19               #  25:     goto   19
l_test_19:
l_test_28_while_cond:
    call    dummyBOOLfunc           #  28:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_31               #  29:     goto   31
l_test_31:
l_test_35_while_cond:
    jmp     l_test_35_while_cond    #  32:     goto   35_while_cond
    jmp     l_test_exit            
    jmp     l_test_28_while_cond    #  34:     goto   28_while_cond
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
