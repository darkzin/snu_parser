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
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t31      <char> %ebp-97 ]
    #    -98(%ebp)   1  [ $t9       <bool> %ebp-98 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 26 of <array 54 of <array 34 of <array 36 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 14 of <array 49 of <array 43 of <array 58 of <array 81 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -99(%ebp)   1  [ $v3       <bool> %ebp-99 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $97, %eax               #   1:     if     97 # 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    call    dummyBOOLfunc           #   4:     call   t9 <- dummyBOOLfunc
    movb    %al, -98(%ebp)         
    movl    $63362, %eax            #   5:     return 63362
    jmp     l_f0_exit              
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   7:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   8:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $20605, %eax            #   9:     mul    t11 <- 20605, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t12 <- t11, 52905
    movl    $52905, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  14:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     add    t15 <- t14, 66441
    movl    $66441, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  19:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     add    t18 <- t17, 22807
    movl    $22807, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  24:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  25:     add    t21 <- t20, 42953
    movl    $42953, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  26:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  28:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  29:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  30:     add    t25 <- v1, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $0, %eax                #  31:     assign @t25 <- 0
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_1_while_cond       #  32:     goto   1_while_cond
l_f0_0:
    call    ReadInt                 #  34:     call   t26 <- ReadInt
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  35:     div    t27 <- t26, 96978
    movl    $96978, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  36:     mul    t28 <- t27, 35515
    movl    $35515, %ebx           
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  37:     mul    t29 <- t28, 7771
    movl    $7771, %ebx            
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  38:     div    t30 <- t29, 52152
    movl    $52152, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  39:     return t30
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  40:     call   t31 <- dummyCHARfunc
    movb    %al, -97(%ebp)         

l_f0_exit:
    # epilogue
    addl    $88, %esp               # remove locals
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
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    movl    $97, %eax               #   0:     assign v2 <- 97
    movb    %al, 16(%ebp)          
    call    dummyBOOLfunc           #   1:     call   t9 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movl    $54765, %eax            #   2:     sub    t10 <- 54765, 81891
    movl    $81891, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t11 <- t10, 15204
    movl    $15204, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t12 <- t11, 71073
    movl    $71073, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     sub    t13 <- t12, 20384
    movl    $20384, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     assign v0 <- t13
    movl    %eax, 8(%ebp)          

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 14 of <array 49 of <array 43 of <array 58 of <array 81 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 6 of <array 26 of <array 54 of <array 34 of <array 36 of <int>>>>>>> %ebp-24 ]
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
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 66 of <array 70 of <array 24 of <array 95 of <array 86 of <char>>>>>>> %ebp+8 ]
    #   -104(%ebp)   4  [ $v1       <int> %ebp-104 ]
    #   -41244032(%ebp)  41243928  [ $v2       <array 6 of <array 26 of <array 54 of <array 34 of <array 36 of <int>>>>>> %ebp-41244032 ]
    #   -179825660(%ebp)  138581628  [ $v3       <array 14 of <array 49 of <array 43 of <array 58 of <array 81 of <bool>>>>>> %ebp-179825660 ]
    #   -179825661(%ebp)   1  [ $v4       <char> %ebp-179825661 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $179825652, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $44956413, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-41244032(%ebp)      # local array 'v2': 5 dimensions
    movl    $6,-41244028(%ebp)      #   dimension 1: 6 elements
    movl    $26,-41244024(%ebp)     #   dimension 2: 26 elements
    movl    $54,-41244020(%ebp)     #   dimension 3: 54 elements
    movl    $34,-41244016(%ebp)     #   dimension 4: 34 elements
    movl    $36,-41244012(%ebp)     #   dimension 5: 36 elements
    movl    $5,-179825660(%ebp)     # local array 'v3': 5 dimensions
    movl    $14,-179825656(%ebp)    #   dimension 1: 14 elements
    movl    $49,-179825652(%ebp)    #   dimension 2: 49 elements
    movl    $43,-179825648(%ebp)    #   dimension 3: 43 elements
    movl    $58,-179825644(%ebp)    #   dimension 4: 58 elements
    movl    $81,-179825640(%ebp)    #   dimension 5: 81 elements

    # function body
    movl    $69218, %eax            #   0:     add    t9 <- 69218, 62541
    movl    $62541, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   1:     if     t9 <= 91490 goto 1
    movl    $91490, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     return t10
    jmp     l_f2_exit              
    movl    $7017, %eax             #  10:     param  2 <- 7017
    pushl   %eax                   
    leal    -179825660(%ebp), %eax  #  11:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  1 <- t11
    pushl   %eax                   
    leal    -41244032(%ebp), %eax   #  13:     &()    t12 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  15:     call   t13 <- f0
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     assign v1 <- t13
    movl    %eax, -104(%ebp)       
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $94781, %eax            #  20:     mul    t15 <- 94781, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     add    t16 <- t15, 18058
    movl    $18058, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  25:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $43186, %eax            #  26:     add    t19 <- 43186, 84932
    movl    $84932, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  27:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  30:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  31:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  32:     add    t23 <- t22, 19564
    movl    $19564, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  35:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  36:     mul    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  37:     add    t26 <- t25, 75784
    movl    $75784, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  38:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  39:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  40:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  41:     add    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    8(%ebp), %eax           #  42:     add    t30 <- v0, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $98, %eax               #  43:     assign @t30 <- 98
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $179825652, %esp        # remove locals
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
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 14 of <array 49 of <array 43 of <array 58 of <array 81 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <ptr(4) to <array 6 of <array 26 of <array 54 of <array 34 of <array 36 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    movl    $98161, %eax            #   1:     mul    t0 <- 98161, 21282
    movl    $21282, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t1 <- t0, 27998
    movl    $27998, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 81954
    movl    $81954, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t3 <- t2, 58450
    movl    $58450, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t4 <- t3, 3194
    movl    $3194, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     add    t5 <- t4, 82625
    movl    $82625, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     assign v0 <- t5
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $60160, %eax            #   9:     param  2 <- 60160
    pushl   %eax                   
    leal    v2, %eax                #  10:     &()    t6 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     param  1 <- t6
    pushl   %eax                   
    leal    v1, %eax                #  12:     &()    t7 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  13:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  14:     call   t8 <- f0
    addl    $12, %esp              
    movl    %eax, -48(%ebp)        

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
v1:                                 # <array 6 of <array 26 of <array 54 of <array 34 of <array 36 of <int>>>>>>
    .long    5
    .long    6
    .long   26
    .long   54
    .long   34
    .long   36
    .skip 41243904
v2:                                 # <array 14 of <array 49 of <array 43 of <array 58 of <array 81 of <bool>>>>>>
    .long    5
    .long   14
    .long   49
    .long   43
    .long   58
    .long   81
    .skip 138581604








    # end of global data section
    #-----------------------------------------

    .end
##################################################
