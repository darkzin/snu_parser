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
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
    movl    $81974, %eax            #   0:     sub    t3 <- 81974, 56969
    movl    $56969, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 62865
    movl    $62865, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v3 <- t4
    movl    %eax, -28(%ebp)        
    movl    $31286, %eax            #   3:     assign v3 <- 31286
    movl    %eax, -28(%ebp)        
    call    dummyBOOLfunc           #   4:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 7 of <array 10 of <array 4 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 9 of <array 2 of <array 7 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #    -15(%ebp)   1  [ $v5       <bool> %ebp-15 ]

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
    movl    $5502, %eax             #   0:     if     5502 >= 79133 goto 1
    movl    $79133, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v5 <- t3
    movb    %al, -15(%ebp)         
l_f1_6_while_cond:
    jmp     l_f1_5                  #  10:     goto   5
    jmp     l_f1_8                  #  11:     goto   8
l_f1_8:
l_f1_12_while_cond:
    movl    $99, %eax               #  14:     if     99 > 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_13_while_body     
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_while_body:
l_f1_16_while_cond:
    jmp     l_f1_16_while_cond      #  18:     goto   16_while_cond
    jmp     l_f1_12_while_cond      #  19:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_6_while_cond       #  21:     goto   6_while_cond
l_f1_5:
l_f1_19_while_cond:
    jmp     l_f1_18                 #  24:     goto   18
    call    dummyBOOLfunc           #  25:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  26:     if     t4 = 1 goto 20_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_20_while_body     
    jmp     l_f1_18                 #  27:     goto   18
l_f1_20_while_body:
    jmp     l_f1_19_while_cond      #  29:     goto   19_while_cond
l_f1_18:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 6 of <array 1 of <array 4 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <bool> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t3 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_4                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_4:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     return t4
    jmp     l_f2_exit              
l_f2_6_while_cond:
    call    dummyCHARfunc           #  11:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  12:     if     t5 = 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  13:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  15:     goto   6_while_cond
l_f2_5:
l_f2_10_while_cond:
    jmp     l_f2_11_while_body      #  18:     goto   11_while_body
    jmp     l_f2_11_while_body      #  19:     goto   11_while_body
    jmp     l_f2_9                  #  20:     goto   9
l_f2_11_while_body:
    movl    $97, %eax               #  22:     if     97 > 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  23:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  25:     goto   19
l_f2_21_if_false:
l_f2_19:
    movl    $0, %eax                #  28:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_10_while_cond      #  29:     goto   10_while_cond
l_f2_9:

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
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    movl    $43767, %eax            #   0:     if     43767 = 95146 goto 1_if_true
    movl    $95146, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $97, %eax               #   3:     if     97 > 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_exit            
    call    dummyINTfunc            #  10:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
l_test_11_while_cond:
    jmp     l_test_10               #  15:     goto   10
    movl    $44067, %eax            #  16:     if     44067 > 88088 goto 14_if_true
    movl    $88088, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_14_if_true      
    jmp     l_test_15_if_false      #  17:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  19:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $0, %eax                #  22:     assign v0 <- 0
    movb    %al, v0                
    call    dummyCHARfunc           #  23:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_11_while_cond    #  24:     goto   11_while_cond
l_test_10:
    call    dummyCHARfunc           #  26:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  27:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_exit            
    movl    $43045, %eax            #  29:     if     43045 > 29489 goto 22_if_true
    movl    $29489, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_22_if_true      
    jmp     l_test_23_if_false      #  30:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_exit            
    movl    $57223, %eax            #  33:     assign v2 <- 57223
    movl    %eax, v2               
l_test_28_while_cond:
    jmp     l_test_28_while_cond    #  35:     goto   28_while_cond
    jmp     l_test_21               #  36:     goto   21
l_test_23_if_false:
l_test_21:
    movl    $0, %eax                #  39:     assign v0 <- 0
    movb    %al, v0                

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
