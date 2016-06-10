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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 > t3 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    movl    $100, %eax              #   4:     return 100
    jmp     l_f0_exit              
    movl    $98, %eax               #   5:     return 98
    jmp     l_f0_exit              
    movl    $38294, %eax            #   6:     if     38294 >= 32384 goto 7_if_true
    movl    $32384, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $15261, %eax            #  15:     assign v2 <- 15261
    movl    %eax, -20(%ebp)        
l_f0_12_while_cond:
    jmp     l_f0_13_while_body      #  17:     goto   13_while_body
    jmp     l_f0_13_while_body      #  18:     goto   13_while_body
    jmp     l_f0_11                 #  19:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  21:     goto   12_while_cond
l_f0_11:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t8       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $t9       <char> %ebp-31 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 72 of <array 34 of <array 40 of <array 89 of <array 56 of <int>>>>>>> %ebp+8 ]
    #    -32(%ebp)   1  [ $v2       <char> %ebp-32 ]
    #    -33(%ebp)   1  [ $v3       <bool> %ebp-33 ]

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
l_f1_1_while_cond:
    movl    $31803, %eax            #   1:     add    t3 <- 31803, 51453
    movl    $51453, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t4 <- t3, 50914
    movl    $50914, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t4 = 1023 goto 2_while_body
    movl    $1023, %ebx            
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    call    dummyBOOLfunc           #   6:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movl    $81842, %eax            #   7:     if     81842 # 31157 goto 6_if_true
    movl    $31157, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   8:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #  10:     goto   5
l_f1_7_if_false:
l_f1_5:
    leal    _str_1, %eax            #  13:     &()    t6 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  15:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_1_while_cond       #  16:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_16                 #  18:     goto   16
    jmp     l_f1_16                 #  19:     goto   16
    movl    $1, %eax                #  20:     assign t7 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_17                 #  21:     goto   17
l_f1_16:
    movl    $0, %eax                #  23:     assign t7 <- 0
    movb    %al, -29(%ebp)         
l_f1_17:
    movzbl  -29(%ebp), %eax         #  25:     if     t7 = 1 goto 11
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_11                
    jmp     l_f1_12                 #  26:     goto   12
l_f1_11:
    movl    $1, %eax                #  28:     assign t8 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f1_13                 #  29:     goto   13
l_f1_12:
    movl    $0, %eax                #  31:     assign t8 <- 0
    movb    %al, -30(%ebp)         
l_f1_13:
    movzbl  -30(%ebp), %eax         #  33:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  34:     call   t9 <- f0
    addl    $4, %esp               
    movb    %al, -31(%ebp)         
    movzbl  -31(%ebp), %eax         #  35:     assign v2 <- t9
    movb    %al, -32(%ebp)         
l_f1_23_while_cond:
    movl    $1, %eax                #  37:     if     1 = 1 goto 24_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_24_while_body     
    jmp     l_f1_22                 #  38:     goto   22
l_f1_24_while_body:
    jmp     l_f1_23_while_cond      #  40:     goto   23_while_cond
l_f1_22:
    movl    $0, %eax                #  42:     assign v3 <- 0
    movb    %al, -33(%ebp)         
    movl    $1, %eax                #  43:     assign v3 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_19                 #  44:     goto   19
l_f1_19:

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 72 of <array 34 of <array 40 of <array 89 of <array 56 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t3       <char> %ebp-65 ]
    #    -66(%ebp)   1  [ $t4       <char> %ebp-66 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 22 of <array 71 of <array 76 of <array 32 of <array 37 of <char>>>>>>> %ebp+12 ]
    #   -1952133232(%ebp)  1952133144  [ $v3       <array 72 of <array 34 of <array 40 of <array 89 of <array 56 of <int>>>>>> %ebp-1952133232 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1952133220, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $488033305, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1952133232(%ebp)    # local array 'v3': 5 dimensions
    movl    $72,-1952133228(%ebp)   #   dimension 1: 72 elements
    movl    $34,-1952133224(%ebp)   #   dimension 2: 34 elements
    movl    $40,-1952133220(%ebp)   #   dimension 3: 40 elements
    movl    $89,-1952133216(%ebp)   #   dimension 4: 89 elements
    movl    $56,-1952133212(%ebp)   #   dimension 5: 56 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -66(%ebp)         
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   4:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $80326, %eax            #   5:     mul    t6 <- 80326, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   6:     add    t7 <- t6, 12539
    movl    $12539, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   9:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  10:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  11:     add    t10 <- t9, 90249
    movl    $90249, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  15:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    leal    -1952133232(%ebp), %eax #  16:     &()    t13 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     param  0 <- t13
    pushl   %eax                   
    call    f1                      #  18:     call   t14 <- f1
    addl    $4, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t15 <- t12, t14
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  23:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     add    t18 <- t17, 799
    movl    $799, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  27:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  28:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  29:     add    t22 <- v2, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $100, %eax              #  30:     assign @t22 <- 100
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $1952133220, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_7_while_cond:
    movl    $1001, %eax             #   8:     if     1001 < 48217 goto 11
    movl    $48217, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_11              
    jmp     l_test_12               #   9:     goto   12
l_test_11:
    movl    $1, %eax                #  11:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_13               #  12:     goto   13
l_test_12:
    movl    $0, %eax                #  14:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_13:
    movzbl  -13(%ebp), %eax         #  16:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_15               #  17:     goto   15
l_test_15:
    jmp     l_test_7_while_cond     #  19:     goto   7_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $2955, %eax             #  22:     if     2955 <= 19403 goto 24
    movl    $19403, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_24              
    jmp     l_test_22               #  23:     goto   22
l_test_24:
    movl    $1, %eax                #  25:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_23               #  26:     goto   23
l_test_22:
    movl    $0, %eax                #  28:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_23:
    movzbl  -14(%ebp), %eax         #  30:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  31:     call   t2 <- f0
    addl    $4, %esp               
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  32:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #  33:     call   WriteChar
    addl    $4, %esp               

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
