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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v2       <char> %ebp-33 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    leal    _str_1, %eax            #   2:     &()    t3 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               
    call    dummyINTfunc            #   5:     call   t4 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $84172, %eax            #   6:     assign v1 <- 84172
    movl    %eax, -32(%ebp)        
    movl    $95604, %eax            #   7:     if     95604 <= 38687 goto 8_if_true
    movl    $38687, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   8:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #  10:     goto   7
l_f0_9_if_false:
l_f0_7:
    movl    $100, %eax              #  13:     assign v2 <- 100
    movb    %al, -33(%ebp)         
    jmp     l_f0_0                  #  14:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  17:     call   t5 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  18:     return t5
    jmp     l_f0_exit              
    movl    $98, %eax               #  19:     return 98
    jmp     l_f0_exit              
    movl    $99, %eax               #  20:     return 99
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  21:     call   t6 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    jmp     l_f0_13                 #  22:     goto   13
l_f0_13:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t19      <bool> %ebp-49 ]
    #    -50(%ebp)   1  [ $t2       <bool> %ebp-50 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 85 of <array 43 of <array 72 of <array 49 of <array 73 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 72 of <array 48 of <array 28 of <array 30 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 40 of <array 68 of <array 49 of <array 74 of <array 49 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 96 of <array 28 of <array 48 of <array 38 of <array 12 of <char>>>>>>> %ebp+20 ]
    #    -81(%ebp)   1  [ $v5       <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $v6       <int> %ebp-88 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f1_1                  #   0:     goto   1
    jmp     l_f1_1                  #   1:     goto   1
l_f1_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -50(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
    movl    $0, %eax                #   5:     assign t2 <- 0
    movb    %al, -50(%ebp)         
l_f1_3:
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $56069, %eax            #  10:     mul    t4 <- 56069, t3
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  11:     add    t5 <- t4, 77110
    movl    $77110, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  15:     mul    t7 <- t5, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  16:     add    t8 <- t7, 5396
    movl    $5396, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  20:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     add    t11 <- t10, 95681
    movl    $95681, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  24:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  25:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t14 <- t13, 8436
    movl    $8436, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    16(%ebp), %eax          #  28:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  29:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  30:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  31:     add    t18 <- v3, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movzbl  -50(%ebp), %eax         #  32:     assign @t18 <- t2
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_7_while_cond:
    movl    $100, %eax              #  34:     if     100 >= 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #  35:     goto   6
l_f1_8_while_body:
    movl    $1, %eax                #  37:     return 1
    jmp     l_f1_exit              
    movl    $0, %eax                #  38:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_12                 #  39:     goto   12
l_f1_12:
l_f1_16_while_cond:
    jmp     l_f1_15                 #  42:     goto   15
    jmp     l_f1_16_while_cond      #  43:     goto   16_while_cond
l_f1_15:
    jmp     l_f1_7_while_cond       #  45:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_20_if_false        #  47:     goto   20_if_false
    jmp     l_f1_21                 #  48:     goto   21
l_f1_21:
    movl    $98, %eax               #  50:     if     98 = 100 goto 25_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_25_if_true        
    jmp     l_f1_26_if_false        #  51:     goto   26_if_false
l_f1_25_if_true:
    jmp     l_f1_24                 #  53:     goto   24
l_f1_26_if_false:
l_f1_24:
    call    dummyBOOLfunc           #  56:     call   t19 <- dummyBOOLfunc
    movb    %al, -49(%ebp)         
    movl    $35698, %eax            #  57:     assign v6 <- 35698
    movl    %eax, -88(%ebp)        
    jmp     l_f1_18                 #  58:     goto   18
l_f1_20_if_false:
l_f1_18:

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    call    f0                      #   0:     call   t2 <- f0
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f2_exit              
    movl    $98372, %eax            #   2:     if     98372 < 27307 goto 2_if_true
    movl    $27307, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    movl    $100, %eax              #   5:     if     100 < 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   6:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $46396, %eax            #  11:     assign v2 <- 46396
    movl    %eax, 12(%ebp)         
    movl    $56776, %eax            #  12:     if     56776 < 28286 goto 11_if_true
    movl    $28286, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  13:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  15:     goto   10
l_f2_12_if_false:
l_f2_10:
    movl    $97, %eax               #  18:     assign v4 <- 97
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  19:     return 100
    jmp     l_f2_exit              
    movl    $0, %eax                #  20:     if     0 = 1 goto 17_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  21:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  23:     goto   16
l_f2_18_if_false:
l_f2_16:
    jmp     l_f2_1                  #  26:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_24_while_cond:
    movl    $100, %eax              #  30:     if     100 > 100 goto 25_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_25_while_body     
    jmp     l_f2_23                 #  31:     goto   23
l_f2_25_while_body:
    jmp     l_f2_24_while_cond      #  33:     goto   24_while_cond
l_f2_23:
    movl    $0, %eax                #  35:     assign v1 <- 0
    movb    %al, 8(%ebp)           
    jmp     l_f2_20                 #  36:     goto   20
l_f2_20:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    jmp     l_test_1                #   0:     goto   1
l_test_1:
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   3:     goto   3
    movl    $0, %eax                #   4:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v0 <- t0
    movb    %al, v0                
l_test_8_while_cond:
    jmp     l_test_12_if_false      #   8:     goto   12_if_false
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_16_while_cond:
    movl    $88982, %eax            #  12:     if     88982 <= 99463 goto 17_while_body
    movl    $99463, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_17_while_body   
    jmp     l_test_15               #  13:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  15:     goto   16_while_cond
l_test_15:
    jmp     l_test_10               #  17:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_8_while_cond     #  20:     goto   8_while_cond
    call    ReadInt                 #  21:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_22_if_true       #  23:     goto   22_if_true
    jmp     l_test_22_if_true       #  24:     goto   22_if_true
    jmp     l_test_23_if_false      #  25:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_exit            
    movl    $86827, %eax            #  28:     assign v1 <- 86827
    movl    %eax, v1               
    jmp     l_test_21               #  29:     goto   21
l_test_23_if_false:
l_test_21:
    movl    $0, %eax                #  32:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_28               #  33:     goto   28
l_test_28:

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
