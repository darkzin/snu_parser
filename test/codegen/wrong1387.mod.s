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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 15 of <array 5 of <array 58 of <array 98 of <array 77 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    movl    $97, %eax               #   0:     if     97 >= 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t4
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    ReadInt                 #  10:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]

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
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_8_while_cond:
    call    dummyCHARfunc           #   6:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   7:     if     98 < t4 goto 9_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_9_while_body      
    jmp     l_f1_7                  #   8:     goto   7
l_f1_9_while_body:
    call    dummyINTfunc            #  10:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  12:     goto   13_while_cond
    jmp     l_f1_8_while_cond       #  13:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_16_if_true         #  15:     goto   16_if_true
    jmp     l_f1_16_if_true         #  16:     goto   16_if_true
    jmp     l_f1_16_if_true         #  17:     goto   16_if_true
l_f1_16_if_true:
    movl    $71180, %eax            #  19:     return 71180
    jmp     l_f1_exit              
    jmp     l_f1_15                 #  20:     goto   15
l_f1_15:

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 58 of <array 64 of <array 25 of <array 26 of <bool>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]

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
    movl    $100, %eax              #   0:     assign v1 <- 100
    movb    %al, -15(%ebp)         
l_f2_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t4 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    movl    $98, %eax               #   6:     assign v1 <- 98
    movb    %al, -15(%ebp)         
    jmp     l_f2_7_if_false         #   7:     goto   7_if_false
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_2_while_cond       #  11:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #  13:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  14:     assign v1 <- t5
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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 15 of <array 5 of <array 58 of <array 98 of <array 77 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $99, %eax               #   3:     param  3 <- 99
    pushl   %eax                   
    leal    v0, %eax                #   4:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  2 <- t0
    pushl   %eax                   
    movl    $97, %eax               #   6:     param  1 <- 97
    pushl   %eax                   
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   8:     if     t1 <= 98 goto 4
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_4               
    jmp     l_test_5                #   9:     goto   5
l_test_4:
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_6                #  12:     goto   6
l_test_5:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_6:
    movzbl  -18(%ebp), %eax         #  16:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  17:     call   t3 <- f0
    addl    $16, %esp              
    movl    %eax, -24(%ebp)        
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
v0:                                 # <array 15 of <array 5 of <array 58 of <array 98 of <array 77 of <int>>>>>>
    .long    5
    .long   15
    .long    5
    .long   58
    .long   98
    .long   77
    .skip 131300400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
