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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <bool> %ebp-23 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 68 of <array 84 of <array 36 of <array 30 of <array 22 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 26 of <array 24 of <array 87 of <array 96 of <array 33 of <bool>>>>>>> %ebp+20 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $0, %eax                #   4:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     return t3
    jmp     l_f0_exit              
    movl    $55010, %eax            #   7:     add    t4 <- 55010, 60915
    movl    $60915, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     assign v4 <- t4
    movl    %eax, -28(%ebp)        
    jmp     l_f0_13                 #   9:     goto   13
l_f0_13:
    movl    $1, %eax                #  11:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_15                 #  12:     goto   15
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f0_15:
    jmp     l_f0_18                 #  15:     goto   18
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_19                 #  17:     goto   19
l_f0_18:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -22(%ebp)         
l_f0_19:
    movzbl  -21(%ebp), %eax         #  21:     if     t5 = t6 goto 9
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_10                 #  22:     goto   10
l_f0_9:
    movl    $1, %eax                #  24:     assign t7 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f0_11                 #  25:     goto   11
l_f0_10:
    movl    $0, %eax                #  27:     assign t7 <- 0
    movb    %al, -23(%ebp)         
l_f0_11:
    movzbl  -23(%ebp), %eax         #  29:     return t7
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 26 of <array 24 of <array 87 of <array 96 of <array 33 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 68 of <array 84 of <array 36 of <array 30 of <array 22 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t8       <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $t9       <bool> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 72 of <array 99 of <array 90 of <array 91 of <array 6 of <int>>>>>>> %ebp+8 ]
    #   -135717172(%ebp)  135717144  [ $v1       <array 68 of <array 84 of <array 36 of <array 30 of <array 22 of <char>>>>>> %ebp-135717172 ]
    #   -307701580(%ebp)  171984408  [ $v2       <array 26 of <array 24 of <array 87 of <array 96 of <array 33 of <bool>>>>>> %ebp-307701580 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $307701568, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $76925392, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-135717172(%ebp)     # local array 'v1': 5 dimensions
    movl    $68,-135717168(%ebp)    #   dimension 1: 68 elements
    movl    $84,-135717164(%ebp)    #   dimension 2: 84 elements
    movl    $36,-135717160(%ebp)    #   dimension 3: 36 elements
    movl    $30,-135717156(%ebp)    #   dimension 4: 30 elements
    movl    $22,-135717152(%ebp)    #   dimension 5: 22 elements
    movl    $5,-307701580(%ebp)     # local array 'v2': 5 dimensions
    movl    $26,-307701576(%ebp)    #   dimension 1: 26 elements
    movl    $24,-307701572(%ebp)    #   dimension 2: 24 elements
    movl    $87,-307701568(%ebp)    #   dimension 3: 87 elements
    movl    $96,-307701564(%ebp)    #   dimension 4: 96 elements
    movl    $33,-307701560(%ebp)    #   dimension 5: 33 elements

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $99, %eax               #   1:     return 99
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     return t3
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_6_while_cond:
    leal    -307701580(%ebp), %eax  #   8:     &()    t4 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  3 <- t4
    pushl   %eax                   
    leal    -135717172(%ebp), %eax  #  10:     &()    t5 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     param  2 <- t5
    pushl   %eax                   
    movl    $99020, %eax            #  12:     if     99020 >= 81377 goto 9
    movl    $81377, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_9                 
    jmp     l_f1_10                 #  13:     goto   10
l_f1_9:
    movl    $1, %eax                #  15:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_11                 #  16:     goto   11
l_f1_10:
    movl    $0, %eax                #  18:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f1_11:
    movzbl  -25(%ebp), %eax         #  20:     param  1 <- t6
    pushl   %eax                   
    call    dummyCHARfunc           #  21:     call   t7 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  22:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  23:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #  24:     if     t8 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_7_while_body      
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  26:     goto   6_while_cond
    call    dummyBOOLfunc           #  27:     call   t9 <- dummyBOOLfunc
    movb    %al, -28(%ebp)         

l_f1_exit:
    # epilogue
    addl    $307701568, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 72 of <array 99 of <array 90 of <array 91 of <array 6 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t6       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t7       <bool> %ebp-20 ]
    #   -1401079724(%ebp)  1401079704  [ $v0       <array 72 of <array 99 of <array 90 of <array 91 of <array 6 of <int>>>>>> %ebp-1401079724 ]
    #   -1401079725(%ebp)   1  [ $v1       <bool> %ebp-1401079725 ]
    #   -1401079726(%ebp)   1  [ $v2       <char> %ebp-1401079726 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1401079716, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $350269929, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1401079724(%ebp)    # local array 'v0': 5 dimensions
    movl    $72,-1401079720(%ebp)   #   dimension 1: 72 elements
    movl    $99,-1401079716(%ebp)   #   dimension 2: 99 elements
    movl    $90,-1401079712(%ebp)   #   dimension 3: 90 elements
    movl    $91,-1401079708(%ebp)   #   dimension 4: 91 elements
    movl    $6,-1401079704(%ebp)    #   dimension 5: 6 elements

    # function body
    leal    -1401079724(%ebp), %eax #   0:     &()    t3 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #   2:     call   t4 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     return t4
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   4:     call   t5 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   5:     if     t5 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6                 
    jmp     l_f2_6                  #   6:     goto   6
    jmp     l_f2_6                  #   7:     goto   6
    jmp     l_f2_7                  #   8:     goto   7
l_f2_6:
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_8                  #  11:     goto   8
l_f2_7:
    movl    $0, %eax                #  13:     assign t6 <- 0
    movb    %al, -19(%ebp)         
l_f2_8:
    movzbl  -19(%ebp), %eax         #  15:     if     t6 # 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2                 
    jmp     l_f2_3                  #  16:     goto   3
l_f2_2:
    movl    $1, %eax                #  18:     assign t7 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f2_4                  #  19:     goto   4
l_f2_3:
    movl    $0, %eax                #  21:     assign t7 <- 0
    movb    %al, -20(%ebp)         
l_f2_4:
    movzbl  -20(%ebp), %eax         #  23:     assign v1 <- t7
    movb    %al, -1401079725(%ebp) 
    movl    $100, %eax              #  24:     if     100 < 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  25:     goto   14_if_false
l_f2_13_if_true:
    movl    $98, %eax               #  27:     assign v2 <- 98
    movb    %al, -1401079726(%ebp) 
l_f2_18_while_cond:
    movl    $81226, %eax            #  29:     if     81226 <= 99206 goto 19_while_body
    movl    $99206, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_19_while_body     
    jmp     l_f2_17                 #  30:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  32:     goto   18_while_cond
l_f2_17:
    jmp     l_f2_12                 #  34:     goto   12
l_f2_14_if_false:
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $1401079716, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    jmp     l_test_4                #   5:     goto   4
    jmp     l_test_5_while_cond     #   6:     goto   5_while_cond
l_test_4:
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
l_test_8_while_cond:
    movl    $98, %eax               #  12:     if     98 >= 98 goto 9_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_9_while_body    
    jmp     l_test_7                #  13:     goto   7
l_test_9_while_body:
    leal    _str_1, %eax            #  15:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  17:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_8_while_cond     #  18:     goto   8_while_cond
l_test_7:
    jmp     l_test_exit            
    jmp     l_test_15_if_false      #  21:     goto   15_if_false
    call    ReadInt                 #  22:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $59949, %eax            #  23:     if     59949 < 69923 goto 18_if_true
    movl    $69923, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_18_if_true      
    jmp     l_test_19_if_false      #  24:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  26:     goto   17
l_test_19_if_false:
l_test_17:
    movl    $89297, %eax            #  29:     assign v0 <- 89297
    movl    %eax, v0               
    movl    $70510, %eax            #  30:     assign v0 <- 70510
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_25_while_cond:
    movl    $56544, %eax            #  33:     if     56544 = 19732 goto 26_while_body
    movl    $19732, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_26_while_body   
    jmp     l_test_24               #  34:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  36:     goto   25_while_cond
l_test_24:
    jmp     l_test_13               #  38:     goto   13
l_test_15_if_false:
l_test_13:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
