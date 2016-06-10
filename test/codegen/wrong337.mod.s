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
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 9 of <array 9 of <array 6 of <array 4 of <int>>>>>>> %ebp+8 ]

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
l_f0_1_while_cond:
    movl    $98930, %eax            #   1:     div    t3 <- 98930, 26932
    movl    $26932, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t4 <- t3, 90760
    movl    $90760, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t5 <- t4, 11432
    movl    $11432, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $26143, %eax            #   4:     sub    t6 <- 26143, t5
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $75884, %eax            #   5:     if     75884 < t6 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   8:     goto   1_while_cond
l_f0_0:
    call    dummyINTfunc            #  10:     call   t7 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    call    WriteLn                 #  11:     call   WriteLn

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    jmp     l_f1_exit              
    jmp     l_f1_exit              
l_f1_3_while_cond:
    jmp     l_f1_2                  #   3:     goto   2
    movl    $97, %eax               #   4:     assign v1 <- 97
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #   5:     if     1 # 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_7                 
    jmp     l_f1_8                  #   6:     goto   8
l_f1_7:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_9                  #   9:     goto   9
l_f1_8:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_9:
    movzbl  -13(%ebp), %eax         #  13:     assign v2 <- t3
    movb    %al, -15(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_exit              
l_f1_14_while_cond:
    movl    $99, %eax               #  17:     if     99 = 99 goto 15_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_15_while_body     
    jmp     l_f1_13                 #  18:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  20:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_3_while_cond       #  22:     goto   3_while_cond
l_f1_2:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t21      <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t4       <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 5 of <array 9 of <array 6 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 7 of <array 5 of <array 5 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 10 of <array 10 of <array 3 of <array 7 of <array 8 of <bool>>>>>>> %ebp+20 ]
    #    -89(%ebp)   1  [ $v5       <bool> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $93199, %eax            #   0:     add    t3 <- 93199, 94485
    movl    $94485, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $62332, %eax            #   1:     if     62332 > t3 goto 1
    movl    -64(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -65(%ebp)         
l_f2_3:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  10:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  11:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $52362, %eax            #  12:     mul    t6 <- 52362, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  13:     add    t7 <- t6, 75258
    movl    $75258, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  15:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  16:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  17:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  18:     add    t10 <- t9, 99786
    movl    $99786, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  20:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  21:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  22:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t13 <- t12, 71346
    movl    $71346, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  25:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  26:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  27:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     add    t16 <- t15, 69350
    movl    $69350, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  29:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    20(%ebp), %eax          #  30:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  31:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  32:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  33:     add    t20 <- v4, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movzbl  -65(%ebp), %eax         #  34:     assign @t20 <- t4
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $97, %eax               #  35:     return 97
    jmp     l_f2_exit              
    movl    $94077, %eax            #  36:     if     94077 < 92186 goto 7
    movl    $92186, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_7                 
    jmp     l_f2_8                  #  37:     goto   8
l_f2_7:
    movl    $1, %eax                #  39:     assign t21 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f2_9                  #  40:     goto   9
l_f2_8:
    movl    $0, %eax                #  42:     assign t21 <- 0
    movb    %al, -57(%ebp)         
l_f2_9:
    movzbl  -57(%ebp), %eax         #  44:     assign v5 <- t21
    movb    %al, -89(%ebp)         

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $98, %eax               #   1:     if     98 < 99 goto 4_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_4_if_true       
    jmp     l_test_5_if_false       #   2:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   4:     goto   3
l_test_5_if_false:
l_test_3:
    movl    $98, %eax               #   7:     if     98 # 97 goto 8_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_8_if_true       
    jmp     l_test_9_if_false       #   8:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  10:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_0                #  13:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_13               #  16:     goto   13
    jmp     l_test_13               #  17:     goto   13
    movl    $1, %eax                #  18:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_14               #  19:     goto   14
l_test_13:
    movl    $0, %eax                #  21:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_14:
    movzbl  -13(%ebp), %eax         #  23:     assign v0 <- t0
    movb    %al, v0                
    movl    $15770, %eax            #  24:     if     15770 < 34679 goto 19_if_true
    movl    $34679, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_19_if_true      
    jmp     l_test_20_if_false      #  25:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_exit            
    movl    $30165, %eax            #  28:     assign v1 <- 30165
    movl    %eax, v1               
    jmp     l_test_24               #  29:     goto   24
l_test_24:
    jmp     l_test_18               #  31:     goto   18
l_test_20_if_false:
l_test_18:
    leal    _str_1, %eax            #  34:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  35:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  36:     call   WriteStr
    addl    $4, %esp               
    call    dummyINTfunc            #  37:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
