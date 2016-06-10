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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 51 of <array 8 of <array 44 of <array 56 of <array 82 of <int>>>>>>> %ebp+8 ]
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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyProcedure          #   1:     call   dummyProcedure
    movl    $4593, %eax             #   2:     assign v3 <- 4593
    movl    %eax, -24(%ebp)        
    call    ReadInt                 #   3:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_2                  #   4:     goto   2
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $v2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v4       <bool> %ebp-21 ]

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
    movl    $98, %eax               #   0:     return 98
    jmp     l_f1_exit              
    movl    $98, %eax               #   1:     assign v2 <- 98
    movb    %al, -13(%ebp)         
l_f1_3_while_cond:
    movl    $3584, %eax             #   3:     assign v3 <- 3584
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #   4:     assign v4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_3_while_cond       #   5:     goto   3_while_cond

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 48 of <array 85 of <array 83 of <array 15 of <array 94 of <char>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     return 99
    jmp     l_f2_exit              
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #   3:     goto   6_while_cond
    call    dummyBOOLfunc           #   4:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_2                  #   5:     goto   2
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
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
    movl    $100, %eax              #   0:     if     100 # 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
l_test_6_while_cond:
    movl    $26055, %eax            #  10:     if     26055 # 48662 goto 7_while_body
    movl    $48662, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_7_while_body    
    jmp     l_test_5                #  11:     goto   5
l_test_7_while_body:
    movl    $77893, %eax            #  13:     assign v1 <- 77893
    movl    %eax, v1               
l_test_11_while_cond:
    movl    $98, %eax               #  15:     if     98 = 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_12_while_body   
    jmp     l_test_10               #  16:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  18:     goto   11_while_cond
l_test_10:
    call    dummyBOOLfunc           #  20:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_17_if_false      #  21:     goto   17_if_false
    jmp     l_test_15               #  22:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_6_while_cond     #  25:     goto   6_while_cond
l_test_5:
l_test_20_while_cond:
    jmp     l_test_19               #  28:     goto   19
    jmp     l_test_19               #  29:     goto   19
    jmp     l_test_23               #  30:     goto   23
l_test_23:
    movl    $100, %eax              #  32:     if     100 # 100 goto 27_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_27_if_true      
    jmp     l_test_28_if_false      #  33:     goto   28_if_false
l_test_27_if_true:
    jmp     l_test_26               #  35:     goto   26
l_test_28_if_false:
l_test_26:
    jmp     l_test_20_while_cond    #  38:     goto   20_while_cond
l_test_19:
    jmp     l_test_31               #  40:     goto   31
    jmp     l_test_31               #  41:     goto   31
l_test_31:
    movl    $1, %eax                #  43:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_33               #  44:     goto   33
    movl    $0, %eax                #  45:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_33:
    movzbl  -15(%ebp), %eax         #  47:     assign v0 <- t2
    movb    %al, v0                
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
