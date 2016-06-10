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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 27 of <array 13 of <array 31 of <array 50 of <array 58 of <bool>>>>>>> %ebp+8 ]

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
    jmp     l_f0_exit              
    movl    $64213, %eax            #   2:     param  0 <- 64213
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
    movl    $98, %eax               #   4:     return 98
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $v0       <char> %ebp-23 ]

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
l_f1_1_while_cond:
    movl    $15358, %eax            #   1:     div    t4 <- 15358, 93790
    movl    $93790, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t5 <- t4, 64577
    movl    $64577, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $19925, %eax            #   3:     if     19925 > t5 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    movl    $66134, %eax            #   7:     if     66134 < 48574 goto 6_while_body
    movl    $48574, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #   8:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #  10:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_1_while_cond       #  12:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  14:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  15:     assign v0 <- t6
    movb    %al, -23(%ebp)         
l_f1_10_while_cond:
    jmp     l_f1_9                  #  17:     goto   9
    jmp     l_f1_9                  #  18:     goto   9
    jmp     l_f1_9                  #  19:     goto   9
    call    dummyCHARfunc           #  20:     call   t7 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    jmp     l_f1_10_while_cond      #  21:     goto   10_while_cond
l_f1_9:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -25(%ebp)   1  [ $v1       <char> %ebp-25 ]

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
    jmp     l_f2_exit              
    call    f1                      #   1:     call   t4 <- f1
    movl    %eax, -16(%ebp)        
    movl    $38811, %eax            #   2:     add    t5 <- 38811, 99955
    movl    $99955, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4951, %eax             #   3:     if     4951 # t5 goto 3_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   4:     goto   4_if_false
l_f2_3_if_true:
    movl    $11563, %eax            #   6:     if     11563 <= 28539 goto 7_if_true
    movl    $28539, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   7:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #   9:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $98, %eax               #  12:     assign v1 <- 98
    movb    %al, -25(%ebp)         
    jmp     l_f2_13_if_false        #  13:     goto   13_if_false
    jmp     l_f2_11                 #  14:     goto   11
l_f2_13_if_false:
l_f2_11:
    leal    _str_1, %eax            #  17:     &()    t6 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  19:     call   WriteStr
    addl    $4, %esp               
l_f2_16_while_cond:
    movl    $61474, %eax            #  21:     if     61474 # 19548 goto 17_while_body
    movl    $19548, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_17_while_body     
    jmp     l_f2_15                 #  22:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  24:     goto   16_while_cond
l_f2_15:
l_f2_20_while_cond:
    jmp     l_f2_19                 #  27:     goto   19
    jmp     l_f2_20_while_cond      #  28:     goto   20_while_cond
l_f2_19:
    jmp     l_f2_24_if_false        #  30:     goto   24_if_false
    jmp     l_f2_22                 #  31:     goto   22
l_f2_24_if_false:
l_f2_22:
    jmp     l_f2_2                  #  34:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-24 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
    jmp     l_test_3_while_body     #   3:     goto   3_while_body
    jmp     l_test_3_while_body     #   4:     goto   3_while_body
    jmp     l_test_3_while_body     #   5:     goto   3_while_body
    jmp     l_test_1                #   6:     goto   1
l_test_3_while_body:
l_test_10_while_cond:
    movl    $47157, %eax            #   9:     if     47157 <= 95934 goto 11_while_body
    movl    $95934, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_11_while_body   
    jmp     l_test_9                #  10:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  12:     goto   10_while_cond
l_test_9:
    call    ReadInt                 #  14:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_15_while_cond:
    movl    $99, %eax               #  16:     if     99 # 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_16_while_body   
    jmp     l_test_14               #  17:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  19:     goto   15_while_cond
l_test_14:
    jmp     l_test_2_while_cond     #  21:     goto   2_while_cond
l_test_1:
    call    dummyBOOLfunc           #  23:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #  24:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
l_test_24_while_cond:
    jmp     l_test_24_while_cond    #  26:     goto   24_while_cond
    jmp     l_test_28_if_false      #  27:     goto   28_if_false
    jmp     l_test_26               #  28:     goto   26
l_test_28_if_false:
l_test_26:
    jmp     l_test_exit            
    leal    _str_2, %eax            #  32:     &()    t3 <- _str_2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  34:     call   WriteStr
    addl    $4, %esp               
    movl    $97, %eax               #  35:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_19               #  36:     goto   19
l_test_19:

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
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
