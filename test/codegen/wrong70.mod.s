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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $v0       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $v1       <bool> %ebp-26 ]

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
    movl    $3281, %eax             #   0:     if     3281 < 14445 goto 1_if_true
    movl    $14445, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_4                  #   3:     goto   4
l_f0_4:
    movl    $75225, %eax            #   5:     if     75225 < 50215 goto 8_if_true
    movl    $50215, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   6:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #   8:     goto   7
l_f0_9_if_false:
l_f0_7:
l_f0_12_while_cond:
    movl    $99, %eax               #  12:     if     99 <= 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_13_while_body     
    jmp     l_f0_11                 #  13:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  15:     goto   12_while_cond
l_f0_11:
    call    dummyCHARfunc           #  17:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #  18:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #  19:     assign v0 <- 97
    movb    %al, -25(%ebp)         
    movl    $0, %eax                #  20:     assign v1 <- 0
    movb    %al, -26(%ebp)         
    jmp     l_f0_21_if_false        #  21:     goto   21_if_false
    jmp     l_f0_19                 #  22:     goto   19
l_f0_21_if_false:
l_f0_19:
    movl    $61199, %eax            #  25:     if     61199 > 20871 goto 23_if_true
    movl    $20871, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_23_if_true        
    jmp     l_f0_24_if_false        #  26:     goto   24_if_false
l_f0_23_if_true:
    jmp     l_f0_22                 #  28:     goto   22
l_f0_24_if_false:
l_f0_22:
l_f0_27_while_cond:
    movl    $71735, %eax            #  32:     if     71735 # 68372 goto 28_while_body
    movl    $68372, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_28_while_body     
    jmp     l_f0_26                 #  33:     goto   26
l_f0_28_while_body:
    jmp     l_f0_27_while_cond      #  35:     goto   27_while_cond
l_f0_26:
    jmp     l_f0_30                 #  37:     goto   30
l_f0_30:
    movl    $99957, %eax            #  39:     if     99957 < 34313 goto 34
    movl    $34313, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_34                
    jmp     l_f0_35                 #  40:     goto   35
l_f0_34:
    movl    $1, %eax                #  42:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_36                 #  43:     goto   36
l_f0_35:
    movl    $0, %eax                #  45:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f0_36:
    movzbl  -15(%ebp), %eax         #  47:     assign v1 <- t3
    movb    %al, -26(%ebp)         
    jmp     l_f0_0                  #  48:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_39_while_cond:
    jmp     l_f0_38                 #  52:     goto   38
    jmp     l_f0_38                 #  53:     goto   38
l_f0_43_while_cond:
    jmp     l_f0_43_while_cond      #  55:     goto   43_while_cond
    jmp     l_f0_39_while_cond      #  56:     goto   39_while_cond
l_f0_38:
    movl    $98, %eax               #  58:     if     98 = 99 goto 46_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_46_if_true        
    jmp     l_f0_47_if_false        #  59:     goto   47_if_false
l_f0_46_if_true:
    call    dummyCHARfunc           #  61:     call   t4 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $97, %eax               #  62:     if     97 # 99 goto 51
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_51                
    jmp     l_f0_52                 #  63:     goto   52
l_f0_51:
    movl    $1, %eax                #  65:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_53                 #  66:     goto   53
l_f0_52:
    movl    $0, %eax                #  68:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f0_53:
    movzbl  -17(%ebp), %eax         #  70:     assign v1 <- t5
    movb    %al, -26(%ebp)         
    leal    _str_1, %eax            #  71:     &()    t6 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  72:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  73:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_45                 #  74:     goto   45
l_f0_47_if_false:
l_f0_45:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 1 of <array 1 of <array 7 of <array 9 of <int>>>>>>> %ebp+8 ]
    #    -41(%ebp)   1  [ $v1       <bool> %ebp-41 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     if     100 > t1 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v1 <- t2
    movb    %al, -41(%ebp)         
    call    ReadInt                 #  10:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $6289, %eax             #  11:     add    t4 <- 6289, 12076
    movl    $12076, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t5 <- t4, 83546
    movl    $83546, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     add    t6 <- t5, 51355
    movl    $51355, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     add    t7 <- t6, 6830
    movl    $6830, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     sub    t8 <- t7, 92409
    movl    $92409, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     return t8
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 9 of <array 6 of <array 10 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 9 of <array 8 of <array 5 of <array 7 of <int>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f2_exit              
    movl    $97, %eax               #   2:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
l_f2_6_while_cond:
    jmp     l_f2_5                  #   5:     goto   5
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
l_f2_5:
    call    f0                      #   8:     call   t2 <- f0
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #   9:     call   t3 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f2_2                  #  10:     goto   2
l_f2_4_if_false:
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
l_test_3_while_cond:
    jmp     l_test_4_while_body     #   3:     goto   4_while_body
l_test_4_while_body:
    jmp     l_test_3_while_cond     #   5:     goto   3_while_cond
    jmp     l_test_8_if_false       #   6:     goto   8_if_false
    jmp     l_test_exit            
l_test_14_while_cond:
    movl    $45455, %eax            #   9:     if     45455 > 911 goto 15_while_body
    movl    $911, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_15_while_body   
    jmp     l_test_13               #  10:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  12:     goto   14_while_cond
l_test_13:
    jmp     l_test_6                #  14:     goto   6
l_test_8_if_false:
l_test_6:
l_test_18_while_cond:
    movl    $99, %eax               #  18:     if     99 > 100 goto 21_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_21_if_true      
    jmp     l_test_22_if_false      #  19:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  21:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_exit            
    jmp     l_test_18_while_cond    #  25:     goto   18_while_cond

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
