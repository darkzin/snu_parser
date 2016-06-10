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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $29968, %eax            #   1:     sub    t3 <- 29968, 74425
    movl    $74425, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t3
    jmp     l_f0_exit              
    call    WriteLn                 #   3:     call   WriteLn

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
    jmp     l_f1_2_if_false         #   3:     goto   2_if_false
    jmp     l_f1_2_if_false         #   4:     goto   2_if_false
    jmp     l_f1_10_if_false        #   5:     goto   10_if_false
    jmp     l_f1_8                  #   6:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98, %eax               #  12:     param  1 <- 98
    pushl   %eax                   
    movl    $100, %eax              #  13:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  14:     call   t2 <- f0
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     return t2
    jmp     l_f1_exit              
    jmp     l_f1_14_if_false        #  16:     goto   14_if_false
    call    dummyProcedure          #  17:     call   dummyProcedure
    movl    $36914, %eax            #  18:     return 36914
    jmp     l_f1_exit              
    jmp     l_f1_12                 #  19:     goto   12
l_f1_14_if_false:
l_f1_12:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 69 of <array 89 of <array 48 of <array 41 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 78 of <array 12 of <array 87 of <array 34 of <bool>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t2
    movb    %al, 12(%ebp)          
    jmp     l_f2_2                  #   2:     goto   2
l_f2_2:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   5:     goto   4
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #   8:     return t3
    jmp     l_f2_exit              
    movl    $1, %eax                #   9:     return 1
    jmp     l_f2_exit              
    movl    $13027, %eax            #  10:     mul    t4 <- 13027, 96379
    movl    $96379, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     mul    t5 <- t4, 57877
    movl    $57877, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #  13:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_8                  #  14:     goto   8
l_f2_8:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]

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
    movl    $7681, %eax             #   0:     if     7681 < 59729 goto 1_if_true
    movl    $59729, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    jmp     l_test_4                #   4:     goto   4
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
l_test_4:
    jmp     l_test_9_if_false       #   7:     goto   9_if_false
    jmp     l_test_7                #   8:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $98, %eax               #  11:     if     98 < 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #  12:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_exit            
    movl    $69824, %eax            #  15:     assign v0 <- 69824
    movl    %eax, v0               
    jmp     l_test_10               #  16:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_0                #  19:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $100, %eax              #  22:     if     100 # 99 goto 17_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_17_if_true      
    jmp     l_test_18_if_false      #  23:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  25:     goto   16
l_test_18_if_false:
l_test_16:
    call    dummyCHARfunc           #  28:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    leal    _str_1, %eax            #  29:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  31:     call   WriteStr
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
