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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]

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
    movl    $80765, %eax            #   0:     if     80765 < 37717 goto 1
    movl    $37717, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t5
    movb    %al, -21(%ebp)         
    jmp     l_f0_8                  #   9:     goto   8
    jmp     l_f0_6_if_true          #  10:     goto   6_if_true
l_f0_8:
l_f0_6_if_true:
    jmp     l_f0_5                  #  13:     goto   5
l_f0_5:
    movl    $87169, %eax            #  15:     sub    t6 <- 87169, 96087
    movl    $96087, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     if     t6 >= 72303 goto 13_if_true
    movl    $72303, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  17:     goto   14_if_false
l_f0_13_if_true:
l_f0_17_while_cond:
    movl    $99, %eax               #  20:     if     99 > 98 goto 18_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_18_while_body     
    jmp     l_f0_16                 #  21:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  23:     goto   17_while_cond
l_f0_16:
    jmp     l_f0_12                 #  25:     goto   12
l_f0_14_if_false:
l_f0_12:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t9       <bool> %ebp-26 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -27(%ebp)   1  [ $v1       <bool> %ebp-27 ]

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
    movl    $22988, %eax            #   0:     div    t5 <- 22988, 40524
    movl    $40524, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   1:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t7 <- t5, t6
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v0 <- t7
    movl    %eax, 8(%ebp)          
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
    movl    $0, %eax                #   6:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f1_4:
    movzbl  -25(%ebp), %eax         #   8:     assign v1 <- t8
    movb    %al, -27(%ebp)         
l_f1_7_while_cond:
    jmp     l_f1_6                  #  10:     goto   6
    movl    $0, %eax                #  11:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_12_if_false        #  12:     goto   12_if_false
    jmp     l_f1_10                 #  13:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $73189, %eax            #  16:     if     73189 < 88816 goto 14
    movl    $88816, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_14                
    jmp     l_f1_15                 #  17:     goto   15
l_f1_14:
    movl    $1, %eax                #  19:     assign t9 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_16                 #  20:     goto   16
l_f1_15:
    movl    $0, %eax                #  22:     assign t9 <- 0
    movb    %al, -26(%ebp)         
l_f1_16:
    movzbl  -26(%ebp), %eax         #  24:     assign v1 <- t9
    movb    %al, -27(%ebp)         
    jmp     l_f1_7_while_cond       #  25:     goto   7_while_cond
l_f1_6:

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
    #    -57(%ebp)   1  [ $t21      <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 5 of <array 5 of <array 4 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
l_f2_2_while_body:
    jmp     l_f2_7_if_false         #   4:     goto   7_if_false
    jmp     l_f2_5                  #   5:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $60275, %eax            #  11:     mul    t6 <- 60275, t5
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  12:     add    t7 <- t6, 62601
    movl    $62601, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  16:     mul    t9 <- t7, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  17:     add    t10 <- t9, 43798
    movl    $43798, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  21:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t13 <- t12, 37970
    movl    $37970, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  26:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t16 <- t15, 48452
    movl    $48452, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  30:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  31:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  32:     add    t20 <- v0, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $1, %eax                #  33:     assign @t20 <- 1
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_10_while_cond:
    movl    $97, %eax               #  35:     if     97 <= 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_11_while_body     
    jmp     l_f2_9                  #  36:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  38:     goto   10_while_cond
l_f2_9:
    movl    $0, %eax                #  40:     return 0
    jmp     l_f2_exit              
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  42:     goto   15_while_cond
    jmp     l_f2_1_while_cond       #  43:     goto   1_while_cond
    movl    $97, %eax               #  44:     if     97 <= 99 goto 18_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  45:     goto   19_if_false
l_f2_18_if_true:
    movl    $99, %eax               #  47:     if     99 # 100 goto 22
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_22                
    jmp     l_f2_23                 #  48:     goto   23
l_f2_22:
    movl    $1, %eax                #  50:     assign t21 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f2_24                 #  51:     goto   24
l_f2_23:
    movl    $0, %eax                #  53:     assign t21 <- 0
    movb    %al, -57(%ebp)         
l_f2_24:
    movzbl  -57(%ebp), %eax         #  55:     return t21
    jmp     l_f2_exit              
    movl    $52003, %eax            #  56:     param  0 <- 52003
    pushl   %eax                   
    call    WriteInt                #  57:     call   WriteInt
    addl    $4, %esp               
    movl    $0, %eax                #  58:     return 0
    jmp     l_f2_exit              
l_f2_29_while_cond:
    jmp     l_f2_29_while_cond      #  60:     goto   29_while_cond
    movl    $99, %eax               #  61:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  62:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_17                 #  63:     goto   17
l_f2_19_if_false:
l_f2_17:
    call    dummyProcedure          #  66:     call   dummyProcedure

l_f2_exit:
    # epilogue
    addl    $68, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   1:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_3_while_cond:
    movl    $61993, %eax            #   3:     mul    t2 <- 61993, 56433
    movl    $56433, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     div    t3 <- t2, 74530
    movl    $74530, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $27122, %eax            #   5:     sub    t4 <- 27122, t3
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $15453, %eax            #   6:     if     15453 >= t4 goto 4_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_4_while_body    
    jmp     l_test_2                #   7:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #   9:     goto   3_while_cond
l_test_2:
    movl    $99, %eax               #  11:     assign v0 <- 99
    movb    %al, v0                
    movl    $98, %eax               #  12:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
