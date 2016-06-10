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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t7       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]

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
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 # t4 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #   8:     if     97 > t5 goto 5
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_5                 
    jmp     l_f0_6                  #   9:     goto   6
l_f0_5:
    movl    $1, %eax                #  11:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_7                  #  12:     goto   7
l_f0_6:
    movl    $0, %eax                #  14:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f0_7:
    movzbl  -15(%ebp), %eax         #  16:     return t6
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  17:     call   t7 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  18:     if     t7 <= 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_10                
    jmp     l_f0_11                 #  19:     goto   11
l_f0_10:
    movl    $1, %eax                #  21:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_12                 #  22:     goto   12
l_f0_11:
    movl    $0, %eax                #  24:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f0_12:
    movzbl  -17(%ebp), %eax         #  26:     return t8
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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 55 of <array 51 of <array 50 of <array 4 of <array 73 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 37 of <array 51 of <array 37 of <array 13 of <array 68 of <int>>>>>>> %ebp+16 ]
    #    -17(%ebp)   1  [ $v3       <char> %ebp-17 ]

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
    movl    $97, %eax               #   1:     if     97 <= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $100, %eax              #   4:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $100, %eax              #   8:     assign v3 <- 100
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #   9:     if     98 > 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  10:     goto   8_if_false
l_f1_7_if_true:
    leal    _str_1, %eax            #  12:     &()    t4 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  14:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_6                  #  15:     goto   6
l_f1_8_if_false:
l_f1_6:

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_3                  #   1:     goto   3
l_f2_3:
    movl    $100, %eax              #   3:     assign v0 <- 100
    movb    %al, 8(%ebp)           
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
    jmp     l_f2_9_if_false         #   5:     goto   9_if_false
l_f2_11_while_cond:
    movl    $38279, %eax            #   7:     if     38279 # 21251 goto 12_while_body
    movl    $21251, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_12_while_body     
    jmp     l_f2_10                 #   8:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  10:     goto   11_while_cond
l_f2_10:
    movl    $100, %eax              #  12:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  13:     call   WriteChar
    addl    $4, %esp               
    movl    $74298, %eax            #  14:     assign v2 <- 74298
    movl    %eax, -20(%ebp)        
    jmp     l_f2_7                  #  15:     goto   7
l_f2_9_if_false:
l_f2_7:
l_f2_17_while_cond:
    call    dummyCHARfunc           #  19:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  20:     if     t4 < 98 goto 18_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_18_while_body     
    jmp     l_f2_16                 #  21:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  23:     goto   17_while_cond
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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    call    dummyBOOLfunc           #   3:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_2                #   4:     goto   2
l_test_4_if_false:
l_test_2:
    leal    _str_2, %eax            #   7:     &()    t3 <- _str_2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   9:     call   WriteStr
    addl    $4, %esp               

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
