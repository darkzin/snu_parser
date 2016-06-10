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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 97 of <array 42 of <array 6 of <array 19 of <array 31 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 41 of <array 85 of <array 28 of <array 60 of <array 45 of <char>>>>>>> %ebp+20 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $84519, %eax            #   2:     if     84519 >= 12829 goto 4_if_true
    movl    $12829, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   3:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   5:     goto   3
l_f0_5_if_false:
l_f0_3:
    movl    $17785, %eax            #   8:     if     17785 # 74121 goto 8
    movl    $74121, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_8                 
    jmp     l_f0_9                  #   9:     goto   9
l_f0_8:
    movl    $1, %eax                #  11:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_10                 #  12:     goto   10
l_f0_9:
    movl    $0, %eax                #  14:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_10:
    movzbl  -13(%ebp), %eax         #  16:     assign v2 <- t1
    movb    %al, 12(%ebp)          
l_f0_13_while_cond:
    jmp     l_f0_13_while_cond      #  18:     goto   13_while_cond
    movl    $17645, %eax            #  19:     if     17645 >= 14370 goto 16_if_true
    movl    $14370, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  20:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_15                 #  22:     goto   15
l_f0_17_if_false:
l_f0_15:
l_f0_20_while_cond:
    jmp     l_f0_19                 #  26:     goto   19
    jmp     l_f0_20_while_cond      #  27:     goto   20_while_cond
l_f0_19:
    call    dummyBOOLfunc           #  29:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_1_while_cond       #  30:     goto   1_while_cond
l_f0_0:
    leal    _str_1, %eax            #  32:     &()    t3 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  34:     call   WriteStr
    addl    $4, %esp               
    movl    $46010, %eax            #  35:     if     46010 >= 60396 goto 25_if_true
    movl    $60396, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_25_if_true        
    jmp     l_f0_26_if_false        #  36:     goto   26_if_false
l_f0_25_if_true:
    call    dummyINTfunc            #  38:     call   t4 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #  39:     call   t5 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f0_24                 #  40:     goto   24
l_f0_26_if_false:
l_f0_24:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -13(%ebp)   1  [ $v2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    movl    $100, %eax              #   1:     if     100 > 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    movl    $63866, %eax            #   5:     if     63866 <= 45453 goto 6_while_body
    movl    $45453, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
l_f1_9_while_cond:
    movl    $97, %eax               #  11:     if     97 >= 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_10_while_body     
    jmp     l_f1_8                  #  12:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  14:     goto   9_while_cond
l_f1_8:
    movl    $1, %eax                #  16:     assign v2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_1_while_cond       #  17:     goto   1_while_cond
l_f1_0:
    movl    $21547, %eax            #  19:     param  0 <- 21547
    pushl   %eax                   
    call    WriteInt                #  20:     call   WriteInt
    addl    $4, %esp               
    movl    $100, %eax              #  21:     assign v3 <- 100
    movb    %al, -14(%ebp)         
    jmp     l_f1_14                 #  22:     goto   14
l_f1_14:

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 41 of <array 85 of <array 28 of <array 60 of <array 45 of <char>>>>>>> %ebp-16 ]
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
    #    -60(%ebp)   4  [ $t2       <ptr(4) to <array 97 of <array 42 of <array 6 of <array 19 of <array 31 of <bool>>>>>>> %ebp-60 ]
    #    -61(%ebp)   1  [ $t20      <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t21      <bool> %ebp-62 ]
    #    -68(%ebp)   4  [ $t22      <ptr(4) to <array 97 of <array 42 of <array 6 of <array 19 of <array 31 of <bool>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <ptr(4) to <array 97 of <array 42 of <array 6 of <array 19 of <array 31 of <bool>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <ptr(4) to <array 97 of <array 42 of <array 6 of <array 19 of <array 31 of <bool>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t3       <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t31      <ptr(4) to <array 97 of <array 42 of <array 6 of <array 19 of <array 31 of <bool>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t32      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t33      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t34      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t35      <ptr(4) to <array 97 of <array 42 of <array 6 of <array 19 of <array 31 of <bool>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t36      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t37      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t38      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t39      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t4       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t40      <ptr(4) to <array 97 of <array 42 of <array 6 of <array 19 of <array 31 of <bool>>>>>>> %ebp-148 ]
    #   -152(%ebp)   4  [ $t41      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t42      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t43      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t5       <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t6       <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t7       <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t8       <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t9       <int> %ebp-180 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 12 of <array 70 of <array 56 of <array 72 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #   -14397720(%ebp)  14397540  [ $v4       <array 97 of <array 42 of <array 6 of <array 19 of <array 31 of <bool>>>>>> %ebp-14397720 ]
    #   -277863744(%ebp)  263466024  [ $v5       <array 41 of <array 85 of <array 28 of <array 60 of <array 45 of <char>>>>>> %ebp-277863744 ]
    #   -277863745(%ebp)   1  [ $v6       <bool> %ebp-277863745 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $277863736, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $69465934, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-14397720(%ebp)      # local array 'v4': 5 dimensions
    movl    $97,-14397716(%ebp)     #   dimension 1: 97 elements
    movl    $42,-14397712(%ebp)     #   dimension 2: 42 elements
    movl    $6,-14397708(%ebp)      #   dimension 3: 6 elements
    movl    $19,-14397704(%ebp)     #   dimension 4: 19 elements
    movl    $31,-14397700(%ebp)     #   dimension 5: 31 elements
    movl    $5,-277863744(%ebp)     # local array 'v5': 5 dimensions
    movl    $41,-277863740(%ebp)    #   dimension 1: 41 elements
    movl    $85,-277863736(%ebp)    #   dimension 2: 85 elements
    movl    $28,-277863732(%ebp)    #   dimension 3: 28 elements
    movl    $60,-277863728(%ebp)    #   dimension 4: 60 elements
    movl    $45,-277863724(%ebp)    #   dimension 5: 45 elements

    # function body
    leal    -277863744(%ebp), %eax  #   0:     &()    t1 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t1
    pushl   %eax                   
    leal    -14397720(%ebp), %eax   #   2:     &()    t2 <- v4
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   3:     param  2 <- t2
    pushl   %eax                   
    movl    $1, %eax                #   4:     param  1 <- 1
    pushl   %eax                   
    movl    $56520, %eax            #   5:     param  0 <- 56520
    pushl   %eax                   
    call    f0                      #   6:     call   t3 <- f0
    addl    $16, %esp              
    movb    %al, -97(%ebp)         
    movzbl  -97(%ebp), %eax         #   7:     if     t3 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   8:     goto   2_if_false
l_f2_1_if_true:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    $55960, %eax            #  13:     mul    t5 <- 55960, t4
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #  14:     add    t6 <- t5, 64656
    movl    $64656, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -172(%ebp)       
    movl    -168(%ebp), %eax        #  18:     mul    t8 <- t6, t7
    movl    -172(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -176(%ebp)       
    movl    -176(%ebp), %eax        #  19:     add    t9 <- t8, 78172
    movl    $78172, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -180(%ebp)       
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -180(%ebp), %eax        #  23:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t12 <- t11, 81960
    movl    $81960, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t15 <- t14, 97075
    movl    $97075, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  33:     add    t18 <- t16, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  34:     add    t19 <- v1, t18
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $97, %eax               #  35:     assign @t19 <- 97
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_0                  #  36:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_5_while_cond:
    movl    $100, %eax              #  40:     if     100 > 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #  41:     goto   4
l_f2_6_while_body:
    call    dummyCHARfunc           #  43:     call   t20 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    jmp     l_f2_5_while_cond       #  44:     goto   5_while_cond
l_f2_4:
    movl    $98, %eax               #  46:     if     98 = 100 goto 10
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #  47:     goto   11
l_f2_10:
    movl    $1, %eax                #  49:     assign t21 <- 1
    movb    %al, -62(%ebp)         
    jmp     l_f2_12                 #  50:     goto   12
l_f2_11:
    movl    $0, %eax                #  52:     assign t21 <- 0
    movb    %al, -62(%ebp)         
l_f2_12:
    leal    -14397720(%ebp), %eax   #  54:     &()    t22 <- v4
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #  55:     param  1 <- 2
    pushl   %eax                   
    leal    -14397720(%ebp), %eax   #  56:     &()    t23 <- v4
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  57:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  58:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $28482, %eax            #  59:     mul    t25 <- 28482, t24
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  60:     add    t26 <- t25, 29100
    movl    $29100, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  61:     param  1 <- 3
    pushl   %eax                   
    leal    -14397720(%ebp), %eax   #  62:     &()    t27 <- v4
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  63:     param  0 <- t27
    pushl   %eax                   
    call    DIM                     #  64:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  65:     mul    t29 <- t26, t28
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  66:     add    t30 <- t29, 61567
    movl    $61567, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $4, %eax                #  67:     param  1 <- 4
    pushl   %eax                   
    leal    -14397720(%ebp), %eax   #  68:     &()    t31 <- v4
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  69:     param  0 <- t31
    pushl   %eax                   
    call    DIM                     #  70:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -104(%ebp), %eax        #  71:     mul    t33 <- t30, t32
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  72:     add    t34 <- t33, 66065
    movl    $66065, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $5, %eax                #  73:     param  1 <- 5
    pushl   %eax                   
    leal    -14397720(%ebp), %eax   #  74:     &()    t35 <- v4
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  75:     param  0 <- t35
    pushl   %eax                   
    call    DIM                     #  76:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -120(%ebp), %eax        #  77:     mul    t37 <- t34, t36
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  78:     add    t38 <- t37, 98973
    movl    $98973, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  79:     mul    t39 <- t38, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    leal    -14397720(%ebp), %eax   #  80:     &()    t40 <- v4
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  81:     param  0 <- t40
    pushl   %eax                   
    call    DOFS                    #  82:     call   t41 <- DOFS
    addl    $4, %esp               
    movl    %eax, -152(%ebp)       
    movl    -140(%ebp), %eax        #  83:     add    t42 <- t39, t41
    movl    -152(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    -68(%ebp), %eax         #  84:     add    t43 <- t22, t42
    movl    -156(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movzbl  -62(%ebp), %eax         #  85:     assign @t43 <- t21
    movl    -160(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $277863736, %esp        # remove locals
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
    movl    $514, %eax              #   0:     mul    t0 <- 514, 71379
    movl    $71379, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            

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
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
