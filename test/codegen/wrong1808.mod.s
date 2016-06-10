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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v1       <bool> %ebp-25 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
l_f0_4_while_cond:
    jmp     l_f0_4_while_cond       #   3:     goto   4_while_cond
l_f0_7_while_cond:
    jmp     l_f0_6                  #   5:     goto   6
    jmp     l_f0_7_while_cond       #   6:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_1_while_cond       #   8:     goto   1_while_cond
l_f0_0:
    movl    $0, %eax                #  10:     assign v1 <- 0
    movb    %al, -25(%ebp)         
    movl    $34636, %eax            #  11:     div    t7 <- 34636, 80853
    movl    $80853, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $17323, %eax            #  12:     sub    t8 <- 17323, t7
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     sub    t9 <- t8, 72271
    movl    $72271, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  0 <- t9
    pushl   %eax                   
    call    WriteInt                #  15:     call   WriteInt
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #   2:     if     99 >= t7 goto 2_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #   7:     call   t8 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $9301, %eax             #   8:     sub    t9 <- 9301, 79620
    movl    $79620, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     sub    t10 <- t9, 82154
    movl    $82154, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     assign v2 <- t10
    movl    %eax, 12(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 62 of <array 84 of <array 56 of <array 58 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 22 of <array 6 of <array 10 of <array 51 of <array 47 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 12 of <array 37 of <array 56 of <array 7 of <array 32 of <char>>>>>>> %ebp+20 ]

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
    movl    $98, %eax               #   0:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    movl    $35108, %eax            #   2:     param  0 <- 35108
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #   4:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 24208
    movl    $24208, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 32036
    movl    $32036, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t3 <- t2, 60600
    movl    $60600, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t4 <- t3, 8071
    movl    $8071, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     assign v0 <- t4
    movl    %eax, v0               
l_test_2_while_cond:
    jmp     l_test_1                #   7:     goto   1
    jmp     l_test_exit            
l_test_6_while_cond:
    movl    $68818, %eax            #  10:     if     68818 > 97264 goto 7_while_body
    movl    $97264, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #  11:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  13:     goto   6_while_cond
l_test_5:
    jmp     l_test_2_while_cond     #  15:     goto   2_while_cond
l_test_1:
    movl    $55498, %eax            #  17:     assign v0 <- 55498
    movl    %eax, v0               
    movl    $100, %eax              #  18:     if     100 >= 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_11_if_true      
    jmp     l_test_12_if_false      #  19:     goto   12_if_false
l_test_11_if_true:
l_test_15_while_cond:
    movl    $99, %eax               #  22:     if     99 <= 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_16_while_body   
    jmp     l_test_14               #  23:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  25:     goto   15_while_cond
l_test_14:
    movl    $40795, %eax            #  27:     if     40795 # 99190 goto 19
    movl    $99190, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_19              
    jmp     l_test_20               #  28:     goto   20
l_test_19:
    movl    $1, %eax                #  30:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_21               #  31:     goto   21
l_test_20:
    movl    $0, %eax                #  33:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_21:
    movzbl  -33(%ebp), %eax         #  35:     assign v1 <- t5
    movb    %al, v1                
    jmp     l_test_10               #  36:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $97, %eax               #  39:     if     97 > 97 goto 24_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_24_if_true      
    jmp     l_test_25_if_false      #  40:     goto   25_if_false
l_test_24_if_true:
l_test_28_while_cond:
    movl    $98, %eax               #  43:     if     98 # 99 goto 29_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_29_while_body   
    jmp     l_test_27               #  44:     goto   27
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  46:     goto   28_while_cond
l_test_27:
    movl    $97, %eax               #  48:     if     97 = 100 goto 32_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_32_if_true      
    jmp     l_test_33_if_false      #  49:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_31               #  51:     goto   31
l_test_33_if_false:
l_test_31:
    call    dummyINTfunc            #  54:     call   t6 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    jmp     l_test_23               #  55:     goto   23
l_test_25_if_false:
l_test_23:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
