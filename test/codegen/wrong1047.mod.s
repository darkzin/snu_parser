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
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t23      <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 13 of <array 64 of <array 83 of <array 77 of <array 82 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 51 of <array 27 of <array 45 of <array 4 of <array 24 of <char>>>>>>> %ebp+12 ]
    #    -89(%ebp)   1  [ $v3       <char> %ebp-89 ]

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
    movl    $83669, %eax            #   0:     sub    t5 <- 83669, 49272
    movl    $49272, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   1:     add    t6 <- t5, 10744
    movl    $10744, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   4:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #   5:     mul    t8 <- t6, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   6:     add    t9 <- t8, 42338
    movl    $42338, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   9:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  10:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t12 <- t11, 87466
    movl    $87466, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t15 <- t14, 65540
    movl    $65540, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  20:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     add    t18 <- t17, 73722
    movl    $73722, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  24:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  25:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t22 <- v2, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $97, %eax               #  27:     assign @t22 <- 97
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  29:     call   t23 <- dummyBOOLfunc
    movb    %al, -65(%ebp)         

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 12 of <array 67 of <array 20 of <array 92 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
l_f1_1_while_cond:
    movl    $2670, %eax             #   1:     sub    t5 <- 2670, 57370
    movl    $57370, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $25252, %eax            #   2:     if     25252 > t5 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $1, %eax                #   5:     if     1 = 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   6:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   8:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $90408, %eax            #  11:     param  0 <- 90408
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_1_while_cond       #  13:     goto   1_while_cond
l_f1_0:
    movl    $1, %eax                #  15:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_12                 #  16:     goto   12
    movl    $0, %eax                #  17:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f1_12:
    movzbl  -17(%ebp), %eax         #  19:     return t6
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  20:     call   t7 <- dummyCHARfunc
    movb    %al, -18(%ebp)         

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
    #    -80(%ebp)   4  [ $t26      <ptr(4) to <array 27 of <array 12 of <array 67 of <array 20 of <array 92 of <bool>>>>>>> %ebp-80 ]
    #    -81(%ebp)   1  [ $t27      <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $t28      <bool> %ebp-82 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t30      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t5       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t6       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t7       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <int> %ebp-108 ]
    #   -109(%ebp)   1  [ $t9       <bool> %ebp-109 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 38 of <array 5 of <array 18 of <array 75 of <array 82 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #   -39942856(%ebp)  39942744  [ $v4       <array 27 of <array 12 of <array 67 of <array 20 of <array 92 of <bool>>>>>> %ebp-39942856 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $39942844, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9985711, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-39942856(%ebp)      # local array 'v4': 5 dimensions
    movl    $27,-39942852(%ebp)     #   dimension 1: 27 elements
    movl    $12,-39942848(%ebp)     #   dimension 2: 12 elements
    movl    $67,-39942844(%ebp)     #   dimension 3: 67 elements
    movl    $20,-39942840(%ebp)     #   dimension 4: 20 elements
    movl    $92,-39942836(%ebp)     #   dimension 5: 92 elements

    # function body
    movl    $75301, %eax            #   0:     add    t5 <- 75301, 43236
    movl    $43236, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   1:     sub    t6 <- t5, 17041
    movl    $17041, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   2:     add    t7 <- t6, 38456
    movl    $38456, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   3:     sub    t8 <- t7, 32883
    movl    $32883, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $63910, %eax            #   4:     if     63910 # t8 goto 1
    movl    -108(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   5:     goto   2
l_f2_1:
    movl    $1, %eax                #   7:     assign t9 <- 1
    movb    %al, -109(%ebp)        
    jmp     l_f2_3                  #   8:     goto   3
l_f2_2:
    movl    $0, %eax                #  10:     assign t9 <- 0
    movb    %al, -109(%ebp)        
l_f2_3:
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $58173, %eax            #  15:     mul    t11 <- 58173, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t12 <- t11, 10952
    movl    $10952, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  20:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t15 <- t14, 14910
    movl    $14910, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  24:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  25:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  26:     add    t18 <- t17, 80047
    movl    $80047, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  28:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  29:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  30:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  31:     add    t21 <- t20, 15620
    movl    $15620, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  32:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  33:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  34:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  35:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  36:     add    t25 <- v2, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -109(%ebp), %eax        #  37:     assign @t25 <- t9
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $97, %eax               #  38:     param  1 <- 97
    pushl   %eax                   
    leal    -39942856(%ebp), %eax   #  39:     &()    t26 <- v4
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  40:     param  0 <- t26
    pushl   %eax                   
    call    f1                      #  41:     call   t27 <- f1
    addl    $8, %esp               
    movb    %al, -81(%ebp)         
    movzbl  -81(%ebp), %eax         #  42:     if     t27 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6                 
    jmp     l_f2_6                  #  43:     goto   6
    jmp     l_f2_6                  #  44:     goto   6
    jmp     l_f2_6                  #  45:     goto   6
l_f2_6:
    movl    $1, %eax                #  47:     assign t28 <- 1
    movb    %al, -82(%ebp)         
    jmp     l_f2_8                  #  48:     goto   8
    movl    $0, %eax                #  49:     assign t28 <- 0
    movb    %al, -82(%ebp)         
l_f2_8:
    movzbl  -82(%ebp), %eax         #  51:     assign v1 <- t28
    movb    %al, 8(%ebp)           
l_f2_15_while_cond:
    movl    $33517, %eax            #  53:     add    t29 <- 33517, 53932
    movl    $53932, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  54:     add    t30 <- t29, 75126
    movl    $75126, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  55:     if     t30 = 8687 goto 16_while_body
    movl    $8687, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_16_while_body     
    jmp     l_f2_14                 #  56:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  58:     goto   15_while_cond
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $39942844, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <bool> %ebp-20 ]

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
    movl    $16671, %eax            #   1:     add    t0 <- 16671, 91549
    movl    $91549, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $15317, %eax            #   2:     if     15317 < t0 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    movl    $1, %eax                #   5:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_6_while_cond:
    jmp     l_test_10               #   9:     goto   10
    movl    $1, %eax                #  10:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_11               #  11:     goto   11
l_test_10:
    movl    $0, %eax                #  13:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_11:
    movzbl  -17(%ebp), %eax         #  15:     if     t1 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_7_while_body    
    jmp     l_test_5                #  16:     goto   5
l_test_7_while_body:
    call    dummyProcedure          #  18:     call   dummyProcedure
    movl    $97, %eax               #  19:     if     97 # 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_15_if_true      
    jmp     l_test_16_if_false      #  20:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  22:     goto   14
l_test_16_if_false:
l_test_14:
    movl    $85324, %eax            #  25:     assign v1 <- 85324
    movl    %eax, v1               
    jmp     l_test_6_while_cond     #  26:     goto   6_while_cond
l_test_5:
l_test_20_while_cond:
    call    dummyCHARfunc           #  29:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    call    dummyCHARfunc           #  30:     call   t3 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movzbl  -18(%ebp), %eax         #  31:     if     t2 > t3 goto 21_while_body
    movzbl  -19(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_21_while_body   
    jmp     l_test_19               #  32:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  34:     goto   20_while_cond
l_test_19:
    call    dummyBOOLfunc           #  36:     call   t4 <- dummyBOOLfunc
    movb    %al, -20(%ebp)         

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
