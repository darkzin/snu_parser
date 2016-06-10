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
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t3       <char> %ebp-69 ]
    #    -70(%ebp)   1  [ $t4       <bool> %ebp-70 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 8 of <array 2 of <array 10 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 4 of <array 9 of <array 9 of <array 1 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 2 of <array 6 of <array 2 of <array 9 of <char>>>>>>> %ebp+20 ]
    #    -93(%ebp)   1  [ $v4       <bool> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $26868, %eax            #   0:     if     26868 > 24277 goto 1_if_true
    movl    $24277, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t2 <- dummyBOOLfunc
    movb    %al, -53(%ebp)         
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $91723, %eax            #   7:     if     91723 <= 75818 goto 6_if_true
    movl    $75818, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   8:     goto   7_if_false
l_f0_6_if_true:
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movl    $100, %eax              #  11:     if     100 <= 97 goto 11
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_11                
    jmp     l_f0_12                 #  12:     goto   12
l_f0_11:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -70(%ebp)         
    jmp     l_f0_13                 #  15:     goto   13
l_f0_12:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -70(%ebp)         
l_f0_13:
    movzbl  -70(%ebp), %eax         #  19:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_5                  #  20:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $81577, %eax            #  26:     mul    t6 <- 81577, t5
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    $10459, %eax            #  27:     sub    t7 <- 10459, 16551
    movl    $16551, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  28:     add    t8 <- t7, 26701
    movl    $26701, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  29:     add    t9 <- t6, t8
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  30:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -92(%ebp), %eax         #  33:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  34:     add    t12 <- t11, 4966
    movl    $4966, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  37:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  38:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  39:     add    t15 <- t14, 3071
    movl    $3071, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  41:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  42:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  43:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  44:     add    t18 <- t17, 75038
    movl    $75038, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  45:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  46:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  47:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  48:     add    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  49:     add    t22 <- v0, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $0, %eax                #  50:     assign @t22 <- 0
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 7 of <array 9 of <array 9 of <array 7 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
l_f1_1_if_true:
    jmp     l_f1_0                  #   2:     goto   0
l_f1_0:
    movl    $100, %eax              #   4:     assign v3 <- 100
    movb    %al, 20(%ebp)          
    jmp     l_f1_17                 #   5:     goto   17
    jmp     l_f1_12                 #   6:     goto   12
l_f1_17:
    jmp     l_f1_12                 #   8:     goto   12
l_f1_12:
    movl    $1, %eax                #  10:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_14                 #  11:     goto   14
    movl    $0, %eax                #  12:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_14:
    movzbl  -13(%ebp), %eax         #  14:     if     t2 = 0 goto 8
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_8                 
    jmp     l_f1_9                  #  15:     goto   9
l_f1_8:
    movl    $1, %eax                #  17:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_10                 #  18:     goto   10
l_f1_9:
    movl    $0, %eax                #  20:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_10:
    movzbl  -14(%ebp), %eax         #  22:     return t3
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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 5 of <array 1 of <array 8 of <array 6 of <int>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $10604, %eax            #   1:     return 10604
    jmp     l_f2_exit              
    jmp     l_f2_1                  #   2:     goto   1
l_f2_1:
l_f2_8_while_cond:
    movl    $51605, %eax            #   5:     return 51605
    jmp     l_f2_exit              
    movl    $98, %eax               #   6:     assign v1 <- 98
    movb    %al, -14(%ebp)         
l_f2_13_while_cond:
    jmp     l_f2_12                 #   8:     goto   12
    jmp     l_f2_13_while_cond      #   9:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_8_while_cond       #  11:     goto   8_while_cond

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 1 of <array 5 of <array 1 of <array 8 of <array 6 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    jmp     l_test_exit            
    movl    $12599, %eax            #   1:     if     12599 = 60047 goto 2_if_true
    movl    $60047, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $97, %eax               #   4:     assign v0 <- 97
    movb    %al, v0                
    movl    $97, %eax               #   5:     if     97 # 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_7_if_true       
    jmp     l_test_8_if_false       #   6:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   8:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_1                #  11:     goto   1
l_test_3_if_false:
l_test_1:
    leal    v1, %eax                #  14:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #  16:     call   t1 <- f2
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    jmp     l_test_10               #  17:     goto   10
l_test_10:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 1 of <array 5 of <array 1 of <array 8 of <array 6 of <int>>>>>>
    .long    5
    .long    1
    .long    5
    .long    1
    .long    8
    .long    6
    .skip  960








    # end of global data section
    #-----------------------------------------

    .end
##################################################
