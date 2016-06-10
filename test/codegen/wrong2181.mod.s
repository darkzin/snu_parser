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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 54 of <array 80 of <array 67 of <array 93 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 24 of <array 88 of <array 43 of <array 8 of <array 98 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 29 of <array 77 of <array 20 of <array 67 of <array 37 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 51 of <array 34 of <array 36 of <array 81 of <array 31 of <int>>>>>>> %ebp+20 ]
    #    -13(%ebp)   1  [ $v5       <char> %ebp-13 ]

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
    movl    $99, %eax               #   0:     if     99 > 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_4                  #   3:     goto   4
l_f0_4:
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $99, %eax               #   8:     assign v5 <- 99
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   9:     if     97 # 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  10:     goto   10_if_false
l_f0_9_if_true:
    movl    $99, %eax               #  12:     if     99 >= 99 goto 13_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  13:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_18                 #  17:     goto   18
l_f0_18:
    jmp     l_f0_12                 #  19:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_8                  #  22:     goto   8
l_f0_10_if_false:
l_f0_8:

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 46 of <array 6 of <array 78 of <array 88 of <array 89 of <char>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    leal    _str_1, %eax            #   0:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   4:     goto   3_while_body
l_f1_3_while_body:
    movl    $98, %eax               #   6:     if     98 = 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   7:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #   9:     goto   6
l_f1_8_if_false:
l_f1_6:
l_f1_11_while_cond:
    movl    $70332, %eax            #  13:     if     70332 <= 39393 goto 12_while_body
    movl    $39393, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_12_while_body     
    jmp     l_f1_10                 #  14:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  16:     goto   11_while_cond
l_f1_10:
    call    ReadInt                 #  18:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f1_2_while_cond       #  19:     goto   2_while_cond
    movl    $41188, %eax            #  20:     assign v3 <- 41188
    movl    %eax, -24(%ebp)        

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 53 of <array 4 of <array 68 of <array 16 of <array 14 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 52 of <array 69 of <array 32 of <array 85 of <array 68 of <char>>>>>>> %ebp+16 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $97, %eax               #   1:     return 97
    jmp     l_f2_exit              
    call    dummyINTfunc            #   2:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #   6:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    dummyINTfunc            #   7:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    jmp     l_test_1_if_true        #   3:     goto   1_if_true
    jmp     l_test_1_if_true        #   4:     goto   1_if_true
l_test_1_if_true:
    jmp     l_test_0                #   6:     goto   0
l_test_0:
l_test_9_while_cond:
    movl    $64031, %eax            #   9:     sub    t0 <- 64031, 68231
    movl    $68231, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     if     t0 >= 79092 goto 10_while_body
    movl    $79092, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    call    dummyProcedure          #  13:     call   dummyProcedure
    movl    $97, %eax               #  14:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
l_test_15_while_cond:
    jmp     l_test_14               #  17:     goto   14
    jmp     l_test_15_while_cond    #  18:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
    jmp     l_test_9_while_cond     #  21:     goto   9_while_cond
l_test_8:
    call    dummyCHARfunc           #  23:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  24:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $40610, %eax            #  26:     div    t2 <- 40610, 9265
    movl    $9265, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     assign v1 <- t2
    movl    %eax, v1               
    jmp     l_test_exit            

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
_str_1:                             # <array 5 of <char>>
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
