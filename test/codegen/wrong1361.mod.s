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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t9       <bool> %ebp-27 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    movl    $98, %eax               #   0:     if     98 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t9 <- dummyBOOLfunc
    movb    %al, -27(%ebp)         
    movl    $25114, %eax            #   4:     if     25114 > 30009 goto 6_if_true
    movl    $30009, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   5:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $52242, %eax            #  13:     sub    t10 <- 52242, 55720
    movl    $55720, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     sub    t11 <- t10, 52843
    movl    $52843, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     sub    t12 <- t11, 70048
    movl    $70048, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     if     t12 = 24726 goto 10
    movl    $24726, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_11                 #  17:     goto   11
l_f0_10:
    movl    $1, %eax                #  19:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_12                 #  20:     goto   12
l_f0_11:
    movl    $0, %eax                #  22:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f0_12:
    movzbl  -25(%ebp), %eax         #  24:     return t13
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  25:     call   t14 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t9       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 47 of <array 31 of <array 34 of <array 97 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 76 of <array 97 of <array 89 of <array 26 of <array 27 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    movl    $99518, %eax            #   5:     assign v4 <- 99518
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   6:     call   t9 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    movl    $18457, %eax            #   0:     mul    t9 <- 18457, 58263
    movl    $58263, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     sub    t10 <- t9, 86651
    movl    $86651, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     return t10
    jmp     l_f2_exit              
    call    WriteLn                 #   3:     call   WriteLn
    call    dummyCHARfunc           #   4:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     if     t11 > 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   6:     goto   4_if_false
l_f2_3_if_true:
    movl    $30330, %eax            #   8:     return 30330
    jmp     l_f2_exit              
    movl    $77970, %eax            #   9:     assign v2 <- 77970
    movl    %eax, -28(%ebp)        
    jmp     l_f2_2                  #  10:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 76 of <array 97 of <array 89 of <array 26 of <array 27 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 47 of <array 31 of <array 34 of <array 97 of <array 1 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 76 of <array 97 of <array 89 of <array 26 of <array 27 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 47 of <array 31 of <array 34 of <array 97 of <array 1 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <char> %ebp-41 ]
    #    -42(%ebp)   1  [ $t8       <bool> %ebp-42 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 # 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    movl    $60886, %eax            #   5:     if     60886 # 90903 goto 6
    movl    $90903, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_6               
    jmp     l_test_7                #   6:     goto   7
l_test_6:
    movl    $1, %eax                #   8:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   9:     goto   8
l_test_7:
    movl    $0, %eax                #  11:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movzbl  -13(%ebp), %eax         #  13:     assign v0 <- t0
    movb    %al, v0                
    movl    $97, %eax               #  14:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_1_while_cond     #  16:     goto   1_while_cond
l_test_0:
    call    ReadInt                 #  18:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  19:     assign v1 <- 99
    movb    %al, v1                
    movl    $97, %eax               #  20:     param  2 <- 97
    pushl   %eax                   
    leal    v3, %eax                #  21:     &()    t2 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     param  1 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  23:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  25:     call   t4 <- f1
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  26:     param  2 <- t4
    pushl   %eax                   
    leal    v3, %eax                #  27:     &()    t5 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     param  1 <- t5
    pushl   %eax                   
    leal    v2, %eax                #  29:     &()    t6 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  31:     call   t7 <- f1
    addl    $12, %esp              
    movb    %al, -41(%ebp)         
    movl    $97, %eax               #  32:     if     97 = t7 goto 14_if_true
    movzbl  -41(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_14_if_true      
    jmp     l_test_15_if_false      #  33:     goto   15_if_false
l_test_14_if_true:
    movl    $33663, %eax            #  35:     if     33663 < 29865 goto 18_if_true
    movl    $29865, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_18_if_true      
    jmp     l_test_19_if_false      #  36:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  38:     goto   17
l_test_19_if_false:
l_test_17:
    movl    $98, %eax               #  41:     if     98 <= 98 goto 22
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_22              
    jmp     l_test_23               #  42:     goto   23
l_test_22:
    movl    $1, %eax                #  44:     assign t8 <- 1
    movb    %al, -42(%ebp)         
    jmp     l_test_24               #  45:     goto   24
l_test_23:
    movl    $0, %eax                #  47:     assign t8 <- 0
    movb    %al, -42(%ebp)         
l_test_24:
    movzbl  -42(%ebp), %eax         #  49:     assign v0 <- t8
    movb    %al, v0                
    jmp     l_test_13               #  50:     goto   13
l_test_15_if_false:
l_test_13:

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 47 of <array 31 of <array 34 of <array 97 of <array 1 of <int>>>>>>
    .long    5
    .long   47
    .long   31
    .long   34
    .long   97
    .long    1
    .skip 19220744
v3:                                 # <array 76 of <array 97 of <array 89 of <array 26 of <array 27 of <char>>>>>>
    .long    5
    .long   76
    .long   97
    .long   89
    .long   26
    .long   27
    .skip 460587816








    # end of global data section
    #-----------------------------------------

    .end
##################################################
