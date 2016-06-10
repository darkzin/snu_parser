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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]

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
    movl    $97, %eax               #   0:     if     97 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $100, %eax              #   4:     if     100 < 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   5:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #   7:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_5_while_cond       #  10:     goto   5_while_cond
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_12_if_true         #  14:     goto   12_if_true
l_f0_12_if_true:
l_f0_16_while_cond:
    jmp     l_f0_15                 #  17:     goto   15
    jmp     l_f0_16_while_cond      #  18:     goto   16_while_cond
l_f0_15:
    jmp     l_f0_11                 #  20:     goto   11
l_f0_11:
l_f0_19_while_cond:
    jmp     l_f0_20_while_body      #  23:     goto   20_while_body
    call    dummyBOOLfunc           #  24:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  25:     if     t7 = 1 goto 20_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_20_while_body     
    jmp     l_f0_18                 #  26:     goto   18
l_f0_20_while_body:
    jmp     l_f0_19_while_cond      #  28:     goto   19_while_cond
l_f0_18:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 8 of <array 4 of <array 6 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 6 of <array 10 of <array 4 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 5 of <array 7 of <array 1 of <array 3 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 6 of <array 7 of <array 1 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 4 of <array 2 of <array 4 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 3 of <array 5 of <array 9 of <array 5 of <array 6 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 4 of <array 3 of <array 1 of <array 9 of <array 2 of <int>>>>>>> %ebp+20 ]
    #    -15(%ebp)   1  [ $v6       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $v7       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     assign v6 <- 100
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #   2:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #   3:     call   t8 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    movl    $71653, %eax            #   4:     if     71653 < 89632 goto 7_if_true
    movl    $89632, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   5:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #   7:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $8492, %eax             #  10:     assign v7 <- 8492
    movl    %eax, -20(%ebp)        
    jmp     l_f2_2                  #  11:     goto   2
l_f2_2:

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_4_while_cond:
    movl    $98, %eax               #   1:     if     98 > 99 goto 5_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_5_while_body    
    jmp     l_test_3                #   2:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   4:     goto   4_while_cond
l_test_3:
    call    ReadInt                 #   6:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $93452, %eax            #   7:     if     93452 <= 52401 goto 9
    movl    $52401, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_9               
    jmp     l_test_10               #   8:     goto   10
l_test_9:
    movl    $1, %eax                #  10:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_11               #  11:     goto   11
l_test_10:
    movl    $0, %eax                #  13:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_11:
    movzbl  -17(%ebp), %eax         #  15:     assign v0 <- t1
    movb    %al, v0                
l_test_14_while_cond:
    jmp     l_test_13               #  17:     goto   13
    jmp     l_test_14_while_cond    #  18:     goto   14_while_cond
l_test_13:
    jmp     l_test_0                #  20:     goto   0
l_test_0:
    movl    $97, %eax               #  22:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  23:     call   WriteChar
    addl    $4, %esp               
    movl    $23878, %eax            #  24:     sub    t2 <- 23878, 3456
    movl    $3456, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     sub    t3 <- t2, 34659
    movl    $34659, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t4 <- t3, 96598
    movl    $96598, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     sub    t5 <- t4, 568
    movl    $568, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     assign v1 <- t5
    movl    %eax, v1               
    movl    $98, %eax               #  29:     assign v2 <- 98
    movb    %al, v2                
l_test_20_while_cond:
    movl    $0, %eax                #  31:     if     0 # 0 goto 23
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_23              
    jmp     l_test_19               #  32:     goto   19
l_test_23:
    jmp     l_test_20_while_cond    #  34:     goto   20_while_cond
l_test_19:
    call    dummyCHARfunc           #  36:     call   t6 <- dummyCHARfunc
    movb    %al, -37(%ebp)         

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
