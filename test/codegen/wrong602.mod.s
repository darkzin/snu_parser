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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 6 of <array 8 of <array 3 of <array 8 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
l_f0_4_while_cond:
    jmp     l_f0_3                  #   2:     goto   3
    jmp     l_f0_4_while_cond       #   3:     goto   4_while_cond
l_f0_3:
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_exit              
    call    dummyINTfunc            #  10:     call   t7 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t9       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v0       <bool> %ebp-17 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    jmp     l_f1_2                  #   1:     goto   2
    jmp     l_f1_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   8:     assign v0 <- t7
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   9:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  10:     if     t8 = 98 goto 7
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_7                 
    jmp     l_f1_8                  #  11:     goto   8
l_f1_7:
    movl    $1, %eax                #  13:     assign t9 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_9                  #  14:     goto   9
l_f1_8:
    movl    $0, %eax                #  16:     assign t9 <- 0
    movb    %al, -16(%ebp)         
l_f1_9:
    movzbl  -16(%ebp), %eax         #  18:     assign v0 <- t9
    movb    %al, -17(%ebp)         
l_f1_12_while_cond:
    call    dummyCHARfunc           #  20:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  21:     if     t10 > 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_13_while_body     
    jmp     l_f1_11                 #  22:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  24:     goto   12_while_cond
l_f1_11:

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 1 of <array 4 of <array 8 of <array 7 of <bool>>>>>>> %ebp+12 ]

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
    movl    $90985, %eax            #   0:     add    t7 <- 90985, 50982
    movl    $50982, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t7
    jmp     l_f2_exit              
l_f2_2_while_cond:
    jmp     l_f2_1                  #   3:     goto   1
    jmp     l_f2_1                  #   4:     goto   1
    jmp     l_f2_1                  #   5:     goto   1
    jmp     l_f2_1                  #   6:     goto   1
    jmp     l_f2_1                  #   7:     goto   1
    jmp     l_f2_2_while_cond       #   8:     goto   2_while_cond
l_f2_1:
    movl    $39870, %eax            #  10:     div    t8 <- 39870, 56463
    movl    $56463, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     return t8
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 2 of <array 1 of <array 4 of <array 8 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
l_test_3_while_cond:
    jmp     l_test_2                #   5:     goto   2
    movl    $58994, %eax            #   6:     assign v0 <- 58994
    movl    %eax, v0               
    leal    v1, %eax                #   7:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  1 <- t1
    pushl   %eax                   
    movl    $98, %eax               #   9:     if     98 <= 98 goto 7
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_7               
    jmp     l_test_8                #  10:     goto   8
l_test_7:
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_9                #  13:     goto   9
l_test_8:
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_9:
    movzbl  -21(%ebp), %eax         #  17:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  18:     call   t3 <- f2
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    call    dummyBOOLfunc           #  19:     call   t4 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_3_while_cond     #  20:     goto   3_while_cond
l_test_2:
    call    dummyCHARfunc           #  22:     call   t5 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    call    ReadInt                 #  23:     call   t6 <- ReadInt
    movl    %eax, -36(%ebp)        

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <array 2 of <array 1 of <array 4 of <array 8 of <array 7 of <bool>>>>>>
    .long    5
    .long    2
    .long    1
    .long    4
    .long    8
    .long    7
    .skip  448








    # end of global data section
    #-----------------------------------------

    .end
##################################################
