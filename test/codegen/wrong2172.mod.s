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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 34 of <array 17 of <array 20 of <array 42 of <array 100 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 70 of <array 13 of <array 77 of <array 73 of <array 38 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    movl    $99, %eax               #   2:     if     99 # 100 goto 3_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_exit              
    call    ReadInt                 #   6:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_2                  #   7:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 14 of <array 55 of <array 75 of <array 30 of <array 91 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 42 of <array 98 of <array 94 of <array 47 of <array 34 of <bool>>>>>>> %ebp+16 ]
    #    -16(%ebp)   1  [ $v4       <char> %ebp-16 ]

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
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v4 <- t3
    movb    %al, -16(%ebp)         
    jmp     l_f1_4_if_false         #   3:     goto   4_if_false
    jmp     l_f1_10                 #   4:     goto   10
    jmp     l_f1_10                 #   5:     goto   10
l_f1_10:
    movl    $1, %eax                #   7:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #   8:     goto   12
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -14(%ebp), %eax         #  11:     if     t4 # 0 goto 6
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_6                 
    jmp     l_f1_7                  #  12:     goto   7
l_f1_6:
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_8                  #  15:     goto   8
l_f1_7:
    movl    $0, %eax                #  17:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f1_8:
    movzbl  -15(%ebp), %eax         #  19:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_2                  #  20:     goto   2
l_f1_4_if_false:
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
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
    movzbl  -13(%ebp), %eax         #   1:     if     t3 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    call    dummyBOOLfunc           #   4:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   5:     assign v1 <- 100
    movb    %al, -15(%ebp)         
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $1, %eax                #   9:     assign v2 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyCHARfunc           #   3:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   4:     if     100 > 97 goto 6
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_6               
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $1, %eax                #   7:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_8                #   8:     goto   8
l_test_7:
    movl    $0, %eax                #  10:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_8:
    movzbl  -14(%ebp), %eax         #  12:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_0                #  13:     goto   0
l_test_2_if_false:
l_test_0:
l_test_11_while_cond:
    call    dummyCHARfunc           #  17:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $100, %eax              #  18:     if     100 >= t2 goto 12_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_12_while_body   
    jmp     l_test_10               #  19:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  21:     goto   11_while_cond
l_test_10:
l_test_15_while_cond:
    movl    $0, %eax                #  24:     if     0 = 1 goto 17
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_17              
    jmp     l_test_14               #  25:     goto   14
l_test_17:
    jmp     l_test_14               #  27:     goto   14
    jmp     l_test_15_while_cond    #  28:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyProcedure          #  32:     call   dummyProcedure

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
