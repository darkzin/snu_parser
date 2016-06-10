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
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    movl    $30650, %eax            #   0:     div    t5 <- 30650, 42210
    movl    $42210, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t6 <- t5, 20640
    movl    $20640, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v2 <- t6
    movl    %eax, 12(%ebp)         
    jmp     l_f0_exit              
    call    ReadInt                 #   4:     call   t7 <- ReadInt
    movl    %eax, -24(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t15      <bool> %ebp-30 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $v1       <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $v2       <char> %ebp-57 ]

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
    movl    $81643, %eax            #   0:     mul    t5 <- 81643, 83322
    movl    $83322, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   1:     div    t6 <- t5, 97887
    movl    $97887, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   2:     mul    t7 <- t6, 57231
    movl    $57231, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   3:     div    t8 <- t7, 13958
    movl    $13958, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   4:     div    t9 <- t8, 8691
    movl    $8691, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   5:     div    t10 <- t9, 66957
    movl    $66957, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     div    t11 <- t10, 15533
    movl    $15533, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     div    t12 <- t11, 54830
    movl    $54830, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     mul    t13 <- t12, 57939
    movl    $57939, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     assign v1 <- t13
    movl    %eax, -56(%ebp)        
l_f1_2_while_cond:
    call    dummyBOOLfunc           #  11:     call   t14 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  12:     if     t14 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #  13:     goto   1
l_f1_3_while_body:
    jmp     l_f1_6_if_false         #  15:     goto   6_if_false
    jmp     l_f1_4                  #  16:     goto   4
l_f1_6_if_false:
l_f1_4:
    call    dummyBOOLfunc           #  19:     call   t15 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         
    jmp     l_f1_2_while_cond       #  20:     goto   2_while_cond
l_f1_1:
    movl    $99, %eax               #  22:     assign v2 <- 99
    movb    %al, -57(%ebp)         

l_f1_exit:
    # epilogue
    addl    $48, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 1 of <array 9 of <array 4 of <array 3 of <int>>>>>>> %ebp+8 ]
    #    -41(%ebp)   1  [ $v2       <bool> %ebp-41 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $13725, %eax            #   2:     sub    t7 <- 13725, 56512
    movl    $56512, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     sub    t8 <- t7, 36144
    movl    $36144, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     sub    t9 <- t8, 13058
    movl    $13058, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     sub    t10 <- t9, 67644
    movl    $67644, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $87459, %eax            #   6:     if     87459 > t10 goto 3
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_3                 
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $1, %eax                #   9:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_5                  #  10:     goto   5
l_f2_4:
    movl    $0, %eax                #  12:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_5:
    movzbl  -17(%ebp), %eax         #  14:     assign v2 <- t11
    movb    %al, -41(%ebp)         

l_f2_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <bool> %ebp-20 ]

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
l_test_1_while_cond:
    movl    $10659, %eax            #   1:     if     10659 > 75398 goto 2_while_body
    movl    $75398, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $100, %eax              #   4:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               
    movl    $15996, %eax            #   6:     assign v0 <- 15996
    movl    %eax, v0               
    movl    $6835, %eax             #   7:     assign v0 <- 6835
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
l_test_8_while_cond:
    jmp     l_test_7                #  11:     goto   7
l_test_12_while_cond:
    movl    $99, %eax               #  13:     if     99 <= 98 goto 13_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_13_while_body   
    jmp     l_test_11               #  14:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  16:     goto   12_while_cond
l_test_11:
    leal    _str_1, %eax            #  18:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #  20:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_8_while_cond     #  21:     goto   8_while_cond
l_test_7:
l_test_17_while_cond:
    jmp     l_test_16               #  24:     goto   16
    movl    $97, %eax               #  25:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_exit            
    call    dummyCHARfunc           #  27:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
l_test_23_while_cond:
    jmp     l_test_23_while_cond    #  29:     goto   23_while_cond
    movl    $99, %eax               #  30:     if     99 > 98 goto 26
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_26              
    jmp     l_test_27               #  31:     goto   27
l_test_26:
    movl    $1, %eax                #  33:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_28               #  34:     goto   28
l_test_27:
    movl    $0, %eax                #  36:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_28:
    movzbl  -18(%ebp), %eax         #  38:     assign v2 <- t2
    movb    %al, v2                
    movl    $99, %eax               #  39:     assign v1 <- 99
    movb    %al, v1                
    call    dummyBOOLfunc           #  40:     call   t3 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    call    dummyBOOLfunc           #  41:     call   t4 <- dummyBOOLfunc
    movb    %al, -20(%ebp)         
    jmp     l_test_17_while_cond    #  42:     goto   17_while_cond
l_test_16:
    jmp     l_test_exit            

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
