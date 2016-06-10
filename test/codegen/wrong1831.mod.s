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
    #    -29(%ebp)   1  [ $t14      <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -52(%ebp)   4  [ $v1       <int> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t6 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    $20300, %eax            #   1:     sub    t7 <- 20300, 63403
    movl    $63403, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   2:     sub    t8 <- t7, 60026
    movl    $60026, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   3:     sub    t9 <- t8, 5758
    movl    $5758, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   4:     add    t10 <- t9, 10518
    movl    $10518, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     sub    t11 <- t10, 68429
    movl    $68429, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     add    t12 <- t11, 17774
    movl    $17774, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     sub    t13 <- t12, 87523
    movl    $87523, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     assign v1 <- t13
    movl    %eax, -52(%ebp)        
    movl    $97, %eax               #   9:     if     97 > 100 goto 3
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_3                 
    jmp     l_f0_4                  #  10:     goto   4
l_f0_3:
    movl    $1, %eax                #  12:     assign t14 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_5                  #  13:     goto   5
l_f0_4:
    movl    $0, %eax                #  15:     assign t14 <- 0
    movb    %al, -29(%ebp)         
l_f0_5:
    movzbl  -29(%ebp), %eax         #  17:     assign v0 <- t14
    movb    %al, 8(%ebp)           

l_f0_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -33(%ebp)   1  [ $v1       <char> %ebp-33 ]

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
    movl    $98, %eax               #   0:     if     98 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_7                  #   7:     goto   7
l_f1_7:
    movl    $97, %eax               #   9:     assign v1 <- 97
    movb    %al, -33(%ebp)         
    movl    $41, %eax               #  10:     if     41 <= 23809 goto 12_if_true
    movl    $23809, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  11:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  13:     goto   11
l_f1_13_if_false:
l_f1_11:
    jmp     l_f1_0                  #  16:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    ReadInt                 #  19:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     sub    t7 <- t6, 17972
    movl    $17972, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     add    t8 <- t7, 34608
    movl    $34608, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     sub    t9 <- t8, 31349
    movl    $31349, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     add    t10 <- t9, 91961
    movl    $91961, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  24:     return t10
    jmp     l_f1_exit              
    jmp     l_f1_17_if_true         #  25:     goto   17_if_true
    jmp     l_f1_17_if_true         #  26:     goto   17_if_true
    jmp     l_f1_17_if_true         #  27:     goto   17_if_true
    jmp     l_f1_18_if_false        #  28:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  30:     goto   16
l_f1_18_if_false:
l_f1_16:

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 79 of <array 82 of <array 57 of <array 99 of <array 61 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 82 of <array 47 of <array 35 of <array 83 of <array 8 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 57 of <array 100 of <array 77 of <array 99 of <array 3 of <bool>>>>>>> %ebp+20 ]

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
    call    WriteLn                 #   0:     call   WriteLn
l_f2_2_while_cond:
    movl    $97, %eax               #   2:     if     97 >= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    movl    $62703, %eax            #   6:     if     62703 <= 17855 goto 7_while_body
    movl    $17855, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_7_while_body      
    jmp     l_f2_5                  #   7:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   9:     goto   6_while_cond
l_f2_5:
    movl    $99, %eax               #  11:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #  12:     goto   2_while_cond
l_f2_1:
    call    dummyINTfunc            #  14:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 57 of <array 100 of <array 77 of <array 99 of <array 3 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 82 of <array 47 of <array 35 of <array 83 of <array 8 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 79 of <array 82 of <array 57 of <array 99 of <array 61 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    movl    $0, %eax                #   2:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_5_if_false       #   3:     goto   5_if_false
    leal    v3, %eax                #   4:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  3 <- t1
    pushl   %eax                   
    leal    v2, %eax                #   6:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     param  2 <- t2
    pushl   %eax                   
    leal    v1, %eax                #   8:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     param  1 <- t3
    pushl   %eax                   
    movl    $98, %eax               #  10:     param  0 <- 98
    pushl   %eax                   
    call    f2                      #  11:     call   t4 <- f2
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movl    $98, %eax               #  12:     if     98 < 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_8_if_true       
    jmp     l_test_9_if_false       #  13:     goto   9_if_false
l_test_8_if_true:
    call    dummyCHARfunc           #  15:     call   t5 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    jmp     l_test_7                #  16:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_3                #  19:     goto   3
l_test_5_if_false:
l_test_3:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 79 of <array 82 of <array 57 of <array 99 of <array 61 of <char>>>>>>
    .long    5
    .long   79
    .long   82
    .long   57
    .long   99
    .long   61
    .skip -2065090702
    .align   4
v2:                                 # <array 82 of <array 47 of <array 35 of <array 83 of <array 8 of <bool>>>>>>
    .long    5
    .long   82
    .long   47
    .long   35
    .long   83
    .long    8
    .skip 89566960
v3:                                 # <array 57 of <array 100 of <array 77 of <array 99 of <array 3 of <bool>>>>>>
    .long    5
    .long   57
    .long  100
    .long   77
    .long   99
    .long    3
    .skip 130353300








    # end of global data section
    #-----------------------------------------

    .end
##################################################
