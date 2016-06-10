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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 86 of <array 60 of <array 68 of <array 8 of <array 58 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -48(%ebp)   4  [ $v3       <int> %ebp-48 ]

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
    movl    $62385, %eax            #   0:     sub    t5 <- 62385, 52458
    movl    $52458, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     add    t6 <- t5, 37042
    movl    $37042, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     sub    t7 <- t6, 16077
    movl    $16077, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     sub    t8 <- t7, 5414
    movl    $5414, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     add    t9 <- t8, 20235
    movl    $20235, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   5:     assign v3 <- t9
    movl    %eax, -48(%ebp)        
l_f0_2_while_cond:
    call    dummyINTfunc            #   7:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $37260, %eax            #   8:     sub    t11 <- 37260, 86732
    movl    $86732, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   9:     if     t10 > t11 goto 3_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #  10:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  12:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_10                 #  14:     goto   10
l_f0_10:
    jmp     l_f0_6                  #  16:     goto   6
l_f0_6:
    movl    $1, %eax                #  18:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_8                  #  19:     goto   8
    movl    $0, %eax                #  20:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f0_8:
    movzbl  -21(%ebp), %eax         #  22:     return t12
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $v0       <int> %ebp-36 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t5 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $40583, %eax            #   7:     sub    t6 <- 40583, 26237
    movl    $26237, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t7 <- t6, 31518
    movl    $31518, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     sub    t8 <- t7, 94667
    movl    $94667, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     assign v0 <- t8
    movl    %eax, -36(%ebp)        
    call    dummyINTfunc            #  11:     call   t9 <- dummyINTfunc
    movl    %eax, -32(%ebp)        

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_4                  #   1:     goto   4
    jmp     l_f2_5                  #   2:     goto   5
l_f2_4:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movl    $0, %eax                #   9:     if     0 # t5 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
l_f2_0:
l_f2_11_while_cond:
    movl    $18000, %eax            #  15:     if     18000 < 4929 goto 12_while_body
    movl    $4929, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_12_while_body     
    jmp     l_f2_10                 #  16:     goto   10
l_f2_12_while_body:
    call    ReadInt                 #  18:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     return t6
    jmp     l_f2_exit              
    jmp     l_f2_11_while_cond      #  20:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_17                 #  22:     goto   17
    movl    $1, %eax                #  23:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_18                 #  24:     goto   18
l_f2_17:
    movl    $0, %eax                #  26:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f2_18:
    movzbl  -21(%ebp), %eax         #  28:     assign v0 <- t7
    movb    %al, 8(%ebp)           

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]

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
    movl    $97, %eax               #   0:     if     97 = 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     param  3 <- t0
    pushl   %eax                   
    call    f1                      #   9:     call   t1 <- f1
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     param  2 <- t1
    pushl   %eax                   
    movl    $1, %eax                #  11:     if     1 = 0 goto 5
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_5               
    jmp     l_test_6                #  12:     goto   6
l_test_5:
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_7                #  15:     goto   7
l_test_6:
    movl    $0, %eax                #  17:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_7:
    movzbl  -15(%ebp), %eax         #  19:     param  1 <- t2
    pushl   %eax                   
    jmp     l_test_9                #  20:     goto   9
    jmp     l_test_9                #  21:     goto   9
    jmp     l_test_9                #  22:     goto   9
    jmp     l_test_9                #  23:     goto   9
    jmp     l_test_10               #  24:     goto   10
l_test_9:
    movl    $1, %eax                #  26:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_11               #  27:     goto   11
l_test_10:
    movl    $0, %eax                #  29:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_11:
    movzbl  -16(%ebp), %eax         #  31:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  32:     call   t4 <- f2
    addl    $16, %esp              
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  33:     if     99 < 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_17_if_true      
    jmp     l_test_18_if_false      #  34:     goto   18_if_false
l_test_17_if_true:
l_test_21_while_cond:
    movl    $97, %eax               #  37:     if     97 < 99 goto 22_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_22_while_body   
    jmp     l_test_20               #  38:     goto   20
l_test_22_while_body:
    movl    $31475, %eax            #  40:     assign v0 <- 31475
    movl    %eax, v0               
    jmp     l_test_21_while_cond    #  41:     goto   21_while_cond
l_test_20:
    jmp     l_test_16               #  43:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_27_if_false      #  46:     goto   27_if_false
    call    WriteLn                 #  47:     call   WriteLn
    jmp     l_test_25               #  48:     goto   25
l_test_27_if_false:
l_test_25:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
