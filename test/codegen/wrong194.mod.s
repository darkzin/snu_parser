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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t4 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #   7:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f0_6_while_cond:
    movl    $45081, %eax            #   9:     return 45081
    jmp     l_f0_exit              
    jmp     l_f0_6_while_cond       #  10:     goto   6_while_cond

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 1 of <array 2 of <array 3 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    movl    $26537, %eax            #   0:     add    t4 <- 26537, 77515
    movl    $77515, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 653
    movl    $653, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $44475, %eax            #   2:     if     44475 < t5 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   3:     goto   2
l_f1_1:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f1_3:
    movzbl  -21(%ebp), %eax         #  10:     return t6
    jmp     l_f1_exit              
l_f1_6_while_cond:
    movl    $97, %eax               #  12:     if     97 # 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_7_while_body      
    jmp     l_f1_5                  #  13:     goto   5
l_f1_7_while_body:
    movl    $98, %eax               #  15:     assign v4 <- 98
    movb    %al, 20(%ebp)          
    call    dummyINTfunc            #  16:     call   t7 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f1_6_while_cond       #  17:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_12                 #  19:     goto   12
    jmp     l_f1_12                 #  20:     goto   12
    jmp     l_f1_13                 #  21:     goto   13
l_f1_12:
    movl    $1, %eax                #  23:     assign t8 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_14                 #  24:     goto   14
l_f1_13:
    movl    $0, %eax                #  26:     assign t8 <- 0
    movb    %al, -29(%ebp)         
l_f1_14:
    movzbl  -29(%ebp), %eax         #  28:     return t8
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 6 of <array 6 of <array 10 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 1 of <array 2 of <array 2 of <array 2 of <int>>>>>>> %ebp+12 ]

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
    movl    $77682, %eax            #   0:     if     77682 < 30057 goto 1_if_true
    movl    $30057, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_exit              
    jmp     l_f2_5                  #   4:     goto   5
l_f2_5:
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #  10:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   2:     if     98 > 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    movl    $95290, %eax            #   5:     assign v0 <- 95290
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $99, %eax               #   7:     if     99 <= 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_9_if_true       
    jmp     l_test_10_if_false      #   8:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  10:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_2                #  13:     goto   2
l_test_4_if_false:
l_test_2:
    call    f0                      #  16:     call   t2 <- f0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     assign v0 <- t2
    movl    %eax, v0               
    jmp     l_test_15_if_false      #  18:     goto   15_if_false
    jmp     l_test_15_if_false      #  19:     goto   15_if_false
    jmp     l_test_15_if_false      #  20:     goto   15_if_false
    jmp     l_test_15_if_false      #  21:     goto   15_if_false
    jmp     l_test_15_if_false      #  22:     goto   15_if_false
    movl    $5649, %eax             #  23:     if     5649 > 44054 goto 22_if_true
    movl    $44054, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_22_if_true      
    jmp     l_test_23_if_false      #  24:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  26:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_13               #  29:     goto   13
l_test_15_if_false:
l_test_13:
    call    dummyCHARfunc           #  32:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  33:     assign v1 <- t3
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
