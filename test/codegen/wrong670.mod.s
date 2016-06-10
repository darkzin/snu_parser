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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t7       <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $t8       <bool> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $v0       <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $v1       <bool> %ebp-31 ]

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
    movl    $8303, %eax             #   0:     mul    t2 <- 8303, 30445
    movl    $30445, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t3 <- t2, 40595
    movl    $40595, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $60914, %eax            #   2:     add    t4 <- 60914, t3
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     if     t4 > 99295 goto 1
    movl    $99295, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   4:     goto   2
l_f0_1:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_3                  #   7:     goto   3
l_f0_2:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -25(%ebp)         
l_f0_3:
    movzbl  -25(%ebp), %eax         #  11:     return t5
    jmp     l_f0_exit              
l_f0_6_while_cond:
    movl    $70991, %eax            #  13:     if     70991 = 5884 goto 7_while_body
    movl    $5884, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #  14:     goto   5
l_f0_7_while_body:
l_f0_10_while_cond:
    movl    $98, %eax               #  17:     if     98 = 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_11_while_body     
    jmp     l_f0_9                  #  18:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  20:     goto   10_while_cond
l_f0_9:
l_f0_14_while_cond:
    movl    $99, %eax               #  23:     if     99 > 98 goto 15_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_15_while_body     
    jmp     l_f0_13                 #  24:     goto   13
l_f0_15_while_body:
    jmp     l_f0_19_if_false        #  26:     goto   19_if_false
    jmp     l_f0_17                 #  27:     goto   17
l_f0_19_if_false:
l_f0_17:
    call    dummyBOOLfunc           #  30:     call   t6 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movl    $99, %eax               #  31:     assign v0 <- 99
    movb    %al, -30(%ebp)         
l_f0_23_while_cond:
    jmp     l_f0_23_while_cond      #  33:     goto   23_while_cond
    movl    $98, %eax               #  34:     if     98 > 98 goto 26_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_26_if_true        
    jmp     l_f0_27_if_false        #  35:     goto   27_if_false
l_f0_26_if_true:
    jmp     l_f0_25                 #  37:     goto   25
l_f0_27_if_false:
l_f0_25:
    movl    $0, %eax                #  40:     if     0 # 0 goto 30
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_30                
    jmp     l_f0_31                 #  41:     goto   31
l_f0_30:
    movl    $1, %eax                #  43:     assign t7 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f0_32                 #  44:     goto   32
l_f0_31:
    movl    $0, %eax                #  46:     assign t7 <- 0
    movb    %al, -27(%ebp)         
l_f0_32:
    movzbl  -27(%ebp), %eax         #  48:     assign v1 <- t7
    movb    %al, -31(%ebp)         
    jmp     l_f0_14_while_cond      #  49:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_6_while_cond       #  51:     goto   6_while_cond
l_f0_5:
    call    dummyBOOLfunc           #  53:     call   t8 <- dummyBOOLfunc
    movb    %al, -28(%ebp)         
    movzbl  -28(%ebp), %eax         #  54:     if     t8 = 1 goto 38
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_38                
    jmp     l_f0_36                 #  55:     goto   36
l_f0_38:
    jmp     l_f0_36                 #  57:     goto   36
    movl    $1, %eax                #  58:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_37                 #  59:     goto   37
l_f0_36:
    movl    $0, %eax                #  61:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f0_37:
    movzbl  -29(%ebp), %eax         #  63:     return t9
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -19(%ebp)   1  [ $v2       <char> %ebp-19 ]

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
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     if     t3 = 0 goto 3_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
    call    dummyCHARfunc           #   8:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   9:     assign v2 <- t4
    movb    %al, -19(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 > t2 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyINTfunc            #   7:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     sub    t4 <- t3, 45520
    movl    $45520, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     add    t5 <- t4, 4469
    movl    $4469, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     add    t6 <- t5, 24389
    movl    $24389, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     return t6
    jmp     l_f2_exit              
    movl    $100, %eax              #  12:     assign v1 <- 100
    movb    %al, -33(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    leal    _str_1, %eax            #   1:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    movl    $100, %eax              #   4:     if     100 = 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_3_if_true       
    jmp     l_test_4_if_false       #   5:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_10_if_false      #   9:     goto   10_if_false
    jmp     l_test_8                #  10:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_exit            
    movl    $98, %eax               #  14:     if     98 > 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_13_if_true      
    jmp     l_test_14_if_false      #  15:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  17:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_2                #  20:     goto   2
l_test_4_if_false:
l_test_2:
    jmp     l_test_exit            
l_test_18_while_cond:
    jmp     l_test_19_while_body    #  25:     goto   19_while_body
    jmp     l_test_19_while_body    #  26:     goto   19_while_body
    jmp     l_test_17               #  27:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  29:     goto   18_while_cond
l_test_17:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
