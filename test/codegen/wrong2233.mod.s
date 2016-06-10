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
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 4 of <array 11 of <array 37 of <array 51 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 29 of <array 99 of <array 8 of <array 100 of <array 73 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 75 of <array 12 of <array 72 of <array 39 of <array 17 of <char>>>>>>> %ebp+20 ]
    #    -48(%ebp)   4  [ $v5       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $71482, %eax            #   0:     div    t7 <- 71482, 60141
    movl    $60141, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   1:     div    t8 <- t7, 46800
    movl    $46800, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   2:     div    t9 <- t8, 9196
    movl    $9196, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   3:     mul    t10 <- t9, 29646
    movl    $29646, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     sub    t11 <- t10, 60233
    movl    $60233, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     return t11
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   6:     call   t12 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $5655, %eax             #   7:     div    t13 <- 5655, 7426
    movl    $7426, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     mul    t14 <- t13, 17550
    movl    $17550, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     assign v5 <- t14
    movl    %eax, -48(%ebp)        

l_f0_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 66 of <array 10 of <array 18 of <array 44 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 96 of <array 23 of <array 63 of <array 94 of <array 93 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t7
    jmp     l_f1_exit              
    movl    $100, %eax              #   3:     return 100
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 66 of <array 10 of <array 18 of <array 44 of <array 3 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t15      <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $t16      <ptr(4) to <array 96 of <array 23 of <array 63 of <array 94 of <array 93 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <ptr(4) to <array 66 of <array 10 of <array 18 of <array 44 of <array 3 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t18      <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t19      <char> %ebp-38 ]
    #    -39(%ebp)   1  [ $t7       <bool> %ebp-39 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 96 of <array 23 of <array 63 of <array 94 of <array 93 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #   -1568232(%ebp)  1568184  [ $v2       <array 66 of <array 10 of <array 18 of <array 44 of <array 3 of <bool>>>>>> %ebp-1568232 ]
    #   -570789632(%ebp)  569221400  [ $v3       <array 96 of <array 23 of <array 63 of <array 94 of <array 93 of <int>>>>>> %ebp-570789632 ]
    #   -570789633(%ebp)   1  [ $v4       <char> %ebp-570789633 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $570789624, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $142697406, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1568232(%ebp)       # local array 'v2': 5 dimensions
    movl    $66,-1568228(%ebp)      #   dimension 1: 66 elements
    movl    $10,-1568224(%ebp)      #   dimension 2: 10 elements
    movl    $18,-1568220(%ebp)      #   dimension 3: 18 elements
    movl    $44,-1568216(%ebp)      #   dimension 4: 44 elements
    movl    $3,-1568212(%ebp)       #   dimension 5: 3 elements
    movl    $5,-570789632(%ebp)     # local array 'v3': 5 dimensions
    movl    $96,-570789628(%ebp)    #   dimension 1: 96 elements
    movl    $23,-570789624(%ebp)    #   dimension 2: 23 elements
    movl    $63,-570789620(%ebp)    #   dimension 3: 63 elements
    movl    $94,-570789616(%ebp)    #   dimension 4: 94 elements
    movl    $93,-570789612(%ebp)    #   dimension 5: 93 elements

    # function body
    jmp     l_f2_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t7 <- 1
    movb    %al, -39(%ebp)         
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $0, %eax                #   4:     assign t7 <- 0
    movb    %al, -39(%ebp)         
l_f2_3:
    movzbl  -39(%ebp), %eax         #   6:     return t7
    jmp     l_f2_exit              
    leal    -570789632(%ebp), %eax  #   7:     &()    t8 <- v3
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     param  3 <- t8
    pushl   %eax                   
    movl    $25727, %eax            #   9:     add    t9 <- 25727, 46641
    movl    $46641, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  10:     sub    t10 <- t9, 718
    movl    $718, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t11 <- t10, 92917
    movl    $92917, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  2 <- t11
    pushl   %eax                   
    leal    -1568232(%ebp), %eax    #  13:     &()    t12 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  1 <- t12
    pushl   %eax                   
    jmp     l_f2_10                 #  15:     goto   10
l_f2_10:
    movl    $1, %eax                #  17:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_12                 #  18:     goto   12
    movl    $0, %eax                #  19:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f2_12:
    movzbl  -25(%ebp), %eax         #  21:     param  0 <- t13
    pushl   %eax                   
    call    f1                      #  22:     call   t14 <- f1
    addl    $16, %esp              
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  23:     if     t14 < 98 goto 6
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_6                 
    jmp     l_f2_7                  #  24:     goto   7
l_f2_6:
    movl    $1, %eax                #  26:     assign t15 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f2_8                  #  27:     goto   8
l_f2_7:
    movl    $0, %eax                #  29:     assign t15 <- 0
    movb    %al, -27(%ebp)         
l_f2_8:
    movzbl  -27(%ebp), %eax         #  31:     return t15
    jmp     l_f2_exit              
    leal    -570789632(%ebp), %eax  #  32:     &()    t16 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  33:     param  3 <- t16
    pushl   %eax                   
    movl    $58187, %eax            #  34:     param  2 <- 58187
    pushl   %eax                   
    leal    -1568232(%ebp), %eax    #  35:     &()    t17 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  36:     param  1 <- t17
    pushl   %eax                   
    movl    $87305, %eax            #  37:     if     87305 > 50071 goto 15
    movl    $50071, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_15                
    jmp     l_f2_16                 #  38:     goto   16
l_f2_15:
    movl    $1, %eax                #  40:     assign t18 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_17                 #  41:     goto   17
l_f2_16:
    movl    $0, %eax                #  43:     assign t18 <- 0
    movb    %al, -37(%ebp)         
l_f2_17:
    movzbl  -37(%ebp), %eax         #  45:     param  0 <- t18
    pushl   %eax                   
    call    f1                      #  46:     call   t19 <- f1
    addl    $16, %esp              
    movb    %al, -38(%ebp)         
    movzbl  -38(%ebp), %eax         #  47:     assign v4 <- t19
    movb    %al, -570789633(%ebp)  

l_f2_exit:
    # epilogue
    addl    $570789624, %esp        # remove locals
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
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
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
    movl    $1, %eax                #   0:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    movl    $98, %eax               #   2:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_1                #   3:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $31469, %eax            #   6:     mul    t0 <- 31469, 56041
    movl    $56041, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     mul    t1 <- t0, 6337
    movl    $6337, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $14812, %eax            #   8:     add    t2 <- 14812, 2341
    movl    $2341, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     sub    t3 <- t2, 60587
    movl    $60587, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     sub    t4 <- t3, 41887
    movl    $41887, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     sub    t5 <- t4, 69845
    movl    $69845, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     add    t6 <- t5, 83314
    movl    $83314, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -20(%ebp), %eax         #  13:     if     t1 < t6 goto 6_if_true
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #  14:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #  16:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $0, %eax                #  19:     assign v0 <- 0
    movb    %al, v0                

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
