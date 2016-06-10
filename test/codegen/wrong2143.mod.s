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
    #    -77(%ebp)   1  [ $t7       <char> %ebp-77 ]
    #    -78(%ebp)   1  [ $t8       <bool> %ebp-78 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 21 of <array 76 of <array 45 of <array 66 of <array 84 of <bool>>>>>>> %ebp+8 ]
    #    -85(%ebp)   1  [ $v2       <bool> %ebp-85 ]
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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #   1:     if     t7 >= 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -78(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -78(%ebp)         
l_f0_3:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $13549, %eax            #  12:     mul    t10 <- 13549, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     add    t11 <- t10, 76480
    movl    $76480, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  17:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     add    t14 <- t13, 2369
    movl    $2369, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  22:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     add    t17 <- t16, 42968
    movl    $42968, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  27:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  28:     add    t20 <- t19, 71120
    movl    $71120, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  29:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  30:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  31:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  32:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  33:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -78(%ebp), %eax         #  34:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $49517, %eax            #  35:     assign v3 <- 49517
    movl    %eax, -92(%ebp)        
l_f0_7_while_cond:
    movl    $98, %eax               #  37:     if     98 # 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_8_while_body      
    jmp     l_f0_6                  #  38:     goto   6
l_f0_8_while_body:
l_f0_11_while_cond:
    movl    $98242, %eax            #  41:     sub    t25 <- 98242, 22922
    movl    $22922, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $97609, %eax            #  42:     if     97609 < t25 goto 12_while_body
    movl    -76(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_12_while_body     
    jmp     l_f0_10                 #  43:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  45:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_7_while_cond       #  47:     goto   7_while_cond
l_f0_6:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 64 of <array 77 of <array 38 of <array 71 of <array 76 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 94 of <array 56 of <array 16 of <array 47 of <array 16 of <bool>>>>>>> %ebp+12 ]
    #    -32(%ebp)   4  [ $v3       <int> %ebp-32 ]

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
    call    WriteLn                 #   0:     call   WriteLn
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
    jmp     l_f1_1                  #   3:     goto   1
l_f1_8_while_cond:
    movl    $91576, %eax            #   5:     if     91576 <= 12224 goto 9_while_body
    movl    $12224, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_9_while_body      
    jmp     l_f1_7                  #   6:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #   8:     goto   8_while_cond
l_f1_7:
    call    dummyCHARfunc           #  10:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_2_while_cond       #  11:     goto   2_while_cond
l_f1_1:
    movl    $79803, %eax            #  13:     mul    t8 <- 79803, 83643
    movl    $83643, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     div    t9 <- t8, 77522
    movl    $77522, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     div    t10 <- t9, 98865
    movl    $98865, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     assign v3 <- t10
    movl    %eax, -32(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 94 of <array 56 of <array 16 of <array 47 of <array 16 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 64 of <array 77 of <array 38 of <array 71 of <array 76 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t8       <bool> %ebp-38 ]
    #    -44(%ebp)   4  [ $t9       <ptr(4) to <array 21 of <array 76 of <array 45 of <array 66 of <array 84 of <bool>>>>>>> %ebp-44 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 98 of <array 60 of <array 54 of <array 20 of <array 96 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 39 of <array 3 of <array 33 of <array 74 of <int>>>>>>> %ebp+20 ]
    #   -398170148(%ebp)  398170104  [ $v5       <array 21 of <array 76 of <array 45 of <array 66 of <array 84 of <bool>>>>>> %ebp-398170148 ]
    #   -1408646716(%ebp)  1010476568  [ $v6       <array 64 of <array 77 of <array 38 of <array 71 of <array 76 of <bool>>>>>> %ebp-1408646716 ]
    #   -1471983188(%ebp)  63336472  [ $v7       <array 94 of <array 56 of <array 16 of <array 47 of <array 16 of <bool>>>>>> %ebp-1471983188 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1471983176, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $367995794, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-398170148(%ebp)     # local array 'v5': 5 dimensions
    movl    $21,-398170144(%ebp)    #   dimension 1: 21 elements
    movl    $76,-398170140(%ebp)    #   dimension 2: 76 elements
    movl    $45,-398170136(%ebp)    #   dimension 3: 45 elements
    movl    $66,-398170132(%ebp)    #   dimension 4: 66 elements
    movl    $84,-398170128(%ebp)    #   dimension 5: 84 elements
    movl    $5,-1408646716(%ebp)    # local array 'v6': 5 dimensions
    movl    $64,-1408646712(%ebp)   #   dimension 1: 64 elements
    movl    $77,-1408646708(%ebp)   #   dimension 2: 77 elements
    movl    $38,-1408646704(%ebp)   #   dimension 3: 38 elements
    movl    $71,-1408646700(%ebp)   #   dimension 4: 71 elements
    movl    $76,-1408646696(%ebp)   #   dimension 5: 76 elements
    movl    $5,-1471983188(%ebp)    # local array 'v7': 5 dimensions
    movl    $94,-1471983184(%ebp)   #   dimension 1: 94 elements
    movl    $56,-1471983180(%ebp)   #   dimension 2: 56 elements
    movl    $16,-1471983176(%ebp)   #   dimension 3: 16 elements
    movl    $47,-1471983172(%ebp)   #   dimension 4: 47 elements
    movl    $16,-1471983168(%ebp)   #   dimension 5: 16 elements

    # function body
    movl    $1, %eax                #   0:     if     1 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    dummyCHARfunc           #   3:     call   t7 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_6_while_cond:
    movl    $1, %eax                #   8:     assign t8 <- 1
    movb    %al, -38(%ebp)         
    jmp     l_f2_11                 #   9:     goto   11
    movl    $0, %eax                #  10:     assign t8 <- 0
    movb    %al, -38(%ebp)         
l_f2_11:
    movzbl  -38(%ebp), %eax         #  12:     if     t8 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  13:     goto   5
l_f2_7_while_body:
l_f2_14_while_cond:
    jmp     l_f2_13                 #  16:     goto   13
    jmp     l_f2_14_while_cond      #  17:     goto   14_while_cond
l_f2_13:
    leal    -398170148(%ebp), %eax  #  19:     &()    t9 <- v5
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  21:     call   t10 <- f0
    addl    $4, %esp               
    movl    %eax, -16(%ebp)        
    leal    -1471983188(%ebp), %eax #  22:     &()    t11 <- v7
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  1 <- t11
    pushl   %eax                   
    leal    -1408646716(%ebp), %eax #  24:     &()    t12 <- v6
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     param  0 <- t12
    pushl   %eax                   
    call    f1                      #  26:     call   t13 <- f1
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    jmp     l_f2_6_while_cond       #  27:     goto   6_while_cond
l_f2_5:
    call    ReadInt                 #  29:     call   t14 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     add    t15 <- t14, 37193
    movl    $37193, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     return t15
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $1471983176, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 21 of <array 76 of <array 45 of <array 66 of <array 84 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 >= t1 goto 1
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_1               
    jmp     l_test_2                #   3:     goto   2
l_test_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_3:
    movzbl  -15(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, v0                
l_test_6_while_cond:
    jmp     l_test_5                #  12:     goto   5
l_test_9_while_cond:
    movl    $0, %eax                #  14:     if     0 = 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  15:     goto   8
l_test_10_while_body:
    jmp     l_test_exit            
    jmp     l_test_9_while_cond     #  18:     goto   9_while_cond
l_test_8:
    jmp     l_test_6_while_cond     #  20:     goto   6_while_cond
l_test_5:
    leal    v1, %eax                #  22:     &()    t3 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  24:     call   t4 <- f0
    addl    $4, %esp               
    movl    %eax, -24(%ebp)        
    call    dummyBOOLfunc           #  25:     call   t5 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  26:     if     t5 = 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15_if_true      
    jmp     l_test_16_if_false      #  27:     goto   16_if_false
l_test_15_if_true:
    call    ReadInt                 #  29:     call   t6 <- ReadInt
    movl    %eax, -32(%ebp)        
    jmp     l_test_14               #  30:     goto   14
l_test_16_if_false:
l_test_14:

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
    .align   4
v1:                                 # <array 21 of <array 76 of <array 45 of <array 66 of <array 84 of <bool>>>>>>
    .long    5
    .long   21
    .long   76
    .long   45
    .long   66
    .long   84
    .skip 398170080








    # end of global data section
    #-----------------------------------------

    .end
##################################################
