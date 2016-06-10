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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t4       <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t5       <char> %ebp-66 ]
    #    -67(%ebp)   1  [ $t6       <char> %ebp-67 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 57 of <array 10 of <array 14 of <array 86 of <array 25 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 39 of <array 18 of <array 15 of <array 2 of <array 66 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <bool> %ebp+20 ]

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
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -65(%ebp)         
    movzbl  -65(%ebp), %eax         #   2:     if     t4 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $99, %eax               #   5:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               
    movl    $0, %eax                #   7:     assign v5 <- 0
    movb    %al, 20(%ebp)          
    jmp     l_f0_1_while_cond       #   8:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  10:     call   t5 <- dummyCHARfunc
    movb    %al, -66(%ebp)         
    movzbl  -66(%ebp), %eax         #  11:     assign v3 <- t5
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
    movb    %al, -67(%ebp)         
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $88115, %eax            #  16:     mul    t8 <- 88115, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  17:     add    t9 <- t8, 68615
    movl    $68615, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  21:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     add    t12 <- t11, 23780
    movl    $23780, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  26:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     add    t15 <- t14, 92065
    movl    $92065, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  31:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  32:     add    t18 <- t17, 89587
    movl    $89587, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  33:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  34:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  35:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  36:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  37:     add    t22 <- v2, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -67(%ebp), %eax         #  38:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_exit              
    movl    $1, %eax                #   2:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_8                  #   3:     goto   8
    movl    $0, %eax                #   4:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_8:
    movzbl  -14(%ebp), %eax         #   6:     if     t5 = 0 goto 3_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   7:     goto   4_if_false
l_f1_3_if_true:
    jmp     l_f1_exit              
    movl    $73439, %eax            #  10:     param  0 <- 73439
    pushl   %eax                   
    call    WriteInt                #  11:     call   WriteInt
    addl    $4, %esp               
l_f1_15_while_cond:
    jmp     l_f1_14                 #  13:     goto   14
    jmp     l_f1_15_while_cond      #  14:     goto   15_while_cond
l_f1_14:
    movl    $6648, %eax             #  16:     assign v2 <- 6648
    movl    %eax, -24(%ebp)        
    call    ReadInt                 #  17:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f1_2                  #  18:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 82 of <array 41 of <array 39 of <array 37 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 78 of <array 42 of <array 60 of <array 83 of <array 86 of <int>>>>>>> %ebp+12 ]
    #    -29(%ebp)   1  [ $v4       <bool> %ebp-29 ]

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
    movl    $18620, %eax            #   0:     sub    t4 <- 18620, 81459
    movl    $81459, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $70054, %eax            #   1:     sub    t5 <- 70054, 95948
    movl    $95948, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t4 = t5 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #  10:     return t6
    jmp     l_f2_exit              
    movl    $42890, %eax            #  11:     if     42890 <= 35803 goto 6
    movl    $35803, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_6                 
    jmp     l_f2_7                  #  12:     goto   7
l_f2_6:
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_8                  #  15:     goto   8
l_f2_7:
    movl    $0, %eax                #  17:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f2_8:
    movzbl  -22(%ebp), %eax         #  19:     assign v4 <- t7
    movb    %al, -29(%ebp)         
    call    dummyINTfunc            #  20:     call   t8 <- dummyINTfunc
    movl    %eax, -28(%ebp)        

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]

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
    movl    $72548, %eax            #   1:     if     72548 > 42423 goto 2
    movl    $42423, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_2               
    jmp     l_test_3                #   2:     goto   3
l_test_2:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   5:     goto   4
l_test_3:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t0
    movb    %al, v1                
    movl    $4568, %eax             #  10:     if     4568 # 64732 goto 7
    movl    $64732, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_7               
    jmp     l_test_8                #  11:     goto   8
l_test_7:
    movl    $1, %eax                #  13:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_9                #  14:     goto   9
l_test_8:
    movl    $0, %eax                #  16:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_9:
    movzbl  -14(%ebp), %eax         #  18:     assign v1 <- t1
    movb    %al, v1                
l_test_12_while_cond:
    movl    $50656, %eax            #  20:     if     50656 < 46218 goto 13_while_body
    movl    $46218, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_13_while_body   
    jmp     l_test_11               #  21:     goto   11
l_test_13_while_body:
    jmp     l_test_exit            
    jmp     l_test_12_while_cond    #  24:     goto   12_while_cond
l_test_11:
    call    dummyCHARfunc           #  26:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  27:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #  28:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #  29:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         

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
