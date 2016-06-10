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
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]

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
    movl    $51494, %eax            #   0:     mul    t3 <- 51494, 41228
    movl    $41228, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t3
    jmp     l_f0_exit              
    leal    _str_1, %eax            #   2:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               
l_f0_3_while_cond:
    movl    $97, %eax               #   6:     if     97 >= 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_4_while_body      
    jmp     l_f0_2                  #   7:     goto   2
l_f0_4_while_body:
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f0_3_while_cond       #  10:     goto   3_while_cond
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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 5 of <array 1 of <array 6 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t4 <- t3, 58326
    movl    $58326, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
    call    f0                      #   4:     call   t5 <- f0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     assign v2 <- t5
    movl    %eax, 16(%ebp)         
    call    dummyCHARfunc           #   6:     call   t6 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   7:     assign v1 <- t6
    movb    %al, 12(%ebp)          

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
    #    -76(%ebp)   4  [ $t3       <ptr(4) to <array 6 of <array 5 of <array 1 of <array 6 of <array 4 of <int>>>>>>> %ebp-76 ]
    #    -77(%ebp)   1  [ $t4       <char> %ebp-77 ]
    #    -84(%ebp)   4  [ $t5       <ptr(4) to <array 6 of <array 5 of <array 1 of <array 6 of <array 4 of <int>>>>>>> %ebp-84 ]
    #    -85(%ebp)   1  [ $t6       <char> %ebp-85 ]
    #    -86(%ebp)   1  [ $t7       <char> %ebp-86 ]
    #    -87(%ebp)   1  [ $t8       <bool> %ebp-87 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 2 of <array 2 of <array 8 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 8 of <array 5 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #   -2996(%ebp)  2904  [ $v2       <array 6 of <array 5 of <array 1 of <array 6 of <array 4 of <int>>>>>> %ebp-2996 ]
    #   -2997(%ebp)   1  [ $v3       <char> %ebp-2997 ]
    #   -2998(%ebp)   1  [ $v4       <bool> %ebp-2998 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2988, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $747, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2996(%ebp)          # local array 'v2': 5 dimensions
    movl    $6,-2992(%ebp)          #   dimension 1: 6 elements
    movl    $5,-2988(%ebp)          #   dimension 2: 5 elements
    movl    $1,-2984(%ebp)          #   dimension 3: 1 elements
    movl    $6,-2980(%ebp)          #   dimension 4: 6 elements
    movl    $4,-2976(%ebp)          #   dimension 5: 4 elements

    # function body
    movl    $97503, %eax            #   0:     param  2 <- 97503
    pushl   %eax                   
    movl    $99, %eax               #   1:     param  1 <- 99
    pushl   %eax                   
    leal    -2996(%ebp), %eax       #   2:     &()    t3 <- v2
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   3:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #   4:     call   t4 <- f1
    addl    $12, %esp              
    movb    %al, -77(%ebp)         
    movl    $52054, %eax            #   5:     param  2 <- 52054
    pushl   %eax                   
    movl    $99, %eax               #   6:     param  1 <- 99
    pushl   %eax                   
    leal    -2996(%ebp), %eax       #   7:     &()    t5 <- v2
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   8:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #   9:     call   t6 <- f1
    addl    $12, %esp              
    movb    %al, -85(%ebp)         
    movzbl  -85(%ebp), %eax         #  10:     assign v3 <- t6
    movb    %al, -2997(%ebp)       
l_f2_3_while_cond:
    jmp     l_f2_2                  #  12:     goto   2
    jmp     l_f2_2                  #  13:     goto   2
    jmp     l_f2_2                  #  14:     goto   2
    jmp     l_f2_2                  #  15:     goto   2
    movl    $97, %eax               #  16:     assign v3 <- 97
    movb    %al, -2997(%ebp)       
    call    dummyCHARfunc           #  17:     call   t7 <- dummyCHARfunc
    movb    %al, -86(%ebp)         
    call    dummyBOOLfunc           #  18:     call   t8 <- dummyBOOLfunc
    movb    %al, -87(%ebp)         
    movl    $2, %eax                #  19:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $87762, %eax            #  22:     mul    t10 <- 87762, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     add    t11 <- t10, 29864
    movl    $29864, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  27:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     add    t14 <- t13, 76761
    movl    $76761, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  30:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  31:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  32:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  33:     add    t17 <- t16, 5031
    movl    $5031, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  35:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  36:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  37:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  38:     add    t20 <- t19, 45569
    movl    $45569, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  39:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  40:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  41:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  42:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  43:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $0, %eax                #  44:     assign @t24 <- 0
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $99, %eax               #  45:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_3_while_cond       #  46:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $2988, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
l_test_2_while_body:
l_test_5_while_cond:
    movl    $0, %eax                #   4:     if     0 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #  10:     goto   1_while_cond
    movl    $73238, %eax            #  11:     mul    t0 <- 73238, 6734
    movl    $6734, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     assign v0 <- t0
    movl    %eax, v0               
    jmp     l_test_15               #  13:     goto   15
    movl    $1, %eax                #  14:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_16               #  15:     goto   16
l_test_15:
    movl    $0, %eax                #  17:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_16:
    jmp     l_test_19               #  19:     goto   19
    jmp     l_test_19               #  20:     goto   19
    jmp     l_test_20               #  21:     goto   20
l_test_19:
    movl    $1, %eax                #  23:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_21               #  24:     goto   21
l_test_20:
    movl    $0, %eax                #  26:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_21:
    movzbl  -17(%ebp), %eax         #  28:     if     t1 # t2 goto 11_if_true
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_11_if_true      
    jmp     l_test_12_if_false      #  29:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  31:     goto   10
l_test_12_if_false:
l_test_10:
l_test_26_while_cond:
    movl    $3496, %eax             #  35:     if     3496 >= 73922 goto 27_while_body
    movl    $73922, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_27_while_body   
    jmp     l_test_25               #  36:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  38:     goto   26_while_cond
l_test_25:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
