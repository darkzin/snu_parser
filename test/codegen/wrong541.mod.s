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
    #    -13(%ebp)   1  [ $v0       <char> %ebp-13 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $97, %eax               #   6:     assign v0 <- 97
    movb    %al, -13(%ebp)         
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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t7       <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $v0       <bool> %ebp-28 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_1_if_true          #   1:     goto   1_if_true
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    movl    $1, %eax                #   4:     assign v0 <- 1
    movb    %al, -28(%ebp)         
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #   6:     goto   7_while_cond
    call    dummyINTfunc            #   7:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_11_while_cond:
    jmp     l_f1_10                 #   9:     goto   10
    jmp     l_f1_11_while_cond      #  10:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_0                  #  12:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  15:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #  16:     call   t3 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  17:     if     t3 < 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  18:     goto   16_if_false
l_f1_15_if_true:
    leal    _str_1, %eax            #  20:     &()    t4 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  22:     call   WriteStr
    addl    $4, %esp               
    movl    $22631, %eax            #  23:     if     22631 <= 13190 goto 20
    movl    $13190, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_20                
    jmp     l_f1_21                 #  24:     goto   21
l_f1_20:
    movl    $1, %eax                #  26:     assign t5 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_22                 #  27:     goto   22
l_f1_21:
    movl    $0, %eax                #  29:     assign t5 <- 0
    movb    %al, -25(%ebp)         
l_f1_22:
    movzbl  -25(%ebp), %eax         #  31:     return t5
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  32:     call   t6 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    jmp     l_f1_25                 #  33:     goto   25
l_f1_25:
    movl    $99, %eax               #  35:     if     99 < 98 goto 29
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_29                
    jmp     l_f1_30                 #  36:     goto   30
l_f1_29:
    movl    $1, %eax                #  38:     assign t7 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f1_31                 #  39:     goto   31
l_f1_30:
    movl    $0, %eax                #  41:     assign t7 <- 0
    movb    %al, -27(%ebp)         
l_f1_31:
    movzbl  -27(%ebp), %eax         #  43:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_14                 #  44:     goto   14
l_f1_16_if_false:
l_f1_14:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 5 of <array 5 of <array 3 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 7 of <array 1 of <array 4 of <array 2 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
l_f2_2_while_cond:
    jmp     l_f2_1                  #   2:     goto   1
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   4:     return 98
    jmp     l_f2_exit              
l_f2_7_while_cond:
    jmp     l_f2_7_while_cond       #   6:     goto   7_while_cond
    movl    $97, %eax               #   7:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #   8:     goto   2_while_cond
l_f2_1:
    movl    $98, %eax               #  10:     if     98 < 99 goto 14_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  11:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  13:     goto   13
l_f2_15_if_false:
l_f2_13:
l_f2_18_while_cond:
    jmp     l_f2_18_while_cond      #  17:     goto   18_while_cond
    jmp     l_f2_10                 #  18:     goto   10
l_f2_10:

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
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3               
    jmp     l_test_0                #   3:     goto   0
l_test_3:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    jmp     l_test_6_while_body     #   8:     goto   6_while_body
    jmp     l_test_6_while_body     #   9:     goto   6_while_body
    jmp     l_test_4                #  10:     goto   4
l_test_6_while_body:
    jmp     l_test_exit            
    jmp     l_test_5_while_cond     #  13:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
    movl    $100, %eax              #  16:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_18_if_false      #  17:     goto   18_if_false
    jmp     l_test_16               #  18:     goto   16
l_test_18_if_false:
l_test_16:
    call    dummyProcedure          #  21:     call   dummyProcedure
    jmp     l_test_13               #  22:     goto   13
l_test_13:
    movl    $0, %eax                #  24:     assign v1 <- 0
    movb    %al, v1                

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
