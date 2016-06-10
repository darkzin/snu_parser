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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 3 of <array 7 of <array 5 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 4 of <array 5 of <array 1 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    movl    $98, %eax               #   0:     assign v4 <- 98
    movb    %al, -14(%ebp)         
    movl    $21700, %eax            #   1:     if     21700 <= 57388 goto 2_if_true
    movl    $57388, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    jmp     l_f0_7_while_body       #   5:     goto   7_while_body
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
    jmp     l_f0_1                  #   8:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_10_while_cond:
    jmp     l_f0_9                  #  12:     goto   9
    call    dummyCHARfunc           #  13:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_10_while_cond      #  14:     goto   10_while_cond
l_f0_9:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 1 of <array 8 of <array 10 of <array 8 of <char>>>>>>> %ebp+8 ]

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
    movl    $98, %eax               #   0:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_0                  #   2:     goto   0
l_f1_0:
    jmp     l_f1_6                  #   4:     goto   6
    jmp     l_f1_6                  #   5:     goto   6
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_8                  #   9:     goto   8
l_f1_7:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_8:
    movzbl  -13(%ebp), %eax         #  13:     return t1
    jmp     l_f1_exit              
    jmp     l_f1_15                 #  14:     goto   15
    jmp     l_f1_15                 #  15:     goto   15
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_16                 #  17:     goto   16
l_f1_15:
    movl    $0, %eax                #  19:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_16:
    movzbl  -14(%ebp), %eax         #  21:     return t2
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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_1_if_true          #   1:     goto   1_if_true
l_f2_1_if_true:
    jmp     l_f2_0                  #   3:     goto   0
l_f2_0:
    jmp     l_f2_7_if_false         #   5:     goto   7_if_false
    movl    $10928, %eax            #   6:     assign v0 <- 10928
    movl    %eax, -20(%ebp)        
l_f2_10_while_cond:
    movl    $67846, %eax            #   8:     if     67846 = 27672 goto 11_while_body
    movl    $27672, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_11_while_body     
    jmp     l_f2_9                  #   9:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  11:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_13                 #  13:     goto   13
l_f2_13:
    jmp     l_f2_5                  #  15:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $41033, %eax            #  18:     add    t1 <- 41033, 95894
    movl    $95894, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $732, %eax              #  19:     if     732 <= t1 goto 17_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  20:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  22:     goto   16
l_f2_18_if_false:
l_f2_16:

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
    movl    $98, %eax               #   1:     assign v0 <- 98
    movb    %al, v0                
    movl    $1, %eax                #   2:     if     1 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_5               
    jmp     l_test_6                #   3:     goto   6
l_test_5:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   6:     goto   7
l_test_6:
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #  10:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_11_if_false      #  11:     goto   11_if_false
    jmp     l_test_exit            
l_test_14_while_cond:
    movl    $0, %eax                #  14:     if     0 = 0 goto 15_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15_while_body   
    jmp     l_test_13               #  15:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  17:     goto   14_while_cond
l_test_13:
    jmp     l_test_9                #  19:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_1_while_cond     #  22:     goto   1_while_cond
    jmp     l_test_19_if_false      #  23:     goto   19_if_false
l_test_21_while_cond:
    jmp     l_test_21_while_cond    #  25:     goto   21_while_cond
l_test_24_while_cond:
    movl    $97, %eax               #  27:     if     97 <= 99 goto 25_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_25_while_body   
    jmp     l_test_23               #  28:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  30:     goto   24_while_cond
l_test_23:
l_test_28_while_cond:
    jmp     l_test_28_while_cond    #  33:     goto   28_while_cond
l_test_31_while_cond:
    movl    $0, %eax                #  35:     if     0 # 0 goto 32_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_32_while_body   
    jmp     l_test_30               #  36:     goto   30
l_test_32_while_body:
    jmp     l_test_31_while_cond    #  38:     goto   31_while_cond
l_test_30:
    jmp     l_test_exit            
    jmp     l_test_37_if_false      #  41:     goto   37_if_false
    jmp     l_test_35               #  42:     goto   35
l_test_37_if_false:
l_test_35:
l_test_39_while_cond:
    movl    $0, %eax                #  46:     if     0 = 1 goto 40_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_40_while_body   
    jmp     l_test_38               #  47:     goto   38
l_test_40_while_body:
    jmp     l_test_39_while_cond    #  49:     goto   39_while_cond
l_test_38:
l_test_43_while_cond:
    jmp     l_test_42               #  52:     goto   42
    jmp     l_test_43_while_cond    #  53:     goto   43_while_cond
l_test_42:
    jmp     l_test_17               #  55:     goto   17
l_test_19_if_false:
l_test_17:
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

    # scope: test
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
