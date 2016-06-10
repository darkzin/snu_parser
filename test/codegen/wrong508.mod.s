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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -29(%ebp)   1  [ $v1       <bool> %ebp-29 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $16996, %eax            #   1:     if     16996 >= 54211 goto 4_if_true
    movl    $54211, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   2:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   4:     goto   3
l_f0_5_if_false:
l_f0_3:
    jmp     l_f0_9_if_false         #   7:     goto   9_if_false
    jmp     l_f0_7                  #   8:     goto   7
l_f0_9_if_false:
l_f0_7:
    movl    $97, %eax               #  11:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $0, %eax                #  15:     assign v1 <- 0
    movb    %al, -29(%ebp)         
l_f0_13_while_cond:
    movl    $96501, %eax            #  17:     sub    t5 <- 96501, 30662
    movl    $30662, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     add    t6 <- t5, 72254
    movl    $72254, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t7 <- t6, 30483
    movl    $30483, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     add    t8 <- t7, 35496
    movl    $35496, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $9712, %eax             #  21:     if     9712 <= t8 goto 14_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_14_while_body     
    jmp     l_f0_12                 #  22:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  24:     goto   13_while_cond
l_f0_12:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 5 of <array 9 of <array 9 of <array 4 of <char>>>>>>> %ebp+8 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]

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
l_f1_1_while_cond:
    movl    $15729, %eax            #   1:     div    t5 <- 15729, 69847
    movl    $69847, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t6 <- t5, 85613
    movl    $85613, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $40504, %eax            #   3:     if     40504 # t6 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    movl    $15791, %eax            #   6:     assign v1 <- 15791
    movl    %eax, -36(%ebp)        
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
    movl    $82632, %eax            #   9:     div    t7 <- 82632, 44880
    movl    $44880, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    call    ReadInt                 #  10:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  11:     mul    t9 <- t7, t8
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     return t9
    jmp     l_f1_exit              
    call    dummyProcedure          #  13:     call   dummyProcedure

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
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 7 of <array 8 of <array 4 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 6 of <array 5 of <array 8 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 9 of <array 7 of <array 10 of <array 5 of <bool>>>>>>> %ebp+16 ]

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
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 = 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    call    dummyBOOLfunc           #   4:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   8:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  10:     call   f0
    addl    $4, %esp               

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 9 of <array 7 of <array 10 of <array 5 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 6 of <array 5 of <array 8 of <array 9 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 7 of <array 8 of <array 4 of <array 4 of <char>>>>>>> %ebp-32 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $98, %eax               #   1:     assign v0 <- 98
    movb    %al, v0                
    movl    $86583, %eax            #   2:     sub    t0 <- 86583, 62689
    movl    $62689, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     assign v1 <- t0
    movl    %eax, v1               
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $92962, %eax            #   7:     div    t1 <- 92962, 56038
    movl    $56038, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     assign v1 <- t1
    movl    %eax, v1               
    leal    v4, %eax                #   9:     &()    t2 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  2 <- t2
    pushl   %eax                   
    leal    v3, %eax                #  11:     &()    t3 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  1 <- t3
    pushl   %eax                   
    leal    v2, %eax                #  13:     &()    t4 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  15:     call   f2
    addl    $12, %esp              

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 7 of <array 7 of <array 8 of <array 4 of <array 4 of <char>>>>>>
    .long    5
    .long    7
    .long    7
    .long    8
    .long    4
    .long    4
    .skip 6272
v3:                                 # <array 5 of <array 6 of <array 5 of <array 8 of <array 9 of <char>>>>>>
    .long    5
    .long    5
    .long    6
    .long    5
    .long    8
    .long    9
    .skip 10800
v4:                                 # <array 2 of <array 9 of <array 7 of <array 10 of <array 5 of <bool>>>>>>
    .long    5
    .long    2
    .long    9
    .long    7
    .long   10
    .long    5
    .skip 6300








    # end of global data section
    #-----------------------------------------

    .end
##################################################
