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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 8 of <array 2 of <array 9 of <array 7 of <char>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
l_f0_4_while_cond:
    movl    $88824, %eax            #   2:     if     88824 # 83513 goto 5_while_body
    movl    $83513, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_5_while_body      
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_while_body:
    jmp     l_f0_4_while_cond       #   5:     goto   4_while_cond
l_f0_3:
    call    dummyBOOLfunc           #   7:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   8:     return 100
    jmp     l_f0_exit              
l_f0_10_while_cond:
    jmp     l_f0_9                  #  10:     goto   9
    jmp     l_f0_10_while_cond      #  11:     goto   10_while_cond
l_f0_9:
    leal    _str_1, %eax            #  13:     &()    t5 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #  15:     call   WriteStr
    addl    $4, %esp               
    movl    $66635, %eax            #  16:     assign v2 <- 66635
    movl    %eax, -24(%ebp)        
    movl    $9645, %eax             #  17:     assign v2 <- 9645
    movl    %eax, -24(%ebp)        
    jmp     l_f0_0                  #  18:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $98, %eax               #  21:     if     98 < 99 goto 16_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  22:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_19                 #  24:     goto   19
l_f0_19:
    jmp     l_f0_15                 #  26:     goto   15
l_f0_17_if_false:
l_f0_15:
    call    dummyProcedure          #  29:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 1 of <array 1 of <array 3 of <array 5 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 6 of <array 7 of <array 4 of <array 10 of <bool>>>>>>> %ebp+16 ]
    #    -21(%ebp)   1  [ $v4       <bool> %ebp-21 ]

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
    movl    $73010, %eax            #   0:     assign v1 <- 73010
    movl    %eax, 8(%ebp)          
    movl    $68603, %eax            #   1:     if     68603 < 77095 goto 2
    movl    $77095, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2                 
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v4 <- t4
    movb    %al, -21(%ebp)         
    call    ReadInt                 #  10:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 6 of <array 10 of <array 8 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #    -25(%ebp)   1  [ $v2       <char> %ebp-25 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
l_f2_4_while_cond:
    movl    $98, %eax               #   3:     if     98 >= 98 goto 5_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_5_while_body      
    jmp     l_f2_3                  #   4:     goto   3
l_f2_5_while_body:
    jmp     l_f2_4_while_cond       #   6:     goto   4_while_cond
l_f2_3:
    jmp     l_f2_7                  #   8:     goto   7
l_f2_7:
l_f2_11_while_cond:
    movl    $70982, %eax            #  11:     if     70982 = 1985 goto 12_while_body
    movl    $1985, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_12_while_body     
    jmp     l_f2_10                 #  12:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  14:     goto   11_while_cond
l_f2_10:
    movl    $99, %eax               #  16:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  17:     goto   1_while_cond
l_f2_0:
l_f2_16_while_cond:
    movl    $61302, %eax            #  20:     add    t4 <- 61302, 4756
    movl    $4756, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $92005, %eax            #  21:     mul    t5 <- 92005, 92516
    movl    $92516, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     mul    t6 <- t5, 84412
    movl    $84412, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #  23:     if     t4 < t6 goto 17_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_17_while_body     
    jmp     l_f2_15                 #  24:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  26:     goto   16_while_cond
l_f2_15:
    movl    $99, %eax               #  28:     assign v2 <- 99
    movb    %al, -25(%ebp)         

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 6 of <array 8 of <array 2 of <array 9 of <array 7 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]

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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $100, %eax              #   3:     if     100 = 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_6_if_true       
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   6:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_0                #  10:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $98, %eax               #  13:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_16_if_false      #  14:     goto   16_if_false
    jmp     l_test_14               #  15:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_19_if_false      #  18:     goto   19_if_false
    jmp     l_test_17               #  19:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_10               #  22:     goto   10
l_test_10:
l_test_21_while_cond:
    jmp     l_test_22_while_body    #  25:     goto   22_while_body
    jmp     l_test_22_while_body    #  26:     goto   22_while_body
    jmp     l_test_20               #  27:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  29:     goto   21_while_cond
l_test_20:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  32:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_27               #  33:     goto   27
l_test_27:
    call    dummyCHARfunc           #  35:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    leal    v1, %eax                #  36:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  37:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  38:     call   t3 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -14(%ebp), %eax         #  39:     if     t1 < t3 goto 32_if_true
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_32_if_true      
    jmp     l_test_33_if_false      #  40:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_31               #  42:     goto   31
l_test_33_if_false:
l_test_31:

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
    .align   4
v1:                                 # <array 6 of <array 8 of <array 2 of <array 9 of <array 7 of <char>>>>>>
    .long    5
    .long    6
    .long    8
    .long    2
    .long    9
    .long    7
    .skip 6048








    # end of global data section
    #-----------------------------------------

    .end
##################################################
