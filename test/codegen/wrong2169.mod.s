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
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
l_f0_1_while_cond:
    call    dummyINTfunc            #   1:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t2 >= 66818 goto 2_while_body
    movl    $66818, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
    movl    $99, %eax               #   7:     if     99 <= 97 goto 8_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   8:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #  10:     goto   7
l_f0_9_if_false:
l_f0_7:
    movl    $97, %eax               #  13:     if     97 # 100 goto 12
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_12                
    jmp     l_f0_13                 #  14:     goto   13
l_f0_12:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_14                 #  17:     goto   14
l_f0_13:
    movl    $0, %eax                #  19:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f0_14:
    movzbl  -17(%ebp), %eax         #  21:     return t3
    jmp     l_f0_exit              
    movl    $96715, %eax            #  22:     assign v1 <- 96715
    movl    %eax, -24(%ebp)        
    jmp     l_f0_1_while_cond       #  23:     goto   1_while_cond
l_f0_0:
l_f0_18_while_cond:
    jmp     l_f0_17                 #  26:     goto   17
    jmp     l_f0_17                 #  27:     goto   17
    jmp     l_f0_18_while_cond      #  28:     goto   18_while_cond
l_f0_17:
    call    dummyCHARfunc           #  30:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  31:     param  0 <- t4
    pushl   %eax                   
    call    WriteChar               #  32:     call   WriteChar
    addl    $4, %esp               

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t8       <char> %ebp-34 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 78 of <array 23 of <array 3 of <array 73 of <array 69 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 12 of <array 17 of <array 17 of <array 45 of <array 99 of <bool>>>>>>> %ebp+12 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]

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
    movl    $99241, %eax            #   0:     sub    t2 <- 99241, 6703
    movl    $6703, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t3 <- t2, 8445
    movl    $8445, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v3 <- t3
    movl    %eax, -40(%ebp)        
    movl    $86552, %eax            #   3:     sub    t4 <- 86552, 13817
    movl    $13817, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    movl    $71015, %eax            #   6:     add    t5 <- 71015, 43983
    movl    $43983, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     sub    t6 <- t5, 38147
    movl    $38147, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $80986, %eax            #   8:     if     80986 # t6 goto 3_if_true
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   9:     goto   4_if_false
l_f1_3_if_true:
    call    dummyCHARfunc           #  11:     call   t7 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    call    dummyCHARfunc           #  12:     call   t8 <- dummyCHARfunc
    movb    %al, -34(%ebp)         
    jmp     l_f1_2                  #  13:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t3       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 53 of <array 73 of <array 69 of <array 9 of <array 19 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -65(%ebp)   1  [ $v3       <bool> %ebp-65 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $56, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $98, %eax               #   1:     if     98 < 100 goto 4_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   2:     goto   5_if_false
l_f2_4_if_true:
    movl    $40846, %eax            #   4:     assign v2 <- 40846
    movl    %eax, 12(%ebp)         
    movl    $99, %eax               #   5:     return 99
    jmp     l_f2_exit              
    movl    $98, %eax               #   6:     return 98
    jmp     l_f2_exit              
    call    dummyINTfunc            #   7:     call   t2 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    $30132, %eax            #   8:     if     30132 < 40933 goto 12
    movl    $40933, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_12                
    jmp     l_f2_13                 #   9:     goto   13
l_f2_12:
    movl    $1, %eax                #  11:     assign t3 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_14                 #  12:     goto   14
l_f2_13:
    movl    $0, %eax                #  14:     assign t3 <- 0
    movb    %al, -37(%ebp)         
l_f2_14:
    movzbl  -37(%ebp), %eax         #  16:     assign v3 <- t3
    movb    %al, -65(%ebp)         
    jmp     l_f2_3                  #  17:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_0                  #  20:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $6958, %eax             #  23:     div    t4 <- 6958, 19444
    movl    $19444, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     mul    t5 <- t4, 83938
    movl    $83938, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     div    t6 <- t5, 3556
    movl    $3556, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  26:     div    t7 <- t6, 26701
    movl    $26701, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  27:     mul    t8 <- t7, 75271
    movl    $75271, %ebx           
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  28:     mul    t9 <- t8, 37032
    movl    $37032, %ebx           
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  29:     div    t10 <- t9, 77473
    movl    $77473, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  30:     mul    t11 <- t10, 70578
    movl    $70578, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     div    t12 <- t11, 658
    movl    $658, %ebx             
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     sub    t13 <- t12, 79327
    movl    $79327, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $88934, %eax            #  33:     if     88934 < t13 goto 17_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  34:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  36:     goto   16
l_f2_18_if_false:
l_f2_16:
    call    dummyCHARfunc           #  39:     call   t14 <- dummyCHARfunc
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $56, %esp               # remove locals
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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
l_test_6_while_cond:
    jmp     l_test_5                #   4:     goto   5
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
l_test_5:
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #   8:     goto   9_while_cond
    jmp     l_test_11               #   9:     goto   11
l_test_11:
    jmp     l_test_exit            
    jmp     l_test_2                #  12:     goto   2
l_test_2:
    call    f0                      #  14:     call   t1 <- f0
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  15:     if     t1 = 1 goto 16_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_16_if_true      
    jmp     l_test_17_if_false      #  16:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  18:     goto   15
l_test_17_if_false:
l_test_15:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
