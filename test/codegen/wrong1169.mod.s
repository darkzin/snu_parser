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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 74 of <array 51 of <array 39 of <array 62 of <array 88 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 38 of <array 58 of <array 65 of <array 100 of <array 43 of <char>>>>>>> %ebp+20 ]
    #    -16(%ebp)   1  [ $v5       <char> %ebp-16 ]
    #    -20(%ebp)   4  [ $v6       <int> %ebp-20 ]

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
    movl    $99, %eax               #   0:     assign v5 <- 99
    movb    %al, -16(%ebp)         
l_f0_2_while_cond:
    movl    $99, %eax               #   2:     if     99 <= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    call    dummyBOOLfunc           #   5:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $91743, %eax            #   6:     if     91743 < 23956 goto 7_if_true
    movl    $23956, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
    call    WriteLn                 #  12:     call   WriteLn
    movl    $80240, %eax            #  13:     assign v6 <- 80240
    movl    %eax, -20(%ebp)        
    movl    $25527, %eax            #  14:     if     25527 >= 76896 goto 13
    movl    $76896, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_13                
    jmp     l_f0_14                 #  15:     goto   14
l_f0_13:
    movl    $1, %eax                #  17:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_15                 #  18:     goto   15
l_f0_14:
    movl    $0, %eax                #  20:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f0_15:
    movzbl  -14(%ebp), %eax         #  22:     return t7
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #  23:     goto   2_while_cond
l_f0_1:
    call    dummyBOOLfunc           #  25:     call   t8 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  26:     return t8
    jmp     l_f0_exit              

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
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
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
    #    -93(%ebp)   1  [ $t30      <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $t6       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t7       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t9       <int> %ebp-112 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 41 of <array 60 of <array 89 of <array 78 of <array 25 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 31 of <array 92 of <array 7 of <array 39 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 7 of <array 6 of <array 95 of <array 8 of <array 97 of <bool>>>>>>> %ebp+20 ]
    #   -113(%ebp)   1  [ $v5       <bool> %ebp-113 ]
    #   -114(%ebp)   1  [ $v6       <char> %ebp-114 ]

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
    movl    $87044, %eax            #   0:     div    t6 <- 87044, 64329
    movl    $64329, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   1:     div    t7 <- t6, 7741
    movl    $7741, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   2:     div    t8 <- t7, 65697
    movl    $65697, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   3:     mul    t9 <- t8, 616
    movl    $616, %ebx             
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   4:     sub    t10 <- t9, 57311
    movl    $57311, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     sub    t11 <- t10, 67503
    movl    $67503, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     sub    t12 <- t11, 27924
    movl    $27924, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     if     t12 >= 85075 goto 1
    movl    $85075, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   8:     goto   2
l_f1_1:
    movl    $1, %eax                #  10:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_3                  #  11:     goto   3
l_f1_2:
    movl    $0, %eax                #  13:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f1_3:
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  16:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  17:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $3190, %eax             #  18:     mul    t15 <- 3190, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     add    t16 <- t15, 31580
    movl    $31580, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  21:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  22:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  23:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  24:     add    t19 <- t18, 80216
    movl    $80216, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  26:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  27:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  28:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  29:     add    t22 <- t21, 88198
    movl    $88198, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  31:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  32:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  33:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  34:     add    t25 <- t24, 65183
    movl    $65183, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  35:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    20(%ebp), %eax          #  36:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  37:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  38:     add    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    20(%ebp), %eax          #  39:     add    t29 <- v4, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movzbl  -25(%ebp), %eax         #  40:     assign @t29 <- t13
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  42:     call   t30 <- dummyCHARfunc
    movb    %al, -93(%ebp)         
    movzbl  -93(%ebp), %eax         #  43:     assign v6 <- t30
    movb    %al, -114(%ebp)        

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
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t25      <char> %ebp-73 ]
    #    -80(%ebp)   4  [ $t26      <ptr(4) to <array 38 of <array 58 of <array 65 of <array 100 of <array 43 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 74 of <array 51 of <array 39 of <array 62 of <array 88 of <bool>>>>>>> %ebp-84 ]
    #    -85(%ebp)   1  [ $t28      <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t6       <bool> %ebp-93 ]
    #    -94(%ebp)   1  [ $t7       <char> %ebp-94 ]
    #    -95(%ebp)   1  [ $t8       <bool> %ebp-95 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 35 of <array 56 of <array 3 of <array 47 of <array 45 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 93 of <array 87 of <array 56 of <array 1 of <array 50 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 45 of <array 96 of <array 58 of <array 75 of <array 53 of <bool>>>>>>> %ebp+20 ]
    #   -803046940(%ebp)  803046840  [ $v5       <array 74 of <array 51 of <array 39 of <array 62 of <array 88 of <bool>>>>>> %ebp-803046940 ]
    #   -1419064964(%ebp)  616018024  [ $v6       <array 38 of <array 58 of <array 65 of <array 100 of <array 43 of <char>>>>>> %ebp-1419064964 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1419064952, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $354766238, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-803046940(%ebp)     # local array 'v5': 5 dimensions
    movl    $74,-803046936(%ebp)    #   dimension 1: 74 elements
    movl    $51,-803046932(%ebp)    #   dimension 2: 51 elements
    movl    $39,-803046928(%ebp)    #   dimension 3: 39 elements
    movl    $62,-803046924(%ebp)    #   dimension 4: 62 elements
    movl    $88,-803046920(%ebp)    #   dimension 5: 88 elements
    movl    $5,-1419064964(%ebp)    # local array 'v6': 5 dimensions
    movl    $38,-1419064960(%ebp)   #   dimension 1: 38 elements
    movl    $58,-1419064956(%ebp)   #   dimension 2: 58 elements
    movl    $65,-1419064952(%ebp)   #   dimension 3: 65 elements
    movl    $100,-1419064948(%ebp)  #   dimension 4: 100 elements
    movl    $43,-1419064944(%ebp)   #   dimension 5: 43 elements

    # function body
    movl    $99, %eax               #   0:     if     99 # 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -93(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t6 <- 0
    movb    %al, -93(%ebp)         
l_f2_3:
    movzbl  -93(%ebp), %eax         #   8:     assign v3 <- t6
    movb    %al, 16(%ebp)          
    movl    $0, %eax                #   9:     if     0 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  10:     goto   7_if_false
l_f2_6_if_true:
    call    dummyCHARfunc           #  12:     call   t7 <- dummyCHARfunc
    movb    %al, -94(%ebp)         
    movl    $98, %eax               #  13:     if     98 > 99 goto 11
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_11                
    jmp     l_f2_12                 #  14:     goto   12
l_f2_11:
    movl    $1, %eax                #  16:     assign t8 <- 1
    movb    %al, -95(%ebp)         
    jmp     l_f2_13                 #  17:     goto   13
l_f2_12:
    movl    $0, %eax                #  19:     assign t8 <- 0
    movb    %al, -95(%ebp)         
l_f2_13:
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  22:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  23:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    $17051, %eax            #  24:     mul    t10 <- 17051, t9
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     add    t11 <- t10, 90
    movl    $90, %ebx              
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  26:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  27:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  28:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  29:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     add    t14 <- t13, 19110
    movl    $19110, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  32:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  33:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  34:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  35:     add    t17 <- t16, 49702
    movl    $49702, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  37:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  38:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  39:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  40:     add    t20 <- t19, 66515
    movl    $66515, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  41:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  42:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  43:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  44:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    20(%ebp), %eax          #  45:     add    t24 <- v4, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -95(%ebp), %eax         #  46:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  47:     call   t25 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    leal    -1419064964(%ebp), %eax #  48:     &()    t26 <- v6
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  49:     param  3 <- t26
    pushl   %eax                   
    movl    $1, %eax                #  50:     param  2 <- 1
    pushl   %eax                   
    movl    $1, %eax                #  51:     param  1 <- 1
    pushl   %eax                   
    leal    -803046940(%ebp), %eax  #  52:     &()    t27 <- v5
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  53:     param  0 <- t27
    pushl   %eax                   
    call    f0                      #  54:     call   t28 <- f0
    addl    $16, %esp              
    movb    %al, -85(%ebp)         
    movl    $97, %eax               #  55:     if     97 = 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  56:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  58:     goto   17
l_f2_19_if_false:
l_f2_17:
    movl    $84081, %eax            #  61:     return 84081
    jmp     l_f2_exit              
    jmp     l_f2_5                  #  62:     goto   5
l_f2_7_if_false:
l_f2_5:
l_f2_23_while_cond:
    movl    $43993, %eax            #  66:     sub    t29 <- 43993, 21086
    movl    $21086, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $193, %eax              #  67:     if     193 = t29 goto 24_while_body
    movl    -92(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_24_while_body     
    jmp     l_f2_22                 #  68:     goto   22
l_f2_24_while_body:
    jmp     l_f2_23_while_cond      #  70:     goto   23_while_cond
l_f2_22:

l_f2_exit:
    # epilogue
    addl    $1419064952, %esp       # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <char> %ebp-26 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    movl    $100, %eax              #   4:     if     100 <= 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_6_if_true       
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   7:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_1_while_cond     #  10:     goto   1_while_cond
l_test_0:
    call    dummyProcedure          #  12:     call   dummyProcedure
    jmp     l_test_12               #  13:     goto   12
    movl    $1, %eax                #  14:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_13               #  15:     goto   13
l_test_12:
    movl    $0, %eax                #  17:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_13:
    movzbl  -14(%ebp), %eax         #  19:     assign v0 <- t1
    movb    %al, v0                
    movl    $69815, %eax            #  20:     add    t2 <- 69815, 62302
    movl    $62302, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     sub    t3 <- t2, 92551
    movl    $92551, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #  23:     call   WriteInt
    addl    $4, %esp               
    movl    $63599, %eax            #  24:     if     63599 >= 98531 goto 18_if_true
    movl    $98531, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_18_if_true      
    jmp     l_test_19_if_false      #  25:     goto   19_if_false
l_test_18_if_true:
    call    dummyCHARfunc           #  27:     call   t4 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
l_test_23_while_cond:
    movl    $1, %eax                #  29:     if     1 = 0 goto 24_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_24_while_body   
    jmp     l_test_22               #  30:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  32:     goto   23_while_cond
l_test_22:
    jmp     l_test_17               #  34:     goto   17
l_test_19_if_false:
l_test_17:
l_test_27_while_cond:
l_test_33_while_cond:
    jmp     l_test_32               #  39:     goto   32
    jmp     l_test_33_while_cond    #  40:     goto   33_while_cond
l_test_32:
    jmp     l_test_35               #  42:     goto   35
l_test_35:
    call    dummyCHARfunc           #  44:     call   t5 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movl    $100, %eax              #  45:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_29               #  46:     goto   29
l_test_29:
    jmp     l_test_27_while_cond    #  48:     goto   27_while_cond

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
