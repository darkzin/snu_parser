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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
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
    movl    $1, %eax                #   0:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   1:     goto   6
    movl    $0, %eax                #   2:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    jmp     l_f0_9                  #   4:     goto   9
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_10                 #   6:     goto   10
l_f0_9:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_10:
    movzbl  -13(%ebp), %eax         #  10:     if     t5 # t6 goto 1_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #  11:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #  13:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_14_while_cond:
    call    dummyCHARfunc           #  17:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  18:     if     t7 = 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_15_while_body     
    jmp     l_f0_13                 #  19:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  21:     goto   14_while_cond
l_f0_13:
l_f0_18_while_cond:
    jmp     l_f0_19_while_body      #  24:     goto   19_while_body
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  26:     goto   18_while_cond

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
    movl    $78285, %eax            #   0:     if     78285 < 83869 goto 1_if_true
    movl    $83869, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    ReadInt                 #   3:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $18166, %eax            #   4:     if     18166 <= 3053 goto 6_if_true
    movl    $3053, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   5:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_10_while_cond:
    movl    $29377, %eax            #  11:     if     29377 < 23836 goto 11_while_body
    movl    $23836, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_11_while_body     
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  14:     goto   10_while_cond
l_f1_9:
l_f1_14_while_cond:
    movl    $49400, %eax            #  17:     if     49400 >= 16736 goto 15_while_body
    movl    $16736, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_15_while_body     
    jmp     l_f1_13                 #  18:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  20:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_17                 #  22:     goto   17
l_f1_17:
l_f1_21_while_cond:
    jmp     l_f1_20                 #  25:     goto   20
    jmp     l_f1_21_while_cond      #  26:     goto   21_while_cond
l_f1_20:
l_f1_24_while_cond:
    movl    $0, %eax                #  29:     if     0 = 0 goto 25_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_25_while_body     
    jmp     l_f1_23                 #  30:     goto   23
l_f1_25_while_body:
    jmp     l_f1_24_while_cond      #  32:     goto   24_while_cond
l_f1_23:
l_f1_28_while_cond:
    jmp     l_f1_28_while_cond      #  35:     goto   28_while_cond
    jmp     l_f1_0                  #  36:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $50090, %eax            #  39:     assign v1 <- 50090
    movl    %eax, -24(%ebp)        
    movl    $1, %eax                #  40:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_37                 #  41:     goto   37
    movl    $0, %eax                #  42:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f1_37:
    movl    $1, %eax                #  44:     if     1 # t6 goto 32_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_32_if_true        
    jmp     l_f1_33_if_false        #  45:     goto   33_if_false
l_f1_32_if_true:
l_f1_40_while_cond:
    movl    $80190, %eax            #  48:     if     80190 = 22688 goto 41_while_body
    movl    $22688, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_41_while_body     
    jmp     l_f1_39                 #  49:     goto   39
l_f1_41_while_body:
    jmp     l_f1_40_while_cond      #  51:     goto   40_while_cond
l_f1_39:
    jmp     l_f1_31                 #  53:     goto   31
l_f1_33_if_false:
l_f1_31:

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 68 of <array 67 of <array 26 of <array 56 of <array 95 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    movl    $71998, %eax            #   2:     param  0 <- 71998
    pushl   %eax                   
    call    f0                      #   3:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     assign v0 <- t6
    movb    %al, 8(%ebp)           

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <char> %ebp-22 ]

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
    movl    $97, %eax               #   0:     if     97 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   4:     if     100 < 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   7:     goto   5
l_test_7_if_false:
l_test_5:
l_test_10_while_cond:
    jmp     l_test_9                #  11:     goto   9
    jmp     l_test_10_while_cond    #  12:     goto   10_while_cond
l_test_9:
    movl    $1, %eax                #  14:     if     1 # 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_13_if_true      
    jmp     l_test_14_if_false      #  15:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  17:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_0                #  20:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  24:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyINTfunc            #  25:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #  27:     call   WriteInt
    addl    $4, %esp               
l_test_20_while_cond:
    movl    $98, %eax               #  29:     if     98 >= 97 goto 23
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_23              
    jmp     l_test_24               #  30:     goto   24
l_test_23:
    movl    $1, %eax                #  32:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_25               #  33:     goto   25
l_test_24:
    movl    $0, %eax                #  35:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_test_25:
    movzbl  -21(%ebp), %eax         #  37:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  38:     call   t4 <- f1
    addl    $4, %esp               
    movb    %al, -22(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_20_while_cond    #  40:     goto   20_while_cond

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
