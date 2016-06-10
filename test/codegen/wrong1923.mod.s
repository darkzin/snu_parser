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
    #    -57(%ebp)   1  [ $t3       <char> %ebp-57 ]
    #    -58(%ebp)   1  [ $t4       <bool> %ebp-58 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 90 of <array 50 of <array 95 of <array 97 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 91 of <array 11 of <array 5 of <array 92 of <array 86 of <int>>>>>>> %ebp+16 ]
    #    -84(%ebp)   4  [ $v3       <int> %ebp-84 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    movl    $18732, %eax            #   1:     if     18732 >= 85261 goto 2
    movl    $85261, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2                 
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -58(%ebp)         
l_f0_4:
    movzbl  -58(%ebp), %eax         #   9:     assign v0 <- t4
    movb    %al, 8(%ebp)           
l_f0_7_while_cond:
    movl    $99, %eax               #  11:     if     99 > 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_8_while_body      
    jmp     l_f0_6                  #  12:     goto   6
l_f0_8_while_body:
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $60456, %eax            #  17:     mul    t6 <- 60456, t5
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  18:     add    t7 <- t6, 46079
    movl    $46079, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  22:     mul    t9 <- t7, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  23:     add    t10 <- t9, 65378
    movl    $65378, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  27:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     add    t13 <- t12, 95212
    movl    $95212, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  30:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  31:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  32:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     add    t16 <- t15, 14361
    movl    $14361, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  35:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  36:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  37:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  38:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $88852, %eax            #  39:     assign @t20 <- 88852
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyProcedure          #  40:     call   dummyProcedure
    jmp     l_f0_7_while_cond       #  41:     goto   7_while_cond
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 27 of <array 49 of <array 66 of <array 60 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 57 of <array 84 of <array 73 of <array 22 of <array 18 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 47 of <array 55 of <array 35 of <array 33 of <array 14 of <int>>>>>>> %ebp+20 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
l_f1_1_while_cond:
    jmp     l_f1_5                  #   1:     goto   5
    jmp     l_f1_5                  #   2:     goto   5
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movl    $1, %eax                #   8:     if     1 # t3 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_while_body:
    movl    $86555, %eax            #  11:     if     86555 < 18743 goto 9_if_true
    movl    $18743, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  12:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  14:     goto   8
l_f1_10_if_false:
l_f1_8:
    call    dummyBOOLfunc           #  17:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_1_while_cond       #  18:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_14_if_true         #  20:     goto   14_if_true
    movl    $0, %eax                #  21:     if     0 # 0 goto 14_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  22:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  24:     goto   13
l_f1_15_if_false:
l_f1_13:
    movl    $30160, %eax            #  27:     if     30160 # 45380 goto 20_if_true
    movl    $45380, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  28:     goto   21_if_false
l_f1_20_if_true:
    movl    $0, %eax                #  30:     return 0
    jmp     l_f1_exit              
    movl    $99, %eax               #  31:     if     99 < 99 goto 25_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_25_if_true        
    jmp     l_f1_26_if_false        #  32:     goto   26_if_false
l_f1_25_if_true:
    jmp     l_f1_24                 #  34:     goto   24
l_f1_26_if_false:
l_f1_24:
    movl    $97, %eax               #  37:     assign v4 <- 97
    movb    %al, -15(%ebp)         
    jmp     l_f1_19                 #  38:     goto   19
l_f1_21_if_false:
l_f1_19:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 47 of <array 55 of <array 35 of <array 33 of <array 14 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <ptr(4) to <array 57 of <array 84 of <array 73 of <array 22 of <array 18 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 8 of <array 27 of <array 49 of <array 66 of <array 60 of <bool>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <bool> %ebp-41 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -41912708(%ebp)  41912664  [ $v4       <array 8 of <array 27 of <array 49 of <array 66 of <array 60 of <bool>>>>>> %ebp-41912708 ]
    #   -595558748(%ebp)  553646040  [ $v5       <array 57 of <array 84 of <array 73 of <array 22 of <array 18 of <int>>>>>> %ebp-595558748 ]
    #   -762756572(%ebp)  167197824  [ $v6       <array 47 of <array 55 of <array 35 of <array 33 of <array 14 of <int>>>>>> %ebp-762756572 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $762756560, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $190689140, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-41912708(%ebp)      # local array 'v4': 5 dimensions
    movl    $8,-41912704(%ebp)      #   dimension 1: 8 elements
    movl    $27,-41912700(%ebp)     #   dimension 2: 27 elements
    movl    $49,-41912696(%ebp)     #   dimension 3: 49 elements
    movl    $66,-41912692(%ebp)     #   dimension 4: 66 elements
    movl    $60,-41912688(%ebp)     #   dimension 5: 60 elements
    movl    $5,-595558748(%ebp)     # local array 'v5': 5 dimensions
    movl    $57,-595558744(%ebp)    #   dimension 1: 57 elements
    movl    $84,-595558740(%ebp)    #   dimension 2: 84 elements
    movl    $73,-595558736(%ebp)    #   dimension 3: 73 elements
    movl    $22,-595558732(%ebp)    #   dimension 4: 22 elements
    movl    $18,-595558728(%ebp)    #   dimension 5: 18 elements
    movl    $5,-762756572(%ebp)     # local array 'v6': 5 dimensions
    movl    $47,-762756568(%ebp)    #   dimension 1: 47 elements
    movl    $55,-762756564(%ebp)    #   dimension 2: 55 elements
    movl    $35,-762756560(%ebp)    #   dimension 3: 35 elements
    movl    $33,-762756556(%ebp)    #   dimension 4: 33 elements
    movl    $14,-762756552(%ebp)    #   dimension 5: 14 elements

    # function body
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #   1:     if     99 <= 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    movl    $86996, %eax            #   5:     if     86996 <= 88862 goto 7_while_body
    movl    $88862, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_7_while_body      
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
l_f2_5:
    call    ReadInt                 #  10:     call   t4 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $100, %eax              #  11:     if     100 < 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  12:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  14:     goto   10
l_f2_12_if_false:
l_f2_10:
    movl    $65199, %eax            #  17:     assign v1 <- 65199
    movl    %eax, 12(%ebp)         
    jmp     l_f2_1                  #  18:     goto   1
l_f2_3_if_false:
l_f2_1:
    leal    -762756572(%ebp), %eax  #  21:     &()    t5 <- v6
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     param  3 <- t5
    pushl   %eax                   
    leal    -595558748(%ebp), %eax  #  23:     &()    t6 <- v5
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     param  2 <- t6
    pushl   %eax                   
    movl    $0, %eax                #  25:     if     0 # 1 goto 20
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_20                
    jmp     l_f2_21                 #  26:     goto   21
l_f2_20:
    movl    $1, %eax                #  28:     assign t7 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_22                 #  29:     goto   22
l_f2_21:
    movl    $0, %eax                #  31:     assign t7 <- 0
    movb    %al, -33(%ebp)         
l_f2_22:
    movzbl  -33(%ebp), %eax         #  33:     param  1 <- t7
    pushl   %eax                   
    leal    -41912708(%ebp), %eax   #  34:     &()    t8 <- v4
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  35:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  36:     call   t9 <- f1
    addl    $16, %esp              
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  37:     if     t9 = 1 goto 16
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_16                
l_f2_16:
    movl    $1, %eax                #  39:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_18                 #  40:     goto   18
    movl    $0, %eax                #  41:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_18:
    movzbl  -13(%ebp), %eax         #  43:     return t10
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $762756560, %esp        # remove locals
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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   1:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #   2:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
