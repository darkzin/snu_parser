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
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    movl    $98, %eax               #   0:     if     98 # 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   4:     return 0
    jmp     l_f0_exit              
    movl    $1, %eax                #   5:     return 1
    jmp     l_f0_exit              
    movl    $7351, %eax             #   6:     assign v1 <- 7351
    movl    %eax, 8(%ebp)          
    movl    $0, %eax                #   7:     return 0
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   8:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f0_11_while_cond:
    movl    $56438, %eax            #  10:     if     56438 < 59462 goto 12_while_body
    movl    $59462, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_12_while_body     
    jmp     l_f0_10                 #  11:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  13:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_0                  #  15:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_16                 #  18:     goto   16
    jmp     l_f0_16                 #  19:     goto   16
    movl    $1, %eax                #  20:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_17                 #  21:     goto   17
l_f0_16:
    movl    $0, %eax                #  23:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f0_17:
    movzbl  -15(%ebp), %eax         #  25:     return t3
    jmp     l_f0_exit              
    movl    $70728, %eax            #  26:     if     70728 < 45986 goto 26
    movl    $45986, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_26                
    jmp     l_f0_27                 #  27:     goto   27
l_f0_26:
    movl    $1, %eax                #  29:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_28                 #  30:     goto   28
l_f0_27:
    movl    $0, %eax                #  32:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f0_28:
    movzbl  -16(%ebp), %eax         #  34:     return t4
    jmp     l_f0_exit              
l_f0_31_while_cond:
    jmp     l_f0_30                 #  36:     goto   30
    jmp     l_f0_31_while_cond      #  37:     goto   31_while_cond
l_f0_30:
    jmp     l_f0_22                 #  39:     goto   22
l_f0_22:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t18      <char> %ebp-49 ]
    #    -50(%ebp)   1  [ $t19      <bool> %ebp-50 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t20      <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 10 of <array 2 of <array 5 of <array 5 of <char>>>>>>> %ebp+12 ]
    #    -89(%ebp)   1  [ $v3       <char> %ebp-89 ]

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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   1:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   2:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $89976, %eax            #   3:     mul    t2 <- 89976, t1
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    $45854, %eax            #   4:     add    t3 <- 45854, 2900
    movl    $2900, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #   5:     add    t4 <- t2, t3
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   7:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   8:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #   9:     mul    t6 <- t4, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  10:     add    t7 <- t6, 17017
    movl    $17017, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  14:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  15:     add    t10 <- t9, 69997
    movl    $69997, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  19:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     add    t13 <- t12, 84850
    movl    $84850, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    12(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  23:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  25:     add    t17 <- v2, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $99, %eax               #  26:     assign @t17 <- 99
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  27:     call   t18 <- dummyCHARfunc
    movb    %al, -49(%ebp)         
    movzbl  -49(%ebp), %eax         #  28:     assign v3 <- t18
    movb    %al, -89(%ebp)         
    call    dummyBOOLfunc           #  29:     call   t19 <- dummyBOOLfunc
    movb    %al, -50(%ebp)         
    movzbl  -50(%ebp), %eax         #  30:     if     t19 = 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3                 
    jmp     l_f1_4                  #  31:     goto   4
l_f1_3:
    movl    $1, %eax                #  33:     assign t20 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f1_5                  #  34:     goto   5
l_f1_4:
    movl    $0, %eax                #  36:     assign t20 <- 0
    movb    %al, -57(%ebp)         
l_f1_5:
    movzbl  -57(%ebp), %eax         #  38:     return t20
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t10      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 1 of <array 9 of <array 10 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -49(%ebp)   1  [ $v3       <bool> %ebp-49 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    movl    $98, %eax               #   2:     if     98 > 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #   3:     goto   6
l_f2_5:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  10:     assign v3 <- t1
    movb    %al, -49(%ebp)         
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
l_f2_10_while_cond:
    movl    $88441, %eax            #  14:     if     88441 > 13212 goto 11_while_body
    movl    $13212, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_11_while_body     
    jmp     l_f2_9                  #  15:     goto   9
l_f2_11_while_body:
    call    ReadInt                 #  17:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f2_10_while_cond      #  18:     goto   10_while_cond
l_f2_9:
    movl    $45239, %eax            #  20:     sub    t3 <- 45239, 56490
    movl    $56490, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     add    t4 <- t3, 78325
    movl    $78325, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $25610, %eax            #  22:     sub    t5 <- 25610, 95728
    movl    $95728, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     add    t6 <- t5, 14350
    movl    $14350, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t7 <- t6, 31182
    movl    $31182, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  25:     add    t8 <- t7, 12400
    movl    $12400, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  26:     sub    t9 <- t8, 87358
    movl    $87358, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -28(%ebp), %eax         #  27:     if     t4 > t9 goto 15
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_15                
    jmp     l_f2_16                 #  28:     goto   16
l_f2_15:
    movl    $1, %eax                #  30:     assign t10 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_17                 #  31:     goto   17
l_f2_16:
    movl    $0, %eax                #  33:     assign t10 <- 0
    movb    %al, -14(%ebp)         
l_f2_17:
    movzbl  -14(%ebp), %eax         #  35:     return t10
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
l_test_2_while_cond:
    jmp     l_test_7                #   2:     goto   7
l_test_7:
    jmp     l_test_3_while_body     #   4:     goto   3_while_body
    jmp     l_test_3_while_body     #   5:     goto   3_while_body
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   7:     goto   2_while_cond
    jmp     l_test_15_if_false      #   8:     goto   15_if_false
    jmp     l_test_exit            
l_test_18_while_cond:
    jmp     l_test_17               #  11:     goto   17
    jmp     l_test_18_while_cond    #  12:     goto   18_while_cond
l_test_17:
l_test_21_while_cond:
    movl    $100, %eax              #  15:     if     100 > 99 goto 22_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_22_while_body   
    jmp     l_test_20               #  16:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  18:     goto   21_while_cond
l_test_20:
    jmp     l_test_26_if_false      #  20:     goto   26_if_false
    jmp     l_test_24               #  21:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_exit            
l_test_29_while_cond:
    movl    $1, %eax                #  26:     if     1 # 0 goto 30_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_30_while_body   
    jmp     l_test_28               #  27:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  29:     goto   29_while_cond
l_test_28:
    jmp     l_test_13               #  31:     goto   13
l_test_15_if_false:
l_test_13:
    call    ReadInt                 #  34:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  35:     assign v1 <- t0
    movl    %eax, v1               
    jmp     l_test_34_if_true       #  36:     goto   34_if_true
    jmp     l_test_34_if_true       #  37:     goto   34_if_true
    jmp     l_test_34_if_true       #  38:     goto   34_if_true
    jmp     l_test_35_if_false      #  39:     goto   35_if_false
l_test_34_if_true:
    jmp     l_test_33               #  41:     goto   33
l_test_35_if_false:
l_test_33:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
