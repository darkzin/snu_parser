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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 2 of <array 4 of <array 4 of <array 6 of <char>>>>>>> %ebp+12 ]
    #    -18(%ebp)   1  [ $v3       <bool> %ebp-18 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $81015, %eax            #   1:     if     81015 = 66087 goto 2
    movl    $66087, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_2                 
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f0_4:
    movzbl  -17(%ebp), %eax         #   9:     assign v3 <- t5
    movb    %al, -18(%ebp)         
l_f0_7_while_cond:
    jmp     l_f0_6                  #  11:     goto   6
    jmp     l_f0_6                  #  12:     goto   6
    movl    $94539, %eax            #  13:     if     94539 <= 6893 goto 8_while_body
    movl    $6893, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f0_8_while_body      
    jmp     l_f0_6                  #  14:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  16:     goto   7_while_cond
l_f0_6:

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
    #    -72(%ebp)   4  [ $t24      <ptr(4) to <array 1 of <array 2 of <array 4 of <array 4 of <array 6 of <char>>>>>>> %ebp-72 ]
    #    -73(%ebp)   1  [ $t25      <bool> %ebp-73 ]
    #    -80(%ebp)   4  [ $t4       <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t5       <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $t6       <char> %ebp-82 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 6 of <array 5 of <array 10 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 4 of <array 1 of <array 1 of <array 9 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 3 of <array 10 of <array 2 of <array 1 of <array 3 of <bool>>>>>>> %ebp+20 ]
    #    -97(%ebp)   1  [ $v5       <bool> %ebp-97 ]
    #   -316(%ebp)  216  [ $v6       <array 1 of <array 2 of <array 4 of <array 4 of <array 6 of <char>>>>>> %ebp-316 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $304, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $76, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-316(%ebp)           # local array 'v6': 5 dimensions
    movl    $1,-312(%ebp)           #   dimension 1: 1 elements
    movl    $2,-308(%ebp)           #   dimension 2: 2 elements
    movl    $4,-304(%ebp)           #   dimension 3: 4 elements
    movl    $4,-300(%ebp)           #   dimension 4: 4 elements
    movl    $6,-296(%ebp)           #   dimension 5: 6 elements

    # function body
    movl    $54974, %eax            #   0:     add    t4 <- 54974, 19344
    movl    $19344, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   1:     if     t4 <= 79376 goto 1_if_true
    movl    $79376, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -81(%ebp)         
    movl    $97, %eax               #  10:     if     97 > t5 goto 8_if_true
    movzbl  -81(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #  11:     goto   9_if_false
l_f1_8_if_true:
l_f1_12_while_cond:
    jmp     l_f1_11                 #  14:     goto   11
    jmp     l_f1_12_while_cond      #  15:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_7                  #  17:     goto   7
l_f1_9_if_false:
l_f1_7:
l_f1_15_while_cond:
    jmp     l_f1_14                 #  21:     goto   14
    call    dummyCHARfunc           #  22:     call   t6 <- dummyCHARfunc
    movb    %al, -82(%ebp)         
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $85559, %eax            #  26:     mul    t8 <- 85559, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  27:     add    t9 <- t8, 1196
    movl    $1196, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -96(%ebp), %eax         #  31:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  32:     add    t12 <- t11, 42509
    movl    $42509, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  33:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  35:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  36:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  37:     add    t15 <- t14, 94268
    movl    $94268, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  38:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  40:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  41:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  42:     add    t18 <- t17, 88150
    movl    $88150, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  43:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  44:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  45:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  46:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  47:     add    t22 <- v2, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $0, %eax                #  48:     assign @t22 <- 0
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    call    ReadInt                 #  49:     call   t23 <- ReadInt
    movl    %eax, -68(%ebp)        
l_f1_21_while_cond:
    jmp     l_f1_20                 #  51:     goto   20
    jmp     l_f1_21_while_cond      #  52:     goto   21_while_cond
l_f1_20:
    leal    -316(%ebp), %eax        #  54:     &()    t24 <- v6
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  55:     param  1 <- t24
    pushl   %eax                   
    movl    $33350, %eax            #  56:     param  0 <- 33350
    pushl   %eax                   
    call    f0                      #  57:     call   t25 <- f0
    addl    $8, %esp               
    movb    %al, -73(%ebp)         
    jmp     l_f1_15_while_cond      #  58:     goto   15_while_cond
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $304, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 9 of <array 7 of <array 3 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #    -16(%ebp)   4  [ $v2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v3       <char> %ebp-17 ]

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
    movl    $80630, %eax            #   0:     assign v2 <- 80630
    movl    %eax, -16(%ebp)        
    movl    $0, %eax                #   1:     if     0 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    call    dummyProcedure          #   4:     call   dummyProcedure
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $98, %eax               #   8:     assign v3 <- 98
    movb    %al, -17(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 6 of <array 9 of <array 7 of <array 3 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    movl    $27343, %eax            #   2:     if     27343 = 61899 goto 2_if_true
    movl    $61899, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_5                #   5:     goto   5
l_test_5:
    jmp     l_test_10_if_false      #   7:     goto   10_if_false
    jmp     l_test_8                #   8:     goto   8
l_test_10_if_false:
l_test_8:
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  12:     goto   12_while_cond
    jmp     l_test_1                #  13:     goto   1
l_test_3_if_false:
l_test_1:
l_test_15_while_cond:
    leal    v2, %eax                #  17:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #  19:     call   t2 <- f2
    addl    $4, %esp               
    movl    %eax, -24(%ebp)        
    movl    $57131, %eax            #  20:     if     57131 <= t2 goto 16_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_16_while_body   
    jmp     l_test_14               #  21:     goto   14
l_test_16_while_body:
    movl    $100, %eax              #  23:     assign v0 <- 100
    movb    %al, v0                
    call    dummyINTfunc            #  24:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    $0, %eax                #  25:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_15_while_cond    #  26:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 6 of <array 9 of <array 7 of <array 3 of <array 9 of <bool>>>>>>
    .long    5
    .long    6
    .long    9
    .long    7
    .long    3
    .long    9
    .skip 10206








    # end of global data section
    #-----------------------------------------

    .end
##################################################
