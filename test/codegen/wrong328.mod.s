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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 3 of <array 6 of <array 10 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 4 of <array 6 of <array 2 of <array 5 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #    -26(%ebp)   1  [ $v5       <bool> %ebp-26 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f0_5_while_cond:
    movl    $99, %eax               #   2:     if     99 <= 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6_while_body      
    jmp     l_f0_4                  #   3:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #   7:     goto   0
l_f0_0:
    movl    $29828, %eax            #   9:     sub    t5 <- 29828, 94292
    movl    $94292, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t6 <- t5, 54880
    movl    $54880, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     return t6
    jmp     l_f0_exit              
    movl    $97, %eax               #  12:     if     97 >= 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_10                
    jmp     l_f0_11                 #  13:     goto   11
l_f0_10:
    movl    $1, %eax                #  15:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_12                 #  16:     goto   12
l_f0_11:
    movl    $0, %eax                #  18:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f0_12:
    movzbl  -25(%ebp), %eax         #  20:     assign v5 <- t7
    movb    %al, -26(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 5 of <array 8 of <array 10 of <array 9 of <int>>>>>>> %ebp+8 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   3:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_9_if_false         #   6:     goto   9_if_false
    movl    $70343, %eax            #   7:     if     70343 >= 42528 goto 11_if_true
    movl    $42528, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #   8:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  10:     goto   10
l_f1_12_if_false:
l_f1_10:
l_f1_15_while_cond:
    movl    $98, %eax               #  14:     if     98 < 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_16_while_body     
    jmp     l_f1_14                 #  15:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  17:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_7                  #  19:     goto   7
l_f1_9_if_false:
l_f1_7:
    call    dummyBOOLfunc           #  22:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v3       <bool> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 # 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v3 <- t5
    movb    %al, -22(%ebp)         
l_f2_6_while_cond:
    movl    $50710, %eax            #  11:     sub    t6 <- 50710, 33017
    movl    $33017, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $97122, %eax            #  12:     if     97122 # t6 goto 7_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #  13:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  15:     goto   6_while_cond
l_f2_5:
    movl    $89138, %eax            #  17:     if     89138 < 47780 goto 10
    movl    $47780, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_10                
    jmp     l_f2_11                 #  18:     goto   11
l_f2_10:
    movl    $1, %eax                #  20:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_12                 #  21:     goto   12
l_f2_11:
    movl    $0, %eax                #  23:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f2_12:
    movzbl  -21(%ebp), %eax         #  25:     assign v3 <- t7
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]

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
    movl    $19929, %eax            #   0:     if     19929 <= 39432 goto 1
    movl    $39432, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    movl    $97, %eax               #   9:     assign v1 <- 97
    movb    %al, v1                
l_test_7_while_cond:
    movl    $7284, %eax             #  11:     if     7284 # 62606 goto 8_while_body
    movl    $62606, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_8_while_body    
    jmp     l_test_6                #  12:     goto   6
l_test_8_while_body:
    movl    $63870, %eax            #  14:     assign v2 <- 63870
    movl    %eax, v2               
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_7_while_cond     #  17:     goto   7_while_cond
l_test_6:
    call    f2                      #  19:     call   t1 <- f2
    movb    %al, -14(%ebp)         
    jmp     l_test_16_if_false      #  20:     goto   16_if_false
    movl    $100, %eax              #  21:     if     100 # 99 goto 18
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_18              
    jmp     l_test_19               #  22:     goto   19
l_test_18:
    movl    $1, %eax                #  24:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_20               #  25:     goto   20
l_test_19:
    movl    $0, %eax                #  27:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_20:
    movzbl  -15(%ebp), %eax         #  29:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_24_if_false      #  30:     goto   24_if_false
    jmp     l_test_22               #  31:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_27_if_false      #  34:     goto   27_if_false
    jmp     l_test_25               #  35:     goto   25
l_test_27_if_false:
l_test_25:
l_test_29_while_cond:
    jmp     l_test_28               #  39:     goto   28
    jmp     l_test_29_while_cond    #  40:     goto   29_while_cond
l_test_28:
    jmp     l_test_14               #  42:     goto   14
l_test_16_if_false:
l_test_14:
    call    dummyCHARfunc           #  45:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
