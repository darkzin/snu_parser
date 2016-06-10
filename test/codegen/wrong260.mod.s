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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 1 of <array 6 of <array 3 of <array 7 of <bool>>>>>>> %ebp+8 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    leal    _str_1, %eax            #   1:     &()    t5 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
l_f0_5_while_cond:
    jmp     l_f0_4                  #   5:     goto   4
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
l_f0_4:
l_f0_8_while_cond:
    movl    $72766, %eax            #   9:     if     72766 # 19548 goto 9_while_body
    movl    $19548, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_9_while_body      
    jmp     l_f0_7                  #  10:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  12:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_0                  #  14:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  17:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyINTfunc            #  18:     call   t7 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
    jmp     l_f1_5                  #   1:     goto   5
l_f1_5:
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
l_f1_9_while_cond:
    movl    $60003, %eax            #   5:     sub    t5 <- 60003, 74284
    movl    $74284, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     sub    t6 <- t5, 11786
    movl    $11786, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     if     t6 <= 8429 goto 10_while_body
    movl    $8429, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_10_while_body     
    jmp     l_f1_8                  #   8:     goto   8
l_f1_10_while_body:
l_f1_13_while_cond:
    movl    $97, %eax               #  11:     if     97 = 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_14_while_body     
    jmp     l_f1_12                 #  12:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  14:     goto   13_while_cond
l_f1_12:
    movl    $90690, %eax            #  16:     return 90690
    jmp     l_f1_exit              
    jmp     l_f1_9_while_cond       #  17:     goto   9_while_cond
l_f1_8:
    movl    $38905, %eax            #  19:     assign v1 <- 38905
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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 10 of <array 1 of <array 7 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 8 of <array 3 of <array 10 of <array 3 of <bool>>>>>>> %ebp+12 ]

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
    movl    $100, %eax              #   1:     if     100 > t5 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $72060, %eax            #   5:     if     72060 > 23835 goto 6_while_body
    movl    $23835, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   8:     goto   5_while_cond
l_f2_4:
    call    dummyBOOLfunc           #  10:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  11:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_0                  #  13:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_exit              
l_f2_12_while_cond:
    jmp     l_f2_exit              
l_f2_16_while_cond:
    movl    $83336, %eax            #  20:     if     83336 < 50885 goto 17_while_body
    movl    $50885, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_17_while_body     
    jmp     l_f2_15                 #  21:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  23:     goto   16_while_cond
l_f2_15:
    jmp     l_f2_21_if_false        #  25:     goto   21_if_false
    jmp     l_f2_19                 #  26:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_exit              
    jmp     l_f2_12_while_cond      #  30:     goto   12_while_cond

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
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 <= t1 goto 2
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2               
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_4                #   7:     goto   4
l_test_3:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_4:
    movzbl  -15(%ebp), %eax         #  11:     assign v1 <- t2
    movb    %al, v1                
    call    ReadInt                 #  12:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     add    t4 <- t3, 19101
    movl    $19101, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     assign v2 <- t4
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
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
