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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 39 of <array 63 of <array 27 of <array 53 of <array 83 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 48 of <array 35 of <array 72 of <array 10 of <array 52 of <char>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
l_f0_1_while_cond:
    movl    $29864, %eax            #   1:     assign v2 <- 29864
    movl    %eax, -20(%ebp)        
    movl    $84955, %eax            #   2:     return 84955
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   3:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
    jmp     l_f0_13                 #   5:     goto   13
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_14                 #   7:     goto   14
l_f0_13:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_14:
    movzbl  -14(%ebp), %eax         #  11:     if     t3 # 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_8                 
    jmp     l_f0_9                  #  12:     goto   9
l_f0_8:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_10                 #  15:     goto   10
l_f0_9:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f0_10:
    movzbl  -15(%ebp), %eax         #  19:     assign v3 <- t4
    movb    %al, -21(%ebp)         
    jmp     l_f0_18_if_false        #  20:     goto   18_if_false
    movl    $97, %eax               #  21:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  22:     call   WriteChar
    addl    $4, %esp               
l_f0_21_while_cond:
    movl    $65512, %eax            #  24:     if     65512 < 14760 goto 22_while_body
    movl    $14760, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_22_while_body     
    jmp     l_f0_20                 #  25:     goto   20
l_f0_22_while_body:
    jmp     l_f0_21_while_cond      #  27:     goto   21_while_cond
l_f0_20:
    movl    $99, %eax               #  29:     if     99 > 100 goto 25_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_25_if_true        
    jmp     l_f0_26_if_false        #  30:     goto   26_if_false
l_f0_25_if_true:
    jmp     l_f0_24                 #  32:     goto   24
l_f0_26_if_false:
l_f0_24:
l_f0_29_while_cond:
    movl    $60531, %eax            #  36:     if     60531 >= 86838 goto 30_while_body
    movl    $86838, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_30_while_body     
    jmp     l_f0_28                 #  37:     goto   28
l_f0_30_while_body:
    jmp     l_f0_29_while_cond      #  39:     goto   29_while_cond
l_f0_28:
    jmp     l_f0_16                 #  41:     goto   16
l_f0_18_if_false:
l_f0_16:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    jmp     l_f1_1                  #   0:     goto   1
    jmp     l_f1_1                  #   1:     goto   1
    jmp     l_f1_1                  #   2:     goto   1
l_f1_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     return t2
    jmp     l_f1_exit              
l_f1_10_while_cond:
    jmp     l_f1_9                  #  10:     goto   9
l_f1_14_while_cond:
    movl    $95734, %eax            #  12:     if     95734 # 12622 goto 15_while_body
    movl    $12622, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_15_while_body     
    jmp     l_f1_13                 #  13:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  15:     goto   14_while_cond
l_f1_13:
    movl    $1, %eax                #  17:     if     1 # 1 goto 18
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_18                
    jmp     l_f1_19                 #  18:     goto   19
l_f1_18:
    movl    $1, %eax                #  20:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_20                 #  21:     goto   20
l_f1_19:
    movl    $0, %eax                #  23:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_20:
    movzbl  -14(%ebp), %eax         #  25:     return t3
    jmp     l_f1_exit              
    movl    $99, %eax               #  26:     if     99 <= 98 goto 23_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  27:     goto   24_if_false
l_f1_23_if_true:
    jmp     l_f1_22                 #  29:     goto   22
l_f1_24_if_false:
l_f1_22:
    jmp     l_f1_10_while_cond      #  32:     goto   10_while_cond
l_f1_9:
    call    ReadInt                 #  34:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -27(%ebp)   1  [ $v1       <char> %ebp-27 ]

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
    movl    $71385, %eax            #   0:     sub    t2 <- 71385, 53614
    movl    $53614, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t3 <- t2, 73824
    movl    $73824, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t4 <- t3, 10632
    movl    $10632, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #   4:     call   t5 <- f1
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   5:     return t5
    jmp     l_f2_exit              
    movl    $98, %eax               #   6:     assign v1 <- 98
    movb    %al, -27(%ebp)         
    call    dummyBOOLfunc           #   7:     call   t6 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    movl    $97, %eax               #   2:     if     97 # 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_5                #   5:     goto   5
l_test_5:
    jmp     l_test_8                #   7:     goto   8
l_test_8:
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  12:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
