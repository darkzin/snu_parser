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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 67 of <array 53 of <array 21 of <array 43 of <array 16 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 34 of <array 92 of <array 52 of <array 2 of <array 22 of <bool>>>>>>> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t3 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    movl    $84576, %eax            #   4:     return 84576
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #   8:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $8228, %eax             #   9:     param  0 <- 8228
    pushl   %eax                   
    call    WriteInt                #  10:     call   WriteInt
    addl    $4, %esp               
l_f0_10_while_cond:
    movl    $82059, %eax            #  12:     sub    t5 <- 82059, 49204
    movl    $49204, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     if     t5 > 42293 goto 11_while_body
    movl    $42293, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_11_while_body     
    jmp     l_f0_9                  #  14:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  16:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_4                  #  18:     goto   4
l_f0_4:
    movl    $84920, %eax            #  20:     if     84920 # 57136 goto 14_if_true
    movl    $57136, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  21:     goto   15_if_false
l_f0_14_if_true:
    call    dummyINTfunc            #  23:     call   t6 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f0_18                 #  24:     goto   18
l_f0_18:
l_f0_22_while_cond:
    movl    $99, %eax               #  27:     if     99 > 98 goto 23_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_23_while_body     
    jmp     l_f0_21                 #  28:     goto   21
l_f0_23_while_body:
    jmp     l_f0_22_while_cond      #  30:     goto   22_while_cond
l_f0_21:
    movl    $3786, %eax             #  32:     if     3786 < 18653 goto 26_if_true
    movl    $18653, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_26_if_true        
    jmp     l_f0_27_if_false        #  33:     goto   27_if_false
l_f0_26_if_true:
    jmp     l_f0_25                 #  35:     goto   25
l_f0_27_if_false:
l_f0_25:
    movl    $71813, %eax            #  38:     assign v2 <- 71813
    movl    %eax, -28(%ebp)        
    jmp     l_f0_13                 #  39:     goto   13
l_f0_15_if_false:
l_f0_13:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 50 of <array 25 of <array 25 of <array 95 of <array 82 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 11 of <array 6 of <array 75 of <array 87 of <array 90 of <bool>>>>>>> %ebp+20 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $85964, %eax            #   1:     div    t3 <- 85964, 92798
    movl    $92798, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $99826, %eax            #   2:     if     99826 <= t3 goto 4
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_4                 
    jmp     l_f1_5                  #   3:     goto   5
l_f1_4:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_6                  #   6:     goto   6
l_f1_5:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f1_6:
    movzbl  -17(%ebp), %eax         #  10:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  14:     call   t5 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $10691, %eax            #  15:     assign v4 <- 10691
    movl    %eax, -24(%ebp)        

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 11 of <array 6 of <array 75 of <array 87 of <array 90 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 50 of <array 25 of <array 25 of <array 95 of <array 82 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t8       <char> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 41 of <array 87 of <array 77 of <array 33 of <array 67 of <int>>>>>>> %ebp+8 ]
    #   -243437548(%ebp)  243437524  [ $v1       <array 50 of <array 25 of <array 25 of <array 95 of <array 82 of <char>>>>>> %ebp-243437548 ]
    #   -282196072(%ebp)  38758524  [ $v2       <array 11 of <array 6 of <array 75 of <array 87 of <array 90 of <bool>>>>>> %ebp-282196072 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $282196060, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $70549015, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-243437548(%ebp)     # local array 'v1': 5 dimensions
    movl    $50,-243437544(%ebp)    #   dimension 1: 50 elements
    movl    $25,-243437540(%ebp)    #   dimension 2: 25 elements
    movl    $25,-243437536(%ebp)    #   dimension 3: 25 elements
    movl    $95,-243437532(%ebp)    #   dimension 4: 95 elements
    movl    $82,-243437528(%ebp)    #   dimension 5: 82 elements
    movl    $5,-282196072(%ebp)     # local array 'v2': 5 dimensions
    movl    $11,-282196068(%ebp)    #   dimension 1: 11 elements
    movl    $6,-282196064(%ebp)     #   dimension 2: 6 elements
    movl    $75,-282196060(%ebp)    #   dimension 3: 75 elements
    movl    $87,-282196056(%ebp)    #   dimension 4: 87 elements
    movl    $90,-282196052(%ebp)    #   dimension 5: 90 elements

    # function body
    leal    -282196072(%ebp), %eax  #   0:     &()    t3 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t3
    pushl   %eax                   
    leal    -243437548(%ebp), %eax  #   2:     &()    t4 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t4
    pushl   %eax                   
    movl    $100, %eax              #   4:     param  1 <- 100
    pushl   %eax                   
    movl    $98, %eax               #   5:     if     98 >= 97 goto 3
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_3                 
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_5                  #   9:     goto   5
l_f2_4:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_5:
    movzbl  -21(%ebp), %eax         #  13:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  14:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  15:     if     t6 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #  16:     goto   2_if_false
l_f2_1_if_true:
l_f2_8_while_cond:
    movl    $98, %eax               #  19:     if     98 > 99 goto 9_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_9_while_body      
    jmp     l_f2_7                  #  20:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  22:     goto   8_while_cond
l_f2_7:
    jmp     l_f2_0                  #  24:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #  27:     call   t7 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
l_f2_13_while_cond:
    call    dummyCHARfunc           #  29:     call   t8 <- dummyCHARfunc
    movb    %al, -24(%ebp)         
    movzbl  -24(%ebp), %eax         #  30:     if     t8 # 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_14_while_body     
    jmp     l_f2_12                 #  31:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  33:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $282196060, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 41 of <array 87 of <array 77 of <array 33 of <array 67 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_1                #   3:     goto   1
    jmp     l_test_1                #   4:     goto   1
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #   6:     goto   8_while_cond
    jmp     l_test_2_while_cond     #   7:     goto   2_while_cond
l_test_1:
    call    WriteLn                 #   9:     call   WriteLn
    jmp     l_test_exit            
l_test_16_while_cond:
    movl    $100, %eax              #  12:     if     100 = 99 goto 17_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_15               #  13:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  15:     goto   16_while_cond
l_test_15:
    leal    v0, %eax                #  17:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #  19:     call   t1 <- f2
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    call    ReadInt                 #  20:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $15432, %eax            #  21:     param  0 <- 15432
    pushl   %eax                   
    call    WriteInt                #  22:     call   WriteInt
    addl    $4, %esp               
    movl    $97, %eax               #  23:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_12               #  24:     goto   12
l_test_12:
    jmp     l_test_exit            

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
v0:                                 # <array 41 of <array 87 of <array 77 of <array 33 of <array 67 of <int>>>>>>
    .long    5
    .long   41
    .long   87
    .long   77
    .long   33
    .long   67
    .skip -1865883100
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
