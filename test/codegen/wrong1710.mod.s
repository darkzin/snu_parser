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
    #    -16(%ebp)   4  [ $t7       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 40 of <array 36 of <array 48 of <array 87 of <array 5 of <int>>>>>>> %ebp+12 ]

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
    leal    _str_1, %eax            #   0:     &()    t7 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
    call    ReadInt                 #   6:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_1                  #   7:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    WriteLn                 #  10:     call   WriteLn

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     if     100 < 98 goto 2
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2                 
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v1 <- t8
    movb    %al, 12(%ebp)          
    jmp     l_f1_7                  #  10:     goto   7
    jmp     l_f1_7                  #  11:     goto   7
l_f1_7:
    movl    $1, %eax                #  13:     assign t9 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_9                  #  14:     goto   9
    movl    $0, %eax                #  15:     assign t9 <- 0
    movb    %al, -15(%ebp)         
l_f1_9:
    movzbl  -15(%ebp), %eax         #  17:     return t9
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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 60 of <array 70 of <array 14 of <array 18 of <array 15 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <bool> %ebp-14 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f2_exit              
    movl    $60803, %eax            #   1:     assign v0 <- 60803
    movl    %eax, 8(%ebp)          
    movl    $1, %eax                #   2:     if     1 = 0 goto 3_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
l_f2_3_if_true:
    jmp     l_f2_7                  #   5:     goto   7
l_f2_7:
    movl    $1, %eax                #   7:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_9                  #   8:     goto   9
    movl    $0, %eax                #   9:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f2_9:
    movzbl  -13(%ebp), %eax         #  11:     assign v3 <- t7
    movb    %al, -14(%ebp)         
    jmp     l_f2_2                  #  12:     goto   2
l_f2_4_if_false:
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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 60 of <array 70 of <array 14 of <array 18 of <array 15 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $t6       <bool> %ebp-31 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
l_test_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    call    ReadInt                 #   6:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
l_test_8_while_cond:
    call    dummyCHARfunc           #  12:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  13:     if     97 > t2 goto 9_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_9_while_body    
    jmp     l_test_7                #  14:     goto   7
l_test_9_while_body:
    jmp     l_test_13_if_false      #  16:     goto   13_if_false
    jmp     l_test_11               #  17:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $99, %eax               #  20:     param  2 <- 99
    pushl   %eax                   
    leal    v0, %eax                #  21:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     param  1 <- t3
    pushl   %eax                   
    movl    $8654, %eax             #  23:     param  0 <- 8654
    pushl   %eax                   
    call    f2                      #  24:     call   t4 <- f2
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    call    dummyCHARfunc           #  25:     call   t5 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    jmp     l_test_8_while_cond     #  26:     goto   8_while_cond
l_test_7:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  29:     call   t6 <- dummyBOOLfunc
    movb    %al, -31(%ebp)         
    movzbl  -31(%ebp), %eax         #  30:     if     t6 = 1 goto 18_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_18_if_true      
    jmp     l_test_19_if_false      #  31:     goto   19_if_false
l_test_18_if_true:
l_test_22_while_cond:
    movl    $10702, %eax            #  34:     if     10702 < 72915 goto 23_while_body
    movl    $72915, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_23_while_body   
    jmp     l_test_21               #  35:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  37:     goto   22_while_cond
l_test_21:
    jmp     l_test_25               #  39:     goto   25
l_test_25:
    jmp     l_test_17               #  41:     goto   17
l_test_19_if_false:
l_test_17:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <array 60 of <array 70 of <array 14 of <array 18 of <array 15 of <int>>>>>>
    .long    5
    .long   60
    .long   70
    .long   14
    .long   18
    .long   15
    .skip 63504000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
