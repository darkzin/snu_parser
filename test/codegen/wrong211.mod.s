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
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <char> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -34(%ebp)   1  [ $v1       <bool> %ebp-34 ]
    #    -35(%ebp)   1  [ $v2       <char> %ebp-35 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    jmp     l_f0_2                  #   1:     goto   2
    movl    $1, %eax                #   2:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $0, %eax                #   5:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   7:     assign v1 <- t3
    movb    %al, -34(%ebp)         
    jmp     l_f0_11                 #   8:     goto   11
    jmp     l_f0_11                 #   9:     goto   11
    jmp     l_f0_11                 #  10:     goto   11
    jmp     l_f0_12                 #  11:     goto   12
l_f0_11:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_13                 #  14:     goto   13
l_f0_12:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_13:
    movzbl  -14(%ebp), %eax         #  18:     if     t4 # 0 goto 8_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #  19:     goto   9_if_false
l_f0_8_if_true:
    movl    $97, %eax               #  21:     assign v2 <- 97
    movb    %al, -35(%ebp)         
    jmp     l_f0_7                  #  22:     goto   7
l_f0_9_if_false:
l_f0_7:
    movl    $37225, %eax            #  25:     sub    t5 <- 37225, 49055
    movl    $49055, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     add    t6 <- t5, 97834
    movl    $97834, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     sub    t7 <- t6, 93712
    movl    $93712, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     sub    t8 <- t7, 52102
    movl    $52102, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $41213, %eax            #  29:     if     41213 <= t8 goto 20_if_true
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_20_if_true        
    jmp     l_f0_21_if_false        #  30:     goto   21_if_false
l_f0_20_if_true:
    movl    $99, %eax               #  32:     return 99
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  33:     call   t9 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    jmp     l_f0_19                 #  34:     goto   19
l_f0_21_if_false:
l_f0_19:

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    leal    _str_1, %eax            #   0:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $98, %eax               #   3:     if     98 >= 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_2_if_true:
    leal    _str_2, %eax            #   6:     &()    t4 <- _str_2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   8:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_7_while_cond:
    movl    $99, %eax               #  13:     if     99 >= 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #  14:     goto   6
l_f1_8_while_body:
l_f1_11_while_cond:
    movl    $100, %eax              #  17:     if     100 = 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_12_while_body     
    jmp     l_f1_10                 #  18:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  20:     goto   11_while_cond
l_f1_10:
    movl    $99, %eax               #  22:     if     99 < 97 goto 15
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_15                
    jmp     l_f1_16                 #  23:     goto   16
l_f1_15:
    movl    $1, %eax                #  25:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_17                 #  26:     goto   17
l_f1_16:
    movl    $0, %eax                #  28:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f1_17:
    movzbl  -21(%ebp), %eax         #  30:     assign v0 <- t5
    movb    %al, 8(%ebp)           
    jmp     l_f1_7_while_cond       #  31:     goto   7_while_cond
l_f1_6:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 9 of <array 4 of <array 4 of <array 7 of <bool>>>>>>> %ebp+8 ]

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
    movl    $37224, %eax            #   0:     mul    t3 <- 37224, 68761
    movl    $68761, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t4 <- t3, 89679
    movl    $89679, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t5 <- t4, 12054
    movl    $12054, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t5
    jmp     l_f2_exit              
    movl    $98009, %eax            #   4:     add    t6 <- 98009, 15342
    movl    $15342, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     return t6
    jmp     l_f2_exit              
    call    ReadInt                 #   6:     call   t7 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     return t7
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 8 of <array 9 of <array 4 of <array 4 of <array 7 of <bool>>>>>>> %ebp-20 ]
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
    call    dummyProcedure          #   0:     call   dummyProcedure
l_test_2_while_cond:
    movl    $51360, %eax            #   2:     sub    t0 <- 51360, 21256
    movl    $21256, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t0 < 20170 goto 3_while_body
    movl    $20170, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    movl    $1, %eax                #   8:     if     1 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6_if_true       
    jmp     l_test_7_if_false       #   9:     goto   7_if_false
l_test_6_if_true:
    movl    $1, %eax                #  11:     if     1 # 0 goto 10_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_10_if_true      
    jmp     l_test_11_if_false      #  12:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  14:     goto   9
l_test_11_if_false:
l_test_9:
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  18:     goto   14_while_cond
    movl    $10105, %eax            #  19:     assign v0 <- 10105
    movl    %eax, v0               
    leal    v1, %eax                #  20:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #  22:     call   t2 <- f2
    addl    $4, %esp               
    movl    %eax, -24(%ebp)        
    jmp     l_test_5                #  23:     goto   5
l_test_7_if_false:
l_test_5:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <array 8 of <array 9 of <array 4 of <array 4 of <array 7 of <bool>>>>>>
    .long    5
    .long    8
    .long    9
    .long    4
    .long    4
    .long    7
    .skip 8064








    # end of global data section
    #-----------------------------------------

    .end
##################################################
