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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 2 of <array 4 of <array 1 of <array 9 of <char>>>>>>> %ebp+8 ]

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
    movl    $99, %eax               #   0:     if     99 # 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   7:     if     1 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   8:     goto   7_if_false
l_f0_6_if_true:
    movl    $99, %eax               #  10:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_5                  #  11:     goto   5
l_f0_7_if_false:
l_f0_5:

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 10 of <array 4 of <array 7 of <array 2 of <char>>>>>>> %ebp+8 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f1_exit              
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
    movl    $98542, %eax            #   3:     assign v2 <- 98542
    movl    %eax, -20(%ebp)        
    movl    $38272, %eax            #   4:     if     38272 >= 35059 goto 9_if_true
    movl    $35059, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   5:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #   7:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $97, %eax               #  10:     return 97
    jmp     l_f1_exit              
    movl    $50750, %eax            #  11:     assign v2 <- 50750
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  12:     return 97
    jmp     l_f1_exit              
    movl    $97, %eax               #  13:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_5                  #  14:     goto   5
l_f1_5:
    jmp     l_f1_1                  #  16:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $98, %eax               #  19:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_16                 #  20:     goto   16
l_f1_16:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 1 of <array 2 of <array 4 of <array 1 of <array 9 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 5 of <array 9 of <array 8 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 8 of <array 1 of <array 8 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #   -132(%ebp)  96  [ $v3       <array 1 of <array 2 of <array 4 of <array 1 of <array 9 of <char>>>>>> %ebp-132 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $120, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $30, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-132(%ebp)           # local array 'v3': 5 dimensions
    movl    $1,-128(%ebp)           #   dimension 1: 1 elements
    movl    $2,-124(%ebp)           #   dimension 2: 2 elements
    movl    $4,-120(%ebp)           #   dimension 3: 4 elements
    movl    $1,-116(%ebp)           #   dimension 4: 1 elements
    movl    $9,-112(%ebp)           #   dimension 5: 9 elements

    # function body
    leal    -132(%ebp), %eax        #   0:     &()    t3 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   2:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    call    dummyINTfunc            #   3:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t6 <- t5, 52713
    movl    $52713, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     return t6
    jmp     l_f2_exit              
    movl    $98103, %eax            #   6:     sub    t7 <- 98103, 83678
    movl    $83678, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     add    t8 <- t7, 87455
    movl    $87455, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     return t8
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $120, %esp              # remove locals
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
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   3:     goto   6_while_cond
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    call    dummyBOOLfunc           #   6:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $76046, %eax            #   7:     param  0 <- 76046
    pushl   %eax                   
    call    WriteInt                #   8:     call   WriteInt
    addl    $4, %esp               
    movl    $62576, %eax            #   9:     if     62576 <= 54676 goto 14
    movl    $54676, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_14              
    jmp     l_test_15               #  10:     goto   15
l_test_14:
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_16               #  13:     goto   16
l_test_15:
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_16:
    movzbl  -14(%ebp), %eax         #  17:     assign v0 <- t1
    movb    %al, v0                
l_test_19_while_cond:
    movl    $65281, %eax            #  19:     if     65281 >= 19432 goto 20_while_body
    movl    $19432, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_20_while_body   
    jmp     l_test_18               #  20:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  22:     goto   19_while_cond
l_test_18:
    jmp     l_test_8                #  24:     goto   8
l_test_8:
    call    dummyBOOLfunc           #  26:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
