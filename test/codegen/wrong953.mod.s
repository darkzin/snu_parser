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
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 1 of <array 1 of <array 3 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 8 of <array 2 of <array 3 of <array 9 of <int>>>>>>> %ebp+16 ]

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
l_f0_1_while_cond:
    movl    $51571, %eax            #   1:     add    t9 <- 51571, 6326
    movl    $6326, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     sub    t10 <- t9, 34780
    movl    $34780, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t10 <= 6457 goto 2_while_body
    movl    $6457, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    movl    $50954, %eax            #   8:     div    t11 <- 50954, 75534
    movl    $75534, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     mul    t12 <- t11, 72703
    movl    $72703, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     div    t13 <- t12, 77750
    movl    $77750, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     param  0 <- t13
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_7_if_false         #  13:     goto   7_if_false
    jmp     l_f0_7_if_false         #  14:     goto   7_if_false
    movl    $98707, %eax            #  15:     if     98707 > 92863 goto 10_if_true
    movl    $92863, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  16:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  18:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_5                  #  21:     goto   5
l_f0_7_if_false:
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 8 of <array 8 of <array 2 of <array 3 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 3 of <array 1 of <array 1 of <array 3 of <array 5 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t15      <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t9       <bool> %ebp-34 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #   -104(%ebp)  69  [ $v4       <array 3 of <array 1 of <array 1 of <array 3 of <array 5 of <bool>>>>>> %ebp-104 ]
    #   -13952(%ebp)  13848  [ $v5       <array 8 of <array 8 of <array 2 of <array 3 of <array 9 of <int>>>>>> %ebp-13952 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $13940, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3485, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-104(%ebp)           # local array 'v4': 5 dimensions
    movl    $3,-100(%ebp)           #   dimension 1: 3 elements
    movl    $1,-96(%ebp)            #   dimension 2: 1 elements
    movl    $1,-92(%ebp)            #   dimension 3: 1 elements
    movl    $3,-88(%ebp)            #   dimension 4: 3 elements
    movl    $5,-84(%ebp)            #   dimension 5: 5 elements
    movl    $5,-13952(%ebp)         # local array 'v5': 5 dimensions
    movl    $8,-13948(%ebp)         #   dimension 1: 8 elements
    movl    $8,-13944(%ebp)         #   dimension 2: 8 elements
    movl    $2,-13940(%ebp)         #   dimension 3: 2 elements
    movl    $3,-13936(%ebp)         #   dimension 4: 3 elements
    movl    $9,-13932(%ebp)         #   dimension 5: 9 elements

    # function body
    jmp     l_f1_5                  #   0:     goto   5
    jmp     l_f1_5                  #   1:     goto   5
    jmp     l_f1_6                  #   2:     goto   6
l_f1_5:
    movl    $1, %eax                #   4:     assign t9 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f1_7                  #   5:     goto   7
l_f1_6:
    movl    $0, %eax                #   7:     assign t9 <- 0
    movb    %al, -34(%ebp)         
l_f1_7:
    movl    $0, %eax                #   9:     if     0 # t9 goto 1
    movzbl  -34(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #  10:     goto   2
l_f1_1:
    movl    $1, %eax                #  12:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #  13:     goto   3
l_f1_2:
    movl    $0, %eax                #  15:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #  17:     assign v2 <- t10
    movb    %al, 8(%ebp)           
    jmp     l_f1_14_if_false        #  18:     goto   14_if_false
    leal    -13952(%ebp), %eax      #  19:     &()    t11 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  2 <- t11
    pushl   %eax                   
    leal    -104(%ebp), %eax        #  21:     &()    t12 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     param  1 <- t12
    pushl   %eax                   
    movl    $97011, %eax            #  23:     if     97011 < 77862 goto 16
    movl    $77862, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_16                
    jmp     l_f1_17                 #  24:     goto   17
l_f1_16:
    movl    $1, %eax                #  26:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_18                 #  27:     goto   18
l_f1_17:
    movl    $0, %eax                #  29:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f1_18:
    movzbl  -25(%ebp), %eax         #  31:     param  0 <- t13
    pushl   %eax                   
    call    f0                      #  32:     call   t14 <- f0
    addl    $12, %esp              
    movl    %eax, -32(%ebp)        
    movl    $16228, %eax            #  33:     if     16228 <= 90397 goto 21_if_true
    movl    $90397, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_21_if_true        
    jmp     l_f1_22_if_false        #  34:     goto   22_if_false
l_f1_21_if_true:
    jmp     l_f1_20                 #  36:     goto   20
l_f1_22_if_false:
l_f1_20:
    jmp     l_f1_24                 #  39:     goto   24
l_f1_24:
    jmp     l_f1_12                 #  41:     goto   12
l_f1_14_if_false:
l_f1_12:
    call    dummyCHARfunc           #  44:     call   t15 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  45:     return t15
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $13940, %esp            # remove locals
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
    #    -22(%ebp)   1  [ $t13      <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t17      <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t18      <char> %ebp-38 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #    -48(%ebp)   4  [ $v3       <int> %ebp-48 ]

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
    movl    $25645, %eax            #   0:     mul    t9 <- 25645, 94222
    movl    $94222, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   1:     add    t10 <- t9, 1992
    movl    $1992, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t11 <- t10, 28487
    movl    $28487, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t11
    pushl   %eax                   
    jmp     l_f2_2                  #   4:     goto   2
    movl    $1, %eax                #   5:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #  10:     param  0 <- t12
    pushl   %eax                   
    call    f1                      #  11:     call   t13 <- f1
    addl    $8, %esp               
    movb    %al, -22(%ebp)         
    movl    $78877, %eax            #  12:     mul    t14 <- 78877, 31868
    movl    $31868, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     mul    t15 <- t14, 17242
    movl    $17242, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     mul    t16 <- t15, 72799
    movl    $72799, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     assign v3 <- t16
    movl    %eax, -48(%ebp)        
    movl    $12213, %eax            #  16:     if     12213 # 95583 goto 7_if_true
    movl    $95583, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  17:     goto   8_if_false
l_f2_7_if_true:
    call    dummyProcedure          #  19:     call   dummyProcedure
    movl    $62025, %eax            #  20:     param  1 <- 62025
    pushl   %eax                   
    movl    $100, %eax              #  21:     if     100 <= 100 goto 12
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_12                
    jmp     l_f2_13                 #  22:     goto   13
l_f2_12:
    movl    $1, %eax                #  24:     assign t17 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_14                 #  25:     goto   14
l_f2_13:
    movl    $0, %eax                #  27:     assign t17 <- 0
    movb    %al, -37(%ebp)         
l_f2_14:
    movzbl  -37(%ebp), %eax         #  29:     param  0 <- t17
    pushl   %eax                   
    call    f1                      #  30:     call   t18 <- f1
    addl    $8, %esp               
    movb    %al, -38(%ebp)         
    movzbl  -38(%ebp), %eax         #  31:     param  0 <- t18
    pushl   %eax                   
    call    WriteChar               #  32:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_6                  #  33:     goto   6
l_f2_8_if_false:
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 8 of <array 8 of <array 2 of <array 3 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 1 of <array 1 of <array 3 of <array 5 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <char> %ebp-34 ]
    #    -35(%ebp)   1  [ $t7       <bool> %ebp-35 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_4_while_cond:
    jmp     l_test_4_while_cond     #   2:     goto   4_while_cond
    movl    $1, %eax                #   3:     assign v0 <- 1
    movb    %al, v0                
    movl    $95838, %eax            #   4:     if     95838 <= 51887 goto 8_if_true
    movl    $51887, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_8_if_true       
    jmp     l_test_9_if_false       #   5:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #   7:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $100, %eax              #  10:     assign v1 <- 100
    movb    %al, v1                
    movl    $97, %eax               #  11:     assign v1 <- 97
    movb    %al, v1                
l_test_14_while_cond:
    movl    $100, %eax              #  13:     if     100 > 99 goto 15_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_15_while_body   
    jmp     l_test_13               #  14:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  16:     goto   14_while_cond
l_test_13:
    leal    _str_1, %eax            #  18:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #  20:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_0                #  21:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    leal    v3, %eax                #  26:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     param  2 <- t1
    pushl   %eax                   
    leal    v2, %eax                #  28:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     param  1 <- t2
    pushl   %eax                   
    movl    $80248, %eax            #  30:     param  1 <- 80248
    pushl   %eax                   
    movl    $60319, %eax            #  31:     sub    t3 <- 60319, 70910
    movl    $70910, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     sub    t4 <- t3, 69817
    movl    $69817, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $13589, %eax            #  33:     if     13589 <= t4 goto 25
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_25              
    jmp     l_test_26               #  34:     goto   26
l_test_25:
    movl    $1, %eax                #  36:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_27               #  37:     goto   27
l_test_26:
    movl    $0, %eax                #  39:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_27:
    movzbl  -33(%ebp), %eax         #  41:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  42:     call   t6 <- f1
    addl    $8, %esp               
    movb    %al, -34(%ebp)         
    movzbl  -34(%ebp), %eax         #  43:     if     t6 # 98 goto 21
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_21              
    jmp     l_test_22               #  44:     goto   22
l_test_21:
    movl    $1, %eax                #  46:     assign t7 <- 1
    movb    %al, -35(%ebp)         
    jmp     l_test_23               #  47:     goto   23
l_test_22:
    movl    $0, %eax                #  49:     assign t7 <- 0
    movb    %al, -35(%ebp)         
l_test_23:
    movzbl  -35(%ebp), %eax         #  51:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  52:     call   t8 <- f0
    addl    $12, %esp              
    movl    %eax, -40(%ebp)        
l_test_30_while_cond:
    movl    $97, %eax               #  54:     if     97 <= 98 goto 31_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_31_while_body   
    jmp     l_test_29               #  55:     goto   29
l_test_31_while_body:
    jmp     l_test_30_while_cond    #  57:     goto   30_while_cond
l_test_29:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 3 of <array 1 of <array 1 of <array 3 of <array 5 of <bool>>>>>>
    .long    5
    .long    3
    .long    1
    .long    1
    .long    3
    .long    5
    .skip   45
    .align   4
v3:                                 # <array 8 of <array 8 of <array 2 of <array 3 of <array 9 of <int>>>>>>
    .long    5
    .long    8
    .long    8
    .long    2
    .long    3
    .long    9
    .skip 13824








    # end of global data section
    #-----------------------------------------

    .end
##################################################
