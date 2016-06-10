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
    #    -26(%ebp)   1  [ $t7       <bool> %ebp-26 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $9622, %eax             #   0:     div    t3 <- 9622, 86314
    movl    $86314, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t4 <- t3, 7506
    movl    $7506, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t5 <- t4, 4440
    movl    $4440, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v2 <- t5
    movl    %eax, 16(%ebp)         
    call    dummyBOOLfunc           #   4:     call   t6 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   5:     if     t6 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2                 
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $1, %eax                #   8:     assign t7 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f0_4                  #   9:     goto   4
l_f0_3:
    movl    $0, %eax                #  11:     assign t7 <- 0
    movb    %al, -26(%ebp)         
l_f0_4:
    movzbl  -26(%ebp), %eax         #  13:     return t7
    jmp     l_f0_exit              
l_f0_7_while_cond:
    jmp     l_f0_8_while_body       #  15:     goto   8_while_body
    jmp     l_f0_8_while_body       #  16:     goto   8_while_body
    jmp     l_f0_8_while_body       #  17:     goto   8_while_body
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  19:     goto   7_while_cond

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t3 <= 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_5                 
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_7:
    movzbl  -14(%ebp), %eax         #  10:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  11:     goto   0
l_f1_0:
    jmp     l_f1_10_if_true         #  13:     goto   10_if_true
    jmp     l_f1_10_if_true         #  14:     goto   10_if_true
    jmp     l_f1_11_if_false        #  15:     goto   11_if_false
l_f1_10_if_true:
    movl    $31851, %eax            #  17:     if     31851 <= 86090 goto 15_if_true
    movl    $86090, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  18:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  20:     goto   14
l_f1_16_if_false:
l_f1_14:
    jmp     l_f1_9                  #  23:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_20                 #  26:     goto   20
    movl    $49034, %eax            #  27:     param  2 <- 49034
    pushl   %eax                   
    movl    $99, %eax               #  28:     param  1 <- 99
    pushl   %eax                   
    movl    $30046, %eax            #  29:     param  0 <- 30046
    pushl   %eax                   
    call    f0                      #  30:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  31:     if     t5 = 1 goto 19
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_19                
    jmp     l_f1_20                 #  32:     goto   20
l_f1_19:
    movl    $1, %eax                #  34:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_21                 #  35:     goto   21
l_f1_20:
    movl    $0, %eax                #  37:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f1_21:
    movzbl  -16(%ebp), %eax         #  39:     return t6
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 92 of <array 33 of <array 47 of <array 18 of <array 27 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 53 of <array 12 of <array 18 of <array 86 of <array 58 of <bool>>>>>>> %ebp+20 ]

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
    movl    $9633, %eax             #   0:     param  0 <- 9633
    pushl   %eax                   
    call    WriteInt                #   1:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     if     t3 >= 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   5:     goto   4_if_false
l_f2_3_if_true:
    call    dummyCHARfunc           #   7:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #   8:     assign v1 <- 1
    movb    %al, 12(%ebp)          
    jmp     l_f2_8                  #   9:     goto   8
l_f2_8:
    jmp     l_f2_2                  #  11:     goto   2
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_1_if_true        #   1:     goto   1_if_true
    jmp     l_test_1_if_true        #   2:     goto   1_if_true
    jmp     l_test_2_if_false       #   3:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $94745, %eax            #   8:     add    t0 <- 94745, 60878
    movl    $60878, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $47192, %eax            #   9:     if     47192 >= t0 goto 7_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_7_if_true       
    jmp     l_test_8_if_false       #  10:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_exit            
    movl    $78049, %eax            #  13:     if     78049 > 30854 goto 12_if_true
    movl    $30854, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_12_if_true      
    jmp     l_test_13_if_false      #  14:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  16:     goto   11
l_test_13_if_false:
l_test_11:
    leal    _str_1, %eax            #  19:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  21:     call   WriteStr
    addl    $4, %esp               
l_test_17_while_cond:
    jmp     l_test_17_while_cond    #  23:     goto   17_while_cond
    jmp     l_test_6                #  24:     goto   6
l_test_8_if_false:
l_test_6:
l_test_23_while_cond:
    movl    $77382, %eax            #  28:     if     77382 >= 56190 goto 24_while_body
    movl    $56190, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_24_while_body   
    jmp     l_test_22               #  29:     goto   22
l_test_24_while_body:
    jmp     l_test_28_if_false      #  31:     goto   28_if_false
    jmp     l_test_26               #  32:     goto   26
l_test_28_if_false:
l_test_26:
    jmp     l_test_23_while_cond    #  35:     goto   23_while_cond
l_test_22:
    jmp     l_test_19               #  37:     goto   19
l_test_19:
    call    dummyCHARfunc           #  39:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  40:     assign v0 <- t2
    movb    %al, v0                

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
