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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
l_f0_1_while_cond:
    movl    $94950, %eax            #   1:     if     94950 = 21684 goto 2_while_body
    movl    $21684, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $1, %eax                #   4:     if     1 # 0 goto 5_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_if_false:
l_f0_4:
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #  11:     goto   9_while_cond
    jmp     l_f0_11                 #  12:     goto   11
l_f0_11:
l_f0_15_while_cond:
    jmp     l_f0_14                 #  15:     goto   14
    jmp     l_f0_15_while_cond      #  16:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_1_while_cond       #  18:     goto   1_while_cond
l_f0_0:
l_f0_18_while_cond:
l_f0_22_while_cond:
    jmp     l_f0_21                 #  22:     goto   21
    jmp     l_f0_22_while_cond      #  23:     goto   22_while_cond
l_f0_21:
    movl    $99, %eax               #  25:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_18_while_cond      #  26:     goto   18_while_cond
    call    dummyCHARfunc           #  27:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  28:     return t10
    jmp     l_f0_exit              

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
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 5 of <char>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
l_f1_1_while_cond:
    call    ReadInt                 #   1:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $88527, %eax            #   2:     add    t11 <- 88527, t10
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $24502, %eax            #   3:     if     24502 > t11 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    leal    _str_1, %eax            #   8:     &()    t12 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  0 <- t12
    pushl   %eax                   
    call    WriteStr                #  10:     call   WriteStr
    addl    $4, %esp               
    call    dummyBOOLfunc           #  11:     call   t13 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 35 of <array 53 of <array 11 of <array 85 of <array 88 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     param  1 <- 97
    pushl   %eax                   
    movl    $100, %eax              #   2:     param  1 <- 100
    pushl   %eax                   
    movl    $99, %eax               #   3:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #   4:     call   t10 <- f0
    addl    $8, %esp               
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #   6:     call   t11 <- f0
    addl    $8, %esp               
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   7:     if     t11 = 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    call    dummyINTfunc            #  12:     call   t12 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     mul    t13 <- t12, 68893
    movl    $68893, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     mul    t14 <- t13, 44687
    movl    $44687, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     div    t15 <- t14, 15594
    movl    $15594, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     return t15
    jmp     l_f2_exit              
l_f2_6_while_cond:
l_f2_9_while_cond:
    movl    $1, %eax                #  19:     if     1 = 0 goto 10_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_10_while_body     
    jmp     l_f2_8                  #  20:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  22:     goto   9_while_cond
l_f2_8:
    call    dummyINTfunc            #  24:     call   t16 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
l_f2_14_while_cond:
    jmp     l_f2_13                 #  26:     goto   13
    jmp     l_f2_14_while_cond      #  27:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_6_while_cond       #  29:     goto   6_while_cond

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 35 of <array 53 of <array 11 of <array 85 of <array 88 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t9       <bool> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $98, %eax               #   1:     if     98 > 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2               
    jmp     l_test_3                #   2:     goto   3
l_test_2:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_4                #   5:     goto   4
l_test_3:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_4:
    movzbl  -17(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
l_test_7_while_cond:
    call    dummyBOOLfunc           #  11:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  12:     if     t2 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #  13:     goto   6
l_test_8_while_body:
    jmp     l_test_11_if_false      #  15:     goto   11_if_false
    jmp     l_test_9                #  16:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_7_while_cond     #  20:     goto   7_while_cond
l_test_6:
    movl    $91541, %eax            #  22:     param  3 <- 91541
    pushl   %eax                   
    movl    $97, %eax               #  23:     param  2 <- 97
    pushl   %eax                   
    movl    $89679, %eax            #  24:     param  1 <- 89679
    pushl   %eax                   
    leal    v2, %eax                #  25:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  27:     call   t4 <- f2
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     sub    t5 <- t4, 56893
    movl    $56893, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     add    t6 <- t5, 56098
    movl    $56098, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     sub    t7 <- t6, 49980
    movl    $49980, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     assign v1 <- t7
    movl    %eax, v1               
l_test_15_while_cond:
    movl    $6693, %eax             #  33:     mul    t8 <- 6693, 20168
    movl    $20168, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  34:     if     t8 <= 61490 goto 16_while_body
    movl    $61490, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_16_while_body   
    jmp     l_test_14               #  35:     goto   14
l_test_16_while_body:
    movl    $1, %eax                #  37:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_15_while_cond    #  38:     goto   15_while_cond
l_test_14:
    jmp     l_test_21               #  40:     goto   21
    movl    $1, %eax                #  41:     assign t9 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_test_22               #  42:     goto   22
l_test_21:
    movl    $0, %eax                #  44:     assign t9 <- 0
    movb    %al, -45(%ebp)         
l_test_22:
    movzbl  -45(%ebp), %eax         #  46:     assign v0 <- t9
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 35 of <array 53 of <array 11 of <array 85 of <array 88 of <int>>>>>>
    .long    5
    .long   35
    .long   53
    .long   11
    .long   85
    .long   88
    .skip 610517600








    # end of global data section
    #-----------------------------------------

    .end
##################################################
