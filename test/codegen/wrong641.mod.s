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
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 4 of <array 2 of <array 3 of <array 5 of <char>>>>>>> %ebp+16 ]

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
    movl    $99, %eax               #   0:     if     99 # 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     return t6
    jmp     l_f0_exit              
l_f0_6_while_cond:
    call    dummyCHARfunc           #  10:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     if     t7 > 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_7_while_body      
    jmp     l_f0_5                  #  12:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  14:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_11_if_false        #  16:     goto   11_if_false
    call    dummyCHARfunc           #  17:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f0_9                  #  18:     goto   9
l_f0_11_if_false:
l_f0_9:

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, -14(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   2:     goto   3_while_body
    movl    $98, %eax               #   3:     if     98 >= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
    call    dummyCHARfunc           #   8:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <ptr(4) to <array 7 of <char>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t6       <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t7       <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <char>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t9       <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $v0       <bool> %ebp-69 ]
    #    -70(%ebp)   1  [ $v1       <char> %ebp-70 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $60, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $15, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $9933, %eax             #   0:     if     9933 # 86933 goto 1_if_true
    movl    $86933, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    ReadInt                 #   3:     call   t6 <- ReadInt
    movl    %eax, -56(%ebp)        
    movl    $97, %eax               #   4:     if     97 = 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   5:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   7:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $97, %eax               #  10:     return 97
    jmp     l_f2_exit              
    movl    $1, %eax                #  11:     assign v0 <- 1
    movb    %al, -69(%ebp)         
    call    dummyBOOLfunc           #  12:     call   t7 <- dummyBOOLfunc
    movb    %al, -57(%ebp)         
    leal    _str_1, %eax            #  13:     &()    t8 <- _str_1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  14:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #  15:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_0                  #  16:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_14_while_cond:
    movl    $50739, %eax            #  20:     add    t9 <- 50739, 20822
    movl    $20822, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  21:     add    t10 <- t9, 17457
    movl    $17457, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     add    t11 <- t10, 15662
    movl    $15662, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     add    t12 <- t11, 30922
    movl    $30922, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     sub    t13 <- t12, 21338
    movl    $21338, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     sub    t14 <- t13, 96955
    movl    $96955, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     sub    t15 <- t14, 39686
    movl    $39686, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t16 <- t15, 24914
    movl    $24914, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     if     t16 <= 64314 goto 15_while_body
    movl    $64314, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_15_while_body     
    jmp     l_f2_13                 #  29:     goto   13
l_f2_15_while_body:
l_f2_18_while_cond:
    jmp     l_f2_17                 #  32:     goto   17
    jmp     l_f2_18_while_cond      #  33:     goto   18_while_cond
l_f2_17:
    movl    $98, %eax               #  35:     assign v1 <- 98
    movb    %al, -70(%ebp)         
    movl    $99, %eax               #  36:     if     99 >= 99 goto 22_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_22_if_true        
    jmp     l_f2_23_if_false        #  37:     goto   23_if_false
l_f2_22_if_true:
    jmp     l_f2_21                 #  39:     goto   21
l_f2_23_if_false:
l_f2_21:
    jmp     l_f2_14_while_cond      #  42:     goto   14_while_cond
l_f2_13:
l_f2_26_while_cond:
    movl    $14623, %eax            #  45:     add    t17 <- 14623, 25151
    movl    $25151, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  46:     sub    t18 <- t17, 21973
    movl    $21973, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $66824, %eax            #  47:     if     66824 >= t18 goto 27_while_body
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_27_while_body     
    jmp     l_f2_25                 #  48:     goto   25
l_f2_27_while_body:
    leal    _str_2, %eax            #  50:     &()    t19 <- _str_2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  51:     param  0 <- t19
    pushl   %eax                   
    call    WriteStr                #  52:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_26_while_cond      #  53:     goto   26_while_cond
l_f2_25:

l_f2_exit:
    # epilogue
    addl    $60, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <char> %ebp-23 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   1:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
l_test_7_while_cond:
    jmp     l_test_6                #   4:     goto   6
    jmp     l_test_7_while_cond     #   5:     goto   7_while_cond
l_test_6:
l_test_10_while_cond:
    jmp     l_test_9                #   8:     goto   9
    jmp     l_test_10_while_cond    #   9:     goto   10_while_cond
l_test_9:
l_test_13_while_cond:
    jmp     l_test_13_while_cond    #  12:     goto   13_while_cond
    jmp     l_test_0                #  13:     goto   0
l_test_0:
l_test_16_while_cond:
    call    dummyBOOLfunc           #  16:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  17:     if     t2 = 1 goto 17_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_15               #  18:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  20:     goto   16_while_cond
l_test_15:
    call    dummyCHARfunc           #  22:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  23:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #  24:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #  25:     call   t4 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
l_test_21_while_cond:
    movl    $44543, %eax            #  27:     add    t5 <- 44543, 85623
    movl    $85623, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #  29:     call   WriteInt
    addl    $4, %esp               
    movl    $1, %eax                #  30:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_21_while_cond    #  31:     goto   21_while_cond
    movl    $1, %eax                #  32:     if     1 = 0 goto 26_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_26_if_true      
    jmp     l_test_27_if_false      #  33:     goto   27_if_false
l_test_26_if_true:
    movl    $100, %eax              #  35:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  36:     call   WriteChar
    addl    $4, %esp               
l_test_31_while_cond:
    jmp     l_test_30               #  38:     goto   30
    jmp     l_test_31_while_cond    #  39:     goto   31_while_cond
l_test_30:
    jmp     l_test_25               #  41:     goto   25
l_test_27_if_false:
l_test_25:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
_str_2:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
