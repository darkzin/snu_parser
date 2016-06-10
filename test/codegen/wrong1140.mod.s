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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     return t4
    jmp     l_f0_exit              
    movl    $84237, %eax            #   3:     if     84237 # 66239 goto 3_if_true
    movl    $66239, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   4:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_8_if_false         #   6:     goto   8_if_false
    jmp     l_f0_6                  #   7:     goto   6
l_f0_8_if_false:
l_f0_6:
    call    dummyCHARfunc           #  10:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  11:     return t5
    jmp     l_f0_exit              
    jmp     l_f0_2                  #  12:     goto   2
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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $63611, %eax            #   0:     if     63611 = 78467 goto 1_if_true
    movl    $78467, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
    movl    $0, %eax                #   4:     return 0
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   5:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_10_while_cond:
    movl    $97, %eax               #  13:     if     97 >= 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_11_while_body     
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_while_body:
l_f1_14_while_cond:
    movl    $25398, %eax            #  17:     if     25398 # 71958 goto 15_while_body
    movl    $71958, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_15_while_body     
    jmp     l_f1_13                 #  18:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  20:     goto   14_while_cond
l_f1_13:
    call    ReadInt                 #  22:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #  23:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_10_while_cond      #  24:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_20                 #  26:     goto   20
    jmp     l_f1_20                 #  27:     goto   20
l_f1_20:
    movl    $1, %eax                #  29:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_22                 #  30:     goto   22
    movl    $0, %eax                #  31:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f1_22:
    movzbl  -21(%ebp), %eax         #  33:     return t5
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 84 of <array 62 of <array 38 of <array 91 of <array 34 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 38 of <array 56 of <array 36 of <array 63 of <array 66 of <char>>>>>>> %ebp+12 ]

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
l_f2_4_while_cond:
    jmp     l_f2_5_while_body       #   1:     goto   5_while_body
l_f2_5_while_body:
    jmp     l_f2_4_while_cond       #   3:     goto   4_while_cond
    jmp     l_f2_0                  #   4:     goto   0
l_f2_0:
    movl    $28994, %eax            #   6:     mul    t3 <- 28994, 98919
    movl    $98919, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     add    t4 <- t3, 98894
    movl    $98894, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     sub    t5 <- t4, 71485
    movl    $71485, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     sub    t6 <- t5, 97486
    movl    $97486, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     return t6
    jmp     l_f2_exit              
    movl    $58176, %eax            #  11:     sub    t7 <- 58176, 1233
    movl    $1233, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     return t7
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $99, %eax               #   3:     if     99 < 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2               
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_4                #   7:     goto   4
l_test_3:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_4:
    movzbl  -17(%ebp), %eax         #  11:     assign v0 <- t1
    movb    %al, v0                
    movl    $99, %eax               #  12:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  13:     call   t2 <- f0
    addl    $4, %esp               
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  14:     if     t2 > 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_7_if_true       
    jmp     l_test_8_if_false       #  15:     goto   8_if_false
l_test_7_if_true:
l_test_11_while_cond:
    jmp     l_test_10               #  18:     goto   10
    jmp     l_test_11_while_cond    #  19:     goto   11_while_cond
l_test_10:
    jmp     l_test_exit            
    jmp     l_test_6                #  22:     goto   6
l_test_8_if_false:
l_test_6:

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
