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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <char> %ebp-16 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 <= t6 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #   7:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #   8:     if     0 # t7 goto 5_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   9:     goto   6_if_false
l_f0_5_if_true:
    movl    $97, %eax               #  11:     if     97 = 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  12:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  14:     goto   8
l_f0_10_if_false:
l_f0_8:
    movl    $97, %eax               #  17:     assign v0 <- 97
    movb    %al, -16(%ebp)         
    jmp     l_f0_4                  #  18:     goto   4
l_f0_6_if_false:
l_f0_4:
    call    dummyCHARfunc           #  21:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  22:     return t8
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 9 of <array 9 of <array 10 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 6 of <array 5 of <array 2 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 3 of <array 8 of <array 1 of <array 7 of <int>>>>>>> %ebp+16 ]

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
    jmp     l_f1_6_if_false         #   1:     goto   6_if_false
    jmp     l_f1_4                  #   2:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_8_while_cond:
    jmp     l_f1_7                  #   7:     goto   7
    call    f0                      #   8:     call   t6 <- f0
    movb    %al, -13(%ebp)         
    jmp     l_f1_8_while_cond       #   9:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_13_if_false        #  11:     goto   13_if_false
    jmp     l_f1_13_if_false        #  12:     goto   13_if_false
    jmp     l_f1_11                 #  13:     goto   11
l_f1_13_if_false:
l_f1_11:

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
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t7       <char> %ebp-77 ]
    #    -78(%ebp)   1  [ $t8       <bool> %ebp-78 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 4 of <array 3 of <array 5 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 4 of <array 1 of <array 9 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #    -88(%ebp)   4  [ $v2       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $v3       <bool> %ebp-89 ]

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
l_f2_1_while_cond:
    movl    $9462, %eax             #   1:     assign v2 <- 9462
    movl    %eax, -88(%ebp)        
    movl    $53472, %eax            #   2:     param  0 <- 53472
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
    call    ReadInt                 #   5:     call   t6 <- ReadInt
    movl    %eax, -76(%ebp)        
    call    dummyCHARfunc           #   6:     call   t7 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #   7:     if     t7 < 98 goto 8
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_8                 
    jmp     l_f2_9                  #   8:     goto   9
l_f2_8:
    movl    $1, %eax                #  10:     assign t8 <- 1
    movb    %al, -78(%ebp)         
    jmp     l_f2_10                 #  11:     goto   10
l_f2_9:
    movl    $0, %eax                #  13:     assign t8 <- 0
    movb    %al, -78(%ebp)         
l_f2_10:
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $1001, %eax             #  18:     mul    t10 <- 1001, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     add    t11 <- t10, 74801
    movl    $74801, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  23:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     add    t14 <- t13, 14866
    movl    $14866, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  28:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  29:     add    t17 <- t16, 89396
    movl    $89396, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  33:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  34:     add    t20 <- t19, 16693
    movl    $16693, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  35:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  36:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  37:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  38:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  39:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -78(%ebp), %eax         #  40:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 1 of <array 3 of <array 8 of <array 1 of <array 7 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 6 of <array 5 of <array 2 of <array 3 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 9 of <array 9 of <array 10 of <array 7 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #   2:     if     1 = 0 goto 3_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_6                #   5:     goto   6
l_test_6:
    call    dummyProcedure          #   7:     call   dummyProcedure
    movl    $4523, %eax             #   8:     if     4523 <= 15406 goto 11_if_true
    movl    $15406, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_11_if_true      
    jmp     l_test_12_if_false      #   9:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  11:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_2                #  14:     goto   2
l_test_4_if_false:
l_test_2:
    jmp     l_test_exit            
    movl    $35996, %eax            #  18:     param  0 <- 35996
    pushl   %eax                   
    call    WriteInt                #  19:     call   WriteInt
    addl    $4, %esp               
l_test_17_while_cond:
    leal    v2, %eax                #  21:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  2 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  23:     &()    t3 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     param  1 <- t3
    pushl   %eax                   
    leal    v0, %eax                #  25:     &()    t4 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  27:     call   t5 <- f1
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  28:     if     t5 = 1 goto 18_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_18_while_body   
    jmp     l_test_16               #  29:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  31:     goto   17_while_cond
l_test_16:

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
v0:                                 # <array 6 of <array 9 of <array 9 of <array 10 of <array 7 of <char>>>>>>
    .long    5
    .long    6
    .long    9
    .long    9
    .long   10
    .long    7
    .skip 34020
v1:                                 # <array 3 of <array 6 of <array 5 of <array 2 of <array 3 of <int>>>>>>
    .long    5
    .long    3
    .long    6
    .long    5
    .long    2
    .long    3
    .skip 2160
v2:                                 # <array 1 of <array 3 of <array 8 of <array 1 of <array 7 of <int>>>>>>
    .long    5
    .long    1
    .long    3
    .long    8
    .long    1
    .long    7
    .skip  672








    # end of global data section
    #-----------------------------------------

    .end
##################################################
