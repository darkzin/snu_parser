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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 71 of <array 63 of <array 73 of <array 65 of <array 23 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 60 of <array 38 of <array 78 of <array 28 of <array 72 of <bool>>>>>>> %ebp+20 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    movl    $76165, %eax            #   1:     sub    t6 <- 76165, 61145
    movl    $61145, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t7 <- t6, 26789
    movl    $26789, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t8 <- t7, 19878
    movl    $19878, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     return t8
    jmp     l_f0_exit              
l_f0_3_while_cond:
    movl    $91522, %eax            #   6:     if     91522 < 23775 goto 6
    movl    $23775, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_6                 
    jmp     l_f0_2                  #   7:     goto   2
l_f0_6:
    jmp     l_f0_2                  #   9:     goto   2
    jmp     l_f0_2                  #  10:     goto   2
    jmp     l_f0_3_while_cond       #  11:     goto   3_while_cond
l_f0_2:

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 68 of <array 83 of <array 62 of <array 2 of <array 70 of <bool>>>>>>> %ebp+12 ]
    #    -17(%ebp)   1  [ $v2       <char> %ebp-17 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_0                  #   2:     goto   0
    jmp     l_f1_0                  #   3:     goto   0
    jmp     l_f1_0                  #   4:     goto   0
    jmp     l_f1_0                  #   5:     goto   0
    movl    $98, %eax               #   6:     assign v2 <- 98
    movb    %al, -17(%ebp)         
    call    dummyINTfunc            #   7:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_10_while_cond:
    movl    $5597, %eax             #   9:     if     5597 # 36150 goto 11_while_body
    movl    $36150, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_11_while_body     
    jmp     l_f1_9                  #  10:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  12:     goto   10_while_cond
l_f1_9:
    movl    $1, %eax                #  14:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  15:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_15_if_true         #  17:     goto   15_if_true
l_f1_15_if_true:
    jmp     l_f1_14                 #  19:     goto   14
l_f1_14:
    movl    $97, %eax               #  21:     assign v2 <- 97
    movb    %al, -17(%ebp)         

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 33 of <array 71 of <array 98 of <array 11 of <array 59 of <int>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 <= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $14139, %eax            #   4:     assign v2 <- 14139
    movl    %eax, -20(%ebp)        
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_7_if_false         #   7:     goto   7_if_false
    jmp     l_f2_8                  #   8:     goto   8
l_f2_8:
    movl    $100, %eax              #  10:     if     100 < 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  11:     goto   13_if_false
l_f2_12_if_true:
    jmp     l_f2_11                 #  13:     goto   11
l_f2_13_if_false:
l_f2_11:
    movl    $99, %eax               #  16:     if     99 <= 98 goto 16_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  17:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  19:     goto   15
l_f2_17_if_false:
l_f2_15:
    jmp     l_f2_5                  #  22:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $100, %eax              #  25:     if     100 >= 99 goto 20
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_20                
    jmp     l_f2_21                 #  26:     goto   21
l_f2_20:
    movl    $1, %eax                #  28:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_22                 #  29:     goto   22
l_f2_21:
    movl    $0, %eax                #  31:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_22:
    movzbl  -13(%ebp), %eax         #  33:     assign v3 <- t6
    movb    %al, -21(%ebp)         

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
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 = 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    movl    $99, %eax               #   6:     if     99 # 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_5               
    jmp     l_test_6                #   7:     goto   6
l_test_5:
    movl    $1, %eax                #   9:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #  10:     goto   7
l_test_6:
    movl    $0, %eax                #  12:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #  14:     assign v0 <- t0
    movb    %al, v0                
    movl    $50223, %eax            #  15:     div    t1 <- 50223, 16000
    movl    $16000, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     mul    t2 <- t1, 21855
    movl    $21855, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     div    t3 <- t2, 79100
    movl    $79100, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     add    t4 <- t3, 40630
    movl    $40630, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     if     t4 >= 9210 goto 10
    movl    $9210, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_10              
    jmp     l_test_11               #  20:     goto   11
l_test_10:
    movl    $1, %eax                #  22:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_12               #  23:     goto   12
l_test_11:
    movl    $0, %eax                #  25:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_12:
    movzbl  -33(%ebp), %eax         #  27:     assign v0 <- t5
    movb    %al, v0                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
