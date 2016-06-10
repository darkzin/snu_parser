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
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t13 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t14 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     return t14
    jmp     l_f0_exit              
l_f0_3_while_cond:
    movl    $97, %eax               #   4:     if     97 < 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_4_while_body      
    jmp     l_f0_2                  #   5:     goto   2
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   7:     goto   3_while_cond
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
    #    -13(%ebp)   1  [ $t13      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t15      <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -16(%ebp)   1  [ $v3       <char> %ebp-16 ]

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
    movl    $97, %eax               #   0:     if     97 # 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $98, %eax               #   3:     assign v3 <- 98
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #   4:     call   t13 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_8                  #   8:     goto   8
    movl    $1, %eax                #   9:     assign t14 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_9                  #  10:     goto   9
l_f1_8:
    movl    $0, %eax                #  12:     assign t14 <- 0
    movb    %al, -14(%ebp)         
l_f1_9:
    movzbl  -14(%ebp), %eax         #  14:     return t14
    jmp     l_f1_exit              
    jmp     l_f1_13                 #  15:     goto   13
    movl    $1, %eax                #  16:     assign t15 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_14                 #  17:     goto   14
l_f1_13:
    movl    $0, %eax                #  19:     assign t15 <- 0
    movb    %al, -15(%ebp)         
l_f1_14:
    movzbl  -15(%ebp), %eax         #  21:     return t15
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t15      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t16      <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 6 of <array 1 of <array 3 of <array 1 of <bool>>>>>>> %ebp+16 ]

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
    movl    $88808, %eax            #   0:     sub    t13 <- 88808, 56031
    movl    $56031, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t14 <- t13, 30868
    movl    $30868, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t14
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $97, %eax               #   4:     if     97 = 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
    movl    $4429, %eax             #   9:     return 4429
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #  10:     goto   2_while_cond
l_f2_1:
l_f2_10_while_cond:
    movl    $97, %eax               #  13:     if     97 >= 97 goto 13
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_13                
    jmp     l_f2_14                 #  14:     goto   14
l_f2_13:
    movl    $1, %eax                #  16:     assign t15 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_15                 #  17:     goto   15
l_f2_14:
    movl    $0, %eax                #  19:     assign t15 <- 0
    movb    %al, -21(%ebp)         
l_f2_15:
    movzbl  -21(%ebp), %eax         #  21:     param  0 <- t15
    pushl   %eax                   
    call    f0                      #  22:     call   t16 <- f0
    addl    $4, %esp               
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  23:     if     t16 < 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_11_while_body     
    jmp     l_f2_9                  #  24:     goto   9
l_f2_11_while_body:
l_f2_18_while_cond:
    movl    $97, %eax               #  27:     if     97 > 100 goto 19_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_19_while_body     
    jmp     l_f2_17                 #  28:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  30:     goto   18_while_cond
l_f2_17:
    jmp     l_f2_10_while_cond      #  32:     goto   10_while_cond
l_f2_9:

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t10      <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t11      <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t12      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <bool> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t9       <bool> %ebp-37 ]

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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    call    dummyBOOLfunc           #   5:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_6_if_false       #   6:     goto   6_if_false
    jmp     l_test_4                #   7:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_1_while_cond     #  10:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    movl    $91206, %eax            #  13:     param  2 <- 91206
    pushl   %eax                   
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_15               #  15:     goto   15
    movl    $0, %eax                #  16:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_15:
    movzbl  -18(%ebp), %eax         #  18:     param  1 <- t2
    pushl   %eax                   
    movl    $7737, %eax             #  19:     param  0 <- 7737
    pushl   %eax                   
    call    f1                      #  20:     call   t3 <- f1
    addl    $12, %esp              
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  21:     if     t3 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9               
    jmp     l_test_10               #  22:     goto   10
l_test_9:
    movl    $1, %eax                #  24:     assign t4 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_test_11               #  25:     goto   11
l_test_10:
    movl    $0, %eax                #  27:     assign t4 <- 0
    movb    %al, -20(%ebp)         
l_test_11:
    movzbl  -20(%ebp), %eax         #  29:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  30:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  31:     assign v0 <- t5
    movb    %al, v0                
    movl    $21454, %eax            #  32:     sub    t6 <- 21454, 22108
    movl    $22108, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     sub    t7 <- t6, 37714
    movl    $37714, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     sub    t8 <- t7, 44490
    movl    $44490, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     if     t8 >= 970 goto 19_if_true
    movl    $970, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_19_if_true      
    jmp     l_test_20_if_false      #  36:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  38:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_24_if_false      #  41:     goto   24_if_false
    movl    $36902, %eax            #  42:     assign v1 <- 36902
    movl    %eax, v1               
    movl    $40671, %eax            #  43:     param  2 <- 40671
    pushl   %eax                   
    movl    $99, %eax               #  44:     if     99 # 99 goto 31
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_31              
    jmp     l_test_32               #  45:     goto   32
l_test_31:
    movl    $1, %eax                #  47:     assign t9 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_33               #  48:     goto   33
l_test_32:
    movl    $0, %eax                #  50:     assign t9 <- 0
    movb    %al, -37(%ebp)         
l_test_33:
    movzbl  -37(%ebp), %eax         #  52:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  53:     call   t10 <- f0
    addl    $4, %esp               
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  54:     if     t10 = 100 goto 27
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_27              
    jmp     l_test_28               #  55:     goto   28
l_test_27:
    movl    $1, %eax                #  57:     assign t11 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_29               #  58:     goto   29
l_test_28:
    movl    $0, %eax                #  60:     assign t11 <- 0
    movb    %al, -16(%ebp)         
l_test_29:
    movzbl  -16(%ebp), %eax         #  62:     param  1 <- t11
    pushl   %eax                   
    movl    $9115, %eax             #  63:     param  0 <- 9115
    pushl   %eax                   
    call    f1                      #  64:     call   t12 <- f1
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    jmp     l_test_22               #  65:     goto   22
l_test_24_if_false:
l_test_22:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
