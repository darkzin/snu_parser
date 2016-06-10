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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <bool> %ebp-19 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 7 of <array 9 of <array 1 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 10 of <array 10 of <array 7 of <array 3 of <bool>>>>>>> %ebp+20 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    leal    _str_1, %eax            #   0:     &()    t1 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_f0_2_while_cond:
    call    dummyBOOLfunc           #   4:     call   t2 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     if     t2 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_while_body:
    movl    $1, %eax                #   8:     return 1
    jmp     l_f0_exit              
    movl    $60176, %eax            #   9:     assign v4 <- 60176
    movl    %eax, -24(%ebp)        
    jmp     l_f0_2_while_cond       #  10:     goto   2_while_cond
l_f0_1:
    call    dummyCHARfunc           #  12:     call   t3 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $97, %eax               #  13:     if     97 >= t3 goto 7
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_7                 
    jmp     l_f0_8                  #  14:     goto   8
l_f0_7:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f0_9                  #  17:     goto   9
l_f0_8:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -19(%ebp)         
l_f0_9:
    movzbl  -19(%ebp), %eax         #  21:     return t4
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 10 of <array 10 of <array 7 of <array 3 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 7 of <array 9 of <array 1 of <array 5 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t8       <char> %ebp-38 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 4 of <array 10 of <array 7 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 7 of <array 7 of <array 8 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 3 of <array 6 of <array 3 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #   -700(%ebp)  654  [ $v3       <array 2 of <array 7 of <array 9 of <array 1 of <array 5 of <bool>>>>>> %ebp-700 ]
    #   -21724(%ebp)  21024  [ $v4       <array 10 of <array 10 of <array 10 of <array 7 of <array 3 of <bool>>>>>> %ebp-21724 ]
    #   -21728(%ebp)   4  [ $v5       <int> %ebp-21728 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $21716, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5429, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-700(%ebp)           # local array 'v3': 5 dimensions
    movl    $2,-696(%ebp)           #   dimension 1: 2 elements
    movl    $7,-692(%ebp)           #   dimension 2: 7 elements
    movl    $9,-688(%ebp)           #   dimension 3: 9 elements
    movl    $1,-684(%ebp)           #   dimension 4: 1 elements
    movl    $5,-680(%ebp)           #   dimension 5: 5 elements
    movl    $5,-21724(%ebp)         # local array 'v4': 5 dimensions
    movl    $10,-21720(%ebp)        #   dimension 1: 10 elements
    movl    $10,-21716(%ebp)        #   dimension 2: 10 elements
    movl    $10,-21712(%ebp)        #   dimension 3: 10 elements
    movl    $7,-21708(%ebp)         #   dimension 4: 7 elements
    movl    $3,-21704(%ebp)         #   dimension 5: 3 elements

    # function body
    leal    -21724(%ebp), %eax      #   0:     &()    t1 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t1
    pushl   %eax                   
    movl    $14568, %eax            #   2:     sub    t2 <- 14568, 41430
    movl    $41430, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t3 <- t2, 88172
    movl    $88172, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t4 <- t3, 4930
    movl    $4930, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     if     t4 # 97742 goto 1
    movl    $97742, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #   6:     goto   2
l_f1_1:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_3                  #   9:     goto   3
l_f1_2:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_f1_3:
    movzbl  -29(%ebp), %eax         #  13:     param  2 <- t5
    pushl   %eax                   
    leal    -700(%ebp), %eax        #  14:     &()    t6 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     param  1 <- t6
    pushl   %eax                   
    movl    $97, %eax               #  16:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  17:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
    call    dummyCHARfunc           #  18:     call   t8 <- dummyCHARfunc
    movb    %al, -38(%ebp)         
l_f1_7_while_cond:
    movl    $91443, %eax            #  20:     assign v5 <- 91443
    movl    %eax, -21728(%ebp)     
    call    dummyINTfunc            #  21:     call   t9 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    jmp     l_f1_7_while_cond       #  22:     goto   7_while_cond

l_f1_exit:
    # epilogue
    addl    $21716, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 3 of <array 6 of <array 3 of <array 1 of <bool>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t26      <bool> %ebp-85 ]
    #    -86(%ebp)   1  [ $t27      <bool> %ebp-86 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t3       <ptr(4) to <array 4 of <array 7 of <array 7 of <array 8 of <array 4 of <bool>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 4 of <array 10 of <array 7 of <array 4 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t5       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 3 of <array 6 of <array 3 of <array 1 of <bool>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t7       <ptr(4) to <array 4 of <array 7 of <array 7 of <array 8 of <array 4 of <bool>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t8       <ptr(4) to <array 4 of <array 4 of <array 10 of <array 7 of <array 4 of <char>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t9       <int> %ebp-124 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 2 of <array 10 of <array 10 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 4 of <array 4 of <array 8 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 3 of <array 1 of <array 3 of <array 2 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -4628(%ebp)  4504  [ $v4       <array 4 of <array 4 of <array 10 of <array 7 of <array 4 of <char>>>>>> %ebp-4628 ]
    #   -10924(%ebp)  6296  [ $v5       <array 4 of <array 7 of <array 7 of <array 8 of <array 4 of <bool>>>>>> %ebp-10924 ]
    #   -11112(%ebp)  186  [ $v6       <array 3 of <array 3 of <array 6 of <array 3 of <array 1 of <bool>>>>>> %ebp-11112 ]
    #   -11116(%ebp)   4  [ $v7       <int> %ebp-11116 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $11104, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2776, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4628(%ebp)          # local array 'v4': 5 dimensions
    movl    $4,-4624(%ebp)          #   dimension 1: 4 elements
    movl    $4,-4620(%ebp)          #   dimension 2: 4 elements
    movl    $10,-4616(%ebp)         #   dimension 3: 10 elements
    movl    $7,-4612(%ebp)          #   dimension 4: 7 elements
    movl    $4,-4608(%ebp)          #   dimension 5: 4 elements
    movl    $5,-10924(%ebp)         # local array 'v5': 5 dimensions
    movl    $4,-10920(%ebp)         #   dimension 1: 4 elements
    movl    $7,-10916(%ebp)         #   dimension 2: 7 elements
    movl    $7,-10912(%ebp)         #   dimension 3: 7 elements
    movl    $8,-10908(%ebp)         #   dimension 4: 8 elements
    movl    $4,-10904(%ebp)         #   dimension 5: 4 elements
    movl    $5,-11112(%ebp)         # local array 'v6': 5 dimensions
    movl    $3,-11108(%ebp)         #   dimension 1: 3 elements
    movl    $3,-11104(%ebp)         #   dimension 2: 3 elements
    movl    $6,-11100(%ebp)         #   dimension 3: 6 elements
    movl    $3,-11096(%ebp)         #   dimension 4: 3 elements
    movl    $1,-11092(%ebp)         #   dimension 5: 1 elements

    # function body
l_f2_1_while_cond:
    movl    $100, %eax              #   1:     if     100 <= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $99, %eax               #   4:     if     99 < 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_5                 
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $1, %eax                #   7:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   8:     goto   7
l_f2_6:
    movl    $0, %eax                #  10:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  12:     assign v3 <- t1
    movb    %al, 20(%ebp)          
    leal    -11112(%ebp), %eax      #  13:     &()    t2 <- v6
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  14:     param  2 <- t2
    pushl   %eax                   
    leal    -10924(%ebp), %eax      #  15:     &()    t3 <- v5
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  16:     param  1 <- t3
    pushl   %eax                   
    leal    -4628(%ebp), %eax       #  17:     &()    t4 <- v4
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  18:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  19:     call   t5 <- f1
    addl    $12, %esp              
    movl    %eax, -108(%ebp)       
    movl    $41387, %eax            #  20:     if     41387 <= 62646 goto 11_if_true
    movl    $62646, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  21:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  23:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_16_if_false        #  26:     goto   16_if_false
    jmp     l_f2_14                 #  27:     goto   14
l_f2_16_if_false:
l_f2_14:
    movl    $100, %eax              #  30:     if     100 < 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  31:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  33:     goto   17
l_f2_19_if_false:
l_f2_17:
    leal    -11112(%ebp), %eax      #  36:     &()    t6 <- v6
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  37:     param  2 <- t6
    pushl   %eax                   
    leal    -10924(%ebp), %eax      #  38:     &()    t7 <- v5
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  39:     param  1 <- t7
    pushl   %eax                   
    leal    -4628(%ebp), %eax       #  40:     &()    t8 <- v4
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  41:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  42:     call   t9 <- f1
    addl    $12, %esp              
    movl    %eax, -124(%ebp)       
l_f2_23_while_cond:
    movl    $27972, %eax            #  44:     if     27972 < 21421 goto 24_while_body
    movl    $21421, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_24_while_body     
    jmp     l_f2_22                 #  45:     goto   22
l_f2_24_while_body:
    jmp     l_f2_23_while_cond      #  47:     goto   23_while_cond
l_f2_22:
    movl    $30501, %eax            #  49:     if     30501 > 63377 goto 27_if_true
    movl    $63377, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_27_if_true        
    jmp     l_f2_28_if_false        #  50:     goto   28_if_false
l_f2_27_if_true:
    jmp     l_f2_26                 #  52:     goto   26
l_f2_28_if_false:
l_f2_26:
    movl    $46207, %eax            #  55:     assign v7 <- 46207
    movl    %eax, -11116(%ebp)     
    movl    $2, %eax                #  56:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  57:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  58:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $83446, %eax            #  59:     mul    t11 <- 83446, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  60:     add    t12 <- t11, 46009
    movl    $46009, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  61:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  62:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  63:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  64:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  65:     add    t15 <- t14, 69088
    movl    $69088, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  66:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  67:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  68:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  69:     mul    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  70:     add    t18 <- t17, 55774
    movl    $55774, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  71:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  72:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  73:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  74:     mul    t20 <- t18, t19
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  75:     add    t21 <- t20, 33461
    movl    $33461, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  76:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  77:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  78:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  79:     add    t24 <- t22, t23
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  80:     add    t25 <- v1, t24
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $0, %eax                #  81:     assign @t25 <- 0
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $100, %eax              #  82:     if     100 = 100 goto 33
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_33                
    jmp     l_f2_34                 #  83:     goto   34
l_f2_33:
    movl    $1, %eax                #  85:     assign t26 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f2_35                 #  86:     goto   35
l_f2_34:
    movl    $0, %eax                #  88:     assign t26 <- 0
    movb    %al, -85(%ebp)         
l_f2_35:
    movzbl  -85(%ebp), %eax         #  90:     assign v3 <- t26
    movb    %al, 20(%ebp)          
    jmp     l_f2_1_while_cond       #  91:     goto   1_while_cond
l_f2_0:
    movl    $100, %eax              #  93:     if     100 >= 98 goto 38_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_38_if_true        
    jmp     l_f2_39_if_false        #  94:     goto   39_if_false
l_f2_38_if_true:
    movl    $99, %eax               #  96:     if     99 < 97 goto 42
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_42                
    jmp     l_f2_43                 #  97:     goto   43
l_f2_42:
    movl    $1, %eax                #  99:     assign t27 <- 1
    movb    %al, -86(%ebp)         
    jmp     l_f2_44                 # 100:     goto   44
l_f2_43:
    movl    $0, %eax                # 102:     assign t27 <- 0
    movb    %al, -86(%ebp)         
l_f2_44:
    movzbl  -86(%ebp), %eax         # 104:     return t27
    jmp     l_f2_exit              
    movl    $49749, %eax            # 105:     if     49749 = 62635 goto 47_if_true
    movl    $62635, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_47_if_true        
    jmp     l_f2_48_if_false        # 106:     goto   48_if_false
l_f2_47_if_true:
    jmp     l_f2_46                 # 108:     goto   46
l_f2_48_if_false:
l_f2_46:
    movl    $38296, %eax            # 111:     if     38296 <= 34157 goto 51_if_true
    movl    $34157, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_51_if_true        
    jmp     l_f2_52_if_false        # 112:     goto   52_if_false
l_f2_51_if_true:
    jmp     l_f2_50                 # 114:     goto   50
l_f2_52_if_false:
l_f2_50:
    jmp     l_f2_37                 # 117:     goto   37
l_f2_39_if_false:
l_f2_37:
l_f2_55_while_cond:
    movl    $37177, %eax            # 121:     mul    t28 <- 37177, 50101
    movl    $50101, %ebx           
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    $5667, %eax             # 122:     sub    t29 <- 5667, t28
    movl    -92(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $2048, %eax             # 123:     if     2048 < t29 goto 56_while_body
    movl    -96(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_56_while_body     
    jmp     l_f2_54                 # 124:     goto   54
l_f2_56_while_body:
    jmp     l_f2_55_while_cond      # 126:     goto   55_while_cond
l_f2_54:

l_f2_exit:
    # epilogue
    addl    $11104, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    movl    $0, %eax                #   1:     assign v0 <- 0
    movb    %al, v0                
    call    dummyProcedure          #   2:     call   dummyProcedure
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
    movl    $98, %eax               #   4:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               
    movl    $15634, %eax            #   6:     sub    t0 <- 15634, 55037
    movl    $55037, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     assign v1 <- t0
    movl    %eax, v1               

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
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
