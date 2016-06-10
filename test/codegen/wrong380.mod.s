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
    #    -53(%ebp)   1  [ $t20      <bool> %ebp-53 ]
    #    -54(%ebp)   1  [ $t3       <char> %ebp-54 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 6 of <array 7 of <array 6 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 5 of <array 7 of <array 5 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 4 of <array 4 of <array 5 of <array 10 of <array 7 of <char>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -54(%ebp)         
    movzbl  -54(%ebp), %eax         #   2:     if     t3 # 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
l_f0_5_while_cond:
    movl    $17757, %eax            #   8:     if     17757 = 13100 goto 6_while_body
    movl    $13100, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_6_while_body      
    jmp     l_f0_4                  #   9:     goto   4
l_f0_6_while_body:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $39764, %eax            #  14:     mul    t5 <- 39764, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  15:     add    t6 <- t5, 37752
    movl    $37752, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  19:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  20:     add    t9 <- t8, 62529
    movl    $62529, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  24:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     add    t12 <- t11, 15090
    movl    $15090, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  29:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     add    t15 <- t14, 7980
    movl    $7980, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     mul    t16 <- t15, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  32:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  33:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  34:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  35:     add    t19 <- v2, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $70866, %eax            #  36:     assign @t19 <- 70866
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $100, %eax              #  37:     if     100 # 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  38:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  40:     goto   9
l_f0_11_if_false:
l_f0_9:
l_f0_14_while_cond:
    jmp     l_f0_13                 #  44:     goto   13
    jmp     l_f0_14_while_cond      #  45:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_5_while_cond       #  47:     goto   5_while_cond
l_f0_4:
    movl    $97, %eax               #  49:     if     97 > 100 goto 17
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_17                
    jmp     l_f0_18                 #  50:     goto   18
l_f0_17:
    movl    $1, %eax                #  52:     assign t20 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f0_19                 #  53:     goto   19
l_f0_18:
    movl    $0, %eax                #  55:     assign t20 <- 0
    movb    %al, -53(%ebp)         
l_f0_19:
    movzbl  -53(%ebp), %eax         #  57:     return t20
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $68, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    jmp     l_f1_2                  #   1:     goto   2
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t3 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   4:     goto   2
l_f1_1:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #  11:     return t4
    jmp     l_f1_exit              
    movl    $100, %eax              #  12:     if     100 = 100 goto 13
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_13                
    jmp     l_f1_11_if_false        #  13:     goto   11_if_false
l_f1_13:
    jmp     l_f1_11_if_false        #  15:     goto   11_if_false
    jmp     l_f1_9                  #  16:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $97, %eax               #  19:     assign v2 <- 97
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 7 of <array 5 of <array 10 of <array 6 of <int>>>>>>> %ebp+12 ]

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
    movl    $0, %eax                #   0:     assign v2 <- 0
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_4                  #   2:     goto   4
    call    dummyBOOLfunc           #   3:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     if     t4 = 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3                 
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_5                  #   8:     goto   5
l_f2_4:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f2_5:
    movzbl  -15(%ebp), %eax         #  12:     return t5
    jmp     l_f2_exit              

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, v0                
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 <= 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_5               
    jmp     l_test_6                #   3:     goto   6
l_test_5:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_7                #   6:     goto   7
l_test_6:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_7:
    movzbl  -14(%ebp), %eax         #  10:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_0                #  11:     goto   0
l_test_0:
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            
    movl    $99, %eax               #  15:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_exit            
l_test_14_while_cond:
    movl    $100, %eax              #  18:     if     100 < 99 goto 15_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  19:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  21:     goto   14_while_cond
l_test_13:

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
