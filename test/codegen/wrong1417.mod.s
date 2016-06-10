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
    #    -44(%ebp)   4  [ $t9       <ptr(4) to <array 7 of <char>>> %ebp-44 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
l_f0_4_while_cond:
    jmp     l_f0_3                  #   1:     goto   3
    jmp     l_f0_4_while_cond       #   2:     goto   4_while_cond
l_f0_3:
    leal    _str_1, %eax            #   4:     &()    t9 <- _str_1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   5:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_9                  #   7:     goto   9
    movl    $1, %eax                #   8:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_10                 #   9:     goto   10
l_f0_9:
    movl    $0, %eax                #  11:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_10:
    movzbl  -13(%ebp), %eax         #  13:     return t10
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  14:     goto   0
l_f0_0:
l_f0_14_while_cond:
    jmp     l_f0_13                 #  17:     goto   13
    jmp     l_f0_13                 #  18:     goto   13
    jmp     l_f0_19                 #  19:     goto   19
l_f0_19:
    movl    $84270, %eax            #  21:     param  0 <- 84270
    pushl   %eax                   
    call    WriteInt                #  22:     call   WriteInt
    addl    $4, %esp               
    movl    $48383, %eax            #  23:     assign v2 <- 48383
    movl    %eax, 12(%ebp)         
    jmp     l_f0_14_while_cond      #  24:     goto   14_while_cond
l_f0_13:
l_f0_25_while_cond:
    movl    $56138, %eax            #  27:     add    t11 <- 56138, 40143
    movl    $40143, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     add    t12 <- t11, 69130
    movl    $69130, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     add    t13 <- t12, 44057
    movl    $44057, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $44069, %eax            #  30:     mul    t14 <- 44069, 88359
    movl    $88359, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     mul    t15 <- t14, 84090
    movl    $84090, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     mul    t16 <- t15, 47522
    movl    $47522, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -28(%ebp), %eax         #  33:     if     t13 <= t16 goto 26_while_body
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_26_while_body     
    jmp     l_f0_24                 #  34:     goto   24
l_f0_26_while_body:
    jmp     l_f0_25_while_cond      #  36:     goto   25_while_cond
l_f0_24:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $v2       <bool> %ebp-22 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $99, %eax               #   2:     assign v1 <- 99
    movb    %al, -21(%ebp)         
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
l_f1_0:
    movl    $69800, %eax            #   5:     mul    t9 <- 69800, 59722
    movl    $59722, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $3058, %eax             #   6:     if     3058 < t9 goto 5
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_5                 
    jmp     l_f1_6                  #   7:     goto   6
l_f1_5:
    movl    $1, %eax                #   9:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #  10:     goto   7
l_f1_6:
    movl    $0, %eax                #  12:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #  14:     assign v2 <- t10
    movb    %al, -22(%ebp)         
    jmp     l_f1_10                 #  15:     goto   10
    jmp     l_f1_11                 #  16:     goto   11
l_f1_10:
    movl    $1, %eax                #  18:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #  19:     goto   12
l_f1_11:
    movl    $0, %eax                #  21:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -14(%ebp), %eax         #  23:     assign v2 <- t11
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t14      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t9       <bool> %ebp-26 ]

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
    jmp     l_f2_1                  #   0:     goto   1
    jmp     l_f2_1                  #   1:     goto   1
    jmp     l_f2_1                  #   2:     goto   1
l_f2_1:
    movl    $1, %eax                #   4:     assign t9 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
    movl    $0, %eax                #   6:     assign t9 <- 0
    movb    %al, -26(%ebp)         
l_f2_3:
    movzbl  -26(%ebp), %eax         #   8:     return t9
    jmp     l_f2_exit              
l_f2_10_while_cond:
    jmp     l_f2_9                  #  10:     goto   9
    movl    $1, %eax                #  11:     if     1 # 1 goto 14
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_14                
    jmp     l_f2_15                 #  12:     goto   15
l_f2_14:
    movl    $1, %eax                #  14:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_16                 #  15:     goto   16
l_f2_15:
    movl    $0, %eax                #  17:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_16:
    movzbl  -13(%ebp), %eax         #  19:     return t10
    jmp     l_f2_exit              
    call    f1                      #  20:     call   t11 <- f1
    movb    %al, -14(%ebp)         
    jmp     l_f2_10_while_cond      #  21:     goto   10_while_cond
l_f2_9:
    call    dummyINTfunc            #  23:     call   t12 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     mul    t13 <- t12, 876
    movl    $876, %ebx             
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     if     t13 # 29728 goto 20
    movl    $29728, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_20                
    jmp     l_f2_21                 #  26:     goto   21
l_f2_20:
    movl    $1, %eax                #  28:     assign t14 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_22                 #  29:     goto   22
l_f2_21:
    movl    $0, %eax                #  31:     assign t14 <- 0
    movb    %al, -25(%ebp)         
l_f2_22:
    movzbl  -25(%ebp), %eax         #  33:     return t14
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $t6       <bool> %ebp-31 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <bool> %ebp-37 ]

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
    movl    $62459, %eax            #   0:     mul    t0 <- 62459, 91096
    movl    $91096, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 44263
    movl    $44263, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t2 <- t1, 21586
    movl    $21586, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t3 <- t2, 66942
    movl    $66942, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v0 <- t3
    movl    %eax, v0               
    call    dummyBOOLfunc           #   5:     call   t4 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
l_test_3_while_cond:
    movl    $100, %eax              #   7:     if     100 = 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_4_while_body    
    jmp     l_test_2                #   8:     goto   2
l_test_4_while_body:
    call    dummyCHARfunc           #  10:     call   t5 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    jmp     l_test_exit            
l_test_9_while_cond:
    jmp     l_test_8                #  13:     goto   8
    jmp     l_test_9_while_cond     #  14:     goto   9_while_cond
l_test_8:
    jmp     l_test_3_while_cond     #  16:     goto   3_while_cond
l_test_2:
    call    dummyBOOLfunc           #  18:     call   t6 <- dummyBOOLfunc
    movb    %al, -31(%ebp)         
    call    ReadInt                 #  19:     call   t7 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    $99, %eax               #  20:     if     99 < 100 goto 17
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_17              
    jmp     l_test_18               #  21:     goto   18
l_test_17:
    movl    $1, %eax                #  23:     assign t8 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_19               #  24:     goto   19
l_test_18:
    movl    $0, %eax                #  26:     assign t8 <- 0
    movb    %al, -37(%ebp)         
l_test_19:
    movzbl  -37(%ebp), %eax         #  28:     assign v1 <- t8
    movb    %al, v1                
    jmp     l_test_12               #  29:     goto   12
l_test_12:
    jmp     l_test_exit            

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
