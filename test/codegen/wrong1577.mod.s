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
    #    -53(%ebp)   1  [ $t3       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 53 of <array 38 of <array 94 of <array 44 of <array 94 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 30 of <array 51 of <array 33 of <array 95 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 89 of <array 7 of <array 91 of <array 20 of <array 97 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 83 of <array 71 of <array 68 of <array 15 of <array 7 of <bool>>>>>>> %ebp+20 ]
    #    -84(%ebp)   4  [ $v4       <int> %ebp-84 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $56933, %eax            #   0:     param  0 <- 56933
    pushl   %eax                   
    call    WriteInt                #   1:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #   3:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #   4:     call   WriteChar
    addl    $4, %esp               
l_f0_3_while_cond:
    movl    $97, %eax               #   6:     if     97 > 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_4_while_body      
    jmp     l_f0_2                  #   7:     goto   2
l_f0_4_while_body:
l_f0_7_while_cond:
    jmp     l_f0_6                  #  10:     goto   6
    jmp     l_f0_7_while_cond       #  11:     goto   7_while_cond
l_f0_6:
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $52334, %eax            #  16:     mul    t5 <- 52334, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  17:     add    t6 <- t5, 25679
    movl    $25679, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  21:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  22:     add    t9 <- t8, 24446
    movl    $24446, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  26:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     add    t12 <- t11, 92765
    movl    $92765, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  31:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     add    t15 <- t14, 10887
    movl    $10887, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     mul    t16 <- t15, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  34:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  35:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  36:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  37:     add    t19 <- v1, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $23521, %eax            #  38:     assign @t19 <- 23521
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  40:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 29 of <array 89 of <array 21 of <array 19 of <array 17 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f1_exit              
    movl    $98, %eax               #   2:     if     98 > 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    call    ReadInt                 #   5:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f1_8_if_false         #   6:     goto   8_if_false
    jmp     l_f1_6                  #   7:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_1                  #  10:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $97, %eax               #  13:     return 97
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 83 of <array 71 of <array 68 of <array 15 of <array 7 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 89 of <array 7 of <array 91 of <array 20 of <array 97 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 39 of <array 30 of <array 51 of <array 33 of <array 95 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 53 of <array 38 of <array 94 of <array 44 of <array 94 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $v0       <int> %ebp-32 ]
    #   1162923336(%ebp)  -1162923368  [ $v1       <array 53 of <array 38 of <array 94 of <array 44 of <array 94 of <int>>>>>> %ebp+1162923336 ]
    #   414661512(%ebp)  748261824  [ $v2       <array 39 of <array 30 of <array 51 of <array 33 of <array 95 of <int>>>>>> %ebp+414661512 ]
    #   304677068(%ebp)  109984444  [ $v3       <array 89 of <array 7 of <array 91 of <array 20 of <array 97 of <char>>>>>> %ebp+304677068 ]
    #   262601024(%ebp)  42076044  [ $v4       <array 83 of <array 71 of <array 68 of <array 15 of <array 7 of <bool>>>>>> %ebp+262601024 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-262601036, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-65650259, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,1162923336(%ebp)     # local array 'v1': 5 dimensions
    movl    $53,1162923340(%ebp)    #   dimension 1: 53 elements
    movl    $38,1162923344(%ebp)    #   dimension 2: 38 elements
    movl    $94,1162923348(%ebp)    #   dimension 3: 94 elements
    movl    $44,1162923352(%ebp)    #   dimension 4: 44 elements
    movl    $94,1162923356(%ebp)    #   dimension 5: 94 elements
    movl    $5,414661512(%ebp)      # local array 'v2': 5 dimensions
    movl    $39,414661516(%ebp)     #   dimension 1: 39 elements
    movl    $30,414661520(%ebp)     #   dimension 2: 30 elements
    movl    $51,414661524(%ebp)     #   dimension 3: 51 elements
    movl    $33,414661528(%ebp)     #   dimension 4: 33 elements
    movl    $95,414661532(%ebp)     #   dimension 5: 95 elements
    movl    $5,304677068(%ebp)      # local array 'v3': 5 dimensions
    movl    $89,304677072(%ebp)     #   dimension 1: 89 elements
    movl    $7,304677076(%ebp)      #   dimension 2: 7 elements
    movl    $91,304677080(%ebp)     #   dimension 3: 91 elements
    movl    $20,304677084(%ebp)     #   dimension 4: 20 elements
    movl    $97,304677088(%ebp)     #   dimension 5: 97 elements
    movl    $5,262601024(%ebp)      # local array 'v4': 5 dimensions
    movl    $83,262601028(%ebp)     #   dimension 1: 83 elements
    movl    $71,262601032(%ebp)     #   dimension 2: 71 elements
    movl    $68,262601036(%ebp)     #   dimension 3: 68 elements
    movl    $15,262601040(%ebp)     #   dimension 4: 15 elements
    movl    $7,262601044(%ebp)      #   dimension 5: 7 elements

    # function body
    movl    $0, %eax                #   0:     return 0
    jmp     l_f2_exit              
l_f2_5_while_cond:
    movl    $31997, %eax            #   2:     if     31997 >= 85302 goto 6_while_body
    movl    $85302, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_6_while_body      
    jmp     l_f2_4                  #   3:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_0                  #   7:     goto   0
l_f2_0:
    jmp     l_f2_10_if_false        #   9:     goto   10_if_false
    movl    $74164, %eax            #  10:     assign v0 <- 74164
    movl    %eax, -32(%ebp)        
    movl    $97, %eax               #  11:     if     97 > 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  12:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_12                 #  14:     goto   12
l_f2_14_if_false:
l_f2_12:
l_f2_17_while_cond:
    jmp     l_f2_16                 #  18:     goto   16
    jmp     l_f2_17_while_cond      #  19:     goto   17_while_cond
l_f2_16:
    leal    262601024(%ebp), %eax   #  21:     &()    t3 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     param  3 <- t3
    pushl   %eax                   
    leal    304677068(%ebp), %eax   #  23:     &()    t4 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  2 <- t4
    pushl   %eax                   
    leal    414661512(%ebp), %eax   #  25:     &()    t5 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     param  1 <- t5
    pushl   %eax                   
    leal    1162923336(%ebp), %eax  #  27:     &()    t6 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  29:     call   f0
    addl    $16, %esp              
l_f2_21_while_cond:
    movl    $92677, %eax            #  31:     if     92677 = 5076 goto 22_while_body
    movl    $5076, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_22_while_body     
    jmp     l_f2_20                 #  32:     goto   20
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  34:     goto   21_while_cond
l_f2_20:
    jmp     l_f2_8                  #  36:     goto   8
l_f2_10_if_false:
l_f2_8:
    call    WriteLn                 #  39:     call   WriteLn

l_f2_exit:
    # epilogue
    addl    $-262601036, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    f2                      #   2:     call   t1 <- f2
    movb    %al, -14(%ebp)         
    call    ReadInt                 #   3:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t2 >= 77369 goto 4_if_true
    movl    $77369, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_4_if_true       
    jmp     l_test_5_if_false       #   5:     goto   5_if_false
l_test_4_if_true:
    movl    $91013, %eax            #   7:     assign v0 <- 91013
    movl    %eax, v0               
    jmp     l_test_3                #   8:     goto   3
l_test_5_if_false:
l_test_3:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
