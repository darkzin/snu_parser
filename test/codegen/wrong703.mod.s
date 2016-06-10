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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t8       <bool> %ebp-27 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 5 of <array 2 of <array 4 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $87761, %eax            #   0:     div    t3 <- 87761, 74201
    movl    $74201, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t4 <- t3, 98921
    movl    $98921, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t5 <- t4, 40802
    movl    $40802, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $98878, %eax            #   3:     if     98878 # t5 goto 1
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   4:     goto   2
l_f0_1:
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_3                  #   7:     goto   3
l_f0_2:
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f0_3:
    movzbl  -25(%ebp), %eax         #  11:     return t6
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  12:     call   t7 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    jmp     l_f0_8_if_false         #  13:     goto   8_if_false
    jmp     l_f0_10                 #  14:     goto   10
    jmp     l_f0_11                 #  15:     goto   11
l_f0_10:
    movl    $1, %eax                #  17:     assign t8 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f0_12                 #  18:     goto   12
l_f0_11:
    movl    $0, %eax                #  20:     assign t8 <- 0
    movb    %al, -27(%ebp)         
l_f0_12:
    movzbl  -27(%ebp), %eax         #  22:     return t8
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  23:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
    jmp     l_f1_0                  #   3:     goto   0
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
l_f1_11_while_cond:
    movl    $93658, %eax            #   9:     sub    t3 <- 93658, 79599
    movl    $79599, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     sub    t4 <- t3, 58685
    movl    $58685, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $51658, %eax            #  11:     if     51658 = t4 goto 12_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_12_while_body     
    jmp     l_f1_10                 #  12:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  14:     goto   11_while_cond
l_f1_10:
l_f1_15_while_cond:
    call    dummyCHARfunc           #  17:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  18:     if     t5 # 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_16_while_body     
    jmp     l_f1_14                 #  19:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  21:     goto   15_while_cond
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    jmp     l_f2_3_while_body       #   2:     goto   3_while_body
    jmp     l_f2_3_while_body       #   3:     goto   3_while_body
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    movl    $99, %eax               #   6:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_7                  #   7:     goto   7
l_f2_7:
    jmp     l_f2_2_while_cond       #   9:     goto   2_while_cond
l_f2_1:
l_f2_11_while_cond:
    movl    $63321, %eax            #  12:     sub    t4 <- 63321, 60396
    movl    $60396, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     sub    t5 <- t4, 20893
    movl    $20893, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     add    t6 <- t5, 98291
    movl    $98291, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     sub    t7 <- t6, 63371
    movl    $63371, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $70837, %eax            #  16:     if     70837 < t7 goto 12_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_12_while_body     
    jmp     l_f2_10                 #  17:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  19:     goto   11_while_cond
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
l_test_1_while_cond:
    movl    $0, %eax                #   1:     if     0 # 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    movl    $97, %eax               #   7:     param  2 <- 97
    pushl   %eax                   
    movl    $37846, %eax            #   8:     param  1 <- 37846
    pushl   %eax                   
    movl    $51497, %eax            #   9:     param  0 <- 51497
    pushl   %eax                   
    call    f1                      #  10:     call   t0 <- f1
    addl    $12, %esp              
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     div    t1 <- t0, 40660
    movl    $40660, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t1
    pushl   %eax                   
    call    WriteInt                #  13:     call   WriteInt
    addl    $4, %esp               
    movl    $776, %eax              #  14:     if     776 >= 45932 goto 8
    movl    $45932, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_8               
    jmp     l_test_9                #  15:     goto   9
l_test_8:
    movl    $1, %eax                #  17:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_10               #  18:     goto   10
l_test_9:
    movl    $0, %eax                #  20:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_10:
    movzbl  -21(%ebp), %eax         #  22:     assign v0 <- t2
    movb    %al, v0                
l_test_13_while_cond:
    movl    $43433, %eax            #  24:     if     43433 = 89051 goto 14_while_body
    movl    $89051, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_14_while_body   
    jmp     l_test_12               #  25:     goto   12
l_test_14_while_body:
    movl    $99, %eax               #  27:     if     99 >= 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_17_if_true      
    jmp     l_test_18_if_false      #  28:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  30:     goto   16
l_test_18_if_false:
l_test_16:
l_test_21_while_cond:
    movl    $97, %eax               #  34:     if     97 = 97 goto 22_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_22_while_body   
    jmp     l_test_20               #  35:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  37:     goto   21_while_cond
l_test_20:
    jmp     l_test_13_while_cond    #  39:     goto   13_while_cond
l_test_12:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
