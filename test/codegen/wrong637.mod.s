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
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $v1       <bool> %ebp-41 ]

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
    movl    $66251, %eax            #   0:     if     66251 = 52424 goto 1_if_true
    movl    $52424, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    WriteLn                 #   3:     call   WriteLn
l_f0_6_while_cond:
    movl    $98, %eax               #   5:     if     98 <= 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_7_while_body      
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_while_body:
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #   9:     goto   10_while_cond
    jmp     l_f0_6_while_cond       #  10:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $9321, %eax             #  15:     add    t5 <- 9321, 80193
    movl    $80193, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     add    t6 <- t5, 17448
    movl    $17448, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     add    t7 <- t6, 71467
    movl    $71467, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     add    t8 <- t7, 34218
    movl    $34218, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     sub    t9 <- t8, 75986
    movl    $75986, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  20:     add    t10 <- t9, 51272
    movl    $51272, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     add    t11 <- t10, 13696
    movl    $13696, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     return t11
    jmp     l_f0_exit              
l_f0_14_while_cond:
    movl    $6898, %eax             #  24:     if     6898 <= 5882 goto 15_while_body
    movl    $5882, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f0_15_while_body     
    jmp     l_f0_13                 #  25:     goto   13
l_f0_15_while_body:
    movl    $0, %eax                #  27:     assign v1 <- 0
    movb    %al, -41(%ebp)         
    jmp     l_f0_14_while_cond      #  28:     goto   14_while_cond
l_f0_13:

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    jmp     l_f1_exit              
    movl    $98, %eax               #   1:     assign v1 <- 98
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 1 of <array 4 of <array 5 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 4 of <array 4 of <array 8 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #    -60(%ebp)   4  [ $v4       <int> %ebp-60 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    movl    $29370, %eax            #   2:     mul    t5 <- 29370, 26693
    movl    $26693, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     div    t6 <- t5, 87990
    movl    $87990, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     sub    t7 <- t6, 57099
    movl    $57099, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   5:     add    t8 <- t7, 71060
    movl    $71060, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   6:     sub    t9 <- t8, 76083
    movl    $76083, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   7:     add    t10 <- t9, 30756
    movl    $30756, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     sub    t11 <- t10, 58891
    movl    $58891, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     assign v4 <- t11
    movl    %eax, -60(%ebp)        
l_f2_3_while_cond:
    call    f0                      #  11:     call   t12 <- f0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     mul    t13 <- t12, 41529
    movl    $41529, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     div    t14 <- t13, 12268
    movl    $12268, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     div    t15 <- t14, 66771
    movl    $66771, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     if     t15 > 19612 goto 4_while_body
    movl    $19612, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_4_while_body      
    jmp     l_f2_2                  #  16:     goto   2
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #  18:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_1_if_true        #   1:     goto   1_if_true
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    call    dummyINTfunc            #   4:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   5:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
l_test_9_while_cond:
    movl    $98, %eax               #  10:     if     98 < 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    call    dummyINTfunc            #  13:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  15:     goto   14_while_cond
    call    ReadInt                 #  16:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
l_test_18_while_cond:
    movl    $79746, %eax            #  18:     if     79746 < 51776 goto 19_while_body
    movl    $51776, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_19_while_body   
    jmp     l_test_17               #  19:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  21:     goto   18_while_cond
l_test_17:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $97, %eax               #  25:     if     97 <= 99 goto 24_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_24_if_true      
    jmp     l_test_25_if_false      #  26:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  28:     goto   23
l_test_25_if_false:
l_test_23:
    movl    $75274, %eax            #  31:     assign v0 <- 75274
    movl    %eax, v0               
    jmp     l_test_9_while_cond     #  32:     goto   9_while_cond
l_test_8:
    movl    $65342, %eax            #  34:     param  0 <- 65342
    pushl   %eax                   
    call    WriteInt                #  35:     call   WriteInt
    addl    $4, %esp               
    call    ReadInt                 #  36:     call   t4 <- ReadInt
    movl    %eax, -32(%ebp)        
l_test_31_while_cond:
    jmp     l_test_30               #  38:     goto   30
    jmp     l_test_30               #  39:     goto   30
    jmp     l_test_30               #  40:     goto   30
    jmp     l_test_30               #  41:     goto   30
    jmp     l_test_31_while_cond    #  42:     goto   31_while_cond
l_test_30:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
