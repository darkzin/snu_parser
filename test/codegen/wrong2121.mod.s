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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <char> %ebp-16 ]
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
l_f0_4_while_cond:
    movl    $100, %eax              #   2:     assign v0 <- 100
    movb    %al, -16(%ebp)         
    movl    $98, %eax               #   3:     if     98 <= 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   4:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #   6:     goto   7
l_f0_9_if_false:
l_f0_7:
    movl    $97, %eax               #   9:     if     97 >= 99 goto 12
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_12                
    jmp     l_f0_13                 #  10:     goto   13
l_f0_12:
    movl    $1, %eax                #  12:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_14                 #  13:     goto   14
l_f0_13:
    movl    $0, %eax                #  15:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_14:
    movzbl  -13(%ebp), %eax         #  17:     return t5
    jmp     l_f0_exit              
    movl    $1, %eax                #  18:     return 1
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  19:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    WriteLn                 #  20:     call   WriteLn
    jmp     l_f0_4_while_cond       #  21:     goto   4_while_cond
    jmp     l_f0_1_while_cond       #  22:     goto   1_while_cond
    jmp     l_f0_20                 #  23:     goto   20
l_f0_20:
    movl    $1, %eax                #  25:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_22                 #  26:     goto   22
    movl    $0, %eax                #  27:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f0_22:
    movzbl  -15(%ebp), %eax         #  29:     return t7
    jmp     l_f0_exit              
    movl    $79945, %eax            #  30:     assign v1 <- 79945
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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v2       <bool> %ebp-25 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v1 <- t5
    movl    %eax, -24(%ebp)        
    call    f0                      #   2:     call   t6 <- f0
    movb    %al, -17(%ebp)         
    movl    $0, %eax                #   3:     assign v2 <- 0
    movb    %al, -25(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 88 of <array 15 of <array 92 of <array 8 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 34 of <array 93 of <array 39 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $52062, %eax            #   1:     if     52062 >= 90147 goto 5_if_true
    movl    $90147, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   2:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_0                  #   7:     goto   0
l_f2_0:
l_f2_9_while_cond:
    movl    $97, %eax               #  10:     if     97 < 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_10_while_body     
    jmp     l_f2_8                  #  11:     goto   8
l_f2_10_while_body:
l_f2_13_while_cond:
    movl    $3483, %eax             #  14:     if     3483 = 72916 goto 14_while_body
    movl    $72916, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_14_while_body     
    jmp     l_f2_12                 #  15:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  17:     goto   13_while_cond
l_f2_12:
    call    f0                      #  19:     call   t6 <- f0
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  20:     assign v2 <- 100
    movb    %al, -15(%ebp)         
    jmp     l_f2_9_while_cond       #  21:     goto   9_while_cond
l_f2_8:
l_f2_19_while_cond:
    jmp     l_f2_20_while_body      #  24:     goto   20_while_body
l_f2_20_while_body:
    jmp     l_f2_19_while_cond      #  26:     goto   19_while_cond

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

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
l_test_1_while_cond:
    jmp     l_test_5                #   1:     goto   5
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   3:     goto   6
l_test_5:
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movl    $1, %eax                #   7:     if     1 = t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   8:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #  10:     goto   1_while_cond
l_test_0:
l_test_9_while_cond:
    movl    $6910, %eax             #  13:     sub    t1 <- 6910, 6144
    movl    $6144, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t2 <- t1, 59287
    movl    $59287, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     add    t3 <- t2, 89313
    movl    $89313, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     if     t3 >= 71253 goto 10_while_body
    movl    $71253, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_10_while_body   
    jmp     l_test_8                #  17:     goto   8
l_test_10_while_body:
    jmp     l_test_exit            
    jmp     l_test_9_while_cond     #  20:     goto   9_while_cond
l_test_8:
    jmp     l_test_14               #  22:     goto   14
    jmp     l_test_15               #  23:     goto   15
l_test_14:
    movl    $1, %eax                #  25:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_16               #  26:     goto   16
l_test_15:
    movl    $0, %eax                #  28:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_16:
    movzbl  -29(%ebp), %eax         #  30:     assign v0 <- t4
    movb    %al, v0                

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
