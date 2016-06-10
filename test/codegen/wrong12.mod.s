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
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -33(%ebp)   1  [ $v1       <char> %ebp-33 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $1, %eax                #   2:     if     1 # 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   3:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_10_while_cond:
    jmp     l_f0_9                  #   9:     goto   9
    jmp     l_f0_10_while_cond      #  10:     goto   10_while_cond
l_f0_9:
    call    WriteLn                 #  12:     call   WriteLn
    movl    $100, %eax              #  13:     assign v1 <- 100
    movb    %al, -33(%ebp)         
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
    movl    $28641, %eax            #  15:     if     28641 = 9732 goto 15_if_true
    movl    $9732, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  16:     goto   16_if_false
l_f0_15_if_true:
    movl    $98, %eax               #  18:     if     98 <= 99 goto 19_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  19:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  21:     goto   18
l_f0_20_if_false:
l_f0_18:
l_f0_23_while_cond:
    movl    $6563, %eax             #  25:     if     6563 >= 11623 goto 24_while_body
    movl    $11623, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_24_while_body     
    jmp     l_f0_22                 #  26:     goto   22
l_f0_24_while_body:
    jmp     l_f0_23_while_cond      #  28:     goto   23_while_cond
l_f0_22:
l_f0_27_while_cond:
    jmp     l_f0_26                 #  31:     goto   26
    jmp     l_f0_27_while_cond      #  32:     goto   27_while_cond
l_f0_26:
    jmp     l_f0_14                 #  34:     goto   14
l_f0_16_if_false:
l_f0_14:
    movl    $39311, %eax            #  37:     add    t8 <- 39311, 44592
    movl    $44592, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  38:     sub    t9 <- t8, 72111
    movl    $72111, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  39:     sub    t10 <- t9, 52581
    movl    $52581, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  40:     add    t11 <- t10, 73241
    movl    $73241, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  41:     assign v0 <- t11
    movl    %eax, 8(%ebp)          

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $0, %eax                #   1:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_5                  #   2:     goto   5
l_f1_5:
    jmp     l_f1_0                  #   4:     goto   0
l_f1_0:
    call    ReadInt                 #   6:     call   t8 <- ReadInt
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #   7:     call   t9 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    $18540, %eax            #   8:     div    t10 <- 18540, t9
    movl    -28(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     assign v1 <- t10
    movl    %eax, -32(%ebp)        

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

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
    movl    $76149, %eax            #   0:     div    t7 <- 76149, 67688
    movl    $67688, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t7
    movl    %eax, -24(%ebp)        
l_f2_2_while_cond:
    jmp     l_f2_1                  #   3:     goto   1
    jmp     l_f2_1                  #   4:     goto   1
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
    jmp     l_f2_2_while_cond       #   7:     goto   2_while_cond
l_f2_1:
    movl    $19184, %eax            #   9:     add    t8 <- 19184, 56800
    movl    $56800, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t8
    pushl   %eax                   
    call    WriteInt                #  11:     call   WriteInt
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

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
    jmp     l_test_exit            
    movl    $6801, %eax             #   1:     div    t0 <- 6801, 30138
    movl    $30138, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t1 <- t0, 50643
    movl    $50643, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 73326
    movl    $73326, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t3 <- t2, 39839
    movl    $39839, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     assign v0 <- t3
    movl    %eax, v0               
l_test_3_while_cond:
    movl    $99, %eax               #   7:     if     99 > 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_4_while_body    
    jmp     l_test_2                #   8:     goto   2
l_test_4_while_body:
    call    WriteLn                 #  10:     call   WriteLn
    jmp     l_test_3_while_cond     #  11:     goto   3_while_cond
l_test_2:
    movl    $61551, %eax            #  13:     mul    t4 <- 61551, 3452
    movl    $3452, %ebx            
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     div    t5 <- t4, 56600
    movl    $56600, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $1477, %eax             #  15:     if     1477 < t5 goto 8
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_8               
    jmp     l_test_9                #  16:     goto   9
l_test_8:
    movl    $1, %eax                #  18:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_10               #  19:     goto   10
l_test_9:
    movl    $0, %eax                #  21:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_test_10:
    movzbl  -37(%ebp), %eax         #  23:     assign v1 <- t6
    movb    %al, v1                

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
