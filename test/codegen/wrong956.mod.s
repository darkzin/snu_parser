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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 9 of <array 2 of <array 3 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $0, %eax                #   4:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     return t6
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   7:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f0_7_while_cond:
    call    ReadInt                 #   9:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $45320, %eax            #  10:     if     45320 <= t8 goto 8_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_8_while_body      
    jmp     l_f0_6                  #  11:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  13:     goto   7_while_cond
l_f0_6:

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    call    ReadInt                 #   1:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_3_while_cond:
    movl    $62722, %eax            #   3:     if     62722 < 65568 goto 4_while_body
    movl    $65568, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_4_while_body      
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #   5:     goto   3_while_cond

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v2       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $0, %eax                #   4:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v1 <- t6
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #   7:     assign v2 <- 99
    movb    %al, -22(%ebp)         
l_f2_7_while_cond:
    call    dummyINTfunc            #   9:     call   t7 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $51316, %eax            #  10:     if     51316 > t7 goto 8_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_8_while_body      
    jmp     l_f2_6                  #  11:     goto   6
l_f2_8_while_body:
    movl    $20515, %eax            #  13:     assign v3 <- 20515
    movl    %eax, -28(%ebp)        
    movl    $99, %eax               #  14:     assign v2 <- 99
    movb    %al, -22(%ebp)         
    jmp     l_f2_12                 #  15:     goto   12
l_f2_12:
    jmp     l_f2_7_while_cond       #  17:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 9 of <array 2 of <array 3 of <array 8 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_5_while_cond:
    jmp     l_test_4                #   2:     goto   4
    jmp     l_test_5_while_cond     #   3:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
l_test_10_while_cond:
    call    dummyCHARfunc           #  11:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  12:     if     t0 > 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #  13:     goto   9
l_test_11_while_body:
    movl    $89281, %eax            #  15:     if     89281 > 14033 goto 14_if_true
    movl    $14033, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_14_if_true      
    jmp     l_test_15_if_false      #  16:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  18:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $0, %eax                #  21:     if     0 # 1 goto 18_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_18_if_true      
    jmp     l_test_19_if_false      #  22:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  24:     goto   17
l_test_19_if_false:
l_test_17:
l_test_22_while_cond:
    jmp     l_test_22_while_cond    #  28:     goto   22_while_cond
    call    dummyINTfunc            #  29:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $17187, %eax            #  30:     if     17187 # 95953 goto 26
    movl    $95953, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_26              
    jmp     l_test_27               #  31:     goto   27
l_test_26:
    movl    $1, %eax                #  33:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_28               #  34:     goto   28
l_test_27:
    movl    $0, %eax                #  36:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_28:
    movzbl  -21(%ebp), %eax         #  38:     assign v0 <- t2
    movb    %al, v0                
l_test_31_while_cond:
    jmp     l_test_31_while_cond    #  40:     goto   31_while_cond
    call    dummyCHARfunc           #  41:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    jmp     l_test_10_while_cond    #  42:     goto   10_while_cond
l_test_9:
l_test_35_while_cond:
    movl    $98, %eax               #  45:     param  2 <- 98
    pushl   %eax                   
    leal    v1, %eax                #  46:     &()    t4 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  47:     param  1 <- t4
    pushl   %eax                   
    movl    $1, %eax                #  48:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #  49:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  50:     if     t5 = 1 goto 38
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_38              
    jmp     l_test_34               #  51:     goto   34
l_test_38:
    jmp     l_test_35_while_cond    #  53:     goto   35_while_cond
l_test_34:
    movl    $98, %eax               #  55:     assign v2 <- 98
    movb    %al, v2                
    jmp     l_test_exit            

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 3 of <array 9 of <array 2 of <array 3 of <array 8 of <bool>>>>>>
    .long    5
    .long    3
    .long    9
    .long    2
    .long    3
    .long    8
    .skip 1296
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
