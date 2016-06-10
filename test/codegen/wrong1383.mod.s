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
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 68 of <array 56 of <array 15 of <array 87 of <array 81 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 22 of <array 14 of <array 6 of <array 86 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 86 of <array 34 of <array 15 of <array 55 of <array 40 of <bool>>>>>>> %ebp+20 ]

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
    movl    $62418, %eax            #   0:     add    t7 <- 62418, 64355
    movl    $64355, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   1:     add    t8 <- t7, 64233
    movl    $64233, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   2:     return t8
    jmp     l_f0_exit              
    movl    $66885, %eax            #   3:     mul    t9 <- 66885, 71869
    movl    $71869, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   4:     div    t10 <- t9, 54923
    movl    $54923, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     sub    t11 <- t10, 81389
    movl    $81389, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     add    t12 <- t11, 33550
    movl    $33550, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     sub    t13 <- t12, 27495
    movl    $27495, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     sub    t14 <- t13, 31767
    movl    $31767, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     return t14
    jmp     l_f0_exit              
    movl    $33730, %eax            #  10:     div    t15 <- 33730, 43583
    movl    $43583, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     div    t16 <- t15, 36557
    movl    $36557, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     assign v2 <- t16
    movl    %eax, 16(%ebp)         

l_f0_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 86 of <array 34 of <array 15 of <array 55 of <array 40 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 61 of <array 22 of <array 14 of <array 6 of <array 86 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 68 of <array 56 of <array 15 of <array 87 of <array 81 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #   -402524708(%ebp)  402524664  [ $v2       <array 68 of <array 56 of <array 15 of <array 87 of <array 81 of <char>>>>>> %ebp-402524708 ]
    #   -412219340(%ebp)  9694632  [ $v3       <array 61 of <array 22 of <array 14 of <array 6 of <array 86 of <char>>>>>> %ebp-412219340 ]
    #   -508711364(%ebp)  96492024  [ $v4       <array 86 of <array 34 of <array 15 of <array 55 of <array 40 of <bool>>>>>> %ebp-508711364 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $508711352, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $127177838, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-402524708(%ebp)     # local array 'v2': 5 dimensions
    movl    $68,-402524704(%ebp)    #   dimension 1: 68 elements
    movl    $56,-402524700(%ebp)    #   dimension 2: 56 elements
    movl    $15,-402524696(%ebp)    #   dimension 3: 15 elements
    movl    $87,-402524692(%ebp)    #   dimension 4: 87 elements
    movl    $81,-402524688(%ebp)    #   dimension 5: 81 elements
    movl    $5,-412219340(%ebp)     # local array 'v3': 5 dimensions
    movl    $61,-412219336(%ebp)    #   dimension 1: 61 elements
    movl    $22,-412219332(%ebp)    #   dimension 2: 22 elements
    movl    $14,-412219328(%ebp)    #   dimension 3: 14 elements
    movl    $6,-412219324(%ebp)     #   dimension 4: 6 elements
    movl    $86,-412219320(%ebp)    #   dimension 5: 86 elements
    movl    $5,-508711364(%ebp)     # local array 'v4': 5 dimensions
    movl    $86,-508711360(%ebp)    #   dimension 1: 86 elements
    movl    $34,-508711356(%ebp)    #   dimension 2: 34 elements
    movl    $15,-508711352(%ebp)    #   dimension 3: 15 elements
    movl    $55,-508711348(%ebp)    #   dimension 4: 55 elements
    movl    $40,-508711344(%ebp)    #   dimension 5: 40 elements

    # function body
l_f1_1_while_cond:
    movl    $62096, %eax            #   1:     mul    t7 <- 62096, 31643
    movl    $31643, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     mul    t8 <- t7, 88137
    movl    $88137, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     mul    t9 <- t8, 85436
    movl    $85436, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     mul    t10 <- t9, 33963
    movl    $33963, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $24395, %eax            #   5:     if     24395 # t10 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
    movl    $12753, %eax            #  10:     assign v0 <- 12753
    movl    %eax, 8(%ebp)          
    leal    -508711364(%ebp), %eax  #  11:     &()    t11 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  3 <- t11
    pushl   %eax                   
    movl    $17029, %eax            #  13:     param  2 <- 17029
    pushl   %eax                   
    leal    -412219340(%ebp), %eax  #  14:     &()    t12 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  1 <- t12
    pushl   %eax                   
    leal    -402524708(%ebp), %eax  #  16:     &()    t13 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     param  0 <- t13
    pushl   %eax                   
    call    f0                      #  18:     call   t14 <- f0
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        

l_f1_exit:
    # epilogue
    addl    $508711352, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 79 of <array 18 of <array 1 of <array 29 of <array 35 of <int>>>>>>> %ebp+8 ]
    #    -29(%ebp)   1  [ $v1       <bool> %ebp-29 ]

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
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 < 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    call    ReadInt                 #   4:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #   5:     call   t8 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    call    dummyINTfunc            #   9:     call   t9 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  10:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #  11:     if     97 >= t10 goto 9
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_9                 
    jmp     l_f2_10                 #  12:     goto   10
l_f2_9:
    movl    $1, %eax                #  14:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_11                 #  15:     goto   11
l_f2_10:
    movl    $0, %eax                #  17:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_11:
    movzbl  -14(%ebp), %eax         #  19:     assign v1 <- t11
    movb    %al, -29(%ebp)         

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 86 of <array 34 of <array 15 of <array 55 of <array 40 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 61 of <array 22 of <array 14 of <array 6 of <array 86 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 68 of <array 56 of <array 15 of <array 87 of <array 81 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    movl    $1, %eax                #   2:     param  1 <- 1
    pushl   %eax                   
    movl    $53191, %eax            #   3:     div    t1 <- 53191, 97423
    movl    $97423, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    leal    v3, %eax                #   4:     &()    t2 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  3 <- t2
    pushl   %eax                   
    movl    $89095, %eax            #   6:     param  2 <- 89095
    pushl   %eax                   
    leal    v2, %eax                #   7:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     param  1 <- t3
    pushl   %eax                   
    leal    v1, %eax                #   9:     &()    t4 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  11:     call   t5 <- f0
    addl    $16, %esp              
    movl    %eax, -36(%ebp)        
    movl    -20(%ebp), %eax         #  12:     sub    t6 <- t1, t5
    movl    -36(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  13:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  14:     call   f1
    addl    $8, %esp               
    movl    $99, %eax               #  15:     if     99 >= 100 goto 3_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_3_if_true       
    jmp     l_test_4_if_false       #  16:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_2                #  18:     goto   2
l_test_4_if_false:
l_test_2:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v1:                                 # <array 68 of <array 56 of <array 15 of <array 87 of <array 81 of <char>>>>>>
    .long    5
    .long   68
    .long   56
    .long   15
    .long   87
    .long   81
    .skip 402524640
v2:                                 # <array 61 of <array 22 of <array 14 of <array 6 of <array 86 of <char>>>>>>
    .long    5
    .long   61
    .long   22
    .long   14
    .long    6
    .long   86
    .skip 9694608
v3:                                 # <array 86 of <array 34 of <array 15 of <array 55 of <array 40 of <bool>>>>>>
    .long    5
    .long   86
    .long   34
    .long   15
    .long   55
    .long   40
    .skip 96492000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
