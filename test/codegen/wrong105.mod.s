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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 6 of <array 9 of <array 3 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 10 of <array 1 of <array 2 of <array 6 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 2 of <array 8 of <array 8 of <array 5 of <int>>>>>>> %ebp+20 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_2_while_body       #   2:     goto   2_while_body
l_f0_2_while_body:
l_f0_7_while_cond:
    jmp     l_f0_6                  #   5:     goto   6
    jmp     l_f0_7_while_cond       #   6:     goto   7_while_cond
l_f0_6:
    call    WriteLn                 #   8:     call   WriteLn
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_12_if_true         #  11:     goto   12_if_true
    jmp     l_f0_13_if_false        #  12:     goto   13_if_false
l_f0_12_if_true:
    movl    $97, %eax               #  14:     return 97
    jmp     l_f0_exit              
    movl    $57354, %eax            #  15:     if     57354 # 99659 goto 18_if_true
    movl    $99659, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  16:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  18:     goto   17
l_f0_19_if_false:
l_f0_17:
l_f0_22_while_cond:
    jmp     l_f0_22_while_cond      #  22:     goto   22_while_cond
    jmp     l_f0_11                 #  23:     goto   11
l_f0_13_if_false:
l_f0_11:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 2 of <array 6 of <array 9 of <array 3 of <array 9 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 2 of <array 6 of <array 9 of <array 3 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <ptr(4) to <array 2 of <array 6 of <array 9 of <array 3 of <array 9 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <ptr(4) to <array 2 of <array 6 of <array 9 of <array 3 of <array 9 of <int>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 2 of <array 8 of <array 8 of <array 5 of <int>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <ptr(4) to <array 2 of <array 6 of <array 9 of <array 3 of <array 9 of <int>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <ptr(4) to <array 2 of <array 6 of <array 9 of <array 3 of <array 9 of <int>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t3       <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t31      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 10 of <array 1 of <array 2 of <array 6 of <char>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 6 of <array 9 of <array 3 of <array 9 of <int>>>>>>> %ebp-116 ]
    #   -117(%ebp)   1  [ $t6       <char> %ebp-117 ]
    #   -124(%ebp)   4  [ $t7       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t8       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t9       <int> %ebp-132 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 8 of <array 10 of <array 6 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #   -11820(%ebp)  11688  [ $v3       <array 2 of <array 6 of <array 9 of <array 3 of <array 9 of <int>>>>>> %ebp-11820 ]
    #   -12324(%ebp)  504  [ $v4       <array 4 of <array 10 of <array 1 of <array 2 of <array 6 of <char>>>>>> %ebp-12324 ]
    #   -20028(%ebp)  7704  [ $v5       <array 3 of <array 2 of <array 8 of <array 8 of <array 5 of <int>>>>>> %ebp-20028 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20016, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5004, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-11820(%ebp)         # local array 'v3': 5 dimensions
    movl    $2,-11816(%ebp)         #   dimension 1: 2 elements
    movl    $6,-11812(%ebp)         #   dimension 2: 6 elements
    movl    $9,-11808(%ebp)         #   dimension 3: 9 elements
    movl    $3,-11804(%ebp)         #   dimension 4: 3 elements
    movl    $9,-11800(%ebp)         #   dimension 5: 9 elements
    movl    $5,-12324(%ebp)         # local array 'v4': 5 dimensions
    movl    $4,-12320(%ebp)         #   dimension 1: 4 elements
    movl    $10,-12316(%ebp)        #   dimension 2: 10 elements
    movl    $1,-12312(%ebp)         #   dimension 3: 1 elements
    movl    $2,-12308(%ebp)         #   dimension 4: 2 elements
    movl    $6,-12304(%ebp)         #   dimension 5: 6 elements
    movl    $5,-20028(%ebp)         # local array 'v5': 5 dimensions
    movl    $3,-20024(%ebp)         #   dimension 1: 3 elements
    movl    $2,-20020(%ebp)         #   dimension 2: 2 elements
    movl    $8,-20016(%ebp)         #   dimension 3: 8 elements
    movl    $8,-20012(%ebp)         #   dimension 4: 8 elements
    movl    $5,-20008(%ebp)         #   dimension 5: 5 elements

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_exit              
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   4:     goto   6_while_cond
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    leal    -20028(%ebp), %eax      #   7:     &()    t2 <- v5
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   8:     param  3 <- t2
    pushl   %eax                   
    movl    $99, %eax               #   9:     if     99 = 97 goto 9
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_9                 
    jmp     l_f1_10                 #  10:     goto   10
l_f1_9:
    movl    $1, %eax                #  12:     assign t3 <- 1
    movb    %al, -97(%ebp)         
    jmp     l_f1_11                 #  13:     goto   11
l_f1_10:
    movl    $0, %eax                #  15:     assign t3 <- 0
    movb    %al, -97(%ebp)         
l_f1_11:
    movzbl  -97(%ebp), %eax         #  17:     param  2 <- t3
    pushl   %eax                   
    leal    -12324(%ebp), %eax      #  18:     &()    t4 <- v4
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  19:     param  1 <- t4
    pushl   %eax                   
    leal    -11820(%ebp), %eax      #  20:     &()    t5 <- v3
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  21:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  22:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -117(%ebp)        
    movl    $65667, %eax            #  23:     div    t7 <- 65667, 59213
    movl    $59213, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  24:     div    t8 <- t7, 85409
    movl    $85409, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  25:     div    t9 <- t8, 62319
    movl    $62319, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -132(%ebp)       
    leal    -11820(%ebp), %eax      #  26:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  27:     param  1 <- 2
    pushl   %eax                   
    leal    -11820(%ebp), %eax      #  28:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  30:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $20995, %eax            #  31:     mul    t13 <- 20995, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     add    t14 <- t13, 24803
    movl    $24803, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    leal    -11820(%ebp), %eax      #  34:     &()    t15 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  36:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  37:     mul    t17 <- t14, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  38:     add    t18 <- t17, 79432
    movl    $79432, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  39:     param  1 <- 4
    pushl   %eax                   
    leal    -11820(%ebp), %eax      #  40:     &()    t19 <- v3
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  41:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  42:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -48(%ebp), %eax         #  43:     mul    t21 <- t18, t20
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  44:     add    t22 <- t21, 24228
    movl    $24228, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  45:     param  1 <- 5
    pushl   %eax                   
    leal    -11820(%ebp), %eax      #  46:     &()    t23 <- v3
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  47:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  48:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  49:     mul    t25 <- t22, t24
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  50:     add    t26 <- t25, 70189
    movl    $70189, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  51:     mul    t27 <- t26, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    leal    -11820(%ebp), %eax      #  52:     &()    t28 <- v3
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  53:     param  0 <- t28
    pushl   %eax                   
    call    DOFS                    #  54:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  55:     add    t30 <- t27, t29
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -16(%ebp), %eax         #  56:     add    t31 <- t10, t30
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -132(%ebp), %eax        #  57:     assign @t31 <- t9
    movl    -108(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_f1_13                 #  58:     goto   13
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $20016, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 2 of <array 8 of <array 8 of <array 5 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 4 of <array 10 of <array 1 of <array 2 of <array 6 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 6 of <array 9 of <array 3 of <array 9 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t7       <char> %ebp-27 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 3 of <array 3 of <array 8 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 2 of <array 4 of <array 8 of <array 6 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -11716(%ebp)  11688  [ $v4       <array 2 of <array 6 of <array 9 of <array 3 of <array 9 of <int>>>>>> %ebp-11716 ]
    #   -12220(%ebp)  504  [ $v5       <array 4 of <array 10 of <array 1 of <array 2 of <array 6 of <char>>>>>> %ebp-12220 ]
    #   -19924(%ebp)  7704  [ $v6       <array 3 of <array 2 of <array 8 of <array 8 of <array 5 of <int>>>>>> %ebp-19924 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $19912, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4978, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-11716(%ebp)         # local array 'v4': 5 dimensions
    movl    $2,-11712(%ebp)         #   dimension 1: 2 elements
    movl    $6,-11708(%ebp)         #   dimension 2: 6 elements
    movl    $9,-11704(%ebp)         #   dimension 3: 9 elements
    movl    $3,-11700(%ebp)         #   dimension 4: 3 elements
    movl    $9,-11696(%ebp)         #   dimension 5: 9 elements
    movl    $5,-12220(%ebp)         # local array 'v5': 5 dimensions
    movl    $4,-12216(%ebp)         #   dimension 1: 4 elements
    movl    $10,-12212(%ebp)        #   dimension 2: 10 elements
    movl    $1,-12208(%ebp)         #   dimension 3: 1 elements
    movl    $2,-12204(%ebp)         #   dimension 4: 2 elements
    movl    $6,-12200(%ebp)         #   dimension 5: 6 elements
    movl    $5,-19924(%ebp)         # local array 'v6': 5 dimensions
    movl    $3,-19920(%ebp)         #   dimension 1: 3 elements
    movl    $2,-19916(%ebp)         #   dimension 2: 2 elements
    movl    $8,-19912(%ebp)         #   dimension 3: 8 elements
    movl    $8,-19908(%ebp)         #   dimension 4: 8 elements
    movl    $5,-19904(%ebp)         #   dimension 5: 5 elements

    # function body
    leal    -19924(%ebp), %eax      #   0:     &()    t2 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t2
    pushl   %eax                   
    movl    $0, %eax                #   2:     param  2 <- 0
    pushl   %eax                   
    leal    -12220(%ebp), %eax      #   3:     &()    t3 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t3
    pushl   %eax                   
    leal    -11716(%ebp), %eax      #   5:     &()    t4 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   7:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movl    $97, %eax               #   8:     if     97 < t5 goto 1_if_true
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   9:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $78735, %eax            #  14:     if     78735 > 73678 goto 5_if_true
    movl    $73678, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #  15:     goto   6_if_false
l_f2_5_if_true:
    call    dummyCHARfunc           #  17:     call   t6 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    jmp     l_f2_4                  #  18:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyCHARfunc           #  21:     call   t7 <- dummyCHARfunc
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #  22:     return t7
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $19912, %esp            # remove locals
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    movl    $31320, %eax            #   4:     div    t1 <- 31320, 19003
    movl    $19003, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t1
    pushl   %eax                   
    call    WriteInt                #   6:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_exit            

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
