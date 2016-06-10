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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

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
    movl    $58432, %eax            #   0:     add    t6 <- 58432, 60783
    movl    $60783, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t6 # 83479 goto 1_if_true
    movl    $83479, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   5:     goto   4
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_exit              
    jmp     l_f0_10_if_false        #   9:     goto   10_if_false
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_0                  #  13:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_exit              
l_f0_13_while_cond:
    movl    $66822, %eax            #  18:     assign v0 <- 66822
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  19:     if     97 # 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  20:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  22:     goto   16
l_f0_18_if_false:
l_f0_16:
    movl    $0, %eax                #  25:     assign v1 <- 0
    movb    %al, -21(%ebp)         
    jmp     l_f0_13_while_cond      #  26:     goto   13_while_cond

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <char> %ebp-21 ]

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
l_f1_1_while_cond:
    movl    $1, %eax                #   1:     if     1 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_8_while_cond:
    movl    $100, %eax              #   7:     if     100 <= 98 goto 9_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_9_while_body      
    jmp     l_f1_7                  #   8:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  10:     goto   8_while_cond
l_f1_7:
    call    dummyBOOLfunc           #  12:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_1_while_cond       #  13:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_exit              
l_f1_14_while_cond:
    call    dummyCHARfunc           #  17:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  18:     if     98 <= t7 goto 15_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_15_while_body     
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_while_body:
    movl    $17332, %eax            #  21:     assign v0 <- 17332
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  22:     assign v1 <- 98
    movb    %al, -21(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_14_while_cond      #  25:     goto   14_while_cond
l_f1_13:

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]

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
    movl    $46525, %eax            #   0:     sub    t6 <- 46525, 71350
    movl    $71350, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $33033, %eax            #   1:     if     33033 = t6 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $0, %eax                #   4:     return 0
    jmp     l_f2_exit              
l_f2_6_while_cond:
    movl    $1, %eax                #   6:     if     1 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #   7:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   9:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    _str_1, %eax            #  14:     &()    t7 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #  16:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #  17:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t5       <bool> %ebp-27 ]

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
    movl    $73822, %eax            #   0:     div    t0 <- 73822, 12618
    movl    $12618, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 34491
    movl    $34491, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 26139
    movl    $26139, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $30971, %eax            #   3:     if     30971 <= t2 goto 1
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_1               
    jmp     l_test_2                #   4:     goto   2
l_test_1:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_3                #   7:     goto   3
l_test_2:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_3:
    movzbl  -25(%ebp), %eax         #  11:     assign v0 <- t3
    movb    %al, v0                
l_test_6_while_cond:
    call    dummyBOOLfunc           #  13:     call   t4 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  14:     if     t4 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_7_while_body    
    jmp     l_test_5                #  15:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  17:     goto   6_while_cond
l_test_5:
    jmp     l_test_10               #  19:     goto   10
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_test_11               #  21:     goto   11
l_test_10:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -27(%ebp)         
l_test_11:
    movzbl  -27(%ebp), %eax         #  25:     assign v0 <- t5
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
