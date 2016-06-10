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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 42 of <array 93 of <array 79 of <array 8 of <array 41 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 40 of <array 45 of <array 55 of <array 40 of <array 22 of <int>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     assign v3 <- 98
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   2:     if     99 > 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
l_f0_3_if_true:
l_f0_7_while_cond:
    movl    $97, %eax               #   6:     if     97 < 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_8_while_body      
    jmp     l_f0_6                  #   7:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #   9:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_2                  #  11:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 40 of <array 45 of <array 55 of <array 40 of <array 22 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 42 of <array 93 of <array 79 of <array 8 of <array 41 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t9       <char> %ebp-30 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 32 of <array 30 of <array 80 of <array 15 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 91 of <array 11 of <array 8 of <array 58 of <array 18 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -36(%ebp)   4  [ $v3       <int> %ebp-36 ]
    #   -101212332(%ebp)  101212296  [ $v4       <array 42 of <array 93 of <array 79 of <array 8 of <array 41 of <bool>>>>>> %ebp-101212332 ]
    #   -449692356(%ebp)  348480024  [ $v5       <array 40 of <array 45 of <array 55 of <array 40 of <array 22 of <int>>>>>> %ebp-449692356 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $449692344, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $112423086, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-101212332(%ebp)     # local array 'v4': 5 dimensions
    movl    $42,-101212328(%ebp)    #   dimension 1: 42 elements
    movl    $93,-101212324(%ebp)    #   dimension 2: 93 elements
    movl    $79,-101212320(%ebp)    #   dimension 3: 79 elements
    movl    $8,-101212316(%ebp)     #   dimension 4: 8 elements
    movl    $41,-101212312(%ebp)    #   dimension 5: 41 elements
    movl    $5,-449692356(%ebp)     # local array 'v5': 5 dimensions
    movl    $40,-449692352(%ebp)    #   dimension 1: 40 elements
    movl    $45,-449692348(%ebp)    #   dimension 2: 45 elements
    movl    $55,-449692344(%ebp)    #   dimension 3: 55 elements
    movl    $40,-449692340(%ebp)    #   dimension 4: 40 elements
    movl    $22,-449692336(%ebp)    #   dimension 5: 22 elements

    # function body
    movl    $90923, %eax            #   0:     assign v3 <- 90923
    movl    %eax, -36(%ebp)        
    jmp     l_f1_2_if_true          #   1:     goto   2_if_true
l_f1_2_if_true:
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #   4:     goto   7_while_cond
    movl    $98, %eax               #   5:     if     98 > 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #   6:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #   8:     goto   9
l_f1_11_if_false:
l_f1_9:
l_f1_14_while_cond:
    movl    $89013, %eax            #  12:     if     89013 > 40638 goto 15_while_body
    movl    $40638, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_15_while_body     
    jmp     l_f1_13                 #  13:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  15:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_1                  #  17:     goto   1
l_f1_1:
    leal    -449692356(%ebp), %eax  #  19:     &()    t5 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  2 <- t5
    pushl   %eax                   
    leal    -101212332(%ebp), %eax  #  21:     &()    t6 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     param  1 <- t6
    pushl   %eax                   
    movl    $81799, %eax            #  23:     add    t7 <- 81799, 43951
    movl    $43951, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     if     t7 <= 13546 goto 21
    movl    $13546, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_21                
    jmp     l_f1_22                 #  25:     goto   22
l_f1_21:
    movl    $1, %eax                #  27:     assign t8 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_23                 #  28:     goto   23
l_f1_22:
    movl    $0, %eax                #  30:     assign t8 <- 0
    movb    %al, -29(%ebp)         
l_f1_23:
    movzbl  -29(%ebp), %eax         #  32:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  33:     call   t9 <- f0
    addl    $12, %esp              
    movb    %al, -30(%ebp)         
    movl    $98, %eax               #  34:     if     98 >= t9 goto 18_if_true
    movzbl  -30(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  35:     goto   19_if_false
l_f1_18_if_true:
    call    dummyCHARfunc           #  37:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_17                 #  38:     goto   17
l_f1_19_if_false:
l_f1_17:

l_f1_exit:
    # epilogue
    addl    $449692344, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    call    dummyProcedure          #   1:     call   dummyProcedure
l_f2_3_while_cond:
    jmp     l_f2_4_while_body       #   3:     goto   4_while_body
    jmp     l_f2_2                  #   4:     goto   2
l_f2_4_while_body:
    call    dummyBOOLfunc           #   6:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_3_while_cond       #   7:     goto   3_while_cond
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
    movl    $99, %eax               #   5:     assign v0 <- 99
    movb    %al, v0                
    movl    $1, %eax                #   6:     if     1 = 0 goto 9
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9               
    jmp     l_test_10               #   7:     goto   10
l_test_9:
    movl    $1, %eax                #   9:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_11               #  10:     goto   11
l_test_10:
    movl    $0, %eax                #  12:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_11:
    movzbl  -15(%ebp), %eax         #  14:     assign v1 <- t2
    movb    %al, v1                
    movl    $1, %eax                #  15:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_4                #  16:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $20083, %eax            #  19:     mul    t3 <- 20083, 27870
    movl    $27870, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     div    t4 <- t3, 28801
    movl    $28801, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     assign v2 <- t4
    movl    %eax, v2               

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
