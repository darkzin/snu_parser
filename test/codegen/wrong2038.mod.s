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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t9       <char> %ebp-26 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 14 of <array 81 of <array 88 of <array 46 of <array 24 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 43 of <array 98 of <array 45 of <array 92 of <array 73 of <bool>>>>>>> %ebp+16 ]
    #    -27(%ebp)   1  [ $v4       <char> %ebp-27 ]

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
    movl    $51286, %eax            #   0:     add    t6 <- 51286, 69116
    movl    $69116, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     sub    t7 <- t6, 82795
    movl    $82795, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     return t7
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   3:     call   t8 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   4:     assign v4 <- t8
    movb    %al, -27(%ebp)         
l_f0_3_while_cond:
    call    dummyCHARfunc           #   6:     call   t9 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movl    $99, %eax               #   7:     if     99 < t9 goto 4_while_body
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_4_while_body      
    jmp     l_f0_2                  #   8:     goto   2
l_f0_4_while_body:
    call    dummyCHARfunc           #  10:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #  11:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f0_9_while_cond:
    movl    $15940, %eax            #  13:     if     15940 > 42159 goto 10_while_body
    movl    $42159, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_10_while_body     
    jmp     l_f0_8                  #  14:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  16:     goto   9_while_cond
l_f0_8:
    movl    $59644, %eax            #  18:     return 59644
    jmp     l_f0_exit              
    jmp     l_f0_13                 #  19:     goto   13
l_f0_13:
    jmp     l_f0_3_while_cond       #  21:     goto   3_while_cond
l_f0_2:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 14 of <array 81 of <array 88 of <array 46 of <array 24 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 14 of <array 81 of <array 88 of <array 46 of <array 24 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <ptr(4) to <array 14 of <array 81 of <array 88 of <array 46 of <array 24 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <ptr(4) to <array 14 of <array 81 of <array 88 of <array 46 of <array 24 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <ptr(4) to <array 14 of <array 81 of <array 88 of <array 46 of <array 24 of <int>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <ptr(4) to <array 14 of <array 81 of <array 88 of <array 46 of <array 24 of <int>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t6       <ptr(4) to <array 43 of <array 98 of <array 45 of <array 92 of <array 73 of <bool>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t7       <ptr(4) to <array 14 of <array 81 of <array 88 of <array 46 of <array 24 of <int>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t8       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t9       <int> %ebp-124 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 80 of <array 84 of <array 73 of <array 19 of <array 78 of <bool>>>>>>> %ebp+12 ]
    #   -440681620(%ebp)  440681496  [ $v3       <array 14 of <array 81 of <array 88 of <array 46 of <array 24 of <int>>>>>> %ebp-440681620 ]
    #   -1714236724(%ebp)  1273555104  [ $v4       <array 43 of <array 98 of <array 45 of <array 92 of <array 73 of <bool>>>>>> %ebp-1714236724 ]
    #   -1714236728(%ebp)   4  [ $v5       <int> %ebp-1714236728 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1714236716, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $428559179, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-440681620(%ebp)     # local array 'v3': 5 dimensions
    movl    $14,-440681616(%ebp)    #   dimension 1: 14 elements
    movl    $81,-440681612(%ebp)    #   dimension 2: 81 elements
    movl    $88,-440681608(%ebp)    #   dimension 3: 88 elements
    movl    $46,-440681604(%ebp)    #   dimension 4: 46 elements
    movl    $24,-440681600(%ebp)    #   dimension 5: 24 elements
    movl    $5,-1714236724(%ebp)    # local array 'v4': 5 dimensions
    movl    $43,-1714236720(%ebp)   #   dimension 1: 43 elements
    movl    $98,-1714236716(%ebp)   #   dimension 2: 98 elements
    movl    $45,-1714236712(%ebp)   #   dimension 3: 45 elements
    movl    $92,-1714236708(%ebp)   #   dimension 4: 92 elements
    movl    $73,-1714236704(%ebp)   #   dimension 5: 73 elements

    # function body
    leal    -1714236724(%ebp), %eax #   0:     &()    t6 <- v4
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   1:     param  2 <- t6
    pushl   %eax                   
    movl    $56581, %eax            #   2:     param  1 <- 56581
    pushl   %eax                   
    leal    -440681620(%ebp), %eax  #   3:     &()    t7 <- v3
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #   4:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #   5:     call   t8 <- f0
    addl    $12, %esp              
    movl    %eax, -120(%ebp)       
    movl    $16715, %eax            #   6:     sub    t9 <- 16715, 400
    movl    $400, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    leal    -440681620(%ebp), %eax  #   7:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    leal    -440681620(%ebp), %eax  #   9:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  11:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $54880, %eax            #  12:     mul    t13 <- 54880, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $86543, %eax            #  13:     add    t14 <- 86543, 1589
    movl    $1589, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     add    t15 <- t14, 93783
    movl    $93783, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  15:     add    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    leal    -440681620(%ebp), %eax  #  17:     &()    t17 <- v3
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  18:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  19:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  20:     mul    t19 <- t16, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  21:     add    t20 <- t19, 49550
    movl    $49550, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    leal    -440681620(%ebp), %eax  #  23:     &()    t21 <- v3
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  24:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  25:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  26:     mul    t23 <- t20, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  27:     add    t24 <- t23, 83477
    movl    $83477, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    leal    -440681620(%ebp), %eax  #  29:     &()    t25 <- v3
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  30:     param  0 <- t25
    pushl   %eax                   
    call    DIM                     #  31:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  32:     mul    t27 <- t24, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  33:     add    t28 <- t27, 60456
    movl    $60456, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  34:     mul    t29 <- t28, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    leal    -440681620(%ebp), %eax  #  35:     &()    t30 <- v3
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  36:     param  0 <- t30
    pushl   %eax                   
    call    DOFS                    #  37:     call   t31 <- DOFS
    addl    $4, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  38:     add    t32 <- t29, t31
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -16(%ebp), %eax         #  39:     add    t33 <- t10, t32
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -124(%ebp), %eax        #  40:     assign @t33 <- t9
    movl    -108(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_f1_4_if_false         #  41:     goto   4_if_false
l_f1_12_while_cond:
    jmp     l_f1_11                 #  43:     goto   11
    jmp     l_f1_12_while_cond      #  44:     goto   12_while_cond
l_f1_11:
    movl    $97, %eax               #  46:     if     97 # 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  47:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  49:     goto   14
l_f1_16_if_false:
l_f1_14:
    movl    $98, %eax               #  52:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_2                  #  53:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $1714236716, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 43 of <array 98 of <array 45 of <array 92 of <array 73 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 14 of <array 81 of <array 88 of <array 46 of <array 24 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 41 of <array 63 of <array 16 of <array 21 of <array 70 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #   -440681528(%ebp)  440681496  [ $v3       <array 14 of <array 81 of <array 88 of <array 46 of <array 24 of <int>>>>>> %ebp-440681528 ]
    #   -1714236632(%ebp)  1273555104  [ $v4       <array 43 of <array 98 of <array 45 of <array 92 of <array 73 of <bool>>>>>> %ebp-1714236632 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1714236620, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $428559155, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-440681528(%ebp)     # local array 'v3': 5 dimensions
    movl    $14,-440681524(%ebp)    #   dimension 1: 14 elements
    movl    $81,-440681520(%ebp)    #   dimension 2: 81 elements
    movl    $88,-440681516(%ebp)    #   dimension 3: 88 elements
    movl    $46,-440681512(%ebp)    #   dimension 4: 46 elements
    movl    $24,-440681508(%ebp)    #   dimension 5: 24 elements
    movl    $5,-1714236632(%ebp)    # local array 'v4': 5 dimensions
    movl    $43,-1714236628(%ebp)   #   dimension 1: 43 elements
    movl    $98,-1714236624(%ebp)   #   dimension 2: 98 elements
    movl    $45,-1714236620(%ebp)   #   dimension 3: 45 elements
    movl    $92,-1714236616(%ebp)   #   dimension 4: 92 elements
    movl    $73,-1714236612(%ebp)   #   dimension 5: 73 elements

    # function body
    leal    -1714236632(%ebp), %eax #   0:     &()    t6 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     param  2 <- t6
    pushl   %eax                   
    movl    $81311, %eax            #   2:     param  1 <- 81311
    pushl   %eax                   
    leal    -440681528(%ebp), %eax  #   3:     &()    t7 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #   5:     call   t8 <- f0
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     if     t8 <= 86888 goto 1_if_true
    movl    $86888, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   7:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_6_if_false         #  12:     goto   6_if_false
    call    dummyBOOLfunc           #  13:     call   t9 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_f2_4                  #  14:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyCHARfunc           #  17:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

l_f2_exit:
    # epilogue
    addl    $1714236620, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]

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
    jmp     l_test_exit            
    jmp     l_test_4                #   1:     goto   4
l_test_4:
    movl    $98, %eax               #   3:     if     98 >= 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_8_if_true       
    jmp     l_test_9_if_false       #   4:     goto   9_if_false
l_test_8_if_true:
    call    dummyCHARfunc           #   6:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_12               #   7:     goto   12
l_test_12:
    jmp     l_test_17_if_false      #   9:     goto   17_if_false
    jmp     l_test_15               #  10:     goto   15
l_test_17_if_false:
l_test_15:
    call    WriteLn                 #  13:     call   WriteLn
    jmp     l_test_7                #  14:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_1                #  17:     goto   1
l_test_1:
    movl    $97, %eax               #  19:     if     97 < 100 goto 20
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_20              
    jmp     l_test_21               #  20:     goto   21
l_test_20:
    movl    $1, %eax                #  22:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_22               #  23:     goto   22
l_test_21:
    movl    $0, %eax                #  25:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_22:
    movzbl  -14(%ebp), %eax         #  27:     assign v0 <- t1
    movb    %al, v0                
    call    dummyBOOLfunc           #  28:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #  29:     if     97 <= 99 goto 26_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_26_if_true      
    jmp     l_test_27_if_false      #  30:     goto   27_if_false
l_test_26_if_true:
    movl    $98, %eax               #  32:     if     98 <= 99 goto 30
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_30              
    jmp     l_test_31               #  33:     goto   31
l_test_30:
    movl    $1, %eax                #  35:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_32               #  36:     goto   32
l_test_31:
    movl    $0, %eax                #  38:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_32:
    movzbl  -16(%ebp), %eax         #  40:     assign v0 <- t3
    movb    %al, v0                
    call    dummyProcedure          #  41:     call   dummyProcedure
    jmp     l_test_25               #  42:     goto   25
l_test_27_if_false:
l_test_25:
    movl    $25492, %eax            #  45:     sub    t4 <- 25492, 25035
    movl    $25035, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  46:     sub    t5 <- t4, 37048
    movl    $37048, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  47:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #  48:     call   WriteInt
    addl    $4, %esp               

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
