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
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 32 of <array 17 of <array 46 of <array 71 of <array 93 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 16 of <array 66 of <array 2 of <array 43 of <array 23 of <char>>>>>>> %ebp+12 ]
    #    -40(%ebp)   4  [ $v2       <int> %ebp-40 ]

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
    movl    $74853, %eax            #   0:     div    t2 <- 74853, 3759
    movl    $3759, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t3 <- t2, 11778
    movl    $11778, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t4 <- t3, 85185
    movl    $85185, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t5 <- t4, 41291
    movl    $41291, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t6 <- t5, 56303
    movl    $56303, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     assign v2 <- t6
    movl    %eax, -40(%ebp)        
    call    dummyINTfunc            #   6:     call   t7 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
l_f0_3_while_cond:
    jmp     l_f0_4_while_body       #   8:     goto   4_while_body
    jmp     l_f0_2                  #   9:     goto   2
l_f0_4_while_body:
    movl    $97, %eax               #  11:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  12:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 47 of <array 86 of <array 100 of <array 71 of <array 68 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 95 of <array 97 of <array 78 of <array 36 of <array 46 of <int>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v3       <char> %ebp-21 ]

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
    movl    $99, %eax               #   0:     if     99 > 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   4:     goto   4
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    movl    $90750, %eax            #   7:     assign v2 <- 90750
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #   8:     assign v3 <- 97
    movb    %al, -21(%ebp)         
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #  12:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #  13:     if     100 <= 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  14:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_15                 #  16:     goto   15
l_f1_17_if_false:
l_f1_15:
l_f1_20_while_cond:
    jmp     l_f1_19                 #  20:     goto   19
    jmp     l_f1_20_while_cond      #  21:     goto   20_while_cond
l_f1_19:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_10                 #  26:     goto   10
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $92367, %eax            #   3:     mul    t3 <- 92367, 78527
    movl    $78527, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   4:     call   t4 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   5:     div    t5 <- t3, t4
    movl    -24(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     if     t5 >= 4049 goto 3_while_body
    movl    $4049, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   9:     goto   2_while_cond
l_f2_1:
l_f2_6_while_cond:
    jmp     l_f2_10                 #  12:     goto   10
    movl    $1, %eax                #  13:     assign t6 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_11                 #  14:     goto   11
l_f2_10:
    movl    $0, %eax                #  16:     assign t6 <- 0
    movb    %al, -29(%ebp)         
l_f2_11:
    movzbl  -29(%ebp), %eax         #  18:     if     t6 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  19:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  21:     goto   6_while_cond
l_f2_5:

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    jmp     l_test_exit            
    jmp     l_test_2                #   4:     goto   2
l_test_4_if_false:
l_test_2:
    jmp     l_test_exit            
    call    f2                      #   8:     call   t0 <- f2
    movb    %al, -13(%ebp)         
l_test_15_while_cond:
    jmp     l_test_14               #  10:     goto   14
    jmp     l_test_15_while_cond    #  11:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
    jmp     l_test_18               #  14:     goto   18
l_test_18:
    call    dummyBOOLfunc           #  16:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $1316, %eax             #  17:     assign v0 <- 1316
    movl    %eax, v0               
    movl    $99, %eax               #  18:     if     99 >= 100 goto 24_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_24_if_true      
    jmp     l_test_25_if_false      #  19:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  21:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_9                #  24:     goto   9
l_test_9:

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
