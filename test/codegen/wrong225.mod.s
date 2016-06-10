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
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 4 of <array 10 of <array 3 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 6 of <array 10 of <array 3 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 5 of <array 9 of <array 5 of <array 3 of <array 10 of <int>>>>>>> %ebp+16 ]
    #    -21(%ebp)   1  [ $v5       <bool> %ebp-21 ]

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
    movl    $57643, %eax            #   0:     mul    t10 <- 57643, 11806
    movl    $11806, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t10
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $82883, %eax            #   3:     add    t11 <- 82883, 25074
    movl    $25074, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t11 = 40818 goto 3_while_body
    movl    $40818, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
l_f0_6_while_cond:
    movl    $98, %eax               #   8:     if     98 > 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_7_while_body      
    jmp     l_f0_5                  #   9:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  11:     goto   6_while_cond
l_f0_5:
    movl    $21816, %eax            #  13:     return 21816
    jmp     l_f0_exit              
    movl    $0, %eax                #  14:     assign v5 <- 0
    movb    %al, -21(%ebp)         
    jmp     l_f0_2_while_cond       #  15:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_13_if_false        #  17:     goto   13_if_false
    jmp     l_f0_13_if_false        #  18:     goto   13_if_false
    jmp     l_f0_11                 #  19:     goto   11
l_f0_13_if_false:
l_f0_11:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 10 of <array 10 of <array 7 of <array 9 of <int>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t10
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
l_f1_2_while_cond:
    call    dummyCHARfunc           #   4:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     if     t11 >= 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_7_if_false         #  10:     goto   7_if_false
    call    dummyBOOLfunc           #  11:     call   t12 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_5                  #  12:     goto   5
l_f1_7_if_false:
l_f1_5:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 5 of <array 7 of <array 5 of <array 6 of <char>>>>>>> %ebp+8 ]

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
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   1:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]

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
    movl    $49153, %eax            #   0:     add    t0 <- 49153, 65067
    movl    $65067, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t0 = 78942 goto 1
    movl    $78942, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    movl    $97, %eax               #  10:     assign v1 <- 97
    movb    %al, v1                
    movl    $12033, %eax            #  11:     if     12033 > 24046 goto 10_if_true
    movl    $24046, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_10_if_true      
    jmp     l_test_11_if_false      #  12:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  14:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_5                #  17:     goto   5
l_test_5:
    movl    $2615, %eax             #  19:     mul    t2 <- 2615, 55358
    movl    $55358, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     div    t3 <- t2, 32877
    movl    $32877, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     mul    t4 <- t3, 38631
    movl    $38631, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     sub    t5 <- t4, 78565
    movl    $78565, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     add    t6 <- t5, 13600
    movl    $13600, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     add    t7 <- t6, 37693
    movl    $37693, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #  26:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_exit            
    movl    $37631, %eax            #  28:     add    t8 <- 37631, 8856
    movl    $8856, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     add    t9 <- t8, 55272
    movl    $55272, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  30:     assign v2 <- t9
    movl    %eax, v2               

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
