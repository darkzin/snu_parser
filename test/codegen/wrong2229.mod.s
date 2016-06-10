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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]

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
    movl    $23911, %eax            #   0:     assign v0 <- 23911
    movl    %eax, -28(%ebp)        
    call    dummyBOOLfunc           #   1:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   2:     if     0 # 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   3:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_if_false:
l_f0_5:
    call    dummyCHARfunc           #   8:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f0_11_while_cond:
    jmp     l_f0_11_while_cond      #  10:     goto   11_while_cond
    call    dummyINTfunc            #  11:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_1                  #  12:     goto   1
l_f0_1:
l_f0_18_while_cond:
    movl    $66614, %eax            #  15:     if     66614 <= 38305 goto 19_while_body
    movl    $38305, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_19_while_body     
    jmp     l_f0_17                 #  16:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  18:     goto   18_while_cond
l_f0_17:
l_f0_22_while_cond:
    call    dummyCHARfunc           #  21:     call   t9 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  22:     if     t9 < 99 goto 23_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_23_while_body     
    jmp     l_f0_21                 #  23:     goto   21
l_f0_23_while_body:
    jmp     l_f0_22_while_cond      #  25:     goto   22_while_cond
l_f0_21:
    jmp     l_f0_14                 #  27:     goto   14
l_f0_14:

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 20 of <array 79 of <array 90 of <array 62 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t6 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
l_f1_4_while_cond:
    jmp     l_f1_3                  #   5:     goto   3
    jmp     l_f1_4_while_cond       #   6:     goto   4_while_cond
l_f1_3:
    jmp     l_f1_0                  #   8:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    f0                      #  11:     call   t7 <- f0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_9_if_false         #  13:     goto   9_if_false
    call    ReadInt                 #  14:     call   t8 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f1_7                  #  15:     goto   7
l_f1_9_if_false:
l_f1_7:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    movl    $77798, %eax            #   0:     sub    t6 <- 77798, 78438
    movl    $78438, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     sub    t7 <- t6, 19167
    movl    $19167, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     add    t8 <- t7, 88266
    movl    $88266, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $43862, %eax            #   3:     if     43862 = t8 goto 1
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   4:     goto   2
l_f2_1:
    movl    $1, %eax                #   6:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f2_3:
    movzbl  -29(%ebp), %eax         #  11:     return t9
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  12:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_13                 #  13:     goto   13
    jmp     l_f2_7                  #  14:     goto   7
l_f2_13:
l_f2_7:
    movl    $1, %eax                #  17:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_9                  #  18:     goto   9
    movl    $0, %eax                #  19:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_9:
    movzbl  -14(%ebp), %eax         #  21:     return t11
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 20 of <array 79 of <array 90 of <array 62 of <array 1 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]

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
    movl    $94054, %eax            #   0:     if     94054 > 43059 goto 1_if_true
    movl    $43059, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $99, %eax               #   4:     if     99 < 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    movl    $97, %eax               #   9:     if     97 # 100 goto 9
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_9               
    jmp     l_test_10               #  10:     goto   10
l_test_9:
    movl    $1, %eax                #  12:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_11               #  13:     goto   11
l_test_10:
    movl    $0, %eax                #  15:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_11:
    movzbl  -13(%ebp), %eax         #  17:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #  18:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #  19:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_exit            
l_test_17_while_cond:
    movl    $98, %eax               #  22:     if     98 <= 100 goto 18_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_18_while_body   
    jmp     l_test_16               #  23:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  25:     goto   17_while_cond
l_test_16:
    movl    $561, %eax              #  27:     param  3 <- 561
    pushl   %eax                   
    movl    $99, %eax               #  28:     param  2 <- 99
    pushl   %eax                   
    leal    v1, %eax                #  29:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     param  1 <- t2
    pushl   %eax                   
    movl    $17524, %eax            #  31:     param  0 <- 17524
    pushl   %eax                   
    call    f1                      #  32:     call   t3 <- f1
    addl    $16, %esp              
    movl    %eax, -24(%ebp)        
    call    dummyBOOLfunc           #  33:     call   t4 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_0                #  34:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    call    ReadInt                 #  38:     call   t5 <- ReadInt
    movl    %eax, -32(%ebp)        

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 20 of <array 79 of <array 90 of <array 62 of <array 1 of <bool>>>>>>
    .long    5
    .long   20
    .long   79
    .long   90
    .long   62
    .long    1
    .skip 8816400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
