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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $97, %eax               #   0:     return 97
    jmp     l_f0_exit              
    movl    $98, %eax               #   1:     return 98
    jmp     l_f0_exit              
    movl    $99, %eax               #   2:     return 99
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t6       <char> %ebp-77 ]
    #    -78(%ebp)   1  [ $t7       <char> %ebp-78 ]
    #    -79(%ebp)   1  [ $t8       <bool> %ebp-79 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 50 of <array 9 of <array 80 of <array 100 of <array 12 of <bool>>>>>>> %ebp+20 ]

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
l_f1_1_while_cond:
    movl    $98, %eax               #   1:     if     98 >= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyINTfunc            #   4:     call   t5 <- dummyINTfunc
    movl    %eax, -76(%ebp)        
l_f1_6_while_cond:
    movl    $97, %eax               #   6:     if     97 > 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   9:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_1_while_cond       #  11:     goto   1_while_cond
l_f1_0:
    movl    $97, %eax               #  13:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  14:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #  15:     if     t6 <= 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  16:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_15_if_false        #  18:     goto   15_if_false
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_9                  #  22:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $100, %eax              #  25:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  26:     call   t7 <- f0
    addl    $4, %esp               
    movb    %al, -78(%ebp)         
    movl    $100, %eax              #  27:     if     100 > t7 goto 17
    movzbl  -78(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_17                
    jmp     l_f1_18                 #  28:     goto   18
l_f1_17:
    movl    $1, %eax                #  30:     assign t8 <- 1
    movb    %al, -79(%ebp)         
    jmp     l_f1_19                 #  31:     goto   19
l_f1_18:
    movl    $0, %eax                #  33:     assign t8 <- 0
    movb    %al, -79(%ebp)         
l_f1_19:
    movl    $2, %eax                #  35:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  36:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  37:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $25520, %eax            #  38:     mul    t10 <- 25520, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  39:     add    t11 <- t10, 57415
    movl    $57415, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  40:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  41:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  42:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  43:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  44:     add    t14 <- t13, 29005
    movl    $29005, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  45:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  46:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  47:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  48:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  49:     add    t17 <- t16, 27156
    movl    $27156, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  50:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  51:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  52:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  53:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  54:     add    t20 <- t19, 94153
    movl    $94153, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  55:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  56:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  57:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  58:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    20(%ebp), %eax          #  59:     add    t24 <- v3, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -79(%ebp), %eax         #  60:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 59 of <array 11 of <array 99 of <array 81 of <array 62 of <int>>>>>>> %ebp+8 ]

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
    movl    $43282, %eax            #   0:     mul    t5 <- 43282, 57286
    movl    $57286, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   1:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t7 <- t5, t6
    movl    -20(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t7
    jmp     l_f2_exit              
    call    ReadInt                 #   4:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    $43352, %eax            #   5:     sub    t9 <- 43352, 36170
    movl    $36170, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     return t9
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 50 of <array 9 of <array 80 of <array 100 of <array 12 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
    movl    $95634, %eax            #   1:     assign v0 <- 95634
    movl    %eax, v0               
l_test_3_while_cond:
l_test_6_while_cond:
    movl    $53081, %eax            #   4:     if     53081 > 59420 goto 7_while_body
    movl    $59420, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   5:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
    leal    v1, %eax                #   9:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  3 <- t1
    pushl   %eax                   
    call    ReadInt                 #  11:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     param  2 <- t2
    pushl   %eax                   
    movl    $1, %eax                #  13:     param  1 <- 1
    pushl   %eax                   
    movl    $18512, %eax            #  14:     param  0 <- 18512
    pushl   %eax                   
    call    f1                      #  15:     call   t3 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_test_3_while_cond     #  16:     goto   3_while_cond
    movl    $48899, %eax            #  17:     if     48899 < 41667 goto 11_if_true
    movl    $41667, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #  18:     goto   12_if_false
l_test_11_if_true:
l_test_15_while_cond:
    movl    $98, %eax               #  21:     if     98 # 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_16_while_body   
    jmp     l_test_14               #  22:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  24:     goto   15_while_cond
l_test_14:
l_test_19_while_cond:
    movl    $21469, %eax            #  27:     if     21469 >= 76060 goto 20_while_body
    movl    $76060, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_20_while_body   
    jmp     l_test_18               #  28:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  30:     goto   19_while_cond
l_test_18:
l_test_23_while_cond:
    movl    $99, %eax               #  33:     if     99 >= 99 goto 24_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_24_while_body   
    jmp     l_test_22               #  34:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  36:     goto   23_while_cond
l_test_22:
    movl    $95544, %eax            #  38:     param  0 <- 95544
    pushl   %eax                   
    call    WriteInt                #  39:     call   WriteInt
    addl    $4, %esp               
    movl    $1, %eax                #  40:     assign v2 <- 1
    movb    %al, v2                
    call    ReadInt                 #  41:     call   t4 <- ReadInt
    movl    %eax, -32(%ebp)        
    jmp     l_test_10               #  42:     goto   10
l_test_12_if_false:
l_test_10:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 50 of <array 9 of <array 80 of <array 100 of <array 12 of <bool>>>>>>
    .long    5
    .long   50
    .long    9
    .long   80
    .long  100
    .long   12
    .skip 43200000
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
