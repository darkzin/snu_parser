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
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 8 of <array 1 of <array 8 of <array 1 of <char>>>>>>> %ebp+8 ]

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
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   1:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   2:     call   t12 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t18      <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t20      <bool> %ebp-49 ]
    #    -56(%ebp)   4  [ $v0       <int> %ebp-56 ]

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
    movl    $3353, %eax             #   0:     add    t11 <- 3353, 65477
    movl    $65477, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t12 <- t11, 47639
    movl    $47639, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t13 <- t12, 5086
    movl    $5086, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t14 <- t13, 4753
    movl    $4753, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     sub    t15 <- t14, 62229
    movl    $62229, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     add    t16 <- t15, 32160
    movl    $32160, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     add    t17 <- t16, 11127
    movl    $11127, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $36729, %eax            #   7:     if     36729 <= t17 goto 1
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   8:     goto   2
l_f1_1:
    movl    $1, %eax                #  10:     assign t18 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f1_3                  #  11:     goto   3
l_f1_2:
    movl    $0, %eax                #  13:     assign t18 <- 0
    movb    %al, -41(%ebp)         
l_f1_3:
    movzbl  -41(%ebp), %eax         #  15:     return t18
    jmp     l_f1_exit              
    movl    $18851, %eax            #  16:     mul    t19 <- 18851, 13516
    movl    $13516, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  17:     assign v0 <- t19
    movl    %eax, -56(%ebp)        
    call    dummyBOOLfunc           #  18:     call   t20 <- dummyBOOLfunc
    movb    %al, -49(%ebp)         
l_f1_12_while_cond:
    movl    $99, %eax               #  20:     if     99 = 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_13_while_body     
    jmp     l_f1_11                 #  21:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  23:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_6                  #  25:     goto   6
l_f1_6:

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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t12      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t13      <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 6 of <array 5 of <array 3 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 4 of <array 8 of <array 3 of <array 10 of <char>>>>>>> %ebp+20 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    call    ReadInt                 #   0:     call   t11 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v4 <- t11
    movl    %eax, -24(%ebp)        
    movl    $98, %eax               #   2:     if     98 <= 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    jmp     l_f2_9                  #   6:     goto   9
l_f2_9:
    movl    $1, %eax                #   8:     assign t12 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_11                 #   9:     goto   11
    movl    $0, %eax                #  10:     assign t12 <- 0
    movb    %al, -17(%ebp)         
l_f2_11:
    movzbl  -17(%ebp), %eax         #  12:     if     t12 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  13:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  15:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_1                  #  17:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    f1                      #  20:     call   t13 <- f1
    movb    %al, -18(%ebp)         

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 4 of <array 8 of <array 3 of <array 10 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t2       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t3       <bool> %ebp-23 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 8 of <array 6 of <array 5 of <array 3 of <array 4 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 10 of <array 4 of <array 8 of <array 3 of <array 10 of <char>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t9       <ptr(4) to <array 8 of <array 6 of <array 5 of <array 3 of <array 4 of <bool>>>>>>> %ebp-48 ]

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
    movl    $98, %eax               #   0:     if     98 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $36028, %eax            #   4:     if     36028 >= 94033 goto 6_while_body
    movl    $94033, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
l_test_9_while_cond:
    movl    $73094, %eax            #  10:     if     73094 = 81831 goto 10_while_body
    movl    $81831, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:
    jmp     l_test_exit            
    jmp     l_test_0                #  16:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_15_if_false      #  19:     goto   15_if_false
l_test_17_while_cond:
    jmp     l_test_16               #  21:     goto   16
    jmp     l_test_17_while_cond    #  22:     goto   17_while_cond
l_test_16:
l_test_20_while_cond:
    jmp     l_test_20_while_cond    #  25:     goto   20_while_cond
    jmp     l_test_13               #  26:     goto   13
l_test_15_if_false:
l_test_13:
    call    dummyBOOLfunc           #  29:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_25_if_false      #  30:     goto   25_if_false
    jmp     l_test_28_if_false      #  31:     goto   28_if_false
    jmp     l_test_26               #  32:     goto   26
l_test_28_if_false:
l_test_26:
    leal    v1, %eax                #  35:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  36:     param  3 <- t1
    pushl   %eax                   
    call    dummyCHARfunc           #  37:     call   t2 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  38:     if     t2 > 97 goto 30
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_30              
    jmp     l_test_31               #  39:     goto   31
l_test_30:
    movl    $1, %eax                #  41:     assign t3 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_test_32               #  42:     goto   32
l_test_31:
    movl    $0, %eax                #  44:     assign t3 <- 0
    movb    %al, -23(%ebp)         
l_test_32:
    movzbl  -23(%ebp), %eax         #  46:     param  2 <- t3
    pushl   %eax                   
    movl    $100, %eax              #  47:     param  1 <- 100
    pushl   %eax                   
    leal    v0, %eax                #  48:     &()    t4 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  49:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  50:     call   t5 <- f2
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    call    ReadInt                 #  51:     call   t6 <- ReadInt
    movl    %eax, -36(%ebp)        
    jmp     l_test_23               #  52:     goto   23
l_test_25_if_false:
l_test_23:
    leal    v1, %eax                #  55:     &()    t7 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  56:     param  3 <- t7
    pushl   %eax                   
    movl    $1, %eax                #  57:     assign t8 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_test_38               #  58:     goto   38
    movl    $0, %eax                #  59:     assign t8 <- 0
    movb    %al, -41(%ebp)         
l_test_38:
    movzbl  -41(%ebp), %eax         #  61:     param  2 <- t8
    pushl   %eax                   
    movl    $98, %eax               #  62:     param  1 <- 98
    pushl   %eax                   
    leal    v0, %eax                #  63:     &()    t9 <- v0
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  64:     param  0 <- t9
    pushl   %eax                   
    call    f2                      #  65:     call   t10 <- f2
    addl    $16, %esp              
    movb    %al, -21(%ebp)         

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
v0:                                 # <array 8 of <array 6 of <array 5 of <array 3 of <array 4 of <bool>>>>>>
    .long    5
    .long    8
    .long    6
    .long    5
    .long    3
    .long    4
    .skip 2880
v1:                                 # <array 10 of <array 4 of <array 8 of <array 3 of <array 10 of <char>>>>>>
    .long    5
    .long   10
    .long    4
    .long    8
    .long    3
    .long   10
    .skip 9600








    # end of global data section
    #-----------------------------------------

    .end
##################################################
