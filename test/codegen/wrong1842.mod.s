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
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t1
    movb    %al, 8(%ebp)           
    jmp     l_f0_3                  #   2:     goto   3
    jmp     l_f0_3                  #   3:     goto   3
    jmp     l_f0_3                  #   4:     goto   3
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_4:
    movzbl  -14(%ebp), %eax         #  10:     assign v1 <- t2
    movb    %al, -15(%ebp)         
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #  12:     goto   10_while_cond

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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 82 of <array 49 of <array 5 of <array 94 of <array 63 of <char>>>>>>> %ebp+8 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t1 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    movl    $1, %eax                #   4:     assign v1 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $97, %eax               #   8:     if     97 < 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   9:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_8                  #  11:     goto   8
l_f1_8:
l_f1_12_while_cond:
    jmp     l_f1_12_while_cond      #  14:     goto   12_while_cond
l_f1_15_while_cond:
    jmp     l_f1_15_while_cond      #  16:     goto   15_while_cond
l_f1_18_while_cond:
    movl    $7822, %eax             #  18:     if     7822 # 20786 goto 19_while_body
    movl    $20786, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_19_while_body     
    jmp     l_f1_17                 #  19:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  21:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_4                  #  23:     goto   4
l_f1_6_if_false:
l_f1_4:
    leal    _str_1, %eax            #  26:     &()    t2 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  28:     call   WriteStr
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    movl    $1, %eax                #   0:     assign v0 <- 1
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   3:     call   t2 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
l_f2_3_while_cond:
    movl    $99, %eax               #   5:     if     99 < 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_4_while_body      
    jmp     l_f2_2                  #   6:     goto   2
l_f2_4_while_body:
    movl    $100, %eax              #   8:     if     100 <= 97 goto 7
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_7                 
    jmp     l_f2_8                  #   9:     goto   8
l_f2_7:
    movl    $1, %eax                #  11:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_9                  #  12:     goto   9
l_f2_8:
    movl    $0, %eax                #  14:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f2_9:
    movzbl  -15(%ebp), %eax         #  16:     assign v0 <- t3
    movb    %al, -16(%ebp)         
    movl    $20136, %eax            #  17:     assign v1 <- 20136
    movl    %eax, -20(%ebp)        
    jmp     l_f2_3_while_cond       #  18:     goto   3_while_cond
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    jmp     l_test_exit            
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    movl    $69607, %eax            #   2:     assign v0 <- 69607
    movl    %eax, v0               
    movl    $47, %eax               #   3:     if     47 # 81407 goto 7_if_true
    movl    $81407, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_7_if_true       
    jmp     l_test_8_if_false       #   4:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   6:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_12_if_false      #   9:     goto   12_if_false
    jmp     l_test_10               #  10:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_15_if_false      #  13:     goto   15_if_false
    jmp     l_test_13               #  14:     goto   13
l_test_15_if_false:
l_test_13:
    call    dummyCHARfunc           #  17:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_1                #  19:     goto   1
l_test_3_if_false:
l_test_1:
l_test_22_while_cond:
    jmp     l_test_21               #  23:     goto   21
    jmp     l_test_22_while_cond    #  24:     goto   22_while_cond
l_test_21:
l_test_25_while_cond:
    jmp     l_test_25_while_cond    #  27:     goto   25_while_cond
    jmp     l_test_18               #  28:     goto   18
l_test_18:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
