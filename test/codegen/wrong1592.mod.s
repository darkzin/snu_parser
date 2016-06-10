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
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t4
    movb    %al, 8(%ebp)           
    movl    $17181, %eax            #   9:     if     17181 <= 49815 goto 10
    movl    $49815, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_10                
    jmp     l_f0_11                 #  10:     goto   11
l_f0_10:
    movl    $1, %eax                #  12:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_12                 #  13:     goto   12
l_f0_11:
    movl    $0, %eax                #  15:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f0_12:
    movzbl  -14(%ebp), %eax         #  17:     assign v0 <- t5
    movb    %al, 8(%ebp)           
    jmp     l_f0_exit              
    jmp     l_f0_17_if_false        #  19:     goto   17_if_false
    jmp     l_f0_15                 #  20:     goto   15
l_f0_17_if_false:
l_f0_15:
    jmp     l_f0_6                  #  23:     goto   6
l_f0_6:
    movl    $100, %eax              #  25:     if     100 <= 97 goto 19
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_19                
    jmp     l_f0_20                 #  26:     goto   20
l_f0_19:
    movl    $1, %eax                #  28:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_21                 #  29:     goto   21
l_f0_20:
    movl    $0, %eax                #  31:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f0_21:
    movzbl  -15(%ebp), %eax         #  33:     assign v0 <- t6
    movb    %al, 8(%ebp)           

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 34 of <array 5 of <array 18 of <array 24 of <array 25 of <bool>>>>>>> %ebp+8 ]

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
    movl    $98, %eax               #   0:     if     98 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   4:     goto   4
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_7                  #   7:     goto   7
l_f1_7:
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_11_while_cond:
    movl    $19368, %eax            #  13:     add    t4 <- 19368, 84568
    movl    $84568, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     sub    t5 <- t4, 39424
    movl    $39424, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     if     t5 >= 40641 goto 12_while_body
    movl    $40641, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_12_while_body     
    jmp     l_f1_10                 #  16:     goto   10
l_f1_12_while_body:
    jmp     l_f1_16_if_false        #  18:     goto   16_if_false
    jmp     l_f1_14                 #  19:     goto   14
l_f1_16_if_false:
l_f1_14:
    movl    $52689, %eax            #  22:     if     52689 = 24626 goto 18_if_true
    movl    $24626, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  23:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  25:     goto   17
l_f1_19_if_false:
l_f1_17:
    jmp     l_f1_11_while_cond      #  28:     goto   11_while_cond
l_f1_10:
    call    dummyBOOLfunc           #  30:     call   t6 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 48 of <array 41 of <array 3 of <array 94 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 62 of <array 74 of <array 8 of <array 26 of <array 54 of <int>>>>>>> %ebp+20 ]

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
    leal    _str_1, %eax            #   0:     &()    t4 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_4                  #   3:     goto   4
l_f2_4:
    jmp     l_f2_3_if_false         #   5:     goto   3_if_false
    jmp     l_f2_1                  #   6:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_8_while_cond:
    movl    $0, %eax                #  10:     if     0 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9_while_body      
    jmp     l_f2_7                  #  11:     goto   7
l_f2_9_while_body:
    call    dummyINTfunc            #  13:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_8_while_cond       #  15:     goto   8_while_cond
l_f2_7:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 62 of <array 74 of <array 8 of <array 26 of <array 54 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 6 of <array 48 of <array 41 of <array 3 of <array 94 of <bool>>>>>>> %ebp-20 ]
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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 >= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    movl    $100, %eax              #   5:     if     100 <= 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_6_while_body    
    jmp     l_test_4                #   6:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   8:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
l_test_10_while_cond:
    movl    $9864, %eax             #  12:     if     9864 > 97761 goto 11_while_body
    movl    $97761, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #  13:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  15:     goto   10_while_cond
l_test_9:
l_test_14_while_cond:
    jmp     l_test_13               #  18:     goto   13
    jmp     l_test_14_while_cond    #  19:     goto   14_while_cond
l_test_13:
    movl    $65251, %eax            #  21:     if     65251 <= 99616 goto 17_if_true
    movl    $99616, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_17_if_true      
    jmp     l_test_18_if_false      #  22:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  24:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $0, %eax                #  27:     assign v0 <- 0
    movb    %al, v0                
l_test_22_while_cond:
    jmp     l_test_22_while_cond    #  29:     goto   22_while_cond
    leal    v2, %eax                #  30:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  31:     param  3 <- t0
    pushl   %eax                   
    leal    v1, %eax                #  32:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     param  2 <- t1
    pushl   %eax                   
    movl    $99, %eax               #  34:     param  1 <- 99
    pushl   %eax                   
    call    dummyCHARfunc           #  35:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  36:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  37:     call   t3 <- f2
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    jmp     l_test_1_while_cond     #  38:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_27_while_cond:
    movl    $100, %eax              #  42:     if     100 <= 100 goto 28_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_28_while_body   
    jmp     l_test_26               #  43:     goto   26
l_test_28_while_body:
l_test_31_while_cond:
    movl    $46415, %eax            #  46:     if     46415 <= 55800 goto 32_while_body
    movl    $55800, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_32_while_body   
    jmp     l_test_30               #  47:     goto   30
l_test_32_while_body:
    jmp     l_test_31_while_cond    #  49:     goto   31_while_cond
l_test_30:
l_test_35_while_cond:
    movl    $2590, %eax             #  52:     if     2590 >= 42627 goto 36_while_body
    movl    $42627, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_36_while_body   
    jmp     l_test_34               #  53:     goto   34
l_test_36_while_body:
    jmp     l_test_35_while_cond    #  55:     goto   35_while_cond
l_test_34:
    jmp     l_test_27_while_cond    #  57:     goto   27_while_cond
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 6 of <array 48 of <array 41 of <array 3 of <array 94 of <bool>>>>>>
    .long    5
    .long    6
    .long   48
    .long   41
    .long    3
    .long   94
    .skip 3329856
v2:                                 # <array 62 of <array 74 of <array 8 of <array 26 of <array 54 of <int>>>>>>
    .long    5
    .long   62
    .long   74
    .long    8
    .long   26
    .long   54
    .skip 206129664








    # end of global data section
    #-----------------------------------------

    .end
##################################################
