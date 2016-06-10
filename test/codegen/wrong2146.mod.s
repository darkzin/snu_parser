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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $v1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    movl    $52902, %eax            #   0:     if     52902 <= 94774 goto 1_if_true
    movl    $94774, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $89049, %eax            #   3:     return 89049
    jmp     l_f0_exit              
l_f0_6_while_cond:
    jmp     l_f0_5                  #   5:     goto   5
    jmp     l_f0_6_while_cond       #   6:     goto   6_while_cond
l_f0_5:
    movl    $4429, %eax             #   8:     return 4429
    jmp     l_f0_exit              
    movl    $98, %eax               #   9:     assign v0 <- 98
    movb    %al, -16(%ebp)         
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_12                 #  13:     goto   12
    jmp     l_f0_12                 #  14:     goto   12
    jmp     l_f0_12                 #  15:     goto   12
    movl    $1, %eax                #  16:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_13                 #  17:     goto   13
l_f0_12:
    movl    $0, %eax                #  19:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f0_13:
    movzbl  -14(%ebp), %eax         #  21:     assign v1 <- t8
    movb    %al, -17(%ebp)         
    movl    $47884, %eax            #  22:     if     47884 >= 30090 goto 17_if_true
    movl    $30090, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  23:     goto   18_if_false
l_f0_17_if_true:
    movl    $45566, %eax            #  25:     if     45566 <= 89126 goto 21
    movl    $89126, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_21                
    jmp     l_f0_22                 #  26:     goto   22
l_f0_21:
    movl    $1, %eax                #  28:     assign t9 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_23                 #  29:     goto   23
l_f0_22:
    movl    $0, %eax                #  31:     assign t9 <- 0
    movb    %al, -15(%ebp)         
l_f0_23:
    movzbl  -15(%ebp), %eax         #  33:     assign v1 <- t9
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #  34:     if     100 > 97 goto 26_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_26_if_true        
    jmp     l_f0_27_if_false        #  35:     goto   27_if_false
l_f0_26_if_true:
    movl    $62115, %eax            #  37:     return 62115
    jmp     l_f0_exit              
    movl    $96524, %eax            #  38:     assign v2 <- 96524
    movl    %eax, -24(%ebp)        
    movl    $99, %eax               #  39:     if     99 > 98 goto 32
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_32                
    jmp     l_f0_33                 #  40:     goto   33
l_f0_32:
    movl    $1, %eax                #  42:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_34                 #  43:     goto   34
l_f0_33:
    movl    $0, %eax                #  45:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_34:
    movzbl  -13(%ebp), %eax         #  47:     assign v1 <- t10
    movb    %al, -17(%ebp)         
    jmp     l_f0_25                 #  48:     goto   25
l_f0_27_if_false:
l_f0_25:
    jmp     l_f0_16                 #  51:     goto   16
l_f0_18_if_false:
l_f0_16:

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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    movl    $98, %eax               #   0:     if     98 = 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $100, %eax              #   3:     if     100 >= 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   4:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_10_if_false        #  12:     goto   10_if_false
    movl    $4832, %eax             #  13:     return 4832
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  14:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $21110, %eax            #  15:     return 21110
    jmp     l_f1_exit              
    jmp     l_f1_8                  #  16:     goto   8
l_f1_10_if_false:
l_f1_8:
    call    ReadInt                 #  19:     call   t9 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $40227, %eax            #  20:     if     40227 < t9 goto 15_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  21:     goto   16_if_false
l_f1_15_if_true:
    movl    $64594, %eax            #  23:     return 64594
    jmp     l_f1_exit              
    movl    $30052, %eax            #  24:     return 30052
    jmp     l_f1_exit              
    movl    $90947, %eax            #  25:     return 90947
    jmp     l_f1_exit              
    jmp     l_f1_14                 #  26:     goto   14
l_f1_16_if_false:
l_f1_14:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
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
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t8       <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $t9       <char> %ebp-82 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 25 of <array 47 of <array 69 of <array 37 of <bool>>>>>>> %ebp+8 ]
    #    -83(%ebp)   1  [ $v1       <char> %ebp-83 ]
    #    -84(%ebp)   1  [ $v2       <bool> %ebp-84 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -81(%ebp)         
    movzbl  -81(%ebp), %eax         #   1:     assign v1 <- t8
    movb    %al, -83(%ebp)         
    movl    $97, %eax               #   2:     assign v1 <- 97
    movb    %al, -83(%ebp)         
    call    dummyCHARfunc           #   3:     call   t9 <- dummyCHARfunc
    movb    %al, -82(%ebp)         
    movl    $100, %eax              #   4:     if     100 >= t9 goto 3
    movzbl  -82(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_3                 
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $1, %eax                #   7:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_5                  #   8:     goto   5
l_f2_4:
    movl    $0, %eax                #  10:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_5:
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $93391, %eax            #  15:     mul    t12 <- 93391, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     add    t13 <- t12, 12152
    movl    $12152, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  20:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     add    t16 <- t15, 88782
    movl    $88782, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  25:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  26:     add    t19 <- t18, 24820
    movl    $24820, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  29:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  30:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  31:     add    t22 <- t21, 53142
    movl    $53142, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  32:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  33:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  34:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  35:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  36:     add    t26 <- v0, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -13(%ebp), %eax         #  37:     assign @t26 <- t10
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <char> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    call    dummyINTfunc            #   3:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #   4:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $82240, %eax            #   5:     sub    t3 <- 82240, 80966
    movl    $80966, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t4 <- t3, 54554
    movl    $54554, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     add    t5 <- t4, 32674
    movl    $32674, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     sub    t6 <- t5, 34581
    movl    $34581, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     param  0 <- t6
    pushl   %eax                   
    call    WriteInt                #  10:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_2                #  11:     goto   2
l_test_4_if_false:
l_test_2:
    call    dummyCHARfunc           #  14:     call   t7 <- dummyCHARfunc
    movb    %al, -41(%ebp)         

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
