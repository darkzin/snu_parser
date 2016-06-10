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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]

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
    jmp     l_f0_0                  #   1:     goto   0
    movl    $100, %eax              #   2:     if     100 = 98 goto 4_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   3:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   5:     goto   3
l_f0_5_if_false:
l_f0_3:
    call    dummyCHARfunc           #   8:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     return t1
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #  12:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #  13:     if     97 <= 99 goto 15
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_15                
    jmp     l_f0_16                 #  14:     goto   16
l_f0_15:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_17                 #  17:     goto   17
l_f0_16:
    movl    $0, %eax                #  19:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f0_17:
    movzbl  -15(%ebp), %eax         #  21:     assign v1 <- t3
    movb    %al, -16(%ebp)         
    jmp     l_f0_9                  #  22:     goto   9
l_f0_9:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t3       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t4       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t6       <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 70 of <array 5 of <array 44 of <array 11 of <array 1 of <bool>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_0                  #   2:     goto   0
    jmp     l_f1_0                  #   3:     goto   0
    jmp     l_f1_0                  #   4:     goto   0
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $1, %eax                #   7:     if     1 = 0 goto 10_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #   8:     goto   11_if_false
l_f1_10_if_true:
l_f1_14_while_cond:
    movl    $99, %eax               #  11:     if     99 < 99 goto 15_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  12:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  14:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_9                  #  16:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $19964, %eax            #  19:     add    t1 <- 19964, 28412
    movl    $28412, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     sub    t2 <- t1, 71079
    movl    $71079, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  21:     add    t3 <- t2, 39688
    movl    $39688, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  22:     add    t4 <- t3, 81599
    movl    $81599, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  23:     sub    t5 <- t4, 31358
    movl    $31358, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  24:     if     t5 = 55242 goto 18
    movl    $55242, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_18                
    jmp     l_f1_19                 #  25:     goto   19
l_f1_18:
    movl    $1, %eax                #  27:     assign t6 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f1_20                 #  28:     goto   20
l_f1_19:
    movl    $0, %eax                #  30:     assign t6 <- 0
    movb    %al, -85(%ebp)         
l_f1_20:
    movl    $2, %eax                #  32:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  33:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  34:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $3435, %eax             #  35:     mul    t8 <- 3435, t7
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  36:     add    t9 <- t8, 61054
    movl    $61054, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $3, %eax                #  37:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  38:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  39:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -100(%ebp), %eax        #  40:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  41:     add    t12 <- t11, 52987
    movl    $52987, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  42:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  43:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  44:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  45:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  46:     add    t15 <- t14, 96265
    movl    $96265, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  47:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  48:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  49:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  50:     mul    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  51:     add    t18 <- t17, 56597
    movl    $56597, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  52:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  53:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  54:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  55:     add    t21 <- t19, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  56:     add    t22 <- v2, t21
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -85(%ebp), %eax         #  57:     assign @t22 <- t6
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <char> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 37 of <array 27 of <array 58 of <array 35 of <array 74 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 33 of <array 77 of <array 93 of <array 32 of <array 78 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t1 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_1                  #   2:     goto   1
l_f2_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   8:     return t2
    jmp     l_f2_exit              
    movl    $97, %eax               #   9:     if     97 > 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_7                 
    jmp     l_f2_8                  #  10:     goto   8
l_f2_7:
    movl    $1, %eax                #  12:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_9                  #  13:     goto   9
l_f2_8:
    movl    $0, %eax                #  15:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f2_9:
    movzbl  -15(%ebp), %eax         #  17:     return t3
    jmp     l_f2_exit              
    call    f0                      #  18:     call   t4 <- f0
    movb    %al, -16(%ebp)         

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
    movl    $47211, %eax            #   0:     assign v0 <- 47211
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $99, %eax               #   2:     if     99 <= 100 goto 3_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    movl    $98, %eax               #   5:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_2                #   7:     goto   2
l_test_4_if_false:
l_test_2:
l_test_9_while_cond:
    movl    $1, %eax                #  11:     if     1 = 0 goto 10_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  12:     goto   8
l_test_10_while_body:
l_test_13_while_cond:
    movl    $100, %eax              #  15:     if     100 > 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_14_while_body   
    jmp     l_test_12               #  16:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  18:     goto   13_while_cond
l_test_12:
    call    f0                      #  20:     call   t0 <- f0
    movb    %al, -13(%ebp)         
    movl    $34561, %eax            #  21:     assign v0 <- 34561
    movl    %eax, v0               
    jmp     l_test_18               #  22:     goto   18
l_test_18:
    movl    $100, %eax              #  24:     if     100 > 100 goto 22_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_22_if_true      
    jmp     l_test_23_if_false      #  25:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  27:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_9_while_cond     #  30:     goto   9_while_cond
l_test_8:

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
