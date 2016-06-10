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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 7 of <array 7 of <array 10 of <array 1 of <char>>>>>>> %ebp+20 ]
    #    -18(%ebp)   1  [ $v4       <char> %ebp-18 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_5_if_false         #   2:     goto   5_if_false
    jmp     l_f0_5_if_false         #   3:     goto   5_if_false
    jmp     l_f0_3                  #   4:     goto   3
l_f0_5_if_false:
l_f0_3:
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    call    ReadInt                 #   9:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $73043, %eax            #  10:     if     73043 >= t2 goto 10_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  11:     goto   11_if_false
l_f0_10_if_true:
    movl    $100, %eax              #  13:     assign v4 <- 100
    movb    %al, -18(%ebp)         
l_f0_15_while_cond:
    jmp     l_f0_15_while_cond      #  15:     goto   15_while_cond
    jmp     l_f0_9                  #  16:     goto   9
l_f0_11_if_false:
l_f0_9:
    call    dummyCHARfunc           #  19:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]

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
l_f1_1_while_cond:
l_f1_4_while_cond:
    jmp     l_f1_4_while_cond       #   2:     goto   4_while_cond
    movl    $100, %eax              #   3:     return 100
    jmp     l_f1_exit              
    movl    $94826, %eax            #   4:     param  0 <- 94826
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
    leal    _str_1, %eax            #   7:     &()    t2 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #   9:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

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
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 8 of <array 2 of <array 1 of <array 4 of <char>>>>>>> %ebp+8 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    jmp     l_f2_0                  #   3:     goto   0
    movl    $64909, %eax            #   4:     if     64909 <= 30033 goto 8_if_true
    movl    $30033, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   5:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #   7:     goto   7
l_f2_9_if_false:
l_f2_7:
    call    ReadInt                 #  10:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    call    dummyBOOLfunc           #  13:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #  14:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
    movl    $84099, %eax            #   3:     if     84099 = 91308 goto 9_if_true
    movl    $91308, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #   4:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #   6:     goto   8
l_test_10_if_false:
l_test_8:
l_test_13_while_cond:
    movl    $1, %eax                #  10:     if     1 = 0 goto 14_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_14_while_body   
    jmp     l_test_12               #  11:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  13:     goto   13_while_cond
l_test_12:
    jmp     l_test_0                #  15:     goto   0
l_test_2_if_false:
l_test_0:
l_test_20_while_cond:
    movl    $1, %eax                #  19:     if     1 = 1 goto 21_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_21_while_body   
    jmp     l_test_19               #  20:     goto   19
l_test_21_while_body:
    leal    _str_2, %eax            #  22:     &()    t0 <- _str_2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #  24:     call   WriteStr
    addl    $4, %esp               
l_test_25_while_cond:
    movl    $42516, %eax            #  26:     if     42516 >= 57940 goto 26_while_body
    movl    $57940, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_26_while_body   
    jmp     l_test_24               #  27:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  29:     goto   25_while_cond
l_test_24:
    jmp     l_test_20_while_cond    #  31:     goto   20_while_cond
l_test_19:
    jmp     l_test_16               #  33:     goto   16
l_test_16:
    jmp     l_test_30_if_false      #  35:     goto   30_if_false
    jmp     l_test_exit            
    movl    $98, %eax               #  37:     assign v0 <- 98
    movb    %al, v0                
l_test_34_while_cond:
    jmp     l_test_33               #  39:     goto   33
    jmp     l_test_34_while_cond    #  40:     goto   34_while_cond
l_test_33:
    jmp     l_test_28               #  42:     goto   28
l_test_30_if_false:
l_test_28:
    movl    $97, %eax               #  45:     if     97 <= 98 goto 37_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_37_if_true      
    jmp     l_test_38_if_false      #  46:     goto   38_if_false
l_test_37_if_true:
    call    dummyBOOLfunc           #  48:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_test_42_while_cond:
    movl    $99, %eax               #  50:     if     99 <= 98 goto 43_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_43_while_body   
    jmp     l_test_41               #  51:     goto   41
l_test_43_while_body:
    jmp     l_test_42_while_cond    #  53:     goto   42_while_cond
l_test_41:
    jmp     l_test_exit            
    jmp     l_test_48_if_false      #  56:     goto   48_if_false
    jmp     l_test_46               #  57:     goto   46
l_test_48_if_false:
l_test_46:
    movl    $20267, %eax            #  60:     assign v1 <- 20267
    movl    %eax, v1               
    jmp     l_test_36               #  61:     goto   36
l_test_38_if_false:
l_test_36:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
