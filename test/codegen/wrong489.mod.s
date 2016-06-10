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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <char> %ebp-15 ]

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t4 < 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    movl    $100, %eax              #   5:     assign v0 <- 100
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #   6:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_1                  #   7:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  10:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     return t5
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 3 of <array 4 of <array 9 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 4 of <array 8 of <array 6 of <array 4 of <int>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     return t5
    jmp     l_f1_exit              
    movl    $98, %eax               #   3:     return 98
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t7       <char> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 3 of <array 3 of <array 2 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_6:
    jmp     l_f2_2                  #   4:     goto   2
    jmp     l_f2_2                  #   5:     goto   2
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  11:     return t5
    jmp     l_f2_exit              
    movl    $0, %eax                #  12:     return 0
    jmp     l_f2_exit              
    movl    $67332, %eax            #  13:     if     67332 # 20519 goto 12
    movl    $20519, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_12                
    jmp     l_f2_13                 #  14:     goto   13
l_f2_12:
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_14                 #  17:     goto   14
l_f2_13:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f2_14:
    movzbl  -15(%ebp), %eax         #  21:     return t6
    jmp     l_f2_exit              
    jmp     l_f2_19                 #  22:     goto   19
l_f2_19:
    jmp     l_f2_22                 #  24:     goto   22
l_f2_22:
    jmp     l_f2_16                 #  26:     goto   16
l_f2_16:
    jmp     l_f2_7                  #  28:     goto   7
l_f2_7:
    call    f0                      #  30:     call   t7 <- f0
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  31:     if     t7 > 97 goto 26_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_26_if_true        
    jmp     l_f2_27_if_false        #  32:     goto   27_if_false
l_f2_26_if_true:
    jmp     l_f2_25                 #  34:     goto   25
l_f2_27_if_false:
l_f2_25:

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 6 of <array 3 of <array 3 of <array 2 of <array 8 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

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
l_test_1_while_cond:
    movl    $73271, %eax            #   1:     if     73271 < 46985 goto 2_while_body
    movl    $46985, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $61269, %eax            #   4:     if     61269 >= 37462 goto 5_if_true
    movl    $37462, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   7:     goto   4
l_test_6_if_false:
l_test_4:
    call    dummyBOOLfunc           #  10:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
    movl    $46995, %eax            #  13:     assign v0 <- 46995
    movl    %eax, v0               
    movl    $100, %eax              #  14:     if     100 <= 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_11_if_true      
    jmp     l_test_12_if_false      #  15:     goto   12_if_false
l_test_11_if_true:
l_test_15_while_cond:
    jmp     l_test_14               #  18:     goto   14
    jmp     l_test_15_while_cond    #  19:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
l_test_19_while_cond:
    jmp     l_test_19_while_cond    #  23:     goto   19_while_cond
l_test_22_while_cond:
    movl    $89795, %eax            #  25:     if     89795 > 39077 goto 23_while_body
    movl    $39077, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_23_while_body   
    jmp     l_test_21               #  26:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  28:     goto   22_while_cond
l_test_21:
    movl    $17235, %eax            #  30:     param  3 <- 17235
    pushl   %eax                   
    movl    $0, %eax                #  31:     param  2 <- 0
    pushl   %eax                   
    leal    v1, %eax                #  32:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     param  1 <- t1
    pushl   %eax                   
    movl    $86398, %eax            #  34:     sub    t2 <- 86398, 31292
    movl    $31292, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  35:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  36:     call   t3 <- f2
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_test_10               #  37:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $0, %eax                #  40:     if     0 = 1 goto 27_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_27_if_true      
    jmp     l_test_28_if_false      #  41:     goto   28_if_false
l_test_27_if_true:
l_test_31_while_cond:
    jmp     l_test_31_while_cond    #  44:     goto   31_while_cond
    jmp     l_test_exit            
    jmp     l_test_26               #  46:     goto   26
l_test_28_if_false:
l_test_26:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 6 of <array 3 of <array 3 of <array 2 of <array 8 of <int>>>>>>
    .long    5
    .long    6
    .long    3
    .long    3
    .long    2
    .long    8
    .skip 3456








    # end of global data section
    #-----------------------------------------

    .end
##################################################
