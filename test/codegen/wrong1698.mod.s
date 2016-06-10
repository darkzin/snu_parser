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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    movl    $50332, %eax            #   0:     add    t9 <- 50332, 57147
    movl    $57147, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    call    ReadInt                 #   1:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -28(%ebp), %eax         #   2:     sub    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     return t11
    jmp     l_f0_exit              
    jmp     l_f0_3                  #   4:     goto   3
    jmp     l_f0_3                  #   5:     goto   3
    movl    $1, %eax                #   6:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $0, %eax                #   9:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f0_4:
    movzbl  -21(%ebp), %eax         #  11:     assign v3 <- t12
    movb    %al, 16(%ebp)          
    movl    $98, %eax               #  12:     if     98 <= 97 goto 9_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  13:     goto   10_if_false
l_f0_9_if_true:
    movl    $98, %eax               #  15:     assign v1 <- 98
    movb    %al, 8(%ebp)           
l_f0_14_while_cond:
    movl    $99, %eax               #  17:     if     99 = 98 goto 15_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_15_while_body     
    jmp     l_f0_13                 #  18:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  20:     goto   14_while_cond
l_f0_13:
l_f0_18_while_cond:
    movl    $35331, %eax            #  23:     if     35331 # 73854 goto 19_while_body
    movl    $73854, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_19_while_body     
    jmp     l_f0_17                 #  24:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  26:     goto   18_while_cond
l_f0_17:
l_f0_22_while_cond:
    movl    $1, %eax                #  29:     if     1 # 1 goto 23_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_23_while_body     
    jmp     l_f0_21                 #  30:     goto   21
l_f0_23_while_body:
    jmp     l_f0_22_while_cond      #  32:     goto   22_while_cond
l_f0_21:
    jmp     l_f0_8                  #  34:     goto   8
l_f0_10_if_false:
l_f0_8:

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
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 77 of <array 33 of <array 66 of <array 28 of <array 91 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -93(%ebp)   1  [ $v5       <char> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   1:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   2:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $47743, %eax            #   3:     mul    t10 <- 47743, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     add    t11 <- t10, 92851
    movl    $92851, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   6:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   7:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   8:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    call    ReadInt                 #   9:     call   t14 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  10:     add    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  14:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  15:     add    t18 <- t17, 28172
    movl    $28172, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  19:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  20:     add    t21 <- t20, 64389
    movl    $64389, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  21:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  22:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  23:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  24:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  25:     add    t25 <- v1, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $97, %eax               #  26:     assign @t25 <- 97
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_exit              
l_f1_3_while_cond:
    movl    $54928, %eax            #  29:     mul    t26 <- 54928, 68469
    movl    $68469, %ebx           
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  30:     add    t27 <- t26, 16466
    movl    $16466, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  31:     add    t28 <- t27, 21384
    movl    $21384, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $69082, %eax            #  32:     if     69082 > t28 goto 4_while_body
    movl    -88(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_4_while_body      
    jmp     l_f1_2                  #  33:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #  35:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 52 of <array 69 of <array 62 of <array 8 of <array 46 of <bool>>>>>>> %ebp+12 ]

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
l_f2_1_while_cond:
    jmp     l_f2_5                  #   1:     goto   5
    movl    $1, %eax                #   2:     assign t9 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_6                  #   3:     goto   6
l_f2_5:
    movl    $0, %eax                #   5:     assign t9 <- 0
    movb    %al, -15(%ebp)         
l_f2_6:
    movl    $1, %eax                #   7:     if     1 = t9 goto 2_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  12:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     return t10
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  14:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 52 of <array 69 of <array 62 of <array 8 of <array 46 of <bool>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <char> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    movl    $64294, %eax            #   1:     div    t0 <- 64294, 47073
    movl    $47073, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t1 <- t0, 62081
    movl    $62081, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t2 <- t1, 94386
    movl    $94386, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v0 <- t2
    movl    %eax, v0               
    call    dummyBOOLfunc           #   5:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $1, %eax                #   6:     if     1 # 1 goto 4_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_4_if_true       
    jmp     l_test_5_if_false       #   7:     goto   5_if_false
l_test_4_if_true:
    movl    $0, %eax                #   9:     if     0 = 0 goto 8
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8               
    jmp     l_test_9                #  10:     goto   9
l_test_8:
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_10               #  13:     goto   10
l_test_9:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -26(%ebp)         
l_test_10:
    movzbl  -26(%ebp), %eax         #  17:     param  3 <- t4
    pushl   %eax                   
    movl    $0, %eax                #  18:     param  2 <- 0
    pushl   %eax                   
    movl    $26700, %eax            #  19:     param  1 <- 26700
    pushl   %eax                   
    movl    $100, %eax              #  20:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  21:     call   t5 <- f0
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        
    movl    $1, %eax                #  22:     if     1 # 0 goto 13
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_13              
    jmp     l_test_14               #  23:     goto   14
l_test_13:
    movl    $1, %eax                #  25:     assign t6 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_15               #  26:     goto   15
l_test_14:
    movl    $0, %eax                #  28:     assign t6 <- 0
    movb    %al, -33(%ebp)         
l_test_15:
    movzbl  -33(%ebp), %eax         #  30:     assign v1 <- t6
    movb    %al, v1                
    jmp     l_test_17               #  31:     goto   17
l_test_17:
    movl    $98, %eax               #  33:     assign v2 <- 98
    movb    %al, v2                
l_test_22_while_cond:
    jmp     l_test_22_while_cond    #  35:     goto   22_while_cond
    jmp     l_test_3                #  36:     goto   3
l_test_5_if_false:
l_test_3:
    movl    $28787, %eax            #  39:     param  0 <- 28787
    pushl   %eax                   
    call    WriteInt                #  40:     call   WriteInt
    addl    $4, %esp               
l_test_26_while_cond:
    leal    v3, %eax                #  42:     &()    t7 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  43:     param  1 <- t7
    pushl   %eax                   
    movl    $74347, %eax            #  44:     param  0 <- 74347
    pushl   %eax                   
    call    f2                      #  45:     call   t8 <- f2
    addl    $8, %esp               
    movb    %al, -41(%ebp)         
    movl    $98, %eax               #  46:     if     98 > t8 goto 27_while_body
    movzbl  -41(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_27_while_body   
    jmp     l_test_25               #  47:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  49:     goto   26_while_cond
l_test_25:

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1
    .align   4
v3:                                 # <array 52 of <array 69 of <array 62 of <array 8 of <array 46 of <bool>>>>>>
    .long    5
    .long   52
    .long   69
    .long   62
    .long    8
    .long   46
    .skip 81863808








    # end of global data section
    #-----------------------------------------

    .end
##################################################
