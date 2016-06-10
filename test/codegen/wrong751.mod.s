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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 10 of <array 8 of <array 9 of <array 3 of <char>>>>>>> %ebp+8 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t7 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_exit              
    movl    $98, %eax               #   6:     if     98 > 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   7:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   9:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
l_f0_0:
l_f0_9_while_cond:
    jmp     l_f0_8                  #  15:     goto   8
    jmp     l_f0_9_while_cond       #  16:     goto   9_while_cond
l_f0_8:
    call    dummyBOOLfunc           #  18:     call   t8 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  19:     if     t8 = 1 goto 13
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_13                
    jmp     l_f0_14                 #  20:     goto   14
l_f0_13:
    movl    $1, %eax                #  22:     assign t9 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_15                 #  23:     goto   15
l_f0_14:
    movl    $0, %eax                #  25:     assign t9 <- 0
    movb    %al, -15(%ebp)         
l_f0_15:
    movzbl  -15(%ebp), %eax         #  27:     assign v2 <- t9
    movb    %al, -16(%ebp)         

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $v1       <bool> %ebp-22 ]
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
    movl    $64189, %eax            #   0:     sub    t7 <- 64189, 16791
    movl    $16791, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t8 <- t7, 48633
    movl    $48633, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t8
    jmp     l_f1_exit              
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
    call    dummyCHARfunc           #   7:     call   t9 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $0, %eax                #   8:     assign v1 <- 0
    movb    %al, -22(%ebp)         
l_f1_10_while_cond:
    jmp     l_f1_10_while_cond      #  10:     goto   10_while_cond
    movl    $28663, %eax            #  11:     assign v2 <- 28663
    movl    %eax, -28(%ebp)        
    jmp     l_f1_1                  #  12:     goto   1
l_f1_1:
    movl    $99, %eax               #  14:     if     99 >= 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  15:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  17:     goto   13
l_f1_15_if_false:
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 9 of <array 10 of <array 10 of <array 4 of <int>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   1:     call   t8 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     if     t7 >= t8 goto 1_if_true
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   3:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_5_while_cond:
    movl    $31807, %eax            #   9:     add    t9 <- 31807, 75318
    movl    $75318, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $33094, %eax            #  10:     if     33094 <= t9 goto 6_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_6_while_body      
    jmp     l_f2_4                  #  11:     goto   4
l_f2_6_while_body:
    movl    $98, %eax               #  13:     if     98 = 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  14:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  16:     goto   8
l_f2_10_if_false:
l_f2_8:
l_f2_13_while_cond:
    movl    $51086, %eax            #  20:     if     51086 <= 10919 goto 14_while_body
    movl    $10919, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_14_while_body     
    jmp     l_f2_12                 #  21:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  23:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_5_while_cond       #  25:     goto   5_while_cond
l_f2_4:
l_f2_17_while_cond:
    movl    $91394, %eax            #  28:     sub    t10 <- 91394, 20280
    movl    $20280, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  29:     if     t10 <= 69821 goto 18_while_body
    movl    $69821, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_18_while_body     
    jmp     l_f2_16                 #  30:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  32:     goto   17_while_cond
l_f2_16:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

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
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_7_while_cond:
    movl    $65671, %eax            #   3:     if     65671 >= 60671 goto 8_while_body
    movl    $60671, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_8_while_body    
    jmp     l_test_6                #   4:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #   6:     goto   7_while_cond
l_test_6:
    jmp     l_test_0                #   8:     goto   0
l_test_0:
    movl    $428, %eax              #  10:     mul    t1 <- 428, 1751
    movl    $1751, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     div    t2 <- t1, 17060
    movl    $17060, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     mul    t3 <- t2, 9621
    movl    $9621, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     div    t4 <- t3, 64150
    movl    $64150, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     mul    t5 <- t4, 66053
    movl    $66053, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     assign v0 <- t5
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $41800, %eax            #  17:     assign v0 <- 41800
    movl    %eax, v0               
    movl    $97, %eax               #  18:     if     97 < 97 goto 14
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_14              
    jmp     l_test_15               #  19:     goto   15
l_test_14:
    movl    $1, %eax                #  21:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_16               #  22:     goto   16
l_test_15:
    movl    $0, %eax                #  24:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_test_16:
    movzbl  -37(%ebp), %eax         #  26:     assign v1 <- t6
    movb    %al, v1                

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
