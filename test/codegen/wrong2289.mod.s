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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t9       <char> %ebp-38 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 15 of <array 95 of <array 45 of <array 13 of <array 84 of <bool>>>>>>> %ebp+8 ]
    #    -44(%ebp)   4  [ $v1       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     sub    t4 <- t3, 56363
    movl    $56363, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     sub    t5 <- t4, 75834
    movl    $75834, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     sub    t6 <- t5, 99861
    movl    $99861, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     sub    t7 <- t6, 86576
    movl    $86576, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     assign v1 <- t7
    movl    %eax, -44(%ebp)        
l_f0_2_while_cond:
    call    dummyCHARfunc           #   7:     call   t8 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    movl    $97, %eax               #   8:     if     97 >= t8 goto 3_while_body
    movzbl  -37(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_3_while_body      
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  11:     goto   2_while_cond
l_f0_1:
l_f0_6_while_cond:
    call    dummyCHARfunc           #  14:     call   t9 <- dummyCHARfunc
    movb    %al, -38(%ebp)         
    movl    $100, %eax              #  15:     if     100 <= t9 goto 7_while_body
    movzbl  -38(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_7_while_body      
    jmp     l_f0_5                  #  16:     goto   5
l_f0_7_while_body:
    jmp     l_f0_11_if_false        #  18:     goto   11_if_false
    jmp     l_f0_9                  #  19:     goto   9
l_f0_11_if_false:
l_f0_9:
    call    dummyCHARfunc           #  22:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $17784, %eax            #  23:     if     17784 > 21744 goto 14_if_true
    movl    $21744, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  24:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  26:     goto   13
l_f0_15_if_false:
l_f0_13:
    movl    $99, %eax               #  29:     if     99 = 99 goto 18_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  30:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  32:     goto   17
l_f0_19_if_false:
l_f0_17:
    jmp     l_f0_23_if_false        #  35:     goto   23_if_false
    jmp     l_f0_21                 #  36:     goto   21
l_f0_23_if_false:
l_f0_21:
    movl    $36131, %eax            #  39:     assign v1 <- 36131
    movl    %eax, -44(%ebp)        
    jmp     l_f0_6_while_cond       #  40:     goto   6_while_cond
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
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
    jmp     l_f1_1                  #   0:     goto   1
    jmp     l_f1_2                  #   1:     goto   2
    jmp     l_f1_2                  #   2:     goto   2
    jmp     l_f1_2                  #   3:     goto   2
l_f1_1:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #  10:     assign v0 <- t3
    movb    %al, 8(%ebp)           
    movl    $80662, %eax            #  11:     assign v1 <- 80662
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  12:     if     97 >= 100 goto 12_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  13:     goto   13_if_false
l_f1_12_if_true:
l_f1_16_while_cond:
    jmp     l_f1_15                 #  16:     goto   15
    jmp     l_f1_16_while_cond      #  17:     goto   16_while_cond
l_f1_15:
    jmp     l_f1_20_if_false        #  19:     goto   20_if_false
    jmp     l_f1_18                 #  20:     goto   18
l_f1_20_if_false:
l_f1_18:
    movl    $97, %eax               #  23:     if     97 < 99 goto 22
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_22                
    jmp     l_f1_23                 #  24:     goto   23
l_f1_22:
    movl    $1, %eax                #  26:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_24                 #  27:     goto   24
l_f1_23:
    movl    $0, %eax                #  29:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_24:
    movzbl  -14(%ebp), %eax         #  31:     return t4
    jmp     l_f1_exit              
    movl    $1, %eax                #  32:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_11                 #  33:     goto   11
l_f1_13_if_false:
l_f1_11:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 55 of <array 65 of <array 82 of <array 96 of <array 99 of <char>>>>>>> %ebp+12 ]

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
    jmp     l_f2_exit              
    jmp     l_f2_exit              
l_f2_3_while_cond:
    movl    $98, %eax               #   3:     if     98 = 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_4_while_body      
    jmp     l_f2_2                  #   4:     goto   2
l_f2_4_while_body:
    jmp     l_f2_exit              
    call    ReadInt                 #   7:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_3_while_cond       #   8:     goto   3_while_cond
l_f2_2:

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 >= 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_3:
    movzbl  -14(%ebp), %eax         #   9:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  10:     call   t2 <- f1
    addl    $4, %esp               
    movb    %al, -15(%ebp)         
    movl    $18419, %eax            #  11:     assign v0 <- 18419
    movl    %eax, v0               
    jmp     l_test_exit            

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
