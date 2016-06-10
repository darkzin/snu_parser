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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 11 of <array 14 of <array 89 of <array 29 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 20 of <array 74 of <array 13 of <array 13 of <array 87 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 60 of <array 53 of <array 8 of <array 10 of <array 30 of <bool>>>>>>> %ebp+20 ]
    #    -16(%ebp)   1  [ $v5       <char> %ebp-16 ]
    #    -20(%ebp)   4  [ $v6       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    jmp     l_f0_6                  #   2:     goto   6
    jmp     l_f0_6                  #   3:     goto   6
    jmp     l_f0_3_while_body       #   4:     goto   3_while_body
l_f0_6:
    jmp     l_f0_3_while_body       #   6:     goto   3_while_body
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   8:     goto   2_while_cond
    movl    $1, %eax                #   9:     if     1 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  10:     goto   12_if_false
l_f0_11_if_true:
    movl    $97, %eax               #  12:     assign v5 <- 97
    movb    %al, -16(%ebp)         
    movl    $4391, %eax             #  13:     assign v6 <- 4391
    movl    %eax, -20(%ebp)        
l_f0_17_while_cond:
    jmp     l_f0_17_while_cond      #  15:     goto   17_while_cond
    jmp     l_f0_21_if_false        #  16:     goto   21_if_false
    jmp     l_f0_19                 #  17:     goto   19
l_f0_21_if_false:
l_f0_19:
    call    dummyBOOLfunc           #  20:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  21:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f0_26_if_false        #  22:     goto   26_if_false
    jmp     l_f0_24                 #  23:     goto   24
l_f0_26_if_false:
l_f0_24:
    jmp     l_f0_10                 #  26:     goto   10
l_f0_12_if_false:
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    movl    $18958, %eax            #   0:     add    t5 <- 18958, 75953
    movl    $75953, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     add    t6 <- t5, 80951
    movl    $80951, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     sub    t7 <- t6, 91025
    movl    $91025, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     add    t8 <- t7, 39435
    movl    $39435, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     add    t9 <- t8, 76870
    movl    $76870, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     assign v2 <- t9
    movl    %eax, 12(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   7:     goto   3_while_body
    jmp     l_f1_3_while_body       #   8:     goto   3_while_body
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #  11:     goto   2_while_cond
l_f1_1:
l_f1_8_while_cond:
    movl    $34605, %eax            #  14:     add    t10 <- 34605, 19471
    movl    $19471, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     sub    t11 <- t10, 97082
    movl    $97082, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $75437, %eax            #  16:     if     75437 > t11 goto 9_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_9_while_body      
    jmp     l_f1_7                  #  17:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  19:     goto   8_while_cond
l_f1_7:

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    movl    $70525, %eax            #   0:     div    t5 <- 70525, 36613
    movl    $36613, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     mul    t6 <- t5, 12694
    movl    $12694, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     assign v3 <- t6
    movl    %eax, 16(%ebp)         
l_f2_2_while_cond:
    movl    $95094, %eax            #   4:     div    t7 <- 95094, 40896
    movl    $40896, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $82616, %eax            #   5:     div    t8 <- 82616, 12660
    movl    $12660, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     mul    t9 <- t8, 46053
    movl    $46053, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #   7:     if     t7 >= t9 goto 3_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   8:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #  10:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #  12:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     return t10
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 60 of <array 53 of <array 8 of <array 10 of <array 30 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 20 of <array 74 of <array 13 of <array 13 of <array 87 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 61 of <array 11 of <array 14 of <array 89 of <array 29 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    movl    $97, %eax               #   2:     if     97 > 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_5_if_true       
    jmp     l_test_6_if_false       #   3:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_exit            
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_1                #   9:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyINTfunc            #  12:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    leal    v3, %eax                #  13:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  3 <- t1
    pushl   %eax                   
    leal    v2, %eax                #  15:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  2 <- t2
    pushl   %eax                   
    movl    $0, %eax                #  17:     param  1 <- 0
    pushl   %eax                   
    leal    v1, %eax                #  18:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  20:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  21:     param  0 <- t4
    pushl   %eax                   
    call    WriteChar               #  22:     call   WriteChar
    addl    $4, %esp               

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 61 of <array 11 of <array 14 of <array 89 of <array 29 of <bool>>>>>>
    .long    5
    .long   61
    .long   11
    .long   14
    .long   89
    .long   29
    .skip 24245914
    .align   4
v2:                                 # <array 20 of <array 74 of <array 13 of <array 13 of <array 87 of <int>>>>>>
    .long    5
    .long   20
    .long   74
    .long   13
    .long   13
    .long   87
    .skip 87041760
v3:                                 # <array 60 of <array 53 of <array 8 of <array 10 of <array 30 of <bool>>>>>>
    .long    5
    .long   60
    .long   53
    .long    8
    .long   10
    .long   30
    .skip 7632000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
