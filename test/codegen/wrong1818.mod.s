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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 18 of <array 60 of <array 35 of <array 94 of <array 73 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f0_2_while_cond:
    movl    $97, %eax               #   2:     if     97 = 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   5:     goto   2_while_cond
l_f0_1:
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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 88 of <array 57 of <array 40 of <array 39 of <array 36 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 23 of <array 53 of <array 42 of <array 25 of <array 50 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 88 of <array 55 of <array 86 of <array 81 of <array 31 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 82 of <array 74 of <array 85 of <array 59 of <array 55 of <char>>>>>>> %ebp+20 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v5       <bool> %ebp-25 ]

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
l_f1_4_while_cond:
    jmp     l_f1_3                  #   1:     goto   3
    jmp     l_f1_4_while_cond       #   2:     goto   4_while_cond
l_f1_3:
    movl    $30707, %eax            #   4:     return 30707
    jmp     l_f1_exit              
    call    WriteLn                 #   5:     call   WriteLn
    jmp     l_f1_0                  #   6:     goto   0
l_f1_0:
l_f1_9_while_cond:
    call    dummyINTfunc            #   9:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_15_while_cond:
    jmp     l_f1_15_while_cond      #  11:     goto   15_while_cond
    jmp     l_f1_9_while_cond       #  12:     goto   9_while_cond
l_f1_18_while_cond:
    movl    $54171, %eax            #  14:     assign v4 <- 54171
    movl    %eax, -24(%ebp)        
    leal    _str_1, %eax            #  15:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  17:     call   WriteStr
    addl    $4, %esp               
    movl    $0, %eax                #  18:     assign v5 <- 0
    movb    %al, -25(%ebp)         
l_f1_24_while_cond:
    jmp     l_f1_23                 #  20:     goto   23
    jmp     l_f1_24_while_cond      #  21:     goto   24_while_cond
l_f1_23:
    jmp     l_f1_18_while_cond      #  23:     goto   18_while_cond

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <bool> %ebp-14 ]

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
    jmp     l_f2_10                 #   0:     goto   10
    jmp     l_f2_10                 #   1:     goto   10
    jmp     l_f2_10                 #   2:     goto   10
l_f2_10:
    jmp     l_f2_1                  #   4:     goto   1
    jmp     l_f2_1                  #   5:     goto   1
    jmp     l_f2_2                  #   6:     goto   2
l_f2_1:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   9:     goto   3
l_f2_2:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #  13:     assign v0 <- t3
    movb    %al, -14(%ebp)         
    jmp     l_f2_exit              
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
l_test_2_while_cond:
    call    ReadInt                 #   2:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_4                #   4:     goto   4
l_test_4:
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   8:     if     t1 # 98 goto 10
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_10              
    jmp     l_test_11               #   9:     goto   11
l_test_10:
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_12               #  12:     goto   12
l_test_11:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_12:
    movzbl  -18(%ebp), %eax         #  16:     assign v0 <- t2
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
