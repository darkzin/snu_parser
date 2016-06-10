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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 6 of <array 6 of <array 4 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 3 of <array 8 of <array 9 of <array 2 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t8 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $22763, %eax            #   2:     add    t9 <- 22763, 12660
    movl    $12660, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     return t9
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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 5 of <array 3 of <array 7 of <array 3 of <char>>>>>>> %ebp+8 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $0, %eax                #   4:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     return t7
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   7:     call   t8 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f1_8_while_cond:
    jmp     l_f1_7                  #   9:     goto   7
    movl    $0, %eax                #  10:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_8_while_cond       #  11:     goto   8_while_cond
l_f1_7:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <char>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $v2       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_1_if_true          #   1:     goto   1_if_true
l_f2_1_if_true:
    call    dummyCHARfunc           #   3:     call   t7 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    jmp     l_f2_0                  #   4:     goto   0
l_f2_0:
    jmp     l_f2_8_if_false         #   6:     goto   8_if_false
    leal    _str_1, %eax            #   7:     &()    t8 <- _str_1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   8:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #   9:     call   WriteStr
    addl    $4, %esp               
    movl    $29164, %eax            #  10:     assign v2 <- 29164
    movl    %eax, -56(%ebp)        
    jmp     l_f2_6                  #  11:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $92559, %eax            #  14:     mul    t9 <- 92559, 11384
    movl    $11384, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  15:     div    t10 <- t9, 26647
    movl    $26647, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     mul    t11 <- t10, 83406
    movl    $83406, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     div    t12 <- t11, 16530
    movl    $16530, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     div    t13 <- t12, 66782
    movl    $66782, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     mul    t14 <- t13, 62018
    movl    $62018, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     div    t15 <- t14, 49203
    movl    $49203, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     sub    t16 <- t15, 83716
    movl    $83716, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     return t16
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     assign v0 <- 99
    movb    %al, v0                
l_test_5_while_cond:
    movl    $1, %eax                #   3:     if     1 # 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_6_while_body    
    jmp     l_test_4                #   4:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   6:     goto   5_while_cond
l_test_4:
    call    dummyBOOLfunc           #   8:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
    movl    $100, %eax              #  10:     if     100 <= 98 goto 10
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_10              
    jmp     l_test_11               #  11:     goto   11
l_test_10:
    movl    $1, %eax                #  13:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_12               #  14:     goto   12
l_test_11:
    movl    $0, %eax                #  16:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_12:
    movzbl  -14(%ebp), %eax         #  18:     assign v1 <- t1
    movb    %al, v1                
    call    dummyCHARfunc           #  19:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #  20:     if     97 >= t2 goto 15
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_15              
    jmp     l_test_16               #  21:     goto   16
l_test_15:
    movl    $1, %eax                #  23:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_17               #  24:     goto   17
l_test_16:
    movl    $0, %eax                #  26:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_17:
    movzbl  -16(%ebp), %eax         #  28:     assign v1 <- t3
    movb    %al, v1                
    call    dummyINTfunc            #  29:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $24153, %eax            #  30:     mul    t5 <- 24153, t4
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #  32:     call   WriteInt
    addl    $4, %esp               
l_test_21_while_cond:
    movl    $1, %eax                #  34:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_26               #  35:     goto   26
    movl    $0, %eax                #  36:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_test_26:
    movzbl  -25(%ebp), %eax         #  38:     if     t6 = 1 goto 22_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_22_while_body   
    jmp     l_test_20               #  39:     goto   20
l_test_22_while_body:
    jmp     l_test_exit            
    jmp     l_test_21_while_cond    #  42:     goto   21_while_cond
l_test_20:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
