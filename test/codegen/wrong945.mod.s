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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
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
    movl    $50529, %eax            #   0:     if     50529 >= 29010 goto 1_if_true
    movl    $29010, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $0, %eax                #   3:     return 0
    jmp     l_f0_exit              
l_f0_6_while_cond:
    jmp     l_f0_5                  #   5:     goto   5
    jmp     l_f0_6_while_cond       #   6:     goto   6_while_cond
l_f0_5:
    movl    $0, %eax                #   8:     if     0 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_10                 #   9:     goto   10
l_f0_9:
    movl    $1, %eax                #  11:     assign t9 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_11                 #  12:     goto   11
l_f0_10:
    movl    $0, %eax                #  14:     assign t9 <- 0
    movb    %al, -14(%ebp)         
l_f0_11:
    movzbl  -14(%ebp), %eax         #  16:     return t9
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  17:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $99, %eax               #  20:     if     99 >= 97 goto 14
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_14                
    jmp     l_f0_15                 #  21:     goto   15
l_f0_14:
    movl    $1, %eax                #  23:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_16                 #  24:     goto   16
l_f0_15:
    movl    $0, %eax                #  26:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_16:
    movzbl  -13(%ebp), %eax         #  28:     return t10
    jmp     l_f0_exit              
    movl    $99, %eax               #  29:     assign v2 <- 99
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 9 of <array 7 of <array 9 of <array 1 of <int>>>>>>> %ebp+8 ]
    #    -48(%ebp)   4  [ $v2       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $72053, %eax            #   0:     add    t9 <- 72053, 84638
    movl    $84638, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   1:     add    t10 <- t9, 15721
    movl    $15721, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     return t10
    jmp     l_f1_exit              
    movl    $15097, %eax            #   3:     div    t11 <- 15097, 26746
    movl    $26746, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t12 <- t11, 38401
    movl    $38401, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     sub    t13 <- t12, 92607
    movl    $92607, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     return t13
    jmp     l_f1_exit              
    movl    $49251, %eax            #   7:     mul    t14 <- 49251, 168
    movl    $168, %ebx             
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     mul    t15 <- t14, 64411
    movl    $64411, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $23944, %eax            #   9:     add    t16 <- 23944, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     assign v2 <- t16
    movl    %eax, -48(%ebp)        

l_f1_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 2 of <array 3 of <array 4 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 2 of <array 8 of <array 8 of <array 9 of <int>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   1:     return t9
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   2:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     return t10
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   4:     call   t11 <- dummyCHARfunc
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t7       <bool> %ebp-34 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_2                #   1:     goto   2
    jmp     l_test_3                #   2:     goto   3
l_test_2:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_4                #   5:     goto   4
l_test_3:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    movl    $56332, %eax            #  10:     add    t2 <- 56332, 78184
    movl    $78184, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t3 <- t2, 18801
    movl    $18801, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t4 <- t3, 97370
    movl    $97370, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     sub    t5 <- t4, 49712
    movl    $49712, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #  15:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #  16:     call   t6 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  17:     if     t6 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9               
    jmp     l_test_9                #  18:     goto   9
    jmp     l_test_10               #  19:     goto   10
l_test_9:
    movl    $1, %eax                #  21:     assign t7 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_test_11               #  22:     goto   11
l_test_10:
    movl    $0, %eax                #  24:     assign t7 <- 0
    movb    %al, -34(%ebp)         
l_test_11:
    movzbl  -34(%ebp), %eax         #  26:     assign v0 <- t7
    movb    %al, v0                
    call    ReadInt                 #  27:     call   t8 <- ReadInt
    movl    %eax, -40(%ebp)        

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
