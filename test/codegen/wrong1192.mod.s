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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 74 of <array 30 of <array 80 of <array 53 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 58 of <array 58 of <array 42 of <array 92 of <array 49 of <int>>>>>>> %ebp+16 ]
    #    -24(%ebp)   4  [ $v5       <int> %ebp-24 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t3 < 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $75332, %eax            #   7:     if     75332 > 93708 goto 5_if_true
    movl    $93708, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   8:     goto   6_if_false
l_f0_5_if_true:
    movl    $60950, %eax            #  10:     add    t4 <- 60950, 85104
    movl    $85104, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_4                  #  12:     goto   4
l_f0_6_if_false:
l_f0_4:
l_f0_10_while_cond:
    movl    $38751, %eax            #  16:     if     38751 < 99025 goto 11_while_body
    movl    $99025, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_11_while_body     
    jmp     l_f0_9                  #  17:     goto   9
l_f0_11_while_body:
    movl    $8759, %eax             #  19:     return 8759
    jmp     l_f0_exit              
    movl    $30189, %eax            #  20:     assign v5 <- 30189
    movl    %eax, -24(%ebp)        
    jmp     l_f0_10_while_cond      #  21:     goto   10_while_cond
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 36 of <array 16 of <array 11 of <array 43 of <array 23 of <char>>>>>>> %ebp+12 ]

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
    movl    $99, %eax               #   0:     if     99 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   5:     if     97 = t3 goto 6_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $93149, %eax            #  13:     param  0 <- 93149
    pushl   %eax                   
    call    WriteInt                #  14:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #  15:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -29(%ebp)   1  [ $t14      <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t15      <bool> %ebp-30 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t3       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $v2       <bool> %ebp-65 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $56, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_4                  #   0:     goto   4
    jmp     l_f2_4                  #   1:     goto   4
l_f2_4:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
    movl    $0, %eax                #   5:     assign t3 <- 0
    movb    %al, -37(%ebp)         
l_f2_3:
    movzbl  -37(%ebp), %eax         #   7:     return t3
    jmp     l_f2_exit              
    movl    $52212, %eax            #   8:     sub    t4 <- 52212, 73409
    movl    $73409, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $18942, %eax            #   9:     add    t5 <- 18942, 34042
    movl    $34042, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  10:     add    t6 <- t5, 52097
    movl    $52097, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  11:     sub    t7 <- t6, 43591
    movl    $43591, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  12:     sub    t8 <- t7, 70362
    movl    $70362, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  13:     sub    t9 <- t8, 23045
    movl    $23045, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  14:     add    t10 <- t9, 80196
    movl    $80196, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     add    t11 <- t10, 35596
    movl    $35596, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t12 <- t11, 28558
    movl    $28558, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     sub    t13 <- t12, 27572
    movl    $27572, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -44(%ebp), %eax         #  18:     if     t4 # t13 goto 11
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_11                
    jmp     l_f2_12                 #  19:     goto   12
l_f2_11:
    movl    $1, %eax                #  21:     assign t14 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_13                 #  22:     goto   13
l_f2_12:
    movl    $0, %eax                #  24:     assign t14 <- 0
    movb    %al, -29(%ebp)         
l_f2_13:
    movzbl  -29(%ebp), %eax         #  26:     return t14
    jmp     l_f2_exit              
l_f2_16_while_cond:
    jmp     l_f2_15                 #  28:     goto   15
    jmp     l_f2_18                 #  29:     goto   18
l_f2_18:
    movl    $99, %eax               #  31:     if     99 <= 99 goto 22
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_22                
    jmp     l_f2_23                 #  32:     goto   23
l_f2_22:
    movl    $1, %eax                #  34:     assign t15 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f2_24                 #  35:     goto   24
l_f2_23:
    movl    $0, %eax                #  37:     assign t15 <- 0
    movb    %al, -30(%ebp)         
l_f2_24:
    movzbl  -30(%ebp), %eax         #  39:     return t15
    jmp     l_f2_exit              
    movl    $0, %eax                #  40:     assign v2 <- 0
    movb    %al, -65(%ebp)         
    movl    $98, %eax               #  41:     if     98 <= 99 goto 28_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_28_if_true        
    jmp     l_f2_29_if_false        #  42:     goto   29_if_false
l_f2_28_if_true:
    jmp     l_f2_27                 #  44:     goto   27
l_f2_29_if_false:
l_f2_27:
    call    ReadInt                 #  47:     call   t16 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    $0, %eax                #  48:     assign v2 <- 0
    movb    %al, -65(%ebp)         
l_f2_34_while_cond:
    movl    $99, %eax               #  50:     if     99 < 98 goto 35_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_35_while_body     
    jmp     l_f2_33                 #  51:     goto   33
l_f2_35_while_body:
    jmp     l_f2_34_while_cond      #  53:     goto   34_while_cond
l_f2_33:
    jmp     l_f2_16_while_cond      #  55:     goto   16_while_cond
l_f2_15:

l_f2_exit:
    # epilogue
    addl    $56, %esp               # remove locals
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
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
l_test_1_while_cond:
    movl    $27321, %eax            #   1:     if     27321 <= 7276 goto 2_while_body
    movl    $7276, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    movl    $99, %eax               #   5:     if     99 = 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_6_while_body    
    jmp     l_test_4                #   6:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   8:     goto   5_while_cond
l_test_4:
    movl    $44548, %eax            #  10:     assign v0 <- 44548
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
    jmp     l_test_10               #  13:     goto   10
l_test_10:
    movl    $1, %eax                #  15:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_12               #  16:     goto   12
    movl    $0, %eax                #  17:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_12:
    movzbl  -13(%ebp), %eax         #  19:     assign v1 <- t0
    movb    %al, v1                
    call    dummyBOOLfunc           #  20:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #  21:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
