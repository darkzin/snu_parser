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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
l_f0_1_while_cond:
    jmp     l_f0_1_while_cond       #   1:     goto   1_while_cond
    call    dummyINTfunc            #   2:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $43641, %eax            #   3:     assign v1 <- 43641
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t9       <bool> %ebp-30 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 8 of <array 8 of <array 8 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 6 of <array 4 of <array 6 of <array 9 of <char>>>>>>> %ebp+20 ]

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
    movl    $86718, %eax            #   0:     mul    t4 <- 86718, 70860
    movl    $70860, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t5 <- t4, 70145
    movl    $70145, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t6 <- t5, 76549
    movl    $76549, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t7 <- t6, 10519
    movl    $10519, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $66107, %eax            #   4:     if     66107 <= t7 goto 1
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   5:     goto   2
l_f1_1:
    movl    $1, %eax                #   7:     assign t8 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_3                  #   8:     goto   3
l_f1_2:
    movl    $0, %eax                #  10:     assign t8 <- 0
    movb    %al, -29(%ebp)         
l_f1_3:
    movzbl  -29(%ebp), %eax         #  12:     assign v2 <- t8
    movb    %al, 12(%ebp)          
    movl    $1, %eax                #  13:     assign t9 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f1_8                  #  14:     goto   8
    movl    $0, %eax                #  15:     assign t9 <- 0
    movb    %al, -30(%ebp)         
l_f1_8:
    movzbl  -30(%ebp), %eax         #  17:     return t9
    jmp     l_f1_exit              
    movl    $98, %eax               #  18:     if     98 >= 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  19:     goto   15_if_false
l_f1_14_if_true:
    movl    $0, %eax                #  21:     return 0
    jmp     l_f1_exit              
l_f1_19_while_cond:
    movl    $100, %eax              #  23:     if     100 = 98 goto 20_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_20_while_body     
    jmp     l_f1_18                 #  24:     goto   18
l_f1_20_while_body:
    jmp     l_f1_19_while_cond      #  26:     goto   19_while_cond
l_f1_18:
    jmp     l_f1_22                 #  28:     goto   22
l_f1_22:
    jmp     l_f1_13                 #  30:     goto   13
l_f1_15_if_false:
l_f1_13:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 5 of <array 10 of <array 2 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 10 of <array 10 of <array 5 of <array 4 of <char>>>>>>> %ebp+12 ]

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
    movl    $97, %eax               #   0:     return 97
    jmp     l_f2_exit              
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyProcedure          #   2:     call   dummyProcedure

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 10 of <array 10 of <array 10 of <array 5 of <array 4 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 2 of <array 5 of <array 10 of <array 2 of <array 4 of <int>>>>>>> %ebp-20 ]
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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_exit            
    movl    $41756, %eax            #   2:     assign v0 <- 41756
    movl    %eax, v0               
    call    WriteLn                 #   3:     call   WriteLn
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $98, %eax               #   7:     assign v1 <- 98
    movb    %al, v1                
l_test_8_while_cond:
    movl    $82894, %eax            #   9:     if     82894 # 35534 goto 9_while_body
    movl    $35534, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_9_while_body    
    jmp     l_test_7                #  10:     goto   7
l_test_9_while_body:
    leal    v3, %eax                #  12:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     param  1 <- t0
    pushl   %eax                   
    leal    v2, %eax                #  14:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #  16:     call   t2 <- f2
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_test_8_while_cond     #  17:     goto   8_while_cond
l_test_7:
l_test_13_while_cond:
    jmp     l_test_17               #  20:     goto   17
    movl    $1, %eax                #  21:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_18               #  22:     goto   18
l_test_17:
    movl    $0, %eax                #  24:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_18:
    movl    $0, %eax                #  26:     if     0 # t3 goto 14_while_body
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_14_while_body   
    jmp     l_test_12               #  27:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  29:     goto   13_while_cond
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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 2 of <array 5 of <array 10 of <array 2 of <array 4 of <int>>>>>>
    .long    5
    .long    2
    .long    5
    .long   10
    .long    2
    .long    4
    .skip 3200
v3:                                 # <array 10 of <array 10 of <array 10 of <array 5 of <array 4 of <char>>>>>>
    .long    5
    .long   10
    .long   10
    .long   10
    .long    5
    .long    4
    .skip 20000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
