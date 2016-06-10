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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   1:     call   t9 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     assign v2 <- t9
    movb    %al, -15(%ebp)         
l_f0_3_while_cond:
    jmp     l_f0_6                  #   4:     goto   6
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $1, %eax                #   7:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $0, %eax                #  10:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movzbl  -13(%ebp), %eax         #  12:     if     t10 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4_while_body      
    jmp     l_f0_2                  #  13:     goto   2
l_f0_4_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  16:     goto   3_while_cond
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t18      <char> %ebp-45 ]
    #    -46(%ebp)   1  [ $t9       <bool> %ebp-46 ]
    #    -47(%ebp)   1  [ $v1       <bool> %ebp-47 ]
    #    -52(%ebp)   4  [ $v2       <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $v3       <char> %ebp-53 ]

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
    call    dummyBOOLfunc           #   0:     call   t9 <- dummyBOOLfunc
    movb    %al, -46(%ebp)         
    movzbl  -46(%ebp), %eax         #   1:     assign v1 <- t9
    movb    %al, -47(%ebp)         
    movl    $20496, %eax            #   2:     div    t10 <- 20496, 73461
    movl    $73461, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     mul    t11 <- t10, 46792
    movl    $46792, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     div    t12 <- t11, 96585
    movl    $96585, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     mul    t13 <- t12, 19438
    movl    $19438, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     mul    t14 <- t13, 97195
    movl    $97195, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     mul    t15 <- t14, 52087
    movl    $52087, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     mul    t16 <- t15, 72216
    movl    $72216, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     mul    t17 <- t16, 20827
    movl    $20827, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  10:     assign v2 <- t17
    movl    %eax, -52(%ebp)        
    call    dummyCHARfunc           #  11:     call   t18 <- dummyCHARfunc
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #  12:     assign v3 <- t18
    movb    %al, -53(%ebp)         

l_f1_exit:
    # epilogue
    addl    $44, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t9       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    movl    $24080, %eax            #   0:     assign v4 <- 24080
    movl    %eax, 20(%ebp)         
l_f2_2_while_cond:
    jmp     l_f2_1                  #   2:     goto   1
    jmp     l_f2_2_while_cond       #   3:     goto   2_while_cond
l_f2_1:
    movl    $99, %eax               #   5:     if     99 = 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   6:     goto   7_if_false
l_f2_6_if_true:
    movl    $98, %eax               #   8:     if     98 # 100 goto 10
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_10                
    jmp     l_f2_11                 #   9:     goto   11
l_f2_10:
    movl    $1, %eax                #  11:     assign t9 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_12                 #  12:     goto   12
l_f2_11:
    movl    $0, %eax                #  14:     assign t9 <- 0
    movb    %al, -13(%ebp)         
l_f2_12:
    movzbl  -13(%ebp), %eax         #  16:     return t9
    jmp     l_f2_exit              
    jmp     l_f2_14                 #  17:     goto   14
l_f2_14:
    movl    $1, %eax                #  19:     assign v1 <- 1
    movb    %al, 8(%ebp)           
l_f2_19_while_cond:
    jmp     l_f2_19_while_cond      #  21:     goto   19_while_cond
    jmp     l_f2_5                  #  22:     goto   5
l_f2_7_if_false:
l_f2_5:

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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $29740, %eax            #   1:     sub    t1 <- 29740, 94187
    movl    $94187, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 64964
    movl    $64964, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t3 <- t2, 44377
    movl    $44377, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     sub    t4 <- t3, 82856
    movl    $82856, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t5 <- t4, 56195
    movl    $56195, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     add    t6 <- t5, 37144
    movl    $37144, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     if     t6 <= 20339 goto 2_if_true
    movl    $20339, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_2_if_true       
    jmp     l_test_3_if_false       #   8:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_5                #  11:     goto   5
    jmp     l_test_6_while_cond     #  12:     goto   6_while_cond
l_test_5:
    jmp     l_test_1                #  14:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyCHARfunc           #  17:     call   t7 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  18:     assign v0 <- t7
    movb    %al, v0                
    movl    $100, %eax              #  19:     if     100 < 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_10              
    jmp     l_test_11               #  20:     goto   11
l_test_10:
    movl    $1, %eax                #  22:     assign t8 <- 1
    movb    %al, -42(%ebp)         
    jmp     l_test_12               #  23:     goto   12
l_test_11:
    movl    $0, %eax                #  25:     assign t8 <- 0
    movb    %al, -42(%ebp)         
l_test_12:
    movzbl  -42(%ebp), %eax         #  27:     assign v1 <- t8
    movb    %al, v1                
    movl    $71349, %eax            #  28:     assign v2 <- 71349
    movl    %eax, v2               
l_test_16_while_cond:
    jmp     l_test_20               #  30:     goto   20
l_test_20:
    jmp     l_test_17_while_body    #  32:     goto   17_while_body
    jmp     l_test_15               #  33:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  35:     goto   16_while_cond
l_test_15:

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
