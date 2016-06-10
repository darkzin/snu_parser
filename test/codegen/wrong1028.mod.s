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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t9       <char> %ebp-30 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 94 of <array 13 of <array 30 of <array 20 of <array 85 of <int>>>>>>> %ebp+8 ]
    #    -31(%ebp)   1  [ $v2       <bool> %ebp-31 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 <= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $25378, %eax            #   7:     add    t5 <- 25378, 16351
    movl    $16351, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t6 <- t5, 91950
    movl    $91950, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     add    t7 <- t6, 13213
    movl    $13213, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $94164, %eax            #  10:     if     94164 = t7 goto 5
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_5                 
    jmp     l_f0_6                  #  11:     goto   6
l_f0_5:
    movl    $1, %eax                #  13:     assign t8 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_7                  #  14:     goto   7
l_f0_6:
    movl    $0, %eax                #  16:     assign t8 <- 0
    movb    %al, -29(%ebp)         
l_f0_7:
    movzbl  -29(%ebp), %eax         #  18:     assign v2 <- t8
    movb    %al, -31(%ebp)         
    call    dummyCHARfunc           #  19:     call   t9 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  20:     return t9
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 68 of <array 98 of <array 75 of <array 11 of <array 79 of <int>>>>>>> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     if     t5 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_1                  #   4:     goto   1
l_f1_5:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
    movl    $95088, %eax            #   8:     assign v3 <- 95088
    movl    %eax, 16(%ebp)         

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 63 of <array 58 of <array 65 of <array 67 of <array 65 of <int>>>>>>> %ebp+20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_7                  #   1:     goto   7
    jmp     l_f2_4                  #   2:     goto   4
l_f2_7:
l_f2_4:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   6:     goto   6
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movl    $1, %eax                #   9:     if     1 = t4 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
l_f2_0:
    movl    $74195, %eax            #  14:     if     74195 <= 3919 goto 10_if_true
    movl    $3919, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  15:     goto   11_if_false
l_f2_10_if_true:
l_f2_14_while_cond:
    movl    $19173, %eax            #  18:     if     19173 # 28404 goto 15_while_body
    movl    $28404, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_15_while_body     
    jmp     l_f2_13                 #  19:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  21:     goto   14_while_cond
l_f2_13:
l_f2_18_while_cond:
    jmp     l_f2_17                 #  24:     goto   17
    jmp     l_f2_18_while_cond      #  25:     goto   18_while_cond
l_f2_17:
    movl    $84767, %eax            #  27:     return 84767
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  28:     goto   9
l_f2_11_if_false:
l_f2_9:
l_f2_22_while_cond:
    jmp     l_f2_21                 #  32:     goto   21
    movl    $40378, %eax            #  33:     assign v1 <- 40378
    movl    %eax, 8(%ebp)          
    jmp     l_f2_22_while_cond      #  34:     goto   22_while_cond
l_f2_21:

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]

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
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    call    ReadInt                 #   2:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   4:     assign v0 <- t2
    movb    %al, v0                
    movl    $97, %eax               #   5:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_5                #   6:     goto   5
l_test_5:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_7                #   9:     goto   7
    movl    $0, %eax                #  10:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_7:
    movzbl  -22(%ebp), %eax         #  12:     assign v1 <- t3
    movb    %al, v1                
l_test_13_while_cond:
    jmp     l_test_14_while_body    #  14:     goto   14_while_body
    jmp     l_test_12               #  15:     goto   12
l_test_14_while_body:
    jmp     l_test_exit            
    jmp     l_test_13_while_cond    #  18:     goto   13_while_cond
l_test_12:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
