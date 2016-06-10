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
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   6:     goto   4
    jmp     l_f0_4                  #   7:     goto   4
    jmp     l_f0_5_while_cond       #   8:     goto   5_while_cond
l_f0_4:
l_f0_11_while_cond:
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  12:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $9815, %eax             #  13:     assign v1 <- 9815
    movl    %eax, -20(%ebp)        
    jmp     l_f0_11_while_cond      #  14:     goto   11_while_cond

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
    #    -57(%ebp)   1  [ $t21      <char> %ebp-57 ]
    #    -58(%ebp)   1  [ $t22      <bool> %ebp-58 ]
    #    -59(%ebp)   1  [ $t23      <bool> %ebp-59 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 65 of <array 99 of <array 94 of <array 100 of <array 14 of <char>>>>>>> %ebp+8 ]
    #    -81(%ebp)   1  [ $v1       <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $v2       <bool> %ebp-82 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_exit              
    jmp     l_f1_4                  #   2:     goto   4
l_f1_4:
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   5:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   6:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $11073, %eax            #   7:     mul    t6 <- 11073, t5
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   8:     add    t7 <- t6, 33967
    movl    $33967, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  11:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  12:     mul    t9 <- t7, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  13:     add    t10 <- t9, 83679
    movl    $83679, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  17:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     add    t13 <- t12, 52052
    movl    $52052, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  22:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     add    t16 <- t15, 17875
    movl    $17875, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  26:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  27:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t20 <- v0, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $100, %eax              #  29:     assign @t20 <- 100
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_0                  #  30:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_9_while_cond:
    call    dummyCHARfunc           #  34:     call   t21 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #  35:     if     t21 > 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_10_while_body     
    jmp     l_f1_8                  #  36:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  38:     goto   9_while_cond
l_f1_8:
l_f1_13_while_cond:
    movl    $97, %eax               #  41:     if     97 >= 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_14_while_body     
    jmp     l_f1_12                 #  42:     goto   12
l_f1_14_while_body:
l_f1_17_while_cond:
    movl    $23223, %eax            #  45:     if     23223 <= 48085 goto 18_while_body
    movl    $48085, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_18_while_body     
    jmp     l_f1_16                 #  46:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  48:     goto   17_while_cond
l_f1_16:
    movl    $25597, %eax            #  50:     if     25597 # 78032 goto 21
    movl    $78032, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_21                
    jmp     l_f1_22                 #  51:     goto   22
l_f1_21:
    movl    $1, %eax                #  53:     assign t22 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f1_23                 #  54:     goto   23
l_f1_22:
    movl    $0, %eax                #  56:     assign t22 <- 0
    movb    %al, -58(%ebp)         
l_f1_23:
    movzbl  -58(%ebp), %eax         #  58:     assign v2 <- t22
    movb    %al, -82(%ebp)         
l_f1_26_while_cond:
    movl    $97, %eax               #  60:     if     97 <= 97 goto 27_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_27_while_body     
    jmp     l_f1_25                 #  61:     goto   25
l_f1_27_while_body:
    jmp     l_f1_26_while_cond      #  63:     goto   26_while_cond
l_f1_25:
    movl    $99, %eax               #  65:     if     99 <= 100 goto 30
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_30                
    jmp     l_f1_31                 #  66:     goto   31
l_f1_30:
    movl    $1, %eax                #  68:     assign t23 <- 1
    movb    %al, -59(%ebp)         
    jmp     l_f1_32                 #  69:     goto   32
l_f1_31:
    movl    $0, %eax                #  71:     assign t23 <- 0
    movb    %al, -59(%ebp)         
l_f1_32:
    movzbl  -59(%ebp), %eax         #  73:     assign v2 <- t23
    movb    %al, -82(%ebp)         
    jmp     l_f1_13_while_cond      #  74:     goto   13_while_cond
l_f1_12:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t6       <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 96 of <array 70 of <array 54 of <array 34 of <array 29 of <bool>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    call    dummyINTfunc            #   1:     call   t5 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   2:     if     t5 = 66975 goto 2_while_body
    movl    $66975, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    call    dummyCHARfunc           #   5:     call   t6 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    call    ReadInt                 #   6:     call   t7 <- ReadInt
    movl    %eax, -48(%ebp)        
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
l_f2_7_while_cond:
    movl    $58294, %eax            #  10:     sub    t8 <- 58294, 87055
    movl    $87055, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  11:     sub    t9 <- t8, 93931
    movl    $93931, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $62383, %eax            #  12:     if     62383 < t9 goto 8_while_body
    movl    -56(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_8_while_body      
    jmp     l_f2_6                  #  13:     goto   6
l_f2_8_while_body:
    call    ReadInt                 #  15:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_7_while_cond       #  16:     goto   7_while_cond
l_f2_6:
    movl    $85675, %eax            #  18:     add    t11 <- 85675, 72087
    movl    $72087, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t12 <- t11, 4323
    movl    $4323, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     sub    t13 <- t12, 13725
    movl    $13725, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     add    t14 <- t13, 63875
    movl    $63875, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     sub    t15 <- t14, 82685
    movl    $82685, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     assign v0 <- t15
    movl    %eax, 8(%ebp)          

l_f2_exit:
    # epilogue
    addl    $44, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <char> %ebp-20 ]

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
    movl    $1, %eax                #   0:     if     1 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    leal    _str_1, %eax            #   4:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    movl    $97, %eax               #   7:     if     97 > 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_9_if_true       
    jmp     l_test_10_if_false      #   8:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  10:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_5_while_cond     #  13:     goto   5_while_cond
    jmp     l_test_0                #  14:     goto   0
l_test_2_if_false:
l_test_0:
l_test_13_while_cond:
    call    dummyCHARfunc           #  18:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  19:     if     t1 <= 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_14_while_body   
    jmp     l_test_12               #  20:     goto   12
l_test_14_while_body:
    call    dummyCHARfunc           #  22:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $83091, %eax            #  23:     assign v0 <- 83091
    movl    %eax, v0               
    movl    $0, %eax                #  24:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_13_while_cond    #  25:     goto   13_while_cond
l_test_12:
    call    dummyCHARfunc           #  27:     call   t3 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  28:     assign v2 <- t3
    movb    %al, v2                
l_test_21_while_cond:
    call    dummyCHARfunc           #  30:     call   t4 <- dummyCHARfunc
    movb    %al, -20(%ebp)         
    movzbl  -20(%ebp), %eax         #  31:     if     t4 >= 99 goto 22_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_22_while_body   
    jmp     l_test_20               #  32:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  34:     goto   21_while_cond
l_test_20:

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

    # scope: test
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
