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
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    movl    $0, %eax                #   1:     if     0 = 0 goto 4_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   2:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   4:     goto   3
l_f0_5_if_false:
l_f0_3:
    movl    $99, %eax               #   7:     return 99
    jmp     l_f0_exit              
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #   9:     goto   9_while_cond
    movl    $100, %eax              #  10:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $99, %eax               #  14:     if     99 <= 97 goto 13
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_13                
    jmp     l_f0_14                 #  15:     goto   14
l_f0_13:
    movl    $1, %eax                #  17:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_15                 #  18:     goto   15
l_f0_14:
    movl    $0, %eax                #  20:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_15:
    movzbl  -13(%ebp), %eax         #  22:     assign v1 <- t1
    movb    %al, -14(%ebp)         
    movl    $27350, %eax            #  23:     assign v2 <- 27350
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t19      <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 4 of <array 7 of <array 8 of <array 5 of <bool>>>>>>> %ebp+16 ]
    #    -89(%ebp)   1  [ $v4       <bool> %ebp-89 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_0                  #   2:     goto   0
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    jmp     l_f1_6_while_body       #   6:     goto   6_while_body
    jmp     l_f1_6_while_body       #   7:     goto   6_while_body
    jmp     l_f1_6_while_body       #   8:     goto   6_while_body
    jmp     l_f1_4                  #   9:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #  11:     goto   5_while_cond
l_f1_4:
l_f1_11_while_cond:
    movl    $0, %eax                #  14:     if     0 = 0 goto 14
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_14                
    jmp     l_f1_15                 #  15:     goto   15
l_f1_14:
    movl    $1, %eax                #  17:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_16                 #  18:     goto   16
l_f1_15:
    movl    $0, %eax                #  20:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_16:
    movl    $2, %eax                #  22:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  24:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $74000, %eax            #  25:     mul    t3 <- 74000, t2
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  26:     add    t4 <- t3, 93148
    movl    $93148, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  27:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  28:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  29:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  30:     mul    t6 <- t4, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  31:     add    t7 <- t6, 40377
    movl    $40377, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  32:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  33:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  34:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  35:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  36:     add    t10 <- t9, 98600
    movl    $98600, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  37:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  38:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  39:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  40:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  41:     add    t13 <- t12, 59211
    movl    $59211, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  42:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    16(%ebp), %eax          #  43:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  44:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  45:     add    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  46:     add    t17 <- v3, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movzbl  -13(%ebp), %eax         #  47:     assign @t17 <- t1
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $99, %eax               #  48:     return 99
    jmp     l_f1_exit              
    call    ReadInt                 #  49:     call   t18 <- ReadInt
    movl    %eax, -52(%ebp)        
l_f1_21_while_cond:
    movl    $30423, %eax            #  51:     if     30423 = 87247 goto 22_while_body
    movl    $87247, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_22_while_body     
    jmp     l_f1_20                 #  52:     goto   20
l_f1_22_while_body:
    jmp     l_f1_21_while_cond      #  54:     goto   21_while_cond
l_f1_20:
    movl    $100, %eax              #  56:     return 100
    jmp     l_f1_exit              
    movl    $98, %eax               #  57:     assign v2 <- 98
    movb    %al, 12(%ebp)          
    movl    $100, %eax              #  58:     return 100
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  59:     call   t19 <- dummyBOOLfunc
    movb    %al, -53(%ebp)         
    jmp     l_f1_28                 #  60:     goto   28
l_f1_28:
    jmp     l_f1_11_while_cond      #  62:     goto   11_while_cond

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
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
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t3       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t4       <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t5       <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 5 of <array 2 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 4 of <array 4 of <array 9 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #   -101(%ebp)   1  [ $v3       <bool> %ebp-101 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t2 <- ReadInt
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   2:     mul    t3 <- t2, 39592
    movl    $39592, %ebx           
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   3:     div    t4 <- t3, 41183
    movl    $41183, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   4:     if     t4 = 63444 goto 2
    movl    $63444, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2                 
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_4                  #   8:     goto   4
l_f2_3:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -81(%ebp)         
l_f2_4:
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $56251, %eax            #  15:     mul    t7 <- 56251, t6
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  16:     add    t8 <- t7, 49579
    movl    $49579, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  20:     mul    t10 <- t8, t9
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     add    t11 <- t10, 58537
    movl    $58537, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  24:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  25:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t14 <- t13, 98889
    movl    $98889, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  28:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  29:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  30:     mul    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     add    t17 <- t16, 15889
    movl    $15889, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  33:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  34:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  35:     add    t20 <- t18, t19
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  36:     add    t21 <- v2, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -81(%ebp), %eax         #  37:     assign @t21 <- t5
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    call    ReadInt                 #  38:     call   t22 <- ReadInt
    movl    %eax, -72(%ebp)        

l_f2_exit:
    # epilogue
    addl    $92, %esp               # remove locals
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
    movl    $13308, %eax            #   0:     mul    t0 <- 13308, 38731
    movl    $38731, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    movl    $24870, %eax            #   2:     assign v0 <- 24870
    movl    %eax, v0               
    jmp     l_test_5                #   3:     goto   5
l_test_5:
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #   6:     goto   9_while_cond
    jmp     l_test_exit            
    jmp     l_test_1                #   8:     goto   1
l_test_1:
    jmp     l_test_exit            
    jmp     l_test_18_if_false      #  11:     goto   18_if_false
    jmp     l_test_16               #  12:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_12               #  15:     goto   12
l_test_12:
l_test_20_while_cond:
    movl    $62919, %eax            #  18:     if     62919 >= 8157 goto 21_while_body
    movl    $8157, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_21_while_body   
    jmp     l_test_19               #  19:     goto   19
l_test_21_while_body:
    jmp     l_test_exit            
    jmp     l_test_24               #  22:     goto   24
l_test_24:
    movl    $0, %eax                #  24:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_20_while_cond    #  25:     goto   20_while_cond
l_test_19:
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
