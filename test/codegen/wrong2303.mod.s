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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 19 of <array 4 of <array 22 of <array 3 of <array 99 of <bool>>>>>>> %ebp+12 ]

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
    movl    $97, %eax               #   0:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    call    dummyINTfunc            #   2:     call   t8 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   3:     call   t9 <- ReadInt
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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t9       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 88 of <array 79 of <array 15 of <array 42 of <array 43 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 18 of <array 59 of <array 19 of <array 46 of <array 100 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    jmp     l_f1_1                  #   0:     goto   1
    call    dummyBOOLfunc           #   1:     call   t8 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   2:     if     t8 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   3:     goto   2
l_f1_1:
    movl    $1, %eax                #   5:     assign t9 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t9 <- 0
    movb    %al, -16(%ebp)         
l_f1_3:
    movzbl  -16(%ebp), %eax         #  10:     return t9
    jmp     l_f1_exit              
l_f1_6_while_cond:
    jmp     l_f1_7_while_body       #  12:     goto   7_while_body
l_f1_7_while_body:
    movl    $97, %eax               #  14:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    movl    $1, %eax                #  16:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_6_while_cond       #  17:     goto   6_while_cond
    movl    $100, %eax              #  18:     if     100 <= 100 goto 16
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_16                
    jmp     l_f1_16                 #  19:     goto   16
    jmp     l_f1_16                 #  20:     goto   16
    jmp     l_f1_16                 #  21:     goto   16
    jmp     l_f1_17                 #  22:     goto   17
l_f1_16:
    movl    $1, %eax                #  24:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_18                 #  25:     goto   18
l_f1_17:
    movl    $0, %eax                #  27:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_18:
    movl    $1, %eax                #  29:     if     1 # t10 goto 12
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_12                
    jmp     l_f1_13                 #  30:     goto   13
l_f1_12:
    movl    $1, %eax                #  32:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_14                 #  33:     goto   14
l_f1_13:
    movl    $0, %eax                #  35:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_14:
    movzbl  -14(%ebp), %eax         #  37:     return t11
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
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    jmp     l_f2_3                  #   1:     goto   3
    jmp     l_f2_3                  #   2:     goto   3
    movl    $1, %eax                #   3:     assign t8 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_4                  #   4:     goto   4
l_f2_3:
    movl    $0, %eax                #   6:     assign t8 <- 0
    movb    %al, -13(%ebp)         
l_f2_4:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t8
    movb    %al, -21(%ebp)         
    movl    $58413, %eax            #   9:     sub    t9 <- 58413, 32099
    movl    $32099, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     assign v2 <- t9
    movl    %eax, -28(%ebp)        

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 19 of <array 4 of <array 22 of <array 3 of <array 99 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 19 of <array 4 of <array 22 of <array 3 of <array 99 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]

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
    movl    $54095, %eax            #   0:     assign v0 <- 54095
    movl    %eax, v0               
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_3_while_cond:
    movl    $99, %eax               #   3:     if     99 >= 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_4_while_body    
    jmp     l_test_2                #   4:     goto   2
l_test_4_while_body:
    leal    v2, %eax                #   6:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  1 <- t1
    pushl   %eax                   
    leal    v2, %eax                #   8:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  1 <- t2
    pushl   %eax                   
    movl    $100, %eax              #  10:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  11:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  12:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  13:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  14:     assign v1 <- t4
    movb    %al, v1                
    jmp     l_test_3_while_cond     #  15:     goto   3_while_cond
l_test_2:
l_test_8_while_cond:
    call    ReadInt                 #  18:     call   t5 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     add    t6 <- t5, 36877
    movl    $36877, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $98861, %eax            #  20:     if     98861 = t6 goto 9_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #  21:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  23:     goto   8_while_cond
l_test_7:
    call    dummyBOOLfunc           #  25:     call   t7 <- dummyBOOLfunc
    movb    %al, -37(%ebp)         

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 19 of <array 4 of <array 22 of <array 3 of <array 99 of <bool>>>>>>
    .long    5
    .long   19
    .long    4
    .long   22
    .long    3
    .long   99
    .skip 496584








    # end of global data section
    #-----------------------------------------

    .end
##################################################
