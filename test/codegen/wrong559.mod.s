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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t13      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t14      <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t15      <bool> %ebp-23 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

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
    movl    $99, %eax               #   0:     if     99 < 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $1, %eax                #   3:     if     1 # 0 goto 5_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $99, %eax               #   9:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               
    movl    $72369, %eax            #  11:     if     72369 >= 57095 goto 10_if_true
    movl    $57095, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  12:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  14:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $43446, %eax            #  17:     assign v1 <- 43446
    movl    %eax, -28(%ebp)        
    jmp     l_f0_0                  #  18:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyBOOLfunc           #  21:     call   t11 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $48606, %eax            #  22:     param  0 <- 48606
    pushl   %eax                   
    call    WriteInt                #  23:     call   WriteInt
    addl    $4, %esp               
    movl    $35195, %eax            #  24:     return 35195
    jmp     l_f0_exit              
    call    ReadInt                 #  25:     call   t12 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_14                 #  26:     goto   14
l_f0_14:
l_f0_22_while_cond:
    call    dummyCHARfunc           #  29:     call   t13 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  30:     if     97 >= t13 goto 23_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_23_while_body     
    jmp     l_f0_21                 #  31:     goto   21
l_f0_23_while_body:
    movl    $97, %eax               #  33:     if     97 >= 100 goto 26
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_26                
    jmp     l_f0_27                 #  34:     goto   27
l_f0_26:
    movl    $1, %eax                #  36:     assign t14 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_28                 #  37:     goto   28
l_f0_27:
    movl    $0, %eax                #  39:     assign t14 <- 0
    movb    %al, -22(%ebp)         
l_f0_28:
    movzbl  -22(%ebp), %eax         #  41:     assign v2 <- t14
    movb    %al, -29(%ebp)         
    call    dummyBOOLfunc           #  42:     call   t15 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    jmp     l_f0_22_while_cond      #  43:     goto   22_while_cond
l_f0_21:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t13      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

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
    call    f0                      #   0:     call   t11 <- f0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t11
    jmp     l_f1_exit              
    call    f0                      #   2:     call   t12 <- f0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v1 <- t12
    movl    %eax, -28(%ebp)        
    jmp     l_f1_4_if_false         #   4:     goto   4_if_false
    movl    $98, %eax               #   5:     if     98 < 98 goto 6
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6                 
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $1, %eax                #   8:     assign t13 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_8                  #   9:     goto   8
l_f1_7:
    movl    $0, %eax                #  11:     assign t13 <- 0
    movb    %al, -21(%ebp)         
l_f1_8:
    movzbl  -21(%ebp), %eax         #  13:     assign v2 <- t13
    movb    %al, -29(%ebp)         
    jmp     l_f1_2                  #  14:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t12      <char> %ebp-17 ]

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
    call    f0                      #   0:     call   t11 <- f0
    movl    %eax, -16(%ebp)        
    jmp     l_f2_6_if_false         #   1:     goto   6_if_false
l_f2_8_while_cond:
    movl    $1, %eax                #   3:     if     1 = 0 goto 9_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9_while_body      
    jmp     l_f2_7                  #   4:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #   6:     goto   8_while_cond
l_f2_7:
    jmp     l_f2_4                  #   8:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1                  #  11:     goto   1
l_f2_1:
    movl    $97, %eax               #  13:     if     97 # 100 goto 12_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  14:     goto   13_if_false
l_f2_12_if_true:
    movl    $99, %eax               #  16:     if     99 <= 100 goto 16_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  17:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  19:     goto   15
l_f2_17_if_false:
l_f2_15:
l_f2_20_while_cond:
    jmp     l_f2_19                 #  23:     goto   19
    jmp     l_f2_20_while_cond      #  24:     goto   20_while_cond
l_f2_19:
    movl    $100, %eax              #  26:     return 100
    jmp     l_f2_exit              
l_f2_24_while_cond:
    jmp     l_f2_23                 #  28:     goto   23
    jmp     l_f2_24_while_cond      #  29:     goto   24_while_cond
l_f2_23:
    call    dummyCHARfunc           #  31:     call   t12 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    WriteLn                 #  32:     call   WriteLn
    jmp     l_f2_11                 #  33:     goto   11
l_f2_13_if_false:
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <char>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t3       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]

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
l_test_1_while_cond:
    jmp     l_test_exit            
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   3:     goto   5_while_cond
    leal    _str_1, %eax            #   4:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
    leal    _str_2, %eax            #   9:     &()    t2 <- _str_2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  11:     call   WriteStr
    addl    $4, %esp               
    movl    $97, %eax               #  12:     if     97 = 100 goto 11
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_11              
    jmp     l_test_12               #  13:     goto   12
l_test_11:
    movl    $1, %eax                #  15:     assign t3 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_13               #  16:     goto   13
l_test_12:
    movl    $0, %eax                #  18:     assign t3 <- 0
    movb    %al, -29(%ebp)         
l_test_13:
    movzbl  -29(%ebp), %eax         #  20:     assign v0 <- t3
    movb    %al, v0                
l_test_16_while_cond:
    movl    $97, %eax               #  22:     if     97 >= 100 goto 17_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_17_while_body   
    jmp     l_test_15               #  23:     goto   15
l_test_17_while_body:
    jmp     l_test_19               #  25:     goto   19
l_test_19:
    movl    $0, %eax                #  27:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_16_while_cond    #  28:     goto   16_while_cond
l_test_15:
    movl    $28012, %eax            #  30:     div    t4 <- 28012, 831
    movl    $831, %ebx             
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     mul    t5 <- t4, 92321
    movl    $92321, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     mul    t6 <- t5, 636
    movl    $636, %ebx             
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  33:     div    t7 <- t6, 76645
    movl    $76645, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  34:     add    t8 <- t7, 44437
    movl    $44437, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  35:     sub    t9 <- t8, 23855
    movl    $23855, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  36:     assign v1 <- t9
    movl    %eax, v1               
    call    f1                      #  37:     call   t10 <- f1
    movl    %eax, -24(%ebp)        

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
