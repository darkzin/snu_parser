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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t8       <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $t9       <bool> %ebp-31 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]

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
    movl    $34542, %eax            #   0:     add    t3 <- 34542, 57889
    movl    $57889, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t4 <- t3, 59412
    movl    $59412, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t5 <- t4, 45003
    movl    $45003, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t6 <- t5, 40553
    movl    $40553, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t6
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   5:     call   t7 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    call    dummyCHARfunc           #   6:     call   t8 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movzbl  -29(%ebp), %eax         #   7:     if     t7 >= t8 goto 2_if_true
    movzbl  -30(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   8:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #  10:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $3761, %eax             #  13:     if     3761 <= 65614 goto 6_if_true
    movl    $65614, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  14:     goto   7_if_false
l_f0_6_if_true:
    call    dummyBOOLfunc           #  16:     call   t9 <- dummyBOOLfunc
    movb    %al, -31(%ebp)         
    jmp     l_f0_5                  #  17:     goto   5
l_f0_7_if_false:
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_1_while_cond       #   2:     goto   1_while_cond
l_f1_0:
    call    WriteLn                 #   4:     call   WriteLn
l_f1_7_while_cond:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_12                 #   7:     goto   12
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_12:
    movzbl  -13(%ebp), %eax         #  10:     if     t3 # 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_8_while_body      
    jmp     l_f1_6                  #  11:     goto   6
l_f1_8_while_body:
    movl    $97, %eax               #  13:     assign v3 <- 97
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #  14:     assign v3 <- 99
    movb    %al, -14(%ebp)         
    movl    $30929, %eax            #  15:     assign v4 <- 30929
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #  16:     assign v3 <- 100
    movb    %al, -14(%ebp)         
l_f1_19_while_cond:
    jmp     l_f1_19_while_cond      #  18:     goto   19_while_cond
    jmp     l_f1_7_while_cond       #  19:     goto   7_while_cond
l_f1_6:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 99 of <array 12 of <array 12 of <array 7 of <array 80 of <int>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v4       <char> %ebp-25 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    jmp     l_f2_2                  #   1:     goto   2
    jmp     l_f2_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     return t3
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   9:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  11:     call   t5 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     assign v3 <- t5
    movl    %eax, -24(%ebp)        
    movl    $35607, %eax            #  13:     if     35607 = 31365 goto 11_if_true
    movl    $31365, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  14:     goto   12_if_false
l_f2_11_if_true:
    movl    $99, %eax               #  16:     assign v4 <- 99
    movb    %al, -25(%ebp)         
    jmp     l_f2_17_if_false        #  17:     goto   17_if_false
    jmp     l_f2_15                 #  18:     goto   15
l_f2_17_if_false:
l_f2_15:
    jmp     l_f2_10                 #  21:     goto   10
l_f2_12_if_false:
l_f2_10:

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
    movl    $29246, %eax            #   0:     if     29246 <= 11840 goto 1
    movl    $11840, %ebx           
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
    movl    $57742, %eax            #   9:     if     57742 > 58209 goto 6_if_true
    movl    $58209, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
l_test_6_if_true:
l_test_10_while_cond:
    jmp     l_test_9                #  13:     goto   9
    movl    $61759, %eax            #  14:     if     61759 < 558 goto 13_if_true
    movl    $558, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_13_if_true      
    jmp     l_test_14_if_false      #  15:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  17:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_10_while_cond    #  20:     goto   10_while_cond
l_test_9:
    jmp     l_test_5                #  22:     goto   5
l_test_7_if_false:
l_test_5:
l_test_17_while_cond:
    movl    $97, %eax               #  26:     if     97 < 97 goto 20_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_20_if_true      
    jmp     l_test_21_if_false      #  27:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  29:     goto   19
l_test_21_if_false:
l_test_19:
l_test_24_while_cond:
    movl    $99, %eax               #  33:     if     99 > 97 goto 25_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_25_while_body   
    jmp     l_test_23               #  34:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  36:     goto   24_while_cond
l_test_23:
    movl    $11054, %eax            #  38:     assign v1 <- 11054
    movl    %eax, v1               
    jmp     l_test_17_while_cond    #  39:     goto   17_while_cond
    call    dummyCHARfunc           #  40:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
l_test_31_while_cond:
    call    dummyBOOLfunc           #  43:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  44:     if     t2 = 1 goto 34
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_34              
    jmp     l_test_30               #  45:     goto   30
l_test_34:
    jmp     l_test_31_while_cond    #  47:     goto   31_while_cond
l_test_30:

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
