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
    #    -13(%ebp)   1  [ $t32      <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 3 of <array 4 of <array 5 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 9 of <array 9 of <array 9 of <array 5 of <int>>>>>>> %ebp+12 ]
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
    movl    $98, %eax               #   0:     assign v3 <- 98
    movb    %al, -14(%ebp)         
l_f0_2_while_cond:
    jmp     l_f0_8                  #   2:     goto   8
    jmp     l_f0_8                  #   3:     goto   8
l_f0_8:
    movl    $1, %eax                #   5:     assign t32 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   6:     goto   7
    movl    $0, %eax                #   7:     assign t32 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #   9:     if     t32 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #  10:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  12:     goto   2_while_cond
l_f0_1:
    movl    $27276, %eax            #  14:     if     27276 < 61292 goto 13_if_true
    movl    $61292, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  15:     goto   14_if_false
l_f0_13_if_true:
    movl    $3613, %eax             #  17:     if     3613 > 59135 goto 17_if_true
    movl    $59135, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  18:     goto   18_if_false
l_f0_17_if_true:
l_f0_21_while_cond:
    jmp     l_f0_20                 #  21:     goto   20
    jmp     l_f0_21_while_cond      #  22:     goto   21_while_cond
l_f0_20:
l_f0_24_while_cond:
    movl    $1, %eax                #  25:     if     1 = 0 goto 25_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_25_while_body     
    jmp     l_f0_23                 #  26:     goto   23
l_f0_25_while_body:
    jmp     l_f0_24_while_cond      #  28:     goto   24_while_cond
l_f0_23:
    jmp     l_f0_16                 #  30:     goto   16
l_f0_18_if_false:
l_f0_16:
    jmp     l_f0_12                 #  33:     goto   12
l_f0_14_if_false:
l_f0_12:

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
    #    -13(%ebp)   1  [ $t32      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t33      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t34      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t35      <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 10 of <array 1 of <array 1 of <array 10 of <char>>>>>>> %ebp+16 ]
    #    -17(%ebp)   1  [ $v4       <bool> %ebp-17 ]

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
    movl    $100, %eax              #   0:     if     100 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $53341, %eax            #   3:     return 53341
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   4:     call   t32 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   8:     call   t33 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     if     t33 > 99 goto 7
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_7                 
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $1, %eax                #  12:     assign t34 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_9                  #  13:     goto   9
l_f1_8:
    movl    $0, %eax                #  15:     assign t34 <- 0
    movb    %al, -15(%ebp)         
l_f1_9:
    movzbl  -15(%ebp), %eax         #  17:     assign v4 <- t34
    movb    %al, -17(%ebp)         
l_f1_12_while_cond:
    jmp     l_f1_11                 #  19:     goto   11
    call    dummyBOOLfunc           #  20:     call   t35 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
l_f1_18_while_cond:
    jmp     l_f1_17                 #  22:     goto   17
    jmp     l_f1_18_while_cond      #  23:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_12_while_cond      #  25:     goto   12_while_cond
l_f1_11:

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
    #    -16(%ebp)   4  [ $t32      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t33      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t34      <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    movl    $71135, %eax            #   0:     div    t32 <- 71135, 50785
    movl    $50785, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v1 <- t32
    movl    %eax, 8(%ebp)          
    call    dummyCHARfunc           #   2:     call   t33 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     return t33
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   4:     call   t34 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   5:     return t34
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 4 of <array 10 of <array 1 of <array 1 of <array 10 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 4 of <array 10 of <array 1 of <array 1 of <array 10 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 4 of <array 10 of <array 1 of <array 1 of <array 10 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <ptr(4) to <array 4 of <array 10 of <array 1 of <array 1 of <array 10 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 4 of <array 10 of <array 1 of <array 1 of <array 10 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 4 of <array 10 of <array 1 of <array 1 of <array 10 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <ptr(4) to <array 4 of <array 10 of <array 1 of <array 1 of <array 10 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t4       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t5       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t6       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t7       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t8       <int> %ebp-136 ]
    #   -137(%ebp)   1  [ $t9       <char> %ebp-137 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $128, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $32, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_7_if_false       #   2:     goto   7_if_false
    jmp     l_test_5                #   3:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_2                #   6:     goto   2
l_test_2:
    leal    v1, %eax                #   8:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     param  2 <- t0
    pushl   %eax                   
    call    dummyCHARfunc           #  10:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  11:     param  1 <- t1
    pushl   %eax                   
    movl    $26022, %eax            #  12:     param  0 <- 26022
    pushl   %eax                   
    call    f1                      #  13:     call   t2 <- f1
    addl    $12, %esp              
    movl    %eax, -64(%ebp)        
    movl    $80215, %eax            #  14:     add    t3 <- 80215, 42731
    movl    $42731, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  15:     sub    t4 <- t3, 58128
    movl    $58128, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  16:     add    t5 <- t4, 46923
    movl    $46923, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  17:     add    t6 <- t5, 65927
    movl    $65927, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  18:     sub    t7 <- t6, 99796
    movl    $99796, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  19:     add    t8 <- t7, 36449
    movl    $36449, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  20:     param  0 <- t8
    pushl   %eax                   
    call    f2                      #  21:     call   t9 <- f2
    addl    $4, %esp               
    movb    %al, -137(%ebp)        
    leal    v1, %eax                #  22:     &()    t10 <- v1
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  24:     &()    t11 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  26:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $53198, %eax            #  27:     mul    t13 <- 53198, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     add    t14 <- t13, 65895
    movl    $65895, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  30:     &()    t15 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  32:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  33:     mul    t17 <- t14, t16
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  34:     add    t18 <- t17, 3964
    movl    $3964, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  36:     &()    t19 <- v1
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  37:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  38:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  39:     mul    t21 <- t18, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  40:     add    t22 <- t21, 20179
    movl    $20179, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  42:     &()    t23 <- v1
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  43:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  44:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  45:     mul    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  46:     add    t26 <- t25, 23443
    movl    $23443, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  47:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    leal    v1, %eax                #  48:     &()    t28 <- v1
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  49:     param  0 <- t28
    pushl   %eax                   
    call    DOFS                    #  50:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    -96(%ebp), %eax         #  51:     add    t30 <- t27, t29
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -24(%ebp), %eax         #  52:     add    t31 <- t10, t30
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movzbl  -137(%ebp), %eax        #  53:     assign @t31 <- t9
    movl    -116(%ebp), %edi       
    movb    %al, (%edi)            

l_test_exit:
    # epilogue
    addl    $128, %esp              # remove locals
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
    .align   4
v1:                                 # <array 4 of <array 10 of <array 1 of <array 1 of <array 10 of <char>>>>>>
    .long    5
    .long    4
    .long   10
    .long    1
    .long    1
    .long   10
    .skip  400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
