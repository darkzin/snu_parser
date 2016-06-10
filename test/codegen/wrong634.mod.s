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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    movl    $0, %eax                #   2:     if     0 = 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_8:
    jmp     l_f0_5                  #  10:     goto   5
l_f0_5:
    movl    $100, %eax              #  12:     if     100 # 99 goto 13_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  13:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_18_if_false        #  15:     goto   18_if_false
    jmp     l_f0_16                 #  16:     goto   16
l_f0_18_if_false:
l_f0_16:
    movl    $1, %eax                #  19:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_22_if_false        #  20:     goto   22_if_false
    jmp     l_f0_20                 #  21:     goto   20
l_f0_22_if_false:
l_f0_20:
l_f0_24_while_cond:
    jmp     l_f0_24_while_cond      #  25:     goto   24_while_cond
    jmp     l_f0_12                 #  26:     goto   12
l_f0_14_if_false:
l_f0_12:

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 6 of <array 4 of <array 5 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_3_while_cond:
    jmp     l_f1_6                  #   3:     goto   6
    jmp     l_f1_4_while_body       #   4:     goto   4_while_body
l_f1_6:
    jmp     l_f1_2                  #   6:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #   8:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyProcedure          #   1:     call   dummyProcedure
    call    ReadInt                 #   2:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $43774, %eax            #   3:     mul    t6 <- 43774, t5
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   5:     call   t7 <- f0
    addl    $4, %esp               
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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 9 of <array 6 of <array 4 of <array 5 of <array 2 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_3_while_cond:
    jmp     l_test_2                #   3:     goto   2
    jmp     l_test_5                #   4:     goto   5
l_test_5:
    movl    $97, %eax               #   6:     param  2 <- 97
    pushl   %eax                   
    movl    $95226, %eax            #   7:     if     95226 < 85981 goto 9
    movl    $85981, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_9               
    jmp     l_test_10               #   8:     goto   10
l_test_9:
    movl    $1, %eax                #  10:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_11               #  11:     goto   11
l_test_10:
    movl    $0, %eax                #  13:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_11:
    movzbl  -13(%ebp), %eax         #  15:     param  1 <- t0
    pushl   %eax                   
    leal    v0, %eax                #  16:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  18:     call   t2 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    jmp     l_test_3_while_cond     #  19:     goto   3_while_cond
l_test_2:
    movl    $33940, %eax            #  21:     sub    t3 <- 33940, 32781
    movl    $32781, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     assign v1 <- t3
    movl    %eax, v1               
    movl    $57547, %eax            #  23:     if     57547 # 93629 goto 15_if_true
    movl    $93629, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_15_if_true      
    jmp     l_test_16_if_false      #  24:     goto   16_if_false
l_test_15_if_true:
    movl    $73247, %eax            #  26:     if     73247 >= 68240 goto 19_if_true
    movl    $68240, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_19_if_true      
    jmp     l_test_20_if_false      #  27:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  29:     goto   18
l_test_20_if_false:
l_test_18:
    movl    $100, %eax              #  32:     assign v2 <- 100
    movb    %al, v2                
    movl    $17680, %eax            #  33:     assign v1 <- 17680
    movl    %eax, v1               
l_test_25_while_cond:
    movl    $98, %eax               #  35:     if     98 <= 99 goto 26_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_26_while_body   
    jmp     l_test_24               #  36:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  38:     goto   25_while_cond
l_test_24:
    jmp     l_test_14               #  40:     goto   14
l_test_16_if_false:
l_test_14:

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
v0:                                 # <array 9 of <array 6 of <array 4 of <array 5 of <array 2 of <char>>>>>>
    .long    5
    .long    9
    .long    6
    .long    4
    .long    5
    .long    2
    .skip 2160
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
