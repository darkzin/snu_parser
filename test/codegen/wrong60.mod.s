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
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v4       <bool> %ebp-25 ]

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
l_f0_1_while_cond:
    movl    $56853, %eax            #   1:     div    t5 <- 56853, 58102
    movl    $58102, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     return t5
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_5_while_cond:
    movl    $97, %eax               #   5:     if     97 # 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_6_while_body      
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_while_body:
    jmp     l_f0_10_if_false        #   8:     goto   10_if_false
    jmp     l_f0_8                  #   9:     goto   8
l_f0_10_if_false:
l_f0_8:
    movl    $57060, %eax            #  12:     return 57060
    jmp     l_f0_exit              
    movl    $7456, %eax             #  13:     assign v3 <- 7456
    movl    %eax, -24(%ebp)        
    movl    $1, %eax                #  14:     assign v4 <- 1
    movb    %al, -25(%ebp)         
l_f0_15_while_cond:
    movl    $0, %eax                #  16:     if     0 = 0 goto 16_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_16_while_body     
    jmp     l_f0_14                 #  17:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  19:     goto   15_while_cond
l_f0_14:
    call    dummyCHARfunc           #  21:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_5_while_cond       #  22:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_24                 #  24:     goto   24
l_f0_24:
    jmp     l_f0_21                 #  26:     goto   21
    movl    $1, %eax                #  27:     assign t7 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_22                 #  28:     goto   22
l_f0_21:
    movl    $0, %eax                #  30:     assign t7 <- 0
    movb    %al, -18(%ebp)         
l_f0_22:
    movzbl  -18(%ebp), %eax         #  32:     assign v4 <- t7
    movb    %al, -25(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_5_while_cond:
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t6 # 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_6_while_body      
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_1                  #   8:     goto   1
l_f1_1:
l_f1_9_while_cond:
    call    dummyCHARfunc           #  11:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #  12:     if     98 # t7 goto 10_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_10_while_body     
    jmp     l_f1_8                  #  13:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  15:     goto   9_while_cond
l_f1_8:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 8 of <array 10 of <array 1 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 3 of <array 1 of <array 2 of <array 6 of <int>>>>>>> %ebp+12 ]
    #    -36(%ebp)   4  [ $v4       <int> %ebp-36 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    movl    $38673, %eax            #   2:     sub    t5 <- 38673, 14838
    movl    $14838, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t6 <- t5, 6336
    movl    $6336, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t7 <- t6, 73961
    movl    $73961, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
l_f2_5_while_cond:
    jmp     l_f2_4                  #   9:     goto   4
    movl    $54887, %eax            #  10:     assign v4 <- 54887
    movl    %eax, -36(%ebp)        
    call    dummyBOOLfunc           #  11:     call   t8 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_f2_5_while_cond       #  12:     goto   5_while_cond
l_f2_4:
l_f2_10_while_cond:
    movl    $63923, %eax            #  15:     add    t9 <- 63923, 43678
    movl    $43678, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $21384, %eax            #  16:     if     21384 >= t9 goto 11_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_11_while_body     
    jmp     l_f2_9                  #  17:     goto   9
l_f2_11_while_body:
l_f2_14_while_cond:
    movl    $28621, %eax            #  20:     if     28621 <= 71624 goto 15_while_body
    movl    $71624, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_15_while_body     
    jmp     l_f2_13                 #  21:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  23:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_10_while_cond      #  25:     goto   10_while_cond
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]

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
    movl    $0, %eax                #   0:     if     0 = 0 goto 1
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    movl    $98, %eax               #   9:     if     98 <= 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_6_if_true       
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
l_test_6_if_true:
l_test_10_while_cond:
    jmp     l_test_9                #  13:     goto   9
    jmp     l_test_10_while_cond    #  14:     goto   10_while_cond
l_test_9:
    call    dummyCHARfunc           #  16:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $24551, %eax            #  17:     if     24551 < 17990 goto 14
    movl    $17990, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_14              
    jmp     l_test_15               #  18:     goto   15
l_test_14:
    movl    $1, %eax                #  20:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_16               #  21:     goto   16
l_test_15:
    movl    $0, %eax                #  23:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_16:
    movzbl  -15(%ebp), %eax         #  25:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_5                #  26:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $98, %eax               #  29:     assign v1 <- 98
    movb    %al, v1                
    call    dummyCHARfunc           #  30:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  31:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_exit            
l_test_22_while_cond:
    call    dummyBOOLfunc           #  34:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  35:     if     t4 = 1 goto 24
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_24              
    jmp     l_test_21               #  36:     goto   21
l_test_24:
    jmp     l_test_21               #  38:     goto   21
    jmp     l_test_22_while_cond    #  39:     goto   22_while_cond
l_test_21:

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
