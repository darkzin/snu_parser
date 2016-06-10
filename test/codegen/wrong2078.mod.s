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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t9       <bool> %ebp-42 ]

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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #   1:     if     t8 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_1                  #   2:     goto   1
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t9 <- 1
    movb    %al, -42(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t9 <- 0
    movb    %al, -42(%ebp)         
l_f0_3:
    movzbl  -42(%ebp), %eax         #  10:     return t9
    jmp     l_f0_exit              
    jmp     l_f0_8                  #  11:     goto   8
    movl    $93343, %eax            #  12:     if     93343 < 43440 goto 7
    movl    $43440, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_7                 
    jmp     l_f0_8                  #  13:     goto   8
l_f0_7:
    movl    $1, %eax                #  15:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_9                  #  16:     goto   9
l_f0_8:
    movl    $0, %eax                #  18:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_9:
    movzbl  -13(%ebp), %eax         #  20:     return t10
    jmp     l_f0_exit              
l_f0_15_while_cond:
    call    dummyINTfunc            #  22:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     add    t12 <- t11, 81643
    movl    $81643, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     sub    t13 <- t12, 93665
    movl    $93665, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t14 <- t13, 92492
    movl    $92492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     sub    t15 <- t14, 25030
    movl    $25030, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t16 <- t15, 59283
    movl    $59283, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     if     t16 # 61511 goto 16_while_body
    movl    $61511, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_16_while_body     
    jmp     l_f0_14                 #  29:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  31:     goto   15_while_cond
l_f0_14:

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
l_f1_1_while_cond:
    jmp     l_f1_5                  #   1:     goto   5
    movl    $1, %eax                #   2:     assign t8 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $0, %eax                #   5:     assign t8 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movl    $1, %eax                #   7:     if     1 = t8 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   8:     goto   0
l_f1_2_while_body:
    movl    $98, %eax               #  10:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  11:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  13:     call   t9 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  14:     return t9
    jmp     l_f1_exit              
    jmp     l_f1_12_if_false        #  15:     goto   12_if_false
    movl    $99, %eax               #  16:     if     99 = 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  17:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_if_false:
l_f1_13:
    movl    $100, %eax              #  22:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_21                 #  23:     goto   21
l_f1_21:
l_f1_25_while_cond:
    movl    $100, %eax              #  26:     if     100 <= 99 goto 26_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_26_while_body     
    jmp     l_f1_24                 #  27:     goto   24
l_f1_26_while_body:
    jmp     l_f1_25_while_cond      #  29:     goto   25_while_cond
l_f1_24:
    jmp     l_f1_17                 #  31:     goto   17
l_f1_17:
    jmp     l_f1_10                 #  33:     goto   10
l_f1_12_if_false:
l_f1_10:

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
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
l_f2_1_while_cond:
    call    f0                      #   1:     call   t8 <- f0
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t8 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
l_f2_4_while_cond:
    jmp     l_f2_5_while_body       #   8:     goto   5_while_body
    jmp     l_f2_5_while_body       #   9:     goto   5_while_body
    jmp     l_f2_5_while_body       #  10:     goto   5_while_body
    jmp     l_f2_3                  #  11:     goto   3
l_f2_5_while_body:
    movl    $97, %eax               #  13:     assign v2 <- 97
    movb    %al, -14(%ebp)         
    jmp     l_f2_4_while_cond       #  14:     goto   4_while_cond
l_f2_3:
l_f2_11_while_cond:
    jmp     l_f2_12_while_body      #  17:     goto   12_while_body
    jmp     l_f2_12_while_body      #  18:     goto   12_while_body
    jmp     l_f2_12_while_body      #  19:     goto   12_while_body
    jmp     l_f2_10                 #  20:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  22:     goto   11_while_cond
l_f2_10:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $3406, %eax             #   0:     assign v0 <- 3406
    movl    %eax, v0               
l_test_2_while_cond:
    movl    $100, %eax              #   2:     if     100 > 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    movl    $72299, %eax            #   5:     div    t0 <- 72299, 79378
    movl    $79378, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     mul    t1 <- t0, 41830
    movl    $41830, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     mul    t2 <- t1, 79498
    movl    $79498, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     mul    t3 <- t2, 79727
    movl    $79727, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #  10:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_8_if_false       #  11:     goto   8_if_false
    jmp     l_test_6                #  12:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_2_while_cond     #  15:     goto   2_while_cond
l_test_1:
    call    dummyCHARfunc           #  17:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_14               #  18:     goto   14
    jmp     l_test_15               #  19:     goto   15
l_test_14:
    movl    $1, %eax                #  21:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_16               #  22:     goto   16
l_test_15:
    movl    $0, %eax                #  24:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_test_16:
    movl    $1, %eax                #  26:     if     1 = t5 goto 11_if_true
    movzbl  -30(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_11_if_true      
    jmp     l_test_12_if_false      #  27:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_20               #  29:     goto   20
l_test_20:
    jmp     l_test_10               #  31:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $53088, %eax            #  34:     sub    t6 <- 53088, 38722
    movl    $38722, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     if     t6 <= 28436 goto 24_if_true
    movl    $28436, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_24_if_true      
    jmp     l_test_25_if_false      #  36:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_exit            
    jmp     l_test_23               #  39:     goto   23
l_test_25_if_false:
l_test_23:
l_test_29_while_cond:
    leal    _str_1, %eax            #  43:     &()    t7 <- _str_1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  44:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #  45:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_29_while_cond    #  46:     goto   29_while_cond

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
