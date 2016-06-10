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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 1 of <array 9 of <array 10 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 7 of <array 3 of <array 10 of <array 4 of <bool>>>>>>> %ebp+16 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
l_f0_4_while_cond:
    movl    $47249, %eax            #   3:     if     47249 <= 21135 goto 5_while_body
    movl    $21135, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_5_while_body      
    jmp     l_f0_3                  #   4:     goto   3
l_f0_5_while_body:
    jmp     l_f0_4_while_cond       #   6:     goto   4_while_cond
l_f0_3:
    movl    $99, %eax               #   8:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
l_f0_0:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  13:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $49705, %eax            #  14:     mul    t12 <- 49705, t11
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $77490, %eax            #  15:     mul    t13 <- 77490, 81988
    movl    $81988, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     div    t14 <- t13, 53419
    movl    $53419, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t15 <- t12, t14
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t17 <- t15, t16
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     add    t18 <- t17, 99703
    movl    $99703, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  25:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  26:     mul    t20 <- t18, t19
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  27:     add    t21 <- t20, 71992
    movl    $71992, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  30:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  31:     mul    t23 <- t21, t22
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  32:     add    t24 <- t23, 47248
    movl    $47248, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  33:     mul    t25 <- t24, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  34:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  35:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  36:     add    t27 <- t25, t26
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  37:     add    t28 <- v3, t27
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $20535, %eax            #  38:     assign @t28 <- 20535
    movl    -84(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $100, %eax              #  39:     if     100 < 97 goto 13
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_13                
    jmp     l_f0_11_if_false        #  40:     goto   11_if_false
l_f0_13:
    jmp     l_f0_11_if_false        #  42:     goto   11_if_false
    jmp     l_f0_9                  #  43:     goto   9
l_f0_11_if_false:
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 9 of <array 4 of <array 8 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 6 of <array 10 of <array 2 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    movl    $100, %eax              #   0:     assign v4 <- 100
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   1:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   2:     call   t12 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t12      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 1 of <array 1 of <array 8 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]

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
    movl    $32533, %eax            #   0:     sub    t11 <- 32533, 12552
    movl    $12552, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t11
    movl    %eax, 8(%ebp)          
    call    dummyCHARfunc           #   2:     call   t12 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     param  0 <- t12
    pushl   %eax                   
    call    WriteChar               #   4:     call   WriteChar
    addl    $4, %esp               
    call    dummyINTfunc            #   5:     call   t13 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t10      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 3 of <array 6 of <array 10 of <array 2 of <array 1 of <bool>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <array 9 of <array 4 of <array 8 of <array 8 of <int>>>>>>> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    call    dummyBOOLfunc           #   2:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_test_3_while_cond:
    movl    $88725, %eax            #   4:     sub    t2 <- 88725, 82281
    movl    $82281, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     sub    t3 <- t2, 42424
    movl    $42424, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     add    t4 <- t3, 2828
    movl    $2828, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     sub    t5 <- t4, 26628
    movl    $26628, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     add    t6 <- t5, 31082
    movl    $31082, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     if     t6 > 81442 goto 4_while_body
    movl    $81442, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_4_while_body    
    jmp     l_test_2                #  10:     goto   2
l_test_4_while_body:
    movl    $84421, %eax            #  12:     assign v1 <- 84421
    movl    %eax, v1               
    jmp     l_test_7                #  13:     goto   7
l_test_7:
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  16:     goto   11_while_cond
l_test_14_while_cond:
    movl    $100, %eax              #  18:     if     100 > 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_15_while_body   
    jmp     l_test_13               #  19:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  21:     goto   14_while_cond
l_test_13:
    jmp     l_test_3_while_cond     #  23:     goto   3_while_cond
l_test_2:
    movl    $1, %eax                #  25:     if     1 # 0 goto 18_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_18_if_true      
    jmp     l_test_19_if_false      #  26:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_exit            
    jmp     l_test_17               #  29:     goto   17
l_test_19_if_false:
l_test_17:
    movl    $46553, %eax            #  32:     if     46553 < 95431 goto 23_if_true
    movl    $95431, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_23_if_true      
    jmp     l_test_24_if_false      #  33:     goto   24_if_false
l_test_23_if_true:
    movl    $97, %eax               #  35:     if     97 <= 99 goto 27
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_27              
    jmp     l_test_28               #  36:     goto   28
l_test_27:
    movl    $1, %eax                #  38:     assign t7 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_29               #  39:     goto   29
l_test_28:
    movl    $0, %eax                #  41:     assign t7 <- 0
    movb    %al, -37(%ebp)         
l_test_29:
    movzbl  -37(%ebp), %eax         #  43:     assign v2 <- t7
    movb    %al, v2                
    jmp     l_test_22               #  44:     goto   22
l_test_24_if_false:
l_test_22:
l_test_32_while_cond:
    movl    $97, %eax               #  48:     if     97 < 99 goto 33_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_33_while_body   
    jmp     l_test_31               #  49:     goto   31
l_test_33_while_body:
    leal    v4, %eax                #  51:     &()    t8 <- v4
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  52:     param  1 <- t8
    pushl   %eax                   
    leal    v3, %eax                #  53:     &()    t9 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  54:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  55:     call   t10 <- f1
    addl    $8, %esp               
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_32_while_cond    #  57:     goto   32_while_cond
l_test_31:

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
v2:                                 # <bool>
    .skip    1
    .align   4
v3:                                 # <array 5 of <array 9 of <array 4 of <array 8 of <array 8 of <int>>>>>>
    .long    5
    .long    5
    .long    9
    .long    4
    .long    8
    .long    8
    .skip 46080
v4:                                 # <array 3 of <array 6 of <array 10 of <array 2 of <array 1 of <bool>>>>>>
    .long    5
    .long    3
    .long    6
    .long   10
    .long    2
    .long    1
    .skip  360








    # end of global data section
    #-----------------------------------------

    .end
##################################################
