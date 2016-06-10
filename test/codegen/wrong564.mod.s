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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 4 of <array 1 of <array 5 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 1 of <array 8 of <array 3 of <array 4 of <char>>>>>>> %ebp+12 ]
    #    -27(%ebp)   1  [ $v4       <bool> %ebp-27 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    jmp     l_f0_2                  #   1:     goto   2
    jmp     l_f0_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v4 <- t1
    movb    %al, -27(%ebp)         
    movl    $59012, %eax            #   9:     div    t2 <- 59012, 83622
    movl    $83622, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     div    t3 <- t2, 9211
    movl    $9211, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $99042, %eax            #  11:     if     99042 <= t3 goto 10_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  12:     goto   11_if_false
l_f0_10_if_true:
l_f0_14_while_cond:
    movl    $98, %eax               #  15:     if     98 < 98 goto 15_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_15_while_body     
    jmp     l_f0_13                 #  16:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  18:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_9                  #  20:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_21                 #  23:     goto   21
    jmp     l_f0_22                 #  24:     goto   22
l_f0_21:
    movl    $1, %eax                #  26:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_23                 #  27:     goto   23
l_f0_22:
    movl    $0, %eax                #  29:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f0_23:
    movl    $1, %eax                #  31:     assign t5 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f0_28                 #  32:     goto   28
    movl    $0, %eax                #  33:     assign t5 <- 0
    movb    %al, -26(%ebp)         
l_f0_28:
    movzbl  -25(%ebp), %eax         #  35:     if     t4 # t5 goto 18_if_true
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  36:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  38:     goto   17
l_f0_19_if_false:
l_f0_17:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 4 of <array 8 of <array 2 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 3 of <array 10 of <array 4 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 3 of <array 7 of <array 4 of <array 1 of <array 4 of <char>>>>>>> %ebp+20 ]

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
    jmp     l_f1_5                  #   0:     goto   5
    movl    $1, %eax                #   1:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   2:     goto   6
l_f1_5:
    movl    $0, %eax                #   4:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movl    $1, %eax                #   6:     if     1 = t1 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   7:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_13                 #  13:     goto   13
    jmp     l_f1_14                 #  14:     goto   14
l_f1_13:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_15                 #  17:     goto   15
l_f1_14:
    movl    $0, %eax                #  19:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f1_15:
    movzbl  -15(%ebp), %eax         #  21:     assign v3 <- t3
    movb    %al, 12(%ebp)          
    jmp     l_f1_9                  #  22:     goto   9
l_f1_9:
    movl    $5306, %eax             #  24:     if     5306 >= 10104 goto 19_if_true
    movl    $10104, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  25:     goto   20_if_false
l_f1_19_if_true:
    movl    $61856, %eax            #  27:     if     61856 = 48952 goto 23_if_true
    movl    $48952, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  28:     goto   24_if_false
l_f1_23_if_true:
    jmp     l_f1_22                 #  30:     goto   22
l_f1_24_if_false:
l_f1_22:
    movl    $97, %eax               #  33:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_18                 #  34:     goto   18
l_f1_20_if_false:
l_f1_18:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t17      <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t2       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 3 of <array 3 of <array 8 of <array 3 of <char>>>>>>> %ebp+8 ]
    #    -81(%ebp)   1  [ $v3       <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $v4       <bool> %ebp-82 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $57569, %eax            #   0:     return 57569
    jmp     l_f2_exit              
    movl    $15975, %eax            #   1:     if     15975 >= 96605 goto 5_if_true
    movl    $96605, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   2:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_0                  #   7:     goto   0
l_f2_0:
l_f2_9_while_cond:
    movl    $74046, %eax            #  10:     if     74046 > 45101 goto 10_while_body
    movl    $45101, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_10_while_body     
    jmp     l_f2_8                  #  11:     goto   8
l_f2_10_while_body:
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $18058, %eax            #  16:     mul    t2 <- 18058, t1
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  17:     add    t3 <- t2, 11288
    movl    $11288, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  21:     mul    t5 <- t3, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  22:     add    t6 <- t5, 15134
    movl    $15134, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  26:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  27:     add    t9 <- t8, 33751
    movl    $33751, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -80(%ebp), %eax         #  31:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     add    t12 <- t11, 36020
    movl    $36020, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     mul    t13 <- t12, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    8(%ebp), %eax           #  34:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  35:     call   t14 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  36:     add    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  37:     add    t16 <- v2, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $97, %eax               #  38:     assign @t16 <- 97
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $0, %eax                #  39:     assign v4 <- 0
    movb    %al, -82(%ebp)         
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  41:     goto   15_while_cond
    jmp     l_f2_9_while_cond       #  42:     goto   9_while_cond
l_f2_8:
    movl    $861, %eax              #  44:     if     861 > 30311 goto 18
    movl    $30311, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_18                
    jmp     l_f2_19                 #  45:     goto   19
l_f2_18:
    movl    $1, %eax                #  47:     assign t17 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f2_20                 #  48:     goto   20
l_f2_19:
    movl    $0, %eax                #  50:     assign t17 <- 0
    movb    %al, -45(%ebp)         
l_f2_20:
    movzbl  -45(%ebp), %eax         #  52:     assign v4 <- t17
    movb    %al, -82(%ebp)         

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    movl    $39419, %eax            #   0:     assign v0 <- 39419
    movl    %eax, v0               
    movl    $1, %eax                #   1:     assign v1 <- 1
    movb    %al, v1                
    movl    $55303, %eax            #   2:     if     55303 < 229 goto 3_if_true
    movl    $229, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    movl    $100, %eax              #   5:     if     100 < 97 goto 7
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_7               
    jmp     l_test_8                #   6:     goto   8
l_test_7:
    movl    $1, %eax                #   8:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_9                #   9:     goto   9
l_test_8:
    movl    $0, %eax                #  11:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_9:
    movzbl  -13(%ebp), %eax         #  13:     assign v1 <- t0
    movb    %al, v1                
    movl    $98, %eax               #  14:     assign v2 <- 98
    movb    %al, v2                
    movl    $10493, %eax            #  15:     param  0 <- 10493
    pushl   %eax                   
    call    WriteInt                #  16:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_2                #  17:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $43122, %eax            #  20:     if     43122 < 32127 goto 14_if_true
    movl    $32127, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_14_if_true      
    jmp     l_test_15_if_false      #  21:     goto   15_if_false
l_test_14_if_true:
    movl    $2116, %eax             #  23:     assign v0 <- 2116
    movl    %eax, v0               
    jmp     l_test_13               #  24:     goto   13
l_test_15_if_false:
l_test_13:
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
