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
    #    -13(%ebp)   1  [ $v1       <char> %ebp-13 ]

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
    movl    $100, %eax              #   0:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    movl    $97, %eax               #   2:     assign v1 <- 97
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   3:     assign v1 <- 99
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 32 of <array 26 of <array 85 of <array 94 of <array 89 of <bool>>>>>>> %ebp+8 ]

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
    call    f0                      #   0:     call   f0
    call    ReadInt                 #   1:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_3_while_cond:
    jmp     l_f1_4_while_body       #   3:     goto   4_while_body
    jmp     l_f1_4_while_body       #   4:     goto   4_while_body
    jmp     l_f1_2                  #   5:     goto   2
l_f1_4_while_body:
l_f1_9_while_cond:
    jmp     l_f1_9_while_cond       #   8:     goto   9_while_cond
l_f1_12_while_cond:
    jmp     l_f1_12_while_cond      #  10:     goto   12_while_cond
    jmp     l_f1_3_while_cond       #  11:     goto   3_while_cond
l_f1_2:

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
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 33 of <array 24 of <array 93 of <array 37 of <array 81 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 26 of <array 23 of <array 74 of <array 32 of <array 54 of <bool>>>>>>> %ebp+16 ]

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
l_f2_1_while_cond:
    movl    $83102, %eax            #   1:     if     83102 >= 72642 goto 2_while_body
    movl    $72642, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $39983, %eax            #   4:     return 39983
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   5:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #   8:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    jmp     l_test_0                #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   3:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
    jmp     l_test_5                #   5:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
    movl    $98, %eax               #  11:     assign v0 <- 98
    movb    %al, v0                
    call    dummyCHARfunc           #  12:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  13:     if     98 >= t1 goto 11_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_11_if_true      
    jmp     l_test_12_if_false      #  14:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_16_if_false      #  16:     goto   16_if_false
    jmp     l_test_14               #  17:     goto   14
l_test_16_if_false:
l_test_14:
    movl    $98, %eax               #  20:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_10               #  21:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $83875, %eax            #  24:     if     83875 <= 19189 goto 19_if_true
    movl    $19189, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_19_if_true      
    jmp     l_test_20_if_false      #  25:     goto   20_if_false
l_test_19_if_true:
l_test_23_while_cond:
    jmp     l_test_22               #  28:     goto   22
    jmp     l_test_23_while_cond    #  29:     goto   23_while_cond
l_test_22:
    movl    $0, %eax                #  31:     if     0 # 1 goto 26
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_26              
    jmp     l_test_27               #  32:     goto   27
l_test_26:
    movl    $1, %eax                #  34:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_28               #  35:     goto   28
l_test_27:
    movl    $0, %eax                #  37:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_28:
    movzbl  -15(%ebp), %eax         #  39:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_18               #  40:     goto   18
l_test_20_if_false:
l_test_18:
    movl    $100, %eax              #  43:     assign v0 <- 100
    movb    %al, v0                
    movl    $91070, %eax            #  44:     if     91070 >= 69777 goto 36_if_true
    movl    $69777, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_36_if_true      
    jmp     l_test_37_if_false      #  45:     goto   37_if_false
l_test_36_if_true:
    jmp     l_test_35               #  47:     goto   35
l_test_37_if_false:
l_test_35:
    jmp     l_test_30               #  50:     goto   30
l_test_30:

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
