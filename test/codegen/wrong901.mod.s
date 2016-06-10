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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     param  0 <- t5
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #   4:     call   t6 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   5:     return t6
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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t7       <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $t8       <bool> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 9 of <array 4 of <array 6 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
l_f1_1_while_cond:
    call    ReadInt                 #   1:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t4 <= 69764 goto 2_while_body
    movl    $69764, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $45869, %eax            #   5:     assign v2 <- 45869
    movl    %eax, 16(%ebp)         
l_f1_6_while_cond:
    movl    $98, %eax               #   7:     if     98 <= 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  10:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_1_while_cond       #  12:     goto   1_while_cond
l_f1_0:
    movl    $0, %eax                #  14:     if     0 # 0 goto 10_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  15:     goto   11_if_false
l_f1_10_if_true:
    movl    $100, %eax              #  17:     if     100 <= 97 goto 14
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_14                
    jmp     l_f1_15                 #  18:     goto   15
l_f1_14:
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_16                 #  21:     goto   16
l_f1_15:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f1_16:
    movzbl  -17(%ebp), %eax         #  25:     return t5
    jmp     l_f1_exit              
    movl    $99, %eax               #  26:     if     99 >= 100 goto 19
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_19                
    jmp     l_f1_20                 #  27:     goto   20
l_f1_19:
    movl    $1, %eax                #  29:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_21                 #  30:     goto   21
l_f1_20:
    movl    $0, %eax                #  32:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f1_21:
    movzbl  -18(%ebp), %eax         #  34:     return t6
    jmp     l_f1_exit              
    movl    $0, %eax                #  35:     return 0
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  36:     call   t7 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    jmp     l_f1_9                  #  37:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $86975, %eax            #  40:     if     86975 = 1462 goto 26
    movl    $1462, %ebx            
    cmpl    %ebx, %eax             
    je      l_f1_26                
    jmp     l_f1_27                 #  41:     goto   27
l_f1_26:
    movl    $1, %eax                #  43:     assign t8 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f1_28                 #  44:     goto   28
l_f1_27:
    movl    $0, %eax                #  46:     assign t8 <- 0
    movb    %al, -20(%ebp)         
l_f1_28:
    movzbl  -20(%ebp), %eax         #  48:     assign v3 <- t8
    movb    %al, 20(%ebp)          

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -53(%ebp)   1  [ $t20      <bool> %ebp-53 ]
    #    -54(%ebp)   1  [ $t21      <char> %ebp-54 ]
    #    -55(%ebp)   1  [ $t22      <bool> %ebp-55 ]
    #    -56(%ebp)   1  [ $t23      <char> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 6 of <array 6 of <array 3 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 10 of <array 2 of <array 8 of <array 3 of <char>>>>>>> %ebp+20 ]
    #    -81(%ebp)   1  [ $v4       <char> %ebp-81 ]

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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   1:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   2:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $36966, %eax            #   3:     mul    t5 <- 36966, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   4:     add    t6 <- t5, 28474
    movl    $28474, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   6:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   7:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #   8:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   9:     add    t9 <- t8, 61190
    movl    $61190, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  10:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  11:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  12:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  13:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t12 <- t11, 33626
    movl    $33626, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  15:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  16:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  17:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  18:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     add    t15 <- t14, 85136
    movl    $85136, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  22:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  23:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  24:     add    t19 <- v3, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $99, %eax               #  25:     assign @t19 <- 99
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_0                  #  26:     goto   0
l_f2_0:
l_f2_6_while_cond:
    jmp     l_f2_10                 #  29:     goto   10
    jmp     l_f2_10                 #  30:     goto   10
    jmp     l_f2_10                 #  31:     goto   10
    movl    $1, %eax                #  32:     assign t20 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f2_11                 #  33:     goto   11
l_f2_10:
    movl    $0, %eax                #  35:     assign t20 <- 0
    movb    %al, -53(%ebp)         
l_f2_11:
    movzbl  -53(%ebp), %eax         #  37:     if     t20 = 0 goto 7_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  38:     goto   5
l_f2_7_while_body:
    movl    $0, %eax                #  40:     return 0
    jmp     l_f2_exit              
    movl    $1, %eax                #  41:     if     1 = 0 goto 16_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  42:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  44:     goto   15
l_f2_17_if_false:
l_f2_15:
    movl    $98, %eax               #  47:     if     98 >= 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  48:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  50:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_6_while_cond       #  53:     goto   6_while_cond
l_f2_5:
    movl    $1, %eax                #  55:     param  2 <- 1
    pushl   %eax                   
    call    dummyCHARfunc           #  56:     call   t21 <- dummyCHARfunc
    movb    %al, -54(%ebp)         
    movzbl  -54(%ebp), %eax         #  57:     if     t21 <= 98 goto 30
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_30                
    jmp     l_f2_31                 #  58:     goto   31
l_f2_30:
    movl    $1, %eax                #  60:     assign t22 <- 1
    movb    %al, -55(%ebp)         
    jmp     l_f2_32                 #  61:     goto   32
l_f2_31:
    movl    $0, %eax                #  63:     assign t22 <- 0
    movb    %al, -55(%ebp)         
l_f2_32:
    movzbl  -55(%ebp), %eax         #  65:     param  1 <- t22
    pushl   %eax                   
    movl    $97, %eax               #  66:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  67:     call   t23 <- f0
    addl    $12, %esp              
    movb    %al, -56(%ebp)         
    movl    $98, %eax               #  68:     if     98 >= t23 goto 27_if_true
    movzbl  -56(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_27_if_true        
    jmp     l_f2_28_if_false        #  69:     goto   28_if_false
l_f2_27_if_true:
    jmp     l_f2_26                 #  71:     goto   26
l_f2_28_if_false:
l_f2_26:
    jmp     l_f2_23                 #  74:     goto   23
l_f2_23:

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <array 10 of <array 2 of <array 8 of <array 3 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 10 of <array 6 of <array 6 of <array 3 of <array 7 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

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
    jmp     l_test_exit            
    movl    $43231, %eax            #   1:     assign v0 <- 43231
    movl    %eax, v0               
    leal    v2, %eax                #   2:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  3 <- t0
    pushl   %eax                   
    movl    $65410, %eax            #   4:     param  2 <- 65410
    pushl   %eax                   
    movl    $57835, %eax            #   5:     if     57835 > 47585 goto 3
    movl    $47585, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_3               
    jmp     l_test_4                #   6:     goto   4
l_test_3:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_5                #   9:     goto   5
l_test_4:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_5:
    movzbl  -17(%ebp), %eax         #  13:     param  1 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  14:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  16:     call   t3 <- f2
    addl    $16, %esp              
    movb    %al, -25(%ebp)         

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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 10 of <array 6 of <array 6 of <array 3 of <array 7 of <bool>>>>>>
    .long    5
    .long   10
    .long    6
    .long    6
    .long    3
    .long    7
    .skip 7560
v2:                                 # <array 5 of <array 10 of <array 2 of <array 8 of <array 3 of <char>>>>>>
    .long    5
    .long    5
    .long   10
    .long    2
    .long    8
    .long    3
    .skip 2400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
