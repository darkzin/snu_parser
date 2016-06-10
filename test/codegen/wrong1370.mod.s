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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    jmp     l_f0_0                  #   2:     goto   0
    call    WriteLn                 #   3:     call   WriteLn
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    movl    $98, %eax               #   6:     if     98 <= 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   7:     goto   7_if_false
l_f0_6_if_true:
l_f0_10_while_cond:
    movl    $15656, %eax            #  10:     if     15656 > 25629 goto 11_while_body
    movl    $25629, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_11_while_body     
    jmp     l_f0_9                  #  11:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  13:     goto   10_while_cond
l_f0_9:
    movl    $99, %eax               #  15:     if     99 <= 100 goto 14
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_14                
    jmp     l_f0_15                 #  16:     goto   15
l_f0_14:
    movl    $1, %eax                #  18:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_16                 #  19:     goto   16
l_f0_15:
    movl    $0, %eax                #  21:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_16:
    movzbl  -13(%ebp), %eax         #  23:     assign v1 <- t2
    movb    %al, 8(%ebp)           
    jmp     l_f0_5                  #  24:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $5808, %eax             #  27:     add    t3 <- 5808, 25247
    movl    $25247, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     return t3
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $v2       <bool> %ebp-18 ]

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
    movl    $100, %eax              #   0:     assign v1 <- 100
    movb    %al, -17(%ebp)         
    jmp     l_f1_2_if_true          #   1:     goto   2_if_true
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    movl    $98, %eax               #   4:     return 98
    jmp     l_f1_exit              
    call    ReadInt                 #   5:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #   6:     return 100
    jmp     l_f1_exit              
    movl    $100, %eax              #   7:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $1, %eax                #  11:     assign v2 <- 1
    movb    %al, -18(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 55 of <array 86 of <array 14 of <array 72 of <array 19 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 92 of <array 83 of <array 72 of <array 20 of <array 16 of <bool>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
l_f2_0:
    movl    $99, %eax               #   5:     assign v3 <- 99
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   6:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99630, %eax            #   1:     if     99630 >= 15160 goto 2_if_true
    movl    $15160, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $99, %eax               #   4:     assign v0 <- 99
    movb    %al, v0                
l_test_7_while_cond:
    jmp     l_test_6                #   6:     goto   6
    jmp     l_test_7_while_cond     #   7:     goto   7_while_cond
l_test_6:
l_test_10_while_cond:
    movl    $24548, %eax            #  10:     if     24548 = 98652 goto 11_while_body
    movl    $98652, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  11:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  13:     goto   10_while_cond
l_test_9:
    jmp     l_test_1                #  15:     goto   1
l_test_3_if_false:
l_test_1:
l_test_14_while_cond:
    jmp     l_test_15_while_body    #  19:     goto   15_while_body
    jmp     l_test_15_while_body    #  20:     goto   15_while_body
    jmp     l_test_15_while_body    #  21:     goto   15_while_body
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  23:     goto   14_while_cond
    jmp     l_test_24               #  24:     goto   24
    movl    $1, %eax                #  25:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_25               #  26:     goto   25
l_test_24:
    movl    $0, %eax                #  28:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_25:
    movzbl  -14(%ebp), %eax         #  30:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_31               #  31:     goto   31
    jmp     l_test_31               #  32:     goto   31
    jmp     l_test_29_if_true       #  33:     goto   29_if_true
l_test_31:
    jmp     l_test_30_if_false      #  35:     goto   30_if_false
l_test_29_if_true:
    jmp     l_test_28               #  37:     goto   28
l_test_30_if_false:
l_test_28:

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
