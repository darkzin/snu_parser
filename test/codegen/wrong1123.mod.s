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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 30 of <array 3 of <array 65 of <array 23 of <array 92 of <char>>>>>>> %ebp+8 ]

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
    movl    $24449, %eax            #   0:     return 24449
    jmp     l_f0_exit              
    movl    $55333, %eax            #   1:     return 55333
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   2:     goto   0
l_f0_0:
l_f0_6_while_cond:
    movl    $100, %eax              #   5:     if     100 # 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_while_body:
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #   9:     goto   10_while_cond
    jmp     l_f0_6_while_cond       #  10:     goto   6_while_cond
l_f0_5:
    call    dummyBOOLfunc           #  12:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 71 of <array 96 of <array 33 of <array 3 of <array 61 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 76 of <array 29 of <array 63 of <array 64 of <array 38 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $98, %eax               #   0:     if     98 <= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $97, %eax               #   3:     assign v3 <- 97
    movb    %al, 20(%ebp)          
l_f1_6_while_cond:
    jmp     l_f1_5                  #   5:     goto   5
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
l_f1_11_while_cond:
    movl    $98, %eax               #  11:     if     98 = 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_12_while_body     
    jmp     l_f1_10                 #  12:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  14:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  17:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_16_while_cond:
    movl    $38035, %eax            #  21:     if     38035 >= 10398 goto 17_while_body
    movl    $10398, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_17_while_body     
    jmp     l_f1_15                 #  22:     goto   15
l_f1_17_while_body:
l_f1_20_while_cond:
    jmp     l_f1_19                 #  25:     goto   19
    jmp     l_f1_exit              
    jmp     l_f1_20_while_cond      #  27:     goto   20_while_cond
l_f1_19:
    jmp     l_f1_16_while_cond      #  29:     goto   16_while_cond
l_f1_15:
l_f1_24_while_cond:
    jmp     l_f1_25_while_body      #  32:     goto   25_while_body
l_f1_25_while_body:
    movl    $99, %eax               #  34:     assign v3 <- 99
    movb    %al, 20(%ebp)          
    jmp     l_f1_24_while_cond      #  35:     goto   24_while_cond

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    movl    $66477, %eax            #   0:     add    t1 <- 66477, 94663
    movl    $94663, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $8111, %eax             #   1:     if     8111 > t1 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f2_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v1 <- t2
    movb    %al, 12(%ebp)          
    call    ReadInt                 #  10:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
l_f2_7_while_cond:
    call    dummyINTfunc            #  12:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    $70068, %eax            #  13:     if     70068 # t4 goto 8_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #  14:     goto   6
l_f2_8_while_body:
    movl    $100, %eax              #  16:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_7_while_cond       #  17:     goto   7_while_cond
l_f2_6:

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
    movl    $99, %eax               #   4:     assign v0 <- 99
    movb    %al, v0                
    movl    $85342, %eax            #   5:     assign v1 <- 85342
    movl    %eax, v1               
    jmp     l_test_2                #   6:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $1, %eax                #   9:     if     1 = 0 goto 9_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
l_test_9_if_true:
l_test_13_while_cond:
    jmp     l_test_13_while_cond    #  13:     goto   13_while_cond
    movl    $42847, %eax            #  14:     if     42847 >= 81883 goto 16
    movl    $81883, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_16              
    jmp     l_test_17               #  15:     goto   17
l_test_16:
    movl    $1, %eax                #  17:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_18               #  18:     goto   18
l_test_17:
    movl    $0, %eax                #  20:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_18:
    movzbl  -13(%ebp), %eax         #  22:     assign v2 <- t0
    movb    %al, v2                
    movl    $100, %eax              #  23:     if     100 <= 99 goto 21_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_21_if_true      
    jmp     l_test_22_if_false      #  24:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  26:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_8                #  29:     goto   8
l_test_10_if_false:
l_test_8:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
