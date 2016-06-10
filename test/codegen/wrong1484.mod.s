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
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -14(%ebp)   1  [ $v3       <bool> %ebp-14 ]

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
    movl    $97, %eax               #   0:     if     97 <= 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v3 <- t4
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   9:     return 99
    jmp     l_f0_exit              
    movl    $59455, %eax            #  10:     param  0 <- 59455
    pushl   %eax                   
    call    WriteInt                #  11:     call   WriteInt
    addl    $4, %esp               

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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $8621, %eax             #   0:     assign v1 <- 8621
    movl    %eax, 8(%ebp)          
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   2:     goto   3_while_body
l_f1_3_while_body:
    jmp     l_f1_7_if_false         #   4:     goto   7_if_false
    jmp     l_f1_5                  #   5:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
    movl    $98, %eax               #   9:     if     98 = 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  10:     goto   10_if_false
l_f1_9_if_true:
    movl    $86655, %eax            #  12:     assign v1 <- 86655
    movl    %eax, 8(%ebp)          
    jmp     l_f1_15_if_false        #  13:     goto   15_if_false
    jmp     l_f1_13                 #  14:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_8                  #  17:     goto   8
l_f1_10_if_false:
l_f1_8:

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 76 of <array 2 of <array 69 of <array 39 of <char>>>>>>> %ebp+8 ]

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
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
l_f2_2_while_body:
    movl    $45523, %eax            #   4:     param  1 <- 45523
    pushl   %eax                   
    movl    $97, %eax               #   5:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #   6:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -13(%ebp)         
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_9_while_cond:
    movl    $84534, %eax            #   9:     param  1 <- 84534
    pushl   %eax                   
    movl    $36238, %eax            #  10:     param  0 <- 36238
    pushl   %eax                   
    call    f1                      #  11:     call   t5 <- f1
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     div    t6 <- t5, 41188
    movl    $41188, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     if     t6 # 3470 goto 10_while_body
    movl    $3470, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_10_while_body     
    jmp     l_f2_8                  #  14:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  16:     goto   9_while_cond
l_f2_8:
l_f2_13_while_cond:
    movl    $97, %eax               #  19:     if     97 > 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_14_while_body     
    jmp     l_f2_12                 #  20:     goto   12
l_f2_14_while_body:
l_f2_17_while_cond:
    jmp     l_f2_16                 #  23:     goto   16
    jmp     l_f2_17_while_cond      #  24:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_13_while_cond      #  26:     goto   13_while_cond
l_f2_12:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 90 of <array 76 of <array 2 of <array 69 of <array 39 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]

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
    movl    $100, %eax              #   0:     if     100 > 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $100, %eax              #   4:     if     100 <= 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_exit            
    movl    $99, %eax               #   8:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_5_while_cond     #   9:     goto   5_while_cond
l_test_4:
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $99, %eax               #  14:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #  16:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_13_while_cond:
l_test_16_while_cond:
    jmp     l_test_exit            
    movl    $100, %eax              #  20:     assign v0 <- 100
    movb    %al, v0                
    movl    $0, %eax                #  21:     if     0 = 0 goto 21_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_21_if_true      
    jmp     l_test_22_if_false      #  22:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  24:     goto   20
l_test_22_if_false:
l_test_20:
l_test_25_while_cond:
    jmp     l_test_24               #  28:     goto   24
    jmp     l_test_25_while_cond    #  29:     goto   25_while_cond
l_test_24:
    jmp     l_test_16_while_cond    #  31:     goto   16_while_cond
    jmp     l_test_13_while_cond    #  32:     goto   13_while_cond
    call    dummyBOOLfunc           #  33:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_30_if_false      #  34:     goto   30_if_false
    jmp     l_test_exit            
    leal    v1, %eax                #  36:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  37:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  38:     call   t3 <- f2
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_test_28               #  39:     goto   28
l_test_30_if_false:
l_test_28:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 90 of <array 76 of <array 2 of <array 69 of <array 39 of <char>>>>>>
    .long    5
    .long   90
    .long   76
    .long    2
    .long   69
    .long   39
    .skip 36812880








    # end of global data section
    #-----------------------------------------

    .end
##################################################
