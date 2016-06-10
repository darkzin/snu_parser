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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <char> %ebp-16 ]

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
    movl    $86973, %eax            #   1:     if     86973 >= 51485 goto 2_while_body
    movl    $51485, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $99, %eax               #   4:     if     99 >= 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #   8:     goto   9_while_cond
    movl    $99, %eax               #   9:     return 99
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  10:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  11:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_4                  #  12:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_1_while_cond       #  15:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #  17:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  18:     call   t12 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  19:     assign v1 <- t12
    movb    %al, -16(%ebp)         

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
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 5 of <array 10 of <array 2 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 1 of <array 3 of <array 4 of <array 1 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 8 of <array 2 of <array 8 of <array 9 of <int>>>>>>> %ebp+20 ]
    #   -104(%ebp)   4  [ $v5       <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $v6       <char> %ebp-105 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_4_while_cond:
    jmp     l_f1_4_while_cond       #   1:     goto   4_while_cond
    movl    $96756, %eax            #   2:     add    t10 <- 96756, 85606
    movl    $85606, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t10
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_0                  #   5:     goto   0
l_f1_0:
    call    ReadInt                 #   7:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   9:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  10:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $17575, %eax            #  11:     mul    t13 <- 17575, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     add    t14 <- t13, 85022
    movl    $85022, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  14:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  15:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  16:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $8691, %eax             #  17:     div    t17 <- 8691, 71892
    movl    $71892, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  18:     mul    t18 <- t17, 86698
    movl    $86698, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  19:     mul    t19 <- t18, 34022
    movl    $34022, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  20:     div    t20 <- t19, 33143
    movl    $33143, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -40(%ebp), %eax         #  21:     add    t21 <- t16, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  23:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  24:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  25:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  26:     add    t24 <- t23, 14492
    movl    $14492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  28:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  29:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  30:     mul    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  31:     add    t27 <- t26, 47194
    movl    $47194, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  32:     mul    t28 <- t27, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    20(%ebp), %eax          #  33:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  34:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  35:     add    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    20(%ebp), %eax          #  36:     add    t31 <- v4, t30
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -20(%ebp), %eax         #  37:     assign @t31 <- t11
    movl    -100(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $100, %eax              #  38:     assign v6 <- 100
    movb    %al, -105(%ebp)        

l_f1_exit:
    # epilogue
    addl    $96, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $v1       <char> %ebp-13 ]

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
    movl    $99, %eax               #   0:     assign v1 <- 99
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     assign v1 <- 98
    movb    %al, -13(%ebp)         
l_f2_7_while_cond:
    movl    $9201, %eax             #   3:     if     9201 = 34126 goto 8_while_body
    movl    $34126, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #   4:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   6:     goto   7_while_cond
l_f2_6:
l_f2_11_while_cond:
    jmp     l_f2_10                 #   9:     goto   10
    jmp     l_f2_11_while_cond      #  10:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_1                  #  12:     goto   1
l_f2_1:
l_f2_14_while_cond:
    jmp     l_f2_13                 #  15:     goto   13
    jmp     l_f2_13                 #  16:     goto   13
    jmp     l_f2_13                 #  17:     goto   13
    jmp     l_f2_14_while_cond      #  18:     goto   14_while_cond
l_f2_13:

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 8 of <array 8 of <array 2 of <array 8 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 9 of <array 1 of <array 3 of <array 4 of <array 1 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t6       <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 8 of <array 5 of <array 10 of <array 2 of <array 10 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t9       <char> %ebp-34 ]

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
    movl    $11955, %eax            #   0:     if     11955 # 28436 goto 1
    movl    $28436, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    leal    v3, %eax                #  10:     &()    t2 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  3 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  12:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  2 <- t3
    pushl   %eax                   
    jmp     l_test_11               #  14:     goto   11
    jmp     l_test_12               #  15:     goto   12
l_test_11:
    movl    $1, %eax                #  17:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_13               #  18:     goto   13
l_test_12:
    movl    $0, %eax                #  20:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_test_13:
    jmp     l_test_18               #  22:     goto   18
    jmp     l_test_18               #  23:     goto   18
    jmp     l_test_18               #  24:     goto   18
    jmp     l_test_18               #  25:     goto   18
    movl    $1, %eax                #  26:     assign t5 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_19               #  27:     goto   19
l_test_18:
    movl    $0, %eax                #  29:     assign t5 <- 0
    movb    %al, -26(%ebp)         
l_test_19:
    movzbl  -25(%ebp), %eax         #  31:     if     t4 = t5 goto 7
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_7               
    jmp     l_test_8                #  32:     goto   8
l_test_7:
    movl    $1, %eax                #  34:     assign t6 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_test_9                #  35:     goto   9
l_test_8:
    movl    $0, %eax                #  37:     assign t6 <- 0
    movb    %al, -27(%ebp)         
l_test_9:
    movzbl  -27(%ebp), %eax         #  39:     param  1 <- t6
    pushl   %eax                   
    leal    v1, %eax                #  40:     &()    t7 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  41:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  42:     call   t8 <- f1
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    jmp     l_test_exit            
    call    dummyCHARfunc           #  44:     call   t9 <- dummyCHARfunc
    movb    %al, -34(%ebp)         
    movl    $100, %eax              #  45:     if     100 <= t9 goto 29_if_true
    movzbl  -34(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_29_if_true      
    jmp     l_test_30_if_false      #  46:     goto   30_if_false
l_test_29_if_true:
l_test_33_while_cond:
    jmp     l_test_32               #  49:     goto   32
    jmp     l_test_33_while_cond    #  50:     goto   33_while_cond
l_test_32:
    jmp     l_test_28               #  52:     goto   28
l_test_30_if_false:
l_test_28:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 8 of <array 5 of <array 10 of <array 2 of <array 10 of <int>>>>>>
    .long    5
    .long    8
    .long    5
    .long   10
    .long    2
    .long   10
    .skip 32000
v2:                                 # <array 9 of <array 1 of <array 3 of <array 4 of <array 1 of <int>>>>>>
    .long    5
    .long    9
    .long    1
    .long    3
    .long    4
    .long    1
    .skip  432
v3:                                 # <array 8 of <array 8 of <array 2 of <array 8 of <array 9 of <int>>>>>>
    .long    5
    .long    8
    .long    8
    .long    2
    .long    8
    .long    9
    .skip 36864








    # end of global data section
    #-----------------------------------------

    .end
##################################################
