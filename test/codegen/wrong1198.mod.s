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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 55 of <array 67 of <array 13 of <array 98 of <array 66 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 71 of <array 87 of <array 51 of <array 45 of <array 99 of <char>>>>>>> %ebp+12 ]
    #    -16(%ebp)   1  [ $v3       <bool> %ebp-16 ]

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
    movl    $0, %eax                #   0:     assign v3 <- 0
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t5
    jmp     l_f0_exit              
l_f0_3_while_cond:
    call    dummyBOOLfunc           #   4:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     if     t6 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4_while_body      
    jmp     l_f0_2                  #   6:     goto   2
l_f0_4_while_body:
    movl    $1, %eax                #   8:     if     1 = 0 goto 6
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6                 
    jmp     l_f0_7                  #   9:     goto   7
l_f0_6:
    movl    $1, %eax                #  11:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_8                  #  12:     goto   8
l_f0_7:
    movl    $0, %eax                #  14:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f0_8:
    movzbl  -15(%ebp), %eax         #  16:     assign v3 <- t7
    movb    %al, -16(%ebp)         
    jmp     l_f0_3_while_cond       #  17:     goto   3_while_cond
l_f0_2:

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
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t5       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t6       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t7       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t9       <int> %ebp-112 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 39 of <array 35 of <array 90 of <array 1 of <array 80 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #   -113(%ebp)   1  [ $v4       <char> %ebp-113 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $104, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $26, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     assign v4 <- 99
    movb    %al, -113(%ebp)        
    movl    $24236, %eax            #   1:     add    t5 <- 24236, 9041
    movl    $9041, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   2:     add    t6 <- t5, 82722
    movl    $82722, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   3:     if     t6 > 24461 goto 2_if_true
    movl    $24461, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_2_if_true:
    movl    $1, %eax                #   6:     assign v3 <- 1
    movb    %al, 16(%ebp)          
    movl    $100, %eax              #   7:     if     100 <= 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   8:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_1                  #  13:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $58219, %eax            #  16:     add    t7 <- 58219, 27308
    movl    $27308, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $72541, %eax            #  17:     add    t8 <- 72541, 53112
    movl    $53112, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  18:     sub    t9 <- t8, 40388
    movl    $40388, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  19:     sub    t10 <- t9, 73480
    movl    $73480, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     sub    t11 <- t10, 20736
    movl    $20736, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     add    t12 <- t11, 58640
    movl    $58640, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     sub    t13 <- t12, 22783
    movl    $22783, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  26:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t16 <- t15, 98161
    movl    $98161, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  31:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t19 <- t18, 68727
    movl    $68727, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  33:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  35:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  36:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  37:     add    t22 <- t21, 14688
    movl    $14688, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  38:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  40:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  41:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  42:     add    t25 <- t24, 48684
    movl    $48684, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  43:     mul    t26 <- t25, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  44:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  45:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  46:     add    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    12(%ebp), %eax          #  47:     add    t29 <- v2, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -104(%ebp), %eax        #  48:     assign @t29 <- t7
    movl    -92(%ebp), %edi        
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $104, %esp              # remove locals
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
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t24      <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t25      <ptr(4) to <array 71 of <array 87 of <array 51 of <array 45 of <array 99 of <char>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <ptr(4) to <array 55 of <array 67 of <array 13 of <array 98 of <array 66 of <bool>>>>>>> %ebp-80 ]
    #    -81(%ebp)   1  [ $t27      <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $t5       <bool> %ebp-82 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 57 of <array 27 of <array 8 of <array 27 of <array 52 of <bool>>>>>>> %ebp+8 ]
    #   -101(%ebp)   1  [ $v2       <bool> %ebp-101 ]
    #   -309849668(%ebp)  309849564  [ $v3       <array 55 of <array 67 of <array 13 of <array 98 of <array 66 of <bool>>>>>> %ebp-309849668 ]
    #   -1713294980(%ebp)  1403445309  [ $v4       <array 71 of <array 87 of <array 51 of <array 45 of <array 99 of <char>>>>>> %ebp-1713294980 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1713294968, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $428323742, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-309849668(%ebp)     # local array 'v3': 5 dimensions
    movl    $55,-309849664(%ebp)    #   dimension 1: 55 elements
    movl    $67,-309849660(%ebp)    #   dimension 2: 67 elements
    movl    $13,-309849656(%ebp)    #   dimension 3: 13 elements
    movl    $98,-309849652(%ebp)    #   dimension 4: 98 elements
    movl    $66,-309849648(%ebp)    #   dimension 5: 66 elements
    movl    $5,-1713294980(%ebp)    # local array 'v4': 5 dimensions
    movl    $71,-1713294976(%ebp)   #   dimension 1: 71 elements
    movl    $87,-1713294972(%ebp)   #   dimension 2: 87 elements
    movl    $51,-1713294968(%ebp)   #   dimension 3: 51 elements
    movl    $45,-1713294964(%ebp)   #   dimension 4: 45 elements
    movl    $99,-1713294960(%ebp)   #   dimension 5: 99 elements

    # function body
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $97, %eax               #   4:     if     97 <= 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $83218, %eax            #  10:     if     83218 > 60998 goto 9
    movl    $60998, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_9                 
    jmp     l_f2_10                 #  11:     goto   10
l_f2_9:
    movl    $1, %eax                #  13:     assign t5 <- 1
    movb    %al, -82(%ebp)         
    jmp     l_f2_11                 #  14:     goto   11
l_f2_10:
    movl    $0, %eax                #  16:     assign t5 <- 0
    movb    %al, -82(%ebp)         
l_f2_11:
    movzbl  -82(%ebp), %eax         #  18:     return t5
    jmp     l_f2_exit              
    movl    $2, %eax                #  19:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $67918, %eax            #  22:     mul    t7 <- 67918, t6
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  23:     add    t8 <- t7, 12007
    movl    $12007, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  27:     mul    t10 <- t8, t9
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  28:     add    t11 <- t10, 63208
    movl    $63208, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  31:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  32:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     add    t14 <- t13, 54105
    movl    $54105, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  36:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  37:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  38:     add    t17 <- t16, 49176
    movl    $49176, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  39:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  40:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  41:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  42:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  43:     add    t21 <- v1, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $1, %eax                #  44:     assign @t21 <- 1
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_1_while_cond       #  45:     goto   1_while_cond
l_f2_0:
l_f2_15_while_cond:
    movl    $67654, %eax            #  48:     add    t22 <- 67654, 23956
    movl    $23956, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  49:     add    t23 <- t22, 81171
    movl    $81171, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $33004, %eax            #  50:     if     33004 # t23 goto 18
    movl    -68(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_18                
    jmp     l_f2_19                 #  51:     goto   19
l_f2_18:
    movl    $1, %eax                #  53:     assign t24 <- 1
    movb    %al, -69(%ebp)         
    jmp     l_f2_20                 #  54:     goto   20
l_f2_19:
    movl    $0, %eax                #  56:     assign t24 <- 0
    movb    %al, -69(%ebp)         
l_f2_20:
    movzbl  -69(%ebp), %eax         #  58:     return t24
    jmp     l_f2_exit              
    jmp     l_f2_15_while_cond      #  59:     goto   15_while_cond
    leal    -1713294980(%ebp), %eax #  60:     &()    t25 <- v4
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  61:     param  1 <- t25
    pushl   %eax                   
    leal    -309849668(%ebp), %eax  #  62:     &()    t26 <- v3
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  63:     param  0 <- t26
    pushl   %eax                   
    call    f0                      #  64:     call   t27 <- f0
    addl    $8, %esp               
    movb    %al, -81(%ebp)         

l_f2_exit:
    # epilogue
    addl    $1713294968, %esp       # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
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
    jmp     l_test_1                #   0:     goto   1
    jmp     l_test_1                #   1:     goto   1
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_2                #   3:     goto   2
l_test_1:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #  10:     assign v0 <- t0
    movb    %al, v0                
    movl    $64681, %eax            #  11:     if     64681 = 36915 goto 11_if_true
    movl    $36915, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11_if_true      
    jmp     l_test_12_if_false      #  12:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    WriteLn                 #  16:     call   WriteLn
    movl    $44602, %eax            #  17:     if     44602 = 45713 goto 18_if_true
    movl    $45713, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_18_if_true      
    jmp     l_test_19_if_false      #  18:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  20:     goto   17
l_test_19_if_false:
l_test_17:
l_test_22_while_cond:
    jmp     l_test_22_while_cond    #  24:     goto   22_while_cond
    movl    $1, %eax                #  25:     assign v0 <- 1
    movb    %al, v0                
l_test_26_while_cond:
    movl    $54509, %eax            #  27:     if     54509 < 46157 goto 27_while_body
    movl    $46157, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_27_while_body   
    jmp     l_test_25               #  28:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  30:     goto   26_while_cond
l_test_25:
    jmp     l_test_10               #  32:     goto   10
l_test_12_if_false:
l_test_10:
    call    ReadInt                 #  35:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_32               #  36:     goto   32
    jmp     l_test_32               #  37:     goto   32
    jmp     l_test_32               #  38:     goto   32
    movl    $1, %eax                #  39:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_33               #  40:     goto   33
l_test_32:
    movl    $0, %eax                #  42:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_33:
    movzbl  -21(%ebp), %eax         #  44:     assign v0 <- t2
    movb    %al, v0                
    movl    $96562, %eax            #  45:     add    t3 <- 96562, 34888
    movl    $34888, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  46:     sub    t4 <- t3, 92915
    movl    $92915, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $87434, %eax            #  47:     if     87434 < t4 goto 39_if_true
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_39_if_true      
    jmp     l_test_40_if_false      #  48:     goto   40_if_false
l_test_39_if_true:
    movl    $99, %eax               #  50:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_38               #  51:     goto   38
l_test_40_if_false:
l_test_38:
l_test_44_while_cond:
    jmp     l_test_45_while_body    #  55:     goto   45_while_body
    jmp     l_test_43               #  56:     goto   43
l_test_45_while_body:
    jmp     l_test_44_while_cond    #  58:     goto   44_while_cond
l_test_43:

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
