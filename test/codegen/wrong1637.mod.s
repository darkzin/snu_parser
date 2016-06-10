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
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v3       <char> %ebp-33 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 21715
    movl    $21715, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 21119
    movl    $21119, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v2 <- t6
    movl    %eax, -32(%ebp)        
    call    dummyCHARfunc           #   4:     call   t7 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
l_f0_3_while_cond:
    movl    $94650, %eax            #   6:     if     94650 >= 25127 goto 4_while_body
    movl    $25127, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_4_while_body      
    jmp     l_f0_2                  #   7:     goto   2
l_f0_4_while_body:
    movl    $97944, %eax            #   9:     return 97944
    jmp     l_f0_exit              
    movl    $98, %eax               #  10:     assign v3 <- 98
    movb    %al, -33(%ebp)         
    jmp     l_f0_3_while_cond       #  11:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 52 of <array 100 of <array 66 of <array 17 of <array 29 of <char>>>>>>> %ebp+12 ]

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
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   2:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   3:     if     99 >= 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   4:     goto   4_if_false
l_f1_3_if_true:
    call    dummyCHARfunc           #   6:     call   t6 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_2                  #   7:     goto   2
l_f1_4_if_false:
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
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 96 of <array 91 of <array 85 of <array 46 of <array 34 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]

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
    movl    $99, %eax               #   1:     if     99 <= t4 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     return t5
    jmp     l_f2_exit              
l_f2_6_while_cond:
    jmp     l_f2_7_while_body       #  11:     goto   7_while_body
    jmp     l_f2_7_while_body       #  12:     goto   7_while_body
    jmp     l_f2_7_while_body       #  13:     goto   7_while_body
    jmp     l_f2_5                  #  14:     goto   5
l_f2_7_while_body:
l_f2_13_while_cond:
    movl    $97, %eax               #  17:     if     97 > 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_14_while_body     
    jmp     l_f2_12                 #  18:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  20:     goto   13_while_cond
l_f2_12:
l_f2_17_while_cond:
    movl    $18856, %eax            #  23:     if     18856 >= 67775 goto 18_while_body
    movl    $67775, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_18_while_body     
    jmp     l_f2_16                 #  24:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  26:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_6_while_cond       #  28:     goto   6_while_cond
l_f2_5:
l_f2_21_while_cond:
    jmp     l_f2_23                 #  31:     goto   23
    jmp     l_f2_22_while_body      #  32:     goto   22_while_body
l_f2_23:
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  35:     goto   21_while_cond

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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    movl    $91531, %eax            #   0:     assign v0 <- 91531
    movl    %eax, v0               
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 = t0 goto 5
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_5               
    jmp     l_test_6                #   3:     goto   6
l_test_5:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_7                #   6:     goto   7
l_test_6:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_7:
    movzbl  -14(%ebp), %eax         #  10:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_1                #  11:     goto   1
l_test_1:
l_test_10_while_cond:
    movl    $97, %eax               #  14:     if     97 < 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_11_while_body   
    jmp     l_test_9                #  15:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  17:     goto   10_while_cond
l_test_9:
    call    f0                      #  19:     call   t2 <- f0
    movl    %eax, -20(%ebp)        
l_test_15_while_cond:
    movl    $100, %eax              #  21:     if     100 < 97 goto 16_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_16_while_body   
    jmp     l_test_14               #  22:     goto   14
l_test_16_while_body:
    movl    $58757, %eax            #  24:     sub    t3 <- 58757, 95677
    movl    $95677, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     assign v0 <- t3
    movl    %eax, v0               
    jmp     l_test_15_while_cond    #  26:     goto   15_while_cond
l_test_14:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
