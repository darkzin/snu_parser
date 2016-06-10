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
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t5       <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $t6       <bool> %ebp-82 ]
    #    -83(%ebp)   1  [ $t7       <bool> %ebp-83 ]
    #    -84(%ebp)   1  [ $t8       <bool> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 8 of <array 10 of <array 2 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -81(%ebp)         
    movl    $98, %eax               #   1:     if     98 # t5 goto 1
    movzbl  -81(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t6 <- 1
    movb    %al, -82(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t6 <- 0
    movb    %al, -82(%ebp)         
l_f0_3:
    movzbl  -82(%ebp), %eax         #   9:     return t6
    jmp     l_f0_exit              
    movl    $50943, %eax            #  10:     if     50943 < 92050 goto 6_if_true
    movl    $92050, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  11:     goto   7_if_false
l_f0_6_if_true:
    movl    $38611, %eax            #  13:     if     38611 < 68254 goto 10
    movl    $68254, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_10                
    jmp     l_f0_11                 #  14:     goto   11
l_f0_10:
    movl    $1, %eax                #  16:     assign t7 <- 1
    movb    %al, -83(%ebp)         
    jmp     l_f0_12                 #  17:     goto   12
l_f0_11:
    movl    $0, %eax                #  19:     assign t7 <- 0
    movb    %al, -83(%ebp)         
l_f0_12:
    movzbl  -83(%ebp), %eax         #  21:     return t7
    jmp     l_f0_exit              
    movl    $83806, %eax            #  22:     if     83806 < 95439 goto 15
    movl    $95439, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_15                
    jmp     l_f0_16                 #  23:     goto   16
l_f0_15:
    movl    $1, %eax                #  25:     assign t8 <- 1
    movb    %al, -84(%ebp)         
    jmp     l_f0_17                 #  26:     goto   17
l_f0_16:
    movl    $0, %eax                #  28:     assign t8 <- 0
    movb    %al, -84(%ebp)         
l_f0_17:
    movzbl  -84(%ebp), %eax         #  30:     return t8
    jmp     l_f0_exit              
    jmp     l_f0_5                  #  31:     goto   5
l_f0_7_if_false:
l_f0_5:
    call    ReadInt                 #  34:     call   t9 <- ReadInt
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  35:     mul    t10 <- t9, 51287
    movl    $51287, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  36:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  37:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  38:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $18755, %eax            #  39:     mul    t12 <- 18755, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  40:     add    t13 <- t12, 2678
    movl    $2678, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  41:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  42:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  43:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  44:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  45:     add    t16 <- t15, 79774
    movl    $79774, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  46:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  47:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  48:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  49:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  50:     add    t19 <- t18, 90309
    movl    $90309, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  51:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  52:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  53:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  54:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  55:     add    t22 <- t21, 72939
    movl    $72939, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  56:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  57:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  58:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  59:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  60:     add    t26 <- v0, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -16(%ebp), %eax         #  61:     assign @t26 <- t10
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $v0       <bool> %ebp-26 ]

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
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, -26(%ebp)         
    movl    $39105, %eax            #   1:     add    t5 <- 39105, 63665
    movl    $63665, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t6 <- t5, 31225
    movl    $31225, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t7 <- t6, 97521
    movl    $97521, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     return t7
    jmp     l_f1_exit              
l_f1_3_while_cond:
    movl    $1, %eax                #   6:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_8                  #   7:     goto   8
    movl    $0, %eax                #   8:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f1_8:
    movl    $0, %eax                #  10:     if     0 # t8 goto 4_while_body
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_4_while_body      
    jmp     l_f1_2                  #  11:     goto   2
l_f1_4_while_body:
l_f1_11_while_cond:
    movl    $97, %eax               #  14:     if     97 >= 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_12_while_body     
    jmp     l_f1_10                 #  15:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  17:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_3_while_cond       #  19:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 10 of <array 7 of <array 6 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
l_f2_0:
    movl    $5938, %eax             #   5:     div    t5 <- 5938, 65570
    movl    $65570, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     mul    t6 <- t5, 10148
    movl    $10148, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $87497, %eax            #   7:     if     87497 = t6 goto 9
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_9                 
    jmp     l_f2_10                 #   8:     goto   10
l_f2_9:
    movl    $1, %eax                #  10:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_11                 #  11:     goto   11
l_f2_10:
    movl    $0, %eax                #  13:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f2_11:
    movzbl  -21(%ebp), %eax         #  15:     return t7
    jmp     l_f2_exit              
l_f2_14_while_cond:
    jmp     l_f2_15_while_body      #  17:     goto   15_while_body
    jmp     l_f2_13                 #  18:     goto   13
l_f2_15_while_body:
    jmp     l_f2_17                 #  20:     goto   17
l_f2_17:
    jmp     l_f2_14_while_cond      #  22:     goto   14_while_cond
l_f2_13:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 8 of <array 10 of <array 2 of <array 6 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

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
l_test_1_while_cond:
    movl    $11897, %eax            #   1:     if     11897 > 10516 goto 2_while_body
    movl    $10516, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    call    dummyCHARfunc           #   4:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   5:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    movl    $88651, %eax            #   8:     param  0 <- 88651
    pushl   %eax                   
    call    WriteInt                #   9:     call   WriteInt
    addl    $4, %esp               
    movl    $100, %eax              #  10:     if     100 > 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_11_if_true      
    jmp     l_test_12_if_false      #  11:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  13:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $10742, %eax            #  16:     add    t2 <- 10742, 70069
    movl    $70069, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     param  1 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  18:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  20:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    jmp     l_test_6                #  21:     goto   6
l_test_6:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <array 5 of <array 8 of <array 10 of <array 2 of <array 6 of <int>>>>>>
    .long    5
    .long    5
    .long    8
    .long   10
    .long    2
    .long    6
    .skip 19200








    # end of global data section
    #-----------------------------------------

    .end
##################################################
