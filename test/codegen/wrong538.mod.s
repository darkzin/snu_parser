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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 3 of <array 6 of <array 6 of <array 5 of <char>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
l_f0_1_while_cond:
    movl    $80419, %eax            #   1:     sub    t2 <- 80419, 44838
    movl    $44838, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t2 = 4995 goto 2_while_body
    movl    $4995, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $60540, %eax            #   5:     assign v1 <- 60540
    movl    %eax, -24(%ebp)        
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
l_f0_6_while_cond:
    movl    $99, %eax               #   9:     return 99
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #  11:     call   t4 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_f0_6_while_cond       #  12:     goto   6_while_cond
    movl    $98, %eax               #  13:     return 98
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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 1 of <array 3 of <array 6 of <array 6 of <array 5 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 1 of <array 3 of <array 6 of <array 6 of <array 5 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 1 of <array 3 of <array 6 of <array 6 of <array 5 of <char>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 1 of <array 3 of <array 6 of <array 6 of <array 5 of <char>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <ptr(4) to <array 1 of <array 3 of <array 6 of <array 6 of <array 5 of <char>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t27      <bool> %ebp-85 ]
    #    -86(%ebp)   1  [ $t28      <bool> %ebp-86 ]
    #    -87(%ebp)   1  [ $t3       <char> %ebp-87 ]
    #    -88(%ebp)   1  [ $t4       <char> %ebp-88 ]
    #    -92(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 3 of <array 6 of <array 6 of <array 5 of <char>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t6       <ptr(4) to <array 1 of <array 3 of <array 6 of <array 6 of <array 5 of <char>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t7       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 10 of <array 8 of <array 4 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #   -672(%ebp)  564  [ $v4       <array 1 of <array 3 of <array 6 of <array 6 of <array 5 of <char>>>>>> %ebp-672 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $660, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $165, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-672(%ebp)           # local array 'v4': 5 dimensions
    movl    $1,-668(%ebp)           #   dimension 1: 1 elements
    movl    $3,-664(%ebp)           #   dimension 2: 3 elements
    movl    $6,-660(%ebp)           #   dimension 3: 6 elements
    movl    $6,-656(%ebp)           #   dimension 4: 6 elements
    movl    $5,-652(%ebp)           #   dimension 5: 5 elements

    # function body
l_f1_1_while_cond:
    leal    -672(%ebp), %eax        #   1:     &()    t2 <- v4
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   2:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   3:     call   t3 <- f0
    addl    $4, %esp               
    movb    %al, -87(%ebp)         
    movzbl  -87(%ebp), %eax         #   4:     if     t3 < 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_while_body:
    movl    $97, %eax               #   7:     if     97 <= 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   8:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #  10:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_8                  #  13:     goto   8
l_f1_8:
    jmp     l_f1_1_while_cond       #  15:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  17:     call   t4 <- dummyCHARfunc
    movb    %al, -88(%ebp)         
    movl    $99, %eax               #  18:     if     99 < t4 goto 12_if_true
    movzbl  -88(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  19:     goto   13_if_false
l_f1_12_if_true:
    leal    -672(%ebp), %eax        #  21:     &()    t5 <- v4
    movl    %eax, -92(%ebp)        
    movl    $2, %eax                #  22:     param  1 <- 2
    pushl   %eax                   
    leal    -672(%ebp), %eax        #  23:     &()    t6 <- v4
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  24:     param  0 <- t6
    pushl   %eax                   
    call    DIM                     #  25:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    $74675, %eax            #  26:     mul    t8 <- 74675, t7
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  27:     add    t9 <- t8, 64977
    movl    $64977, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    leal    -672(%ebp), %eax        #  29:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  30:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  31:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -108(%ebp), %eax        #  32:     mul    t12 <- t9, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     add    t13 <- t12, 96472
    movl    $96472, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    leal    -672(%ebp), %eax        #  35:     &()    t14 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  36:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  37:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  38:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  39:     add    t17 <- t16, 38444
    movl    $38444, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    leal    -672(%ebp), %eax        #  41:     &()    t18 <- v4
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  42:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  43:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  44:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  45:     add    t21 <- t20, 9085
    movl    $9085, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  46:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    leal    -672(%ebp), %eax        #  47:     &()    t23 <- v4
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  48:     param  0 <- t23
    pushl   %eax                   
    call    DOFS                    #  49:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  50:     add    t25 <- t22, t24
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -92(%ebp), %eax         #  51:     add    t26 <- t5, t25
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $100, %eax              #  52:     assign @t26 <- 100
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  53:     call   t27 <- dummyBOOLfunc
    movb    %al, -85(%ebp)         
    jmp     l_f1_11                 #  54:     goto   11
l_f1_13_if_false:
l_f1_11:
l_f1_18_while_cond:
    jmp     l_f1_17                 #  58:     goto   17
    jmp     l_f1_25                 #  59:     goto   25
    jmp     l_f1_25                 #  60:     goto   25
    movl    $1, %eax                #  61:     assign t28 <- 1
    movb    %al, -86(%ebp)         
    jmp     l_f1_26                 #  62:     goto   26
l_f1_25:
    movl    $0, %eax                #  64:     assign t28 <- 0
    movb    %al, -86(%ebp)         
l_f1_26:
    movl    $1, %eax                #  66:     if     1 # t28 goto 21_if_true
    movzbl  -86(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_21_if_true        
    jmp     l_f1_22_if_false        #  67:     goto   22_if_false
l_f1_21_if_true:
    jmp     l_f1_20                 #  69:     goto   20
l_f1_22_if_false:
l_f1_20:
    jmp     l_f1_18_while_cond      #  72:     goto   18_while_cond
l_f1_17:

l_f1_exit:
    # epilogue
    addl    $660, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t7       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $v0       <char> %ebp-31 ]
    #    -32(%ebp)   1  [ $v1       <bool> %ebp-32 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $98, %eax               #   1:     assign v0 <- 98
    movb    %al, -31(%ebp)         
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $77060, %eax            #   5:     mul    t2 <- 77060, 21288
    movl    $21288, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     mul    t3 <- t2, 13283
    movl    $13283, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     add    t4 <- t3, 40118
    movl    $40118, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     sub    t5 <- t4, 87228
    movl    $87228, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $86198, %eax            #   9:     if     86198 = t5 goto 6
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_6                 
    jmp     l_f2_7                  #  10:     goto   7
l_f2_6:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_8                  #  13:     goto   8
l_f2_7:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -29(%ebp)         
l_f2_8:
    movzbl  -29(%ebp), %eax         #  17:     return t6
    jmp     l_f2_exit              
    jmp     l_f2_12_if_false        #  18:     goto   12_if_false
    jmp     l_f2_13                 #  19:     goto   13
l_f2_13:
    call    dummyProcedure          #  21:     call   dummyProcedure
    movl    $0, %eax                #  22:     assign v1 <- 0
    movb    %al, -32(%ebp)         
    movl    $96299, %eax            #  23:     if     96299 > 86497 goto 19_if_true
    movl    $86497, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  24:     goto   20_if_false
l_f2_19_if_true:
    movl    $74416, %eax            #  26:     if     74416 >= 25146 goto 23
    movl    $25146, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_23                
    jmp     l_f2_24                 #  27:     goto   24
l_f2_23:
    movl    $1, %eax                #  29:     assign t7 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f2_25                 #  30:     goto   25
l_f2_24:
    movl    $0, %eax                #  32:     assign t7 <- 0
    movb    %al, -30(%ebp)         
l_f2_25:
    movzbl  -30(%ebp), %eax         #  34:     return t7
    jmp     l_f2_exit              
    movl    $0, %eax                #  35:     assign v1 <- 0
    movb    %al, -32(%ebp)         
    jmp     l_f2_18                 #  36:     goto   18
l_f2_20_if_false:
l_f2_18:
    jmp     l_f2_10                 #  39:     goto   10
l_f2_12_if_false:
l_f2_10:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_4_while_cond:
    movl    $97, %eax               #   3:     if     97 >= 99 goto 5_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_5_while_body    
    jmp     l_test_3                #   4:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   6:     goto   4_while_cond
l_test_3:
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_10_while_cond:
    call    dummyINTfunc            #  13:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     sub    t1 <- t0, 33044
    movl    $33044, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     if     t1 < 20482 goto 11_while_body
    movl    $20482, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_11_while_body   
    jmp     l_test_9                #  16:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  18:     goto   10_while_cond
l_test_9:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
