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
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 47 of <array 39 of <array 6 of <array 82 of <array 70 of <bool>>>>>>> %ebp+12 ]

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
    movl    $29945, %eax            #   0:     mul    t3 <- 29945, 8914
    movl    $8914, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $24755, %eax            #   1:     sub    t4 <- 24755, 51553
    movl    $51553, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t5 <- t4, 85788
    movl    $85788, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t3 # t5 goto 1
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   4:     goto   2
l_f0_1:
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_3                  #   7:     goto   3
l_f0_2:
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f0_3:
    movzbl  -25(%ebp), %eax         #  11:     return t6
    jmp     l_f0_exit              
    call    WriteLn                 #  12:     call   WriteLn
l_f0_7_while_cond:
    movl    $62788, %eax            #  14:     if     62788 > 42569 goto 8_while_body
    movl    $42569, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_8_while_body      
    jmp     l_f0_6                  #  15:     goto   6
l_f0_8_while_body:
l_f0_11_while_cond:
    jmp     l_f0_11_while_cond      #  18:     goto   11_while_cond
    jmp     l_f0_7_while_cond       #  19:     goto   7_while_cond
l_f0_6:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -33(%ebp)   1  [ $v1       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $94977, %eax            #   0:     mul    t3 <- 94977, 18642
    movl    $18642, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $62794, %eax            #   1:     add    t4 <- 62794, t3
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_2                  #   3:     goto   2
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_4                  #   7:     goto   4
l_f1_3:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f1_4:
    movzbl  -21(%ebp), %eax         #  11:     assign v1 <- t5
    movb    %al, -33(%ebp)         
l_f1_7_while_cond:
    movl    $60358, %eax            #  13:     sub    t6 <- 60358, 8588
    movl    $8588, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     add    t7 <- t6, 37642
    movl    $37642, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_7_while_cond       #  16:     goto   7_while_cond

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v1       <bool> %ebp-29 ]

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
l_f2_1_while_cond:
    movl    $79150, %eax            #   1:     assign v0 <- 79150
    movl    %eax, -28(%ebp)        
    jmp     l_f2_6                  #   2:     goto   6
l_f2_6:
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
    call    dummyCHARfunc           #   5:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     if     t3 <= 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #   7:     goto   11_if_false
l_f2_10_if_true:
    leal    _str_1, %eax            #   9:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  11:     call   WriteStr
    addl    $4, %esp               
    movl    $1, %eax                #  12:     if     1 # 0 goto 15
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_15                
    jmp     l_f2_16                 #  13:     goto   16
l_f2_15:
    movl    $1, %eax                #  15:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_17                 #  16:     goto   17
l_f2_16:
    movl    $0, %eax                #  18:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_17:
    movzbl  -21(%ebp), %eax         #  20:     assign v1 <- t5
    movb    %al, -29(%ebp)         
    jmp     l_f2_9                  #  21:     goto   9
l_f2_11_if_false:
l_f2_9:
    call    dummyBOOLfunc           #  24:     call   t6 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
l_test_1_while_cond:
    movl    $2523, %eax             #   1:     if     2523 < 95302 goto 2_while_body
    movl    $95302, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
    movl    $99, %eax               #   8:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   9:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #  10:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_5                #  11:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $0, %eax                #  14:     if     0 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_11_if_true      
    jmp     l_test_12_if_false      #  15:     goto   12_if_false
l_test_11_if_true:
l_test_15_while_cond:
    jmp     l_test_15_while_cond    #  18:     goto   15_while_cond
    jmp     l_test_10               #  19:     goto   10
l_test_12_if_false:
l_test_10:
    call    dummyCHARfunc           #  22:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  23:     assign v0 <- t1
    movb    %al, v0                
    call    dummyCHARfunc           #  24:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $77639, %eax            #  25:     if     77639 >= 1661 goto 20_if_true
    movl    $1661, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_20_if_true      
    jmp     l_test_21_if_false      #  26:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_25_if_false      #  28:     goto   25_if_false
    jmp     l_test_23               #  29:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_exit            
l_test_28_while_cond:
    movl    $15097, %eax            #  34:     if     15097 <= 84336 goto 29_while_body
    movl    $84336, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_29_while_body   
    jmp     l_test_27               #  35:     goto   27
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  37:     goto   28_while_cond
l_test_27:
    jmp     l_test_exit            
    jmp     l_test_19               #  40:     goto   19
l_test_21_if_false:
l_test_19:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
