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
    movl    $36226, %eax            #   0:     if     36226 = 79918 goto 1_if_true
    movl    $79918, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_4                  #   3:     goto   4
l_f0_4:
l_f0_8_while_cond:
    movl    $65664, %eax            #   6:     if     65664 = 72830 goto 9_while_body
    movl    $72830, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_9_while_body      
    jmp     l_f0_7                  #   7:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #   9:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_exit              
    jmp     l_f0_12                 #  12:     goto   12
l_f0_12:
    jmp     l_f0_0                  #  14:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_16_while_cond:
    call    dummyBOOLfunc           #  18:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  19:     if     t4 = 1 goto 17_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_17_while_body     
    jmp     l_f0_15                 #  20:     goto   15
l_f0_17_while_body:
l_f0_19_while_cond:
    jmp     l_f0_19_while_cond      #  23:     goto   19_while_cond
    jmp     l_f0_16_while_cond      #  24:     goto   16_while_cond
l_f0_15:
l_f0_22_while_cond:
    jmp     l_f0_21                 #  27:     goto   21
    jmp     l_f0_exit              
    jmp     l_f0_22_while_cond      #  29:     goto   22_while_cond
l_f0_21:

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $100, %eax              #   2:     return 100
    jmp     l_f1_exit              
    movl    $66333, %eax            #   3:     if     66333 < 84206 goto 5_if_true
    movl    $84206, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   4:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  11:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  12:     return t4
    jmp     l_f1_exit              
    movl    $97, %eax               #  13:     if     97 = 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  14:     goto   11_if_false
l_f1_10_if_true:
    movl    $98, %eax               #  16:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  17:     call   WriteChar
    addl    $4, %esp               
    movl    $97, %eax               #  18:     return 97
    jmp     l_f1_exit              
    movl    $100, %eax              #  19:     return 100
    jmp     l_f1_exit              
l_f1_17_while_cond:
    jmp     l_f1_16                 #  21:     goto   16
    jmp     l_f1_17_while_cond      #  22:     goto   17_while_cond
l_f1_16:
    jmp     l_f1_9                  #  24:     goto   9
l_f1_11_if_false:
l_f1_9:

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
    #    -37(%ebp)   1  [ $t16      <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t4       <bool> %ebp-57 ]
    #    -58(%ebp)   1  [ $t5       <bool> %ebp-58 ]
    #    -59(%ebp)   1  [ $t6       <bool> %ebp-59 ]
    #    -60(%ebp)   1  [ $t7       <char> %ebp-60 ]
    #    -64(%ebp)   4  [ $t8       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t9       <int> %ebp-68 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 89 of <array 10 of <array 61 of <array 68 of <array 52 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 82 of <array 38 of <array 41 of <array 24 of <array 59 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -72(%ebp)   4  [ $v3       <int> %ebp-72 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $60, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $15, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     if     97 >= 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -57(%ebp)         
l_f2_3:
    movzbl  -57(%ebp), %eax         #   8:     param  2 <- t4
    pushl   %eax                   
    movl    $98, %eax               #   9:     if     98 # 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_5                 
    jmp     l_f2_6                  #  10:     goto   6
l_f2_5:
    movl    $1, %eax                #  12:     assign t5 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f2_7                  #  13:     goto   7
l_f2_6:
    movl    $0, %eax                #  15:     assign t5 <- 0
    movb    %al, -58(%ebp)         
l_f2_7:
    movzbl  -58(%ebp), %eax         #  17:     param  1 <- t5
    pushl   %eax                   
    jmp     l_f2_9                  #  18:     goto   9
    jmp     l_f2_10                 #  19:     goto   10
l_f2_9:
    movl    $1, %eax                #  21:     assign t6 <- 1
    movb    %al, -59(%ebp)         
    jmp     l_f2_11                 #  22:     goto   11
l_f2_10:
    movl    $0, %eax                #  24:     assign t6 <- 0
    movb    %al, -59(%ebp)         
l_f2_11:
    movzbl  -59(%ebp), %eax         #  26:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  27:     call   t7 <- f1
    addl    $12, %esp              
    movb    %al, -60(%ebp)         
    movzbl  -60(%ebp), %eax         #  28:     param  0 <- t7
    pushl   %eax                   
    call    WriteChar               #  29:     call   WriteChar
    addl    $4, %esp               
    movl    $18438, %eax            #  30:     mul    t8 <- 18438, 53337
    movl    $53337, %ebx           
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  31:     mul    t9 <- t8, 1184
    movl    $1184, %ebx            
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  32:     div    t10 <- t9, 36936
    movl    $36936, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  33:     mul    t11 <- t10, 36321
    movl    $36321, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  34:     div    t12 <- t11, 81286
    movl    $81286, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  35:     div    t13 <- t12, 79601
    movl    $79601, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  36:     mul    t14 <- t13, 766
    movl    $766, %ebx             
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  37:     sub    t15 <- t14, 76429
    movl    $76429, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $1539, %eax             #  38:     if     1539 # t15 goto 14
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_14                
    jmp     l_f2_15                 #  39:     goto   15
l_f2_14:
    movl    $1, %eax                #  41:     assign t16 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_16                 #  42:     goto   16
l_f2_15:
    movl    $0, %eax                #  44:     assign t16 <- 0
    movb    %al, -37(%ebp)         
l_f2_16:
    movzbl  -37(%ebp), %eax         #  46:     return t16
    jmp     l_f2_exit              
    movl    $41130, %eax            #  47:     sub    t17 <- 41130, 62818
    movl    $62818, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $83318, %eax            #  48:     mul    t18 <- 83318, 8811
    movl    $8811, %ebx            
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  49:     mul    t19 <- t18, 89946
    movl    $89946, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  50:     add    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  51:     assign v3 <- t20
    movl    %eax, -72(%ebp)        

l_f2_exit:
    # epilogue
    addl    $60, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 82 of <array 38 of <array 41 of <array 24 of <array 59 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 89 of <array 10 of <array 61 of <array 68 of <array 52 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

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
    jmp     l_test_exit            
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #   2:     param  2 <- 100
    pushl   %eax                   
    leal    v1, %eax                #   3:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t1
    pushl   %eax                   
    leal    v0, %eax                #   5:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #   7:     call   t3 <- f2
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movl    $28152, %eax            #   8:     assign v2 <- 28152
    movl    %eax, v2               

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <array 89 of <array 10 of <array 61 of <array 68 of <array 52 of <bool>>>>>>
    .long    5
    .long   89
    .long   10
    .long   61
    .long   68
    .long   52
    .skip 191969440
v1:                                 # <array 82 of <array 38 of <array 41 of <array 24 of <array 59 of <bool>>>>>>
    .long    5
    .long   82
    .long   38
    .long   41
    .long   24
    .long   59
    .skip 180902496
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
