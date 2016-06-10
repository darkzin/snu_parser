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
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 15 of <array 93 of <array 12 of <array 10 of <array 53 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 66 of <array 79 of <array 97 of <array 80 of <array 97 of <int>>>>>>> %ebp+12 ]
    #    -85(%ebp)   1  [ $v2       <char> %ebp-85 ]
    #    -92(%ebp)   4  [ $v3       <int> %ebp-92 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     assign v2 <- 100
    movb    %al, -85(%ebp)         
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   2:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   3:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $49230, %eax            #   4:     mul    t5 <- 49230, t4
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    $52270, %eax            #   5:     add    t6 <- 52270, 34458
    movl    $34458, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #   6:     add    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  10:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  11:     add    t10 <- t9, 56391
    movl    $56391, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  15:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     add    t13 <- t12, 7031
    movl    $7031, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  20:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     add    t16 <- t15, 4863
    movl    $4863, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  25:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $91534, %eax            #  27:     assign @t20 <- 91534
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
l_f0_3_while_cond:
    jmp     l_f0_2                  #  29:     goto   2
    call    dummyCHARfunc           #  30:     call   t21 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #  31:     return t21
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  32:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
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
    #    -92(%ebp)   4  [ $t4       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t5       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t6       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t7       <ptr(4) to <array 66 of <array 79 of <array 97 of <array 80 of <array 97 of <int>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <ptr(4) to <array 15 of <array 93 of <array 12 of <array 10 of <array 53 of <char>>>>>>> %ebp-108 ]
    #   -109(%ebp)   1  [ $t9       <char> %ebp-109 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 61 of <array 32 of <array 36 of <array 72 of <array 91 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 54 of <array 64 of <array 82 of <array 23 of <array 50 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #   -8872336(%ebp)  8872224  [ $v3       <array 15 of <array 93 of <array 12 of <array 10 of <array 53 of <char>>>>>> %ebp-8872336 ]
    #   1472268504(%ebp)  -1481140840  [ $v4       <array 66 of <array 79 of <array 97 of <array 80 of <array 97 of <int>>>>>> %ebp+1472268504 ]
    #   1472268503(%ebp)   1  [ $v5       <bool> %ebp+1472268503 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1472268512, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-368067128, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-8872336(%ebp)       # local array 'v3': 5 dimensions
    movl    $15,-8872332(%ebp)      #   dimension 1: 15 elements
    movl    $93,-8872328(%ebp)      #   dimension 2: 93 elements
    movl    $12,-8872324(%ebp)      #   dimension 3: 12 elements
    movl    $10,-8872320(%ebp)      #   dimension 4: 10 elements
    movl    $53,-8872316(%ebp)      #   dimension 5: 53 elements
    movl    $5,1472268504(%ebp)     # local array 'v4': 5 dimensions
    movl    $66,1472268508(%ebp)    #   dimension 1: 66 elements
    movl    $79,1472268512(%ebp)    #   dimension 2: 79 elements
    movl    $97,1472268516(%ebp)    #   dimension 3: 97 elements
    movl    $80,1472268520(%ebp)    #   dimension 4: 80 elements
    movl    $97,1472268524(%ebp)    #   dimension 5: 97 elements

    # function body
l_f1_1_while_cond:
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   2:     if     t4 <= 69653 goto 2_while_body
    movl    $69653, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    call    dummyINTfunc            #   5:     call   t5 <- dummyINTfunc
    movl    %eax, -96(%ebp)        
    call    dummyINTfunc            #   6:     call   t6 <- dummyINTfunc
    movl    %eax, -100(%ebp)       
    leal    1472268504(%ebp), %eax  #   7:     &()    t7 <- v4
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   8:     param  1 <- t7
    pushl   %eax                   
    leal    -8872336(%ebp), %eax    #   9:     &()    t8 <- v3
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  10:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  11:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -109(%ebp)        
    movl    $100, %eax              #  12:     if     100 > 100 goto 8
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_8                 
    jmp     l_f1_9                  #  13:     goto   9
l_f1_8:
    movl    $1, %eax                #  15:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_10                 #  16:     goto   10
l_f1_9:
    movl    $0, %eax                #  18:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_10:
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $9297, %eax             #  23:     mul    t12 <- 9297, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t13 <- t12, 26103
    movl    $26103, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t16 <- t15, 32335
    movl    $32335, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  33:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  34:     add    t19 <- t18, 87318
    movl    $87318, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  37:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  38:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  39:     add    t22 <- t21, 24404
    movl    $24404, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  40:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  41:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  42:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  43:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  44:     add    t26 <- v0, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -13(%ebp), %eax         #  45:     assign @t26 <- t10
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $65310, %eax            #  46:     return 65310
    jmp     l_f1_exit              
l_f1_14_while_cond:
    jmp     l_f1_13                 #  48:     goto   13
    jmp     l_f1_14_while_cond      #  49:     goto   14_while_cond
l_f1_13:
    call    WriteLn                 #  51:     call   WriteLn
    jmp     l_f1_1_while_cond       #  52:     goto   1_while_cond
l_f1_0:
    movl    $98, %eax               #  54:     assign v2 <- 98
    movb    %al, 16(%ebp)          
    movl    $52227, %eax            #  55:     mul    t27 <- 52227, 63021
    movl    $63021, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  56:     add    t28 <- t27, 15945
    movl    $15945, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  57:     return t28
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $-1472268512, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 100 of <array 33 of <array 64 of <array 93 of <array 78 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 91 of <array 70 of <array 54 of <array 65 of <array 2 of <char>>>>>>> %ebp+20 ]
    #    -32(%ebp)   4  [ $v4       <int> %ebp-32 ]

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
    movl    $83277, %eax            #   0:     sub    t4 <- 83277, 74586
    movl    $74586, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t5 <- t4, 21424
    movl    $21424, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 84200
    movl    $84200, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t7 <- t6, 22730
    movl    $22730, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v4 <- t7
    movl    %eax, -32(%ebp)        
    call    dummyProcedure          #   5:     call   dummyProcedure
    jmp     l_f2_4_if_false         #   6:     goto   4_if_false
l_f2_6_while_cond:
    movl    $43335, %eax            #   8:     if     43335 = 81928 goto 7_while_body
    movl    $81928, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  11:     goto   6_while_cond
l_f2_5:
    movl    $0, %eax                #  13:     return 0
    jmp     l_f2_exit              
l_f2_11_while_cond:
    movl    $88862, %eax            #  15:     if     88862 = 40894 goto 12_while_body
    movl    $40894, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_12_while_body     
    jmp     l_f2_10                 #  16:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  18:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_2                  #  20:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 66 of <array 79 of <array 97 of <array 80 of <array 97 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 15 of <array 93 of <array 12 of <array 10 of <array 53 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]

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
    leal    v1, %eax                #   0:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t0
    pushl   %eax                   
    leal    v0, %eax                #   2:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   4:     call   t2 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    call    dummyBOOLfunc           #   5:     call   t3 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
l_test_3_while_cond:
    movl    $99, %eax               #   7:     if     99 >= 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_4_while_body    
    jmp     l_test_2                #   8:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #  10:     goto   3_while_cond
l_test_2:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <array 15 of <array 93 of <array 12 of <array 10 of <array 53 of <char>>>>>>
    .long    5
    .long   15
    .long   93
    .long   12
    .long   10
    .long   53
    .skip 8872200
v1:                                 # <array 66 of <array 79 of <array 97 of <array 80 of <array 97 of <int>>>>>>
    .long    5
    .long   66
    .long   79
    .long   97
    .long   80
    .long   97
    .skip -1481140864








    # end of global data section
    #-----------------------------------------

    .end
##################################################
