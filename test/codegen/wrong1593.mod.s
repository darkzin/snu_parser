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
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t13      <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 53 of <array 14 of <array 34 of <array 54 of <array 59 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 15 of <array 32 of <array 19 of <array 56 of <char>>>>>>> %ebp+16 ]

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
    movl    $81090, %eax            #   2:     if     81090 >= 73279 goto 4_if_true
    movl    $73279, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   3:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   5:     goto   3
l_f0_5_if_false:
l_f0_3:
    movl    $21148, %eax            #   8:     if     21148 < 50350 goto 8
    movl    $50350, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_8                 
    jmp     l_f0_9                  #   9:     goto   9
l_f0_8:
    movl    $1, %eax                #  11:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_10                 #  12:     goto   10
l_f0_9:
    movl    $0, %eax                #  14:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f0_10:
    movzbl  -17(%ebp), %eax         #  16:     return t8
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  17:     call   t9 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  18:     if     t9 = 99 goto 13
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_13                
    jmp     l_f0_14                 #  19:     goto   14
l_f0_13:
    movl    $1, %eax                #  21:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_15                 #  22:     goto   15
l_f0_14:
    movl    $0, %eax                #  24:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_15:
    movzbl  -13(%ebp), %eax         #  26:     return t10
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  27:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_18                 #  29:     goto   18
    jmp     l_f0_19                 #  30:     goto   19
l_f0_18:
    movl    $1, %eax                #  32:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_20                 #  33:     goto   20
l_f0_19:
    movl    $0, %eax                #  35:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f0_20:
    movzbl  -14(%ebp), %eax         #  37:     return t11
    jmp     l_f0_exit              
    jmp     l_f0_25_if_false        #  38:     goto   25_if_false
    call    dummyCHARfunc           #  39:     call   t12 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $100, %eax              #  40:     if     100 > t12 goto 27
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_27                
    jmp     l_f0_28                 #  41:     goto   28
l_f0_27:
    movl    $1, %eax                #  43:     assign t13 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_29                 #  44:     goto   29
l_f0_28:
    movl    $0, %eax                #  46:     assign t13 <- 0
    movb    %al, -16(%ebp)         
l_f0_29:
    movzbl  -16(%ebp), %eax         #  48:     return t13
    jmp     l_f0_exit              
    jmp     l_f0_23                 #  49:     goto   23
l_f0_25_if_false:
l_f0_23:

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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 49 of <array 38 of <array 21 of <array 84 of <array 88 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 67 of <array 91 of <array 91 of <array 86 of <array 85 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 70 of <array 35 of <array 7 of <array 78 of <array 65 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    movl    $13598, %eax            #   1:     if     13598 < 31897 goto 2_while_body
    movl    $31897, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $16690, %eax            #   4:     param  0 <- 16690
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
l_f1_6_while_cond:
    jmp     l_f1_5                  #   7:     goto   5
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    movl    $97, %eax               #  10:     return 97
    jmp     l_f1_exit              
l_f1_10_while_cond:
    jmp     l_f1_10_while_cond      #  12:     goto   10_while_cond
    call    WriteLn                 #  13:     call   WriteLn
    jmp     l_f1_13                 #  14:     goto   13
l_f1_13:
l_f1_17_while_cond:
    movl    $99, %eax               #  17:     if     99 >= 100 goto 18_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_18_while_body     
    jmp     l_f1_16                 #  18:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  20:     goto   17_while_cond
l_f1_16:
    jmp     l_f1_1_while_cond       #  22:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  24:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_22_while_cond:
    movl    $99, %eax               #  26:     return 99
    jmp     l_f1_exit              
    jmp     l_f1_22_while_cond      #  27:     goto   22_while_cond

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 49 of <array 38 of <array 21 of <array 84 of <array 88 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 10 of <array 15 of <array 32 of <array 19 of <array 56 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 53 of <array 14 of <array 34 of <array 54 of <array 59 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t15      <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 70 of <array 35 of <array 7 of <array 78 of <array 65 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <ptr(4) to <array 67 of <array 91 of <array 91 of <array 86 of <array 85 of <int>>>>>>> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 47 of <array 1 of <array 45 of <array 18 of <array 51 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 19 of <array 30 of <array 7 of <array 74 of <array 71 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 24 of <array 87 of <array 22 of <array 50 of <array 94 of <bool>>>>>>> %ebp+20 ]
    #   -289042052(%ebp)  289042008  [ $v4       <array 49 of <array 38 of <array 21 of <array 84 of <array 88 of <char>>>>>> %ebp-289042052 ]
    #   667685628(%ebp)  -956727680  [ $v5       <array 67 of <array 91 of <array 91 of <array 86 of <array 85 of <int>>>>>> %ebp+667685628 ]
    #   580735104(%ebp)  86950524  [ $v6       <array 70 of <array 35 of <array 7 of <array 78 of <array 65 of <bool>>>>>> %ebp+580735104 ]
    #   500358672(%ebp)  80376432  [ $v7       <array 53 of <array 14 of <array 34 of <array 54 of <array 59 of <bool>>>>>> %ebp+500358672 ]
    #   495251448(%ebp)  5107224  [ $v8       <array 10 of <array 15 of <array 32 of <array 19 of <array 56 of <char>>>>>> %ebp+495251448 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-495251460, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-123812865, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-289042052(%ebp)     # local array 'v4': 5 dimensions
    movl    $49,-289042048(%ebp)    #   dimension 1: 49 elements
    movl    $38,-289042044(%ebp)    #   dimension 2: 38 elements
    movl    $21,-289042040(%ebp)    #   dimension 3: 21 elements
    movl    $84,-289042036(%ebp)    #   dimension 4: 84 elements
    movl    $88,-289042032(%ebp)    #   dimension 5: 88 elements
    movl    $5,667685628(%ebp)      # local array 'v5': 5 dimensions
    movl    $67,667685632(%ebp)     #   dimension 1: 67 elements
    movl    $91,667685636(%ebp)     #   dimension 2: 91 elements
    movl    $91,667685640(%ebp)     #   dimension 3: 91 elements
    movl    $86,667685644(%ebp)     #   dimension 4: 86 elements
    movl    $85,667685648(%ebp)     #   dimension 5: 85 elements
    movl    $5,580735104(%ebp)      # local array 'v6': 5 dimensions
    movl    $70,580735108(%ebp)     #   dimension 1: 70 elements
    movl    $35,580735112(%ebp)     #   dimension 2: 35 elements
    movl    $7,580735116(%ebp)      #   dimension 3: 7 elements
    movl    $78,580735120(%ebp)     #   dimension 4: 78 elements
    movl    $65,580735124(%ebp)     #   dimension 5: 65 elements
    movl    $5,500358672(%ebp)      # local array 'v7': 5 dimensions
    movl    $53,500358676(%ebp)     #   dimension 1: 53 elements
    movl    $14,500358680(%ebp)     #   dimension 2: 14 elements
    movl    $34,500358684(%ebp)     #   dimension 3: 34 elements
    movl    $54,500358688(%ebp)     #   dimension 4: 54 elements
    movl    $59,500358692(%ebp)     #   dimension 5: 59 elements
    movl    $5,495251448(%ebp)      # local array 'v8': 5 dimensions
    movl    $10,495251452(%ebp)     #   dimension 1: 10 elements
    movl    $15,495251456(%ebp)     #   dimension 2: 15 elements
    movl    $32,495251460(%ebp)     #   dimension 3: 32 elements
    movl    $19,495251464(%ebp)     #   dimension 4: 19 elements
    movl    $56,495251468(%ebp)     #   dimension 5: 56 elements

    # function body
    movl    $2708, %eax             #   0:     param  3 <- 2708
    pushl   %eax                   
    leal    580735104(%ebp), %eax   #   1:     &()    t8 <- v6
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   2:     param  2 <- t8
    pushl   %eax                   
    leal    667685628(%ebp), %eax   #   3:     &()    t9 <- v5
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     param  1 <- t9
    pushl   %eax                   
    leal    -289042052(%ebp), %eax  #   5:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #   7:     call   t11 <- f1
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   8:     return t11
    jmp     l_f2_exit              
    leal    495251448(%ebp), %eax   #   9:     &()    t12 <- v8
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  2 <- t12
    pushl   %eax                   
    jmp     l_f2_3                  #  11:     goto   3
    movl    $1, %eax                #  12:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_4                  #  13:     goto   4
l_f2_3:
    movl    $0, %eax                #  15:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f2_4:
    movzbl  -25(%ebp), %eax         #  17:     param  1 <- t13
    pushl   %eax                   
    leal    500358672(%ebp), %eax   #  18:     &()    t14 <- v7
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     param  0 <- t14
    pushl   %eax                   
    call    f0                      #  20:     call   t15 <- f0
    addl    $12, %esp              
    movb    %al, -33(%ebp)         
    call    dummyProcedure          #  21:     call   dummyProcedure

l_f2_exit:
    # epilogue
    addl    $-495251460, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 70 of <array 35 of <array 7 of <array 78 of <array 65 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 67 of <array 91 of <array 91 of <array 86 of <array 85 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 49 of <array 38 of <array 21 of <array 84 of <array 88 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 10 of <array 15 of <array 32 of <array 19 of <array 56 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 53 of <array 14 of <array 34 of <array 54 of <array 59 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <char> %ebp-38 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $21568, %eax            #   0:     param  3 <- 21568
    pushl   %eax                   
    leal    v2, %eax                #   1:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t0
    pushl   %eax                   
    leal    v1, %eax                #   3:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t1
    pushl   %eax                   
    leal    v0, %eax                #   5:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #   7:     call   t3 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    leal    v4, %eax                #   8:     &()    t4 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     param  2 <- t4
    pushl   %eax                   
    movl    $1, %eax                #  10:     param  1 <- 1
    pushl   %eax                   
    leal    v3, %eax                #  11:     &()    t5 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  13:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -37(%ebp)         
    call    dummyCHARfunc           #  14:     call   t7 <- dummyCHARfunc
    movb    %al, -38(%ebp)         

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v0:                                 # <array 49 of <array 38 of <array 21 of <array 84 of <array 88 of <char>>>>>>
    .long    5
    .long   49
    .long   38
    .long   21
    .long   84
    .long   88
    .skip 289041984
v1:                                 # <array 67 of <array 91 of <array 91 of <array 86 of <array 85 of <int>>>>>>
    .long    5
    .long   67
    .long   91
    .long   91
    .long   86
    .long   85
    .skip -956727704
v2:                                 # <array 70 of <array 35 of <array 7 of <array 78 of <array 65 of <bool>>>>>>
    .long    5
    .long   70
    .long   35
    .long    7
    .long   78
    .long   65
    .skip 86950500
v3:                                 # <array 53 of <array 14 of <array 34 of <array 54 of <array 59 of <bool>>>>>>
    .long    5
    .long   53
    .long   14
    .long   34
    .long   54
    .long   59
    .skip 80376408
v4:                                 # <array 10 of <array 15 of <array 32 of <array 19 of <array 56 of <char>>>>>>
    .long    5
    .long   10
    .long   15
    .long   32
    .long   19
    .long   56
    .skip 5107200








    # end of global data section
    #-----------------------------------------

    .end
##################################################
