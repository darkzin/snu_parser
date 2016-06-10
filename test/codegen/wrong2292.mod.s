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
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]

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
    jmp     l_f0_5                  #   1:     goto   5
    jmp     l_f0_2_while_body       #   2:     goto   2_while_body
l_f0_5:
    jmp     l_f0_2_while_body       #   4:     goto   2_while_body
    jmp     l_f0_2_while_body       #   5:     goto   2_while_body
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
    movl    $99, %eax               #   8:     if     99 = 100 goto 10
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_11                 #   9:     goto   11
l_f0_10:
    movl    $1, %eax                #  11:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_12                 #  12:     goto   12
l_f0_11:
    movl    $0, %eax                #  14:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_12:
    movzbl  -13(%ebp), %eax         #  16:     assign v3 <- t10
    movb    %al, 12(%ebp)          
    movl    $99, %eax               #  17:     if     99 >= 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  18:     goto   16_if_false
l_f0_15_if_true:
    movl    $97, %eax               #  20:     if     97 >= 98 goto 19_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  21:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  23:     goto   18
l_f0_20_if_false:
l_f0_18:
    movl    $100, %eax              #  26:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_14                 #  27:     goto   14
l_f0_16_if_false:
l_f0_14:

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t15      <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t17      <bool> %ebp-41 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 83 of <array 92 of <array 47 of <array 47 of <array 16 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t10 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    movl    $71186, %eax            #   6:     if     71186 >= 46146 goto 6_while_body
    movl    $46146, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_6_while_body      
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   9:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_1_while_cond       #  11:     goto   1_while_cond
l_f1_0:
    movl    $87237, %eax            #  13:     add    t11 <- 87237, 13189
    movl    $13189, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $48934, %eax            #  14:     sub    t12 <- 48934, 91274
    movl    $91274, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     add    t13 <- t12, 8133
    movl    $8133, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     sub    t14 <- t13, 7170
    movl    $7170, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -20(%ebp), %eax         #  17:     if     t11 < t14 goto 9
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_9                 
    jmp     l_f1_10                 #  18:     goto   10
l_f1_9:
    movl    $1, %eax                #  20:     assign t15 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_11                 #  21:     goto   11
l_f1_10:
    movl    $0, %eax                #  23:     assign t15 <- 0
    movb    %al, -33(%ebp)         
l_f1_11:
    movzbl  -33(%ebp), %eax         #  25:     assign v3 <- t15
    movb    %al, 12(%ebp)          
l_f1_14_while_cond:
    movl    $97, %eax               #  27:     if     97 > 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_15_while_body     
    jmp     l_f1_13                 #  28:     goto   13
l_f1_15_while_body:
    call    ReadInt                 #  30:     call   t16 <- ReadInt
    movl    %eax, -40(%ebp)        
l_f1_19_while_cond:
    jmp     l_f1_18                 #  32:     goto   18
    jmp     l_f1_19_while_cond      #  33:     goto   19_while_cond
l_f1_18:
    jmp     l_f1_23_if_false        #  35:     goto   23_if_false
    movl    $0, %eax                #  36:     return 0
    jmp     l_f1_exit              
    movl    $25692, %eax            #  37:     if     25692 <= 26870 goto 26
    movl    $26870, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_26                
    jmp     l_f1_27                 #  38:     goto   27
l_f1_26:
    movl    $1, %eax                #  40:     assign t17 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f1_28                 #  41:     goto   28
l_f1_27:
    movl    $0, %eax                #  43:     assign t17 <- 0
    movb    %al, -41(%ebp)         
l_f1_28:
    movzbl  -41(%ebp), %eax         #  45:     return t17
    jmp     l_f1_exit              
    jmp     l_f1_21                 #  46:     goto   21
l_f1_23_if_false:
l_f1_21:
    jmp     l_f1_14_while_cond      #  49:     goto   14_while_cond
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_2                  #   1:     goto   2
    jmp     l_f2_2                  #   2:     goto   2
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #  10:     return t11
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  11:     call   t12 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <char> %ebp-38 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
l_test_2_while_cond:
    movl    $97768, %eax            #   3:     sub    t1 <- 97768, 52657
    movl    $52657, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t1 # 15858 goto 3_while_body
    movl    $15858, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   5:     goto   1
l_test_3_while_body:
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
    jmp     l_test_5                #   8:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyBOOLfunc           #  11:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
l_test_10_while_cond:
    movl    $75652, %eax            #  13:     if     75652 # 70536 goto 11_while_body
    movl    $70536, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_11_while_body   
    jmp     l_test_9                #  14:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  16:     goto   10_while_cond
l_test_9:
l_test_14_while_cond:
    movl    $98, %eax               #  19:     if     98 = 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_15_while_body   
    jmp     l_test_13               #  20:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  22:     goto   14_while_cond
l_test_13:
    jmp     l_test_2_while_cond     #  24:     goto   2_while_cond
l_test_1:
    movl    $11252, %eax            #  26:     mul    t3 <- 11252, 84593
    movl    $84593, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t4 <- t3, 24154
    movl    $24154, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     sub    t5 <- t4, 28437
    movl    $28437, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     assign v1 <- t5
    movl    %eax, v1               
    movl    $1, %eax                #  30:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_24               #  31:     goto   24
    movl    $0, %eax                #  32:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_test_24:
    movzbl  -37(%ebp), %eax         #  34:     param  1 <- t6
    pushl   %eax                   
    movl    $63607, %eax            #  35:     param  0 <- 63607
    pushl   %eax                   
    call    f0                      #  36:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -38(%ebp)         
    movzbl  -38(%ebp), %eax         #  37:     if     t7 < 100 goto 19_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_19_if_true      
    jmp     l_test_20_if_false      #  38:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  40:     goto   18
l_test_20_if_false:
l_test_18:
    movl    $50989, %eax            #  43:     sub    t8 <- 50989, 2312
    movl    $2312, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  44:     add    t9 <- t8, 79354
    movl    $79354, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  45:     assign v1 <- t9
    movl    %eax, v1               
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
