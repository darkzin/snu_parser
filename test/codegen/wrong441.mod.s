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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 7 of <array 4 of <array 9 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    movl    $63011, %eax            #   0:     mul    t1 <- 63011, 46707
    movl    $46707, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t2 <- t1, 91693
    movl    $91693, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t3 <- t2, 92669
    movl    $92669, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t3
    jmp     l_f0_exit              
l_f0_5_while_cond:
    movl    $98, %eax               #   5:     if     98 < 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_6_while_body      
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   8:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_8                  #  10:     goto   8
l_f0_8:
    movl    $62707, %eax            #  12:     return 62707
    jmp     l_f0_exit              
    call    dummyINTfunc            #  13:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f0_1                  #  14:     goto   1
l_f0_1:
    call    dummyBOOLfunc           #  16:     call   t5 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    call    ReadInt                 #  17:     call   t6 <- ReadInt
    movl    %eax, -36(%ebp)        
    jmp     l_f0_18                 #  18:     goto   18
l_f0_18:
    jmp     l_f0_13                 #  20:     goto   13
l_f0_13:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 2 of <array 5 of <array 9 of <array 2 of <int>>>>>>> %ebp+16 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $98, %eax               #   2:     if     98 >= 97 goto 4_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   3:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   5:     goto   3
l_f1_5_if_false:
l_f1_3:
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_8                  #  10:     goto   8
    jmp     l_f1_9                  #  11:     goto   9
l_f1_8:
    movl    $1, %eax                #  13:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_10                 #  14:     goto   10
l_f1_9:
    movl    $0, %eax                #  16:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_10:
    movzbl  -13(%ebp), %eax         #  18:     assign v1 <- t1
    movb    %al, 12(%ebp)          
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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 8 of <array 5 of <array 8 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 7 of <array 2 of <array 4 of <array 3 of <bool>>>>>>> %ebp+16 ]

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
    movl    $97, %eax               #   0:     if     97 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_5_while_cond:
    jmp     l_f2_4                  #   7:     goto   4
l_f2_8_while_cond:
    movl    $97, %eax               #   9:     if     97 <= 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_9_while_body      
    jmp     l_f2_7                  #  10:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  12:     goto   8_while_cond
l_f2_7:
    movl    $71750, %eax            #  14:     if     71750 > 94061 goto 12
    movl    $94061, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_12                
    jmp     l_f2_13                 #  15:     goto   13
l_f2_12:
    movl    $1, %eax                #  17:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_14                 #  18:     goto   14
l_f2_13:
    movl    $0, %eax                #  20:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_14:
    movzbl  -13(%ebp), %eax         #  22:     assign v0 <- t1
    movb    %al, 8(%ebp)           
    movl    $30589, %eax            #  23:     param  0 <- 30589
    pushl   %eax                   
    call    WriteInt                #  24:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_5_while_cond       #  25:     goto   5_while_cond
l_f2_4:
    movl    $13149, %eax            #  27:     sub    t2 <- 13149, 52063
    movl    $52063, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     if     t2 >= 48721 goto 18_if_true
    movl    $48721, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  29:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_exit              
    movl    $81321, %eax            #  32:     if     81321 # 54046 goto 23_if_true
    movl    $54046, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_23_if_true        
    jmp     l_f2_24_if_false        #  33:     goto   24_if_false
l_f2_23_if_true:
    jmp     l_f2_22                 #  35:     goto   22
l_f2_24_if_false:
l_f2_22:
    jmp     l_f2_17                 #  38:     goto   17
l_f2_19_if_false:
l_f2_17:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_4_while_cond:
    movl    $68240, %eax            #   2:     if     68240 >= 164 goto 5_while_body
    movl    $164, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_5_while_body    
    jmp     l_test_3                #   3:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   5:     goto   4_while_cond
l_test_3:
    jmp     l_test_9_if_false       #   7:     goto   9_if_false
    jmp     l_test_7                #   8:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $100, %eax              #  15:     assign v0 <- 100
    movb    %al, v0                
l_test_13_while_cond:
    movl    $68505, %eax            #  17:     add    t0 <- 68505, 33444
    movl    $33444, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $30821, %eax            #  18:     if     30821 > t0 goto 14_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_14_while_body   
    jmp     l_test_12               #  19:     goto   12
l_test_14_while_body:
    movl    $59620, %eax            #  21:     assign v1 <- 59620
    movl    %eax, v1               
    jmp     l_test_13_while_cond    #  22:     goto   13_while_cond
l_test_12:

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
