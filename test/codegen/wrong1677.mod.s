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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    movl    $98, %eax               #   0:     return 98
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_3_while_cond:
    movl    $97, %eax               #   3:     if     97 < 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_4_while_body      
    jmp     l_f0_2                  #   4:     goto   2
l_f0_4_while_body:
    movl    $100, %eax              #   6:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   7:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_3_while_cond       #   8:     goto   3_while_cond
l_f0_2:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $v0       <char> %ebp-30 ]

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
l_f1_1_while_cond:
    jmp     l_f1_9                  #   1:     goto   9
    jmp     l_f1_9                  #   2:     goto   9
    jmp     l_f1_2_while_body       #   3:     goto   2_while_body
l_f1_9:
    jmp     l_f1_2_while_body       #   5:     goto   2_while_body
    jmp     l_f1_2_while_body       #   6:     goto   2_while_body
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
    movl    $98, %eax               #   9:     assign v0 <- 98
    movb    %al, -30(%ebp)         
l_f1_14_while_cond:
    movl    $66124, %eax            #  11:     div    t4 <- 66124, 38482
    movl    $38482, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     mul    t5 <- t4, 97360
    movl    $97360, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     div    t6 <- t5, 90339
    movl    $90339, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     mul    t7 <- t6, 10403
    movl    $10403, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $29079, %eax            #  15:     if     29079 < t7 goto 15_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  16:     goto   13
l_f1_15_while_body:
    call    dummyBOOLfunc           #  18:     call   t8 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_f1_14_while_cond      #  19:     goto   14_while_cond
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 48 of <array 95 of <array 50 of <array 76 of <array 80 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -25(%ebp)   1  [ $v3       <char> %ebp-25 ]

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
    movl    $44443, %eax            #   0:     sub    t4 <- 44443, 61095
    movl    $61095, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $23367, %eax            #   1:     div    t5 <- 23367, 33811
    movl    $33811, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t4 >= t5 goto 1_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   3:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_5_while_cond:
    jmp     l_f2_4                  #   9:     goto   4
    movl    $98, %eax               #  10:     assign v3 <- 98
    movb    %al, -25(%ebp)         
    call    ReadInt                 #  11:     call   t6 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f2_5_while_cond       #  12:     goto   5_while_cond
l_f2_4:
    movl    $99, %eax               #  14:     assign v3 <- 99
    movb    %al, -25(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]

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
    movl    $97, %eax               #   0:     param  3 <- 97
    pushl   %eax                   
    movl    $44863, %eax            #   1:     param  2 <- 44863
    pushl   %eax                   
    movl    $97, %eax               #   2:     param  1 <- 97
    pushl   %eax                   
    movl    $0, %eax                #   3:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #   4:     call   t0 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     if     t0 <= t1 goto 1_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   7:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
l_test_6_while_cond:
    movl    $100, %eax              #  14:     if     100 < 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_7_while_body    
    jmp     l_test_5                #  15:     goto   5
l_test_7_while_body:
    movl    $91347, %eax            #  17:     if     91347 <= 49865 goto 10
    movl    $49865, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10              
    jmp     l_test_11               #  18:     goto   11
l_test_10:
    movl    $1, %eax                #  20:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_12               #  21:     goto   12
l_test_11:
    movl    $0, %eax                #  23:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_12:
    movzbl  -15(%ebp), %eax         #  25:     assign v0 <- t2
    movb    %al, v0                
    movl    $100, %eax              #  26:     assign v1 <- 100
    movb    %al, v1                
    movl    $100, %eax              #  27:     if     100 # 97 goto 16
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_16              
    jmp     l_test_17               #  28:     goto   17
l_test_16:
    movl    $1, %eax                #  30:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_18               #  31:     goto   18
l_test_17:
    movl    $0, %eax                #  33:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_18:
    movzbl  -16(%ebp), %eax         #  35:     assign v0 <- t3
    movb    %al, v0                
    jmp     l_test_6_while_cond     #  36:     goto   6_while_cond
l_test_5:

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
