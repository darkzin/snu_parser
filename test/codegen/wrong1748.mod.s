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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 52 of <array 75 of <array 31 of <array 14 of <array 68 of <char>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
    jmp     l_f0_6                  #   3:     goto   6
l_f0_6:
    jmp     l_f0_exit              
    jmp     l_f0_1                  #   6:     goto   1
l_f0_1:
    movl    $94657, %eax            #   8:     assign v2 <- 94657
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 91 of <array 29 of <array 53 of <array 80 of <array 90 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 57 of <array 91 of <array 60 of <array 95 of <array 93 of <bool>>>>>>> %ebp+20 ]

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
    jmp     l_f1_5_if_false         #   0:     goto   5_if_false
    jmp     l_f1_3                  #   1:     goto   3
l_f1_5_if_false:
l_f1_3:
    call    WriteLn                 #   4:     call   WriteLn
    jmp     l_f1_0                  #   5:     goto   0
l_f1_0:
    movl    $98, %eax               #   7:     if     98 <= 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   8:     goto   9_if_false
l_f1_8_if_true:
l_f1_12_while_cond:
l_f1_15_while_cond:
    movl    $99, %eax               #  12:     if     99 = 99 goto 16_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_16_while_body     
    jmp     l_f1_14                 #  13:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  15:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_12_while_cond      #  17:     goto   12_while_cond
    jmp     l_f1_7                  #  18:     goto   7
l_f1_9_if_false:
l_f1_7:
    call    dummyBOOLfunc           #  21:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $v3       <int> %ebp-36 ]

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
    movl    $68836, %eax            #   0:     div    t5 <- 68836, 41092
    movl    $41092, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t6 <- t5, 90775
    movl    $90775, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t6
    jmp     l_f2_exit              
    movl    $45049, %eax            #   3:     if     45049 > 46189 goto 2_if_true
    movl    $46189, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   4:     goto   3_if_false
l_f2_2_if_true:
    movl    $1, %eax                #   6:     assign v2 <- 1
    movb    %al, -29(%ebp)         
    movl    $4336, %eax             #   7:     return 4336
    jmp     l_f2_exit              
    jmp     l_f2_1                  #   8:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_8_while_cond:
    jmp     l_f2_7                  #  12:     goto   7
    call    ReadInt                 #  13:     call   t7 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $81265, %eax            #  14:     assign v3 <- 81265
    movl    %eax, -36(%ebp)        
    movl    $36474, %eax            #  15:     div    t8 <- 36474, 106
    movl    $106, %ebx             
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     assign v3 <- t8
    movl    %eax, -36(%ebp)        
    jmp     l_f2_8_while_cond       #  17:     goto   8_while_cond
l_f2_7:

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 57 of <array 91 of <array 60 of <array 95 of <array 93 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 91 of <array 29 of <array 53 of <array 80 of <array 90 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
    jmp     l_test_1                #   0:     goto   1
    jmp     l_test_1                #   1:     goto   1
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   7:     assign v0 <- t0
    movb    %al, v0                
l_test_8_while_cond:
    movl    $51199, %eax            #   9:     if     51199 <= 34214 goto 9_while_body
    movl    $34214, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_9_while_body    
    jmp     l_test_7                #  10:     goto   7
l_test_9_while_body:
    jmp     l_test_exit            
    jmp     l_test_8_while_cond     #  13:     goto   8_while_cond
l_test_7:
    leal    v2, %eax                #  15:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  3 <- t1
    pushl   %eax                   
    movl    $100, %eax              #  17:     param  2 <- 100
    pushl   %eax                   
    leal    v1, %eax                #  18:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     param  1 <- t2
    pushl   %eax                   
    movl    $74713, %eax            #  20:     param  0 <- 74713
    pushl   %eax                   
    call    f1                      #  21:     call   t3 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  22:     param  1 <- t3
    pushl   %eax                   
    movl    $100, %eax              #  23:     param  0 <- 100
    pushl   %eax                   
    call    f2                      #  24:     call   t4 <- f2
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 91 of <array 29 of <array 53 of <array 80 of <array 90 of <char>>>>>>
    .long    5
    .long   91
    .long   29
    .long   53
    .long   80
    .long   90
    .skip 1007042400
v2:                                 # <array 57 of <array 91 of <array 60 of <array 95 of <array 93 of <bool>>>>>>
    .long    5
    .long   57
    .long   91
    .long   60
    .long   95
    .long   93
    .skip -1545338596








    # end of global data section
    #-----------------------------------------

    .end
##################################################
