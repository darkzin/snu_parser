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
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $93340, %eax            #   2:     assign v0 <- 93340
    movl    %eax, -20(%ebp)        
l_f0_5_while_cond:
    movl    $100, %eax              #   4:     if     100 <= 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_6_while_body      
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
l_f0_4:
    movl    $99, %eax               #   9:     return 99
    jmp     l_f0_exit              
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #  11:     goto   10_while_cond
l_f0_13_while_cond:
    jmp     l_f0_13_while_cond      #  13:     goto   13_while_cond
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #  16:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #  17:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t4       <bool> %ebp-61 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 19 of <array 37 of <array 59 of <array 28 of <array 63 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 76 of <array 19 of <array 58 of <array 100 of <array 78 of <bool>>>>>>> %ebp+12 ]
    #    -85(%ebp)   1  [ $v2       <bool> %ebp-85 ]

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
l_f1_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #   2:     if     t4 = 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3                 
    jmp     l_f1_0                  #   3:     goto   0
l_f1_3:
    jmp     l_f1_0                  #   5:     goto   0
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $3701, %eax             #   8:     if     3701 = 49464 goto 5_if_true
    movl    $49464, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   9:     goto   6_if_false
l_f1_5_if_true:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  13:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $61885, %eax            #  14:     mul    t6 <- 61885, t5
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    $6936, %eax             #  15:     mul    t7 <- 6936, 16282
    movl    $16282, %ebx           
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  16:     add    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  20:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     add    t11 <- t10, 60472
    movl    $60472, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  25:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t14 <- t13, 2376
    movl    $2376, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  29:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  30:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     add    t17 <- t16, 2152
    movl    $2152, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  32:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  33:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  34:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  35:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  36:     add    t21 <- v0, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $0, %eax                #  37:     assign @t21 <- 0
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_4                  #  38:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]

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
    call    f0                      #   0:     call   t4 <- f0
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_exit              
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
l_test_1_while_cond:
    movl    $1, %eax                #   1:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   2:     goto   6
    movl    $0, %eax                #   3:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movl    $0, %eax                #   5:     if     0 = t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   6:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
l_test_11_while_cond:
    jmp     l_test_10               #  11:     goto   10
    leal    _str_1, %eax            #  12:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  14:     call   WriteStr
    addl    $4, %esp               
l_test_16_while_cond:
    movl    $98, %eax               #  16:     if     98 < 98 goto 17_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_17_while_body   
    jmp     l_test_15               #  17:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  19:     goto   16_while_cond
l_test_15:
    jmp     l_test_11_while_cond    #  21:     goto   11_while_cond
l_test_10:
    call    dummyBOOLfunc           #  23:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_22_if_false      #  24:     goto   22_if_false
l_test_24_while_cond:
    movl    $28276, %eax            #  26:     if     28276 <= 34177 goto 25_while_body
    movl    $34177, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_25_while_body   
    jmp     l_test_23               #  27:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  29:     goto   24_while_cond
l_test_23:
l_test_28_while_cond:
    movl    $100, %eax              #  32:     if     100 < 99 goto 29_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_29_while_body   
    jmp     l_test_27               #  33:     goto   27
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  35:     goto   28_while_cond
l_test_27:
    jmp     l_test_20               #  37:     goto   20
l_test_22_if_false:
l_test_20:
    call    ReadInt                 #  40:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_test_exit            

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
