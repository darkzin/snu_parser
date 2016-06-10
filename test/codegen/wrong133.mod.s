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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 5 of <char>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 3 of <array 8 of <array 8 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 7 of <array 9 of <array 6 of <array 8 of <int>>>>>>> %ebp+20 ]
    #    -93(%ebp)   1  [ $v4       <char> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   1:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   2:     call   t0 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $29842, %eax            #   3:     mul    t1 <- 29842, t0
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t2 <- t1, 14033
    movl    $14033, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   6:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   7:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #   8:     mul    t4 <- t2, t3
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   9:     add    t5 <- t4, 87302
    movl    $87302, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  10:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  12:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  13:     mul    t7 <- t5, t6
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    $76214, %eax            #  14:     sub    t8 <- 76214, 31007
    movl    $31007, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  15:     sub    t9 <- t8, 14390
    movl    $14390, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  16:     add    t10 <- t9, 99893
    movl    $99893, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -84(%ebp), %eax         #  17:     add    t11 <- t7, t10
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  21:     mul    t13 <- t11, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     add    t14 <- t13, 13008
    movl    $13008, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  25:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  26:     add    t17 <- t15, t16
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  27:     add    t18 <- v0, t17
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $97, %eax               #  28:     assign @t18 <- 97
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    leal    _str_1, %eax            #  29:     &()    t19 <- _str_1
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  30:     param  0 <- t19
    pushl   %eax                   
    call    WriteStr                #  31:     call   WriteStr
    addl    $4, %esp               
l_f0_3_while_cond:
    jmp     l_f0_2                  #  33:     goto   2
l_f0_9_while_cond:
    movl    $81211, %eax            #  35:     if     81211 = 31525 goto 10_while_body
    movl    $31525, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_10_while_body     
    jmp     l_f0_8                  #  36:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  38:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_3_while_cond       #  40:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <array 7 of <array 9 of <array 6 of <array 8 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 10 of <array 3 of <array 8 of <array 8 of <array 10 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 9 of <array 1 of <array 6 of <array 8 of <bool>>>>>>> %ebp+16 ]
    #   -19252(%ebp)  19224  [ $v3       <array 10 of <array 3 of <array 8 of <array 8 of <array 10 of <char>>>>>> %ebp-19252 ]
    #   -79756(%ebp)  60504  [ $v4       <array 5 of <array 7 of <array 9 of <array 6 of <array 8 of <int>>>>>> %ebp-79756 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $79744, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19936, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-19252(%ebp)         # local array 'v3': 5 dimensions
    movl    $10,-19248(%ebp)        #   dimension 1: 10 elements
    movl    $3,-19244(%ebp)         #   dimension 2: 3 elements
    movl    $8,-19240(%ebp)         #   dimension 3: 8 elements
    movl    $8,-19236(%ebp)         #   dimension 4: 8 elements
    movl    $10,-19232(%ebp)        #   dimension 5: 10 elements
    movl    $5,-79756(%ebp)         # local array 'v4': 5 dimensions
    movl    $5,-79752(%ebp)         #   dimension 1: 5 elements
    movl    $7,-79748(%ebp)         #   dimension 2: 7 elements
    movl    $9,-79744(%ebp)         #   dimension 3: 9 elements
    movl    $6,-79740(%ebp)         #   dimension 4: 6 elements
    movl    $8,-79736(%ebp)         #   dimension 5: 8 elements

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    movl    $98, %eax               #   2:     if     98 = 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    movl    $1, %eax                #   5:     if     1 = 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   6:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_10_while_cond:
    movl    $9057, %eax             #  12:     if     9057 > 89461 goto 11_while_body
    movl    $89461, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_11_while_body     
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  15:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_13                 #  17:     goto   13
l_f1_13:
    leal    -79756(%ebp), %eax      #  19:     &()    t1 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  3 <- t1
    pushl   %eax                   
    movl    $0, %eax                #  21:     param  2 <- 0
    pushl   %eax                   
    movl    $97795, %eax            #  22:     param  1 <- 97795
    pushl   %eax                   
    leal    -19252(%ebp), %eax      #  23:     &()    t2 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  25:     call   t3 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_f1_exit              
    movl    $8057, %eax             #  27:     assign v0 <- 8057
    movl    %eax, 8(%ebp)          
    jmp     l_f1_2_while_cond       #  28:     goto   2_while_cond
l_f1_1:
    call    dummyBOOLfunc           #  30:     call   t4 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         

l_f1_exit:
    # epilogue
    addl    $79744, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <array 7 of <array 9 of <array 6 of <array 8 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 10 of <array 3 of <array 8 of <array 8 of <array 10 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 7 of <array 1 of <array 10 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #    -30(%ebp)   1  [ $v3       <bool> %ebp-30 ]
    #   -19256(%ebp)  19224  [ $v4       <array 10 of <array 3 of <array 8 of <array 8 of <array 10 of <char>>>>>> %ebp-19256 ]
    #   -79760(%ebp)  60504  [ $v5       <array 5 of <array 7 of <array 9 of <array 6 of <array 8 of <int>>>>>> %ebp-79760 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $79748, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19937, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-19256(%ebp)         # local array 'v4': 5 dimensions
    movl    $10,-19252(%ebp)        #   dimension 1: 10 elements
    movl    $3,-19248(%ebp)         #   dimension 2: 3 elements
    movl    $8,-19244(%ebp)         #   dimension 3: 8 elements
    movl    $8,-19240(%ebp)         #   dimension 4: 8 elements
    movl    $10,-19236(%ebp)        #   dimension 5: 10 elements
    movl    $5,-79760(%ebp)         # local array 'v5': 5 dimensions
    movl    $5,-79756(%ebp)         #   dimension 1: 5 elements
    movl    $7,-79752(%ebp)         #   dimension 2: 7 elements
    movl    $9,-79748(%ebp)         #   dimension 3: 9 elements
    movl    $6,-79744(%ebp)         #   dimension 4: 6 elements
    movl    $8,-79740(%ebp)         #   dimension 5: 8 elements

    # function body
    movl    $99, %eax               #   0:     if     99 >= 100 goto 4
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_4                 
    jmp     l_f2_5                  #   1:     goto   5
l_f2_4:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movl    $0, %eax                #   8:     if     0 # t0 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   9:     goto   2_if_false
l_f2_1_if_true:
    movl    $51092, %eax            #  11:     if     51092 <= 28030 goto 9_if_true
    movl    $28030, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  12:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  14:     goto   8
l_f2_10_if_false:
l_f2_8:
l_f2_13_while_cond:
    movl    $42278, %eax            #  18:     if     42278 <= 30561 goto 14_while_body
    movl    $30561, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_14_while_body     
    jmp     l_f2_12                 #  19:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  21:     goto   13_while_cond
l_f2_12:
    call    dummyBOOLfunc           #  23:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_17                 #  24:     goto   17
l_f2_17:
    jmp     l_f2_20                 #  26:     goto   20
l_f2_20:
    movl    $97, %eax               #  28:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f2_0                  #  29:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_26                 #  32:     goto   26
    call    dummyBOOLfunc           #  33:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  34:     if     t2 = 1 goto 25
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_25                
    jmp     l_f2_26                 #  35:     goto   26
l_f2_25:
    movl    $1, %eax                #  37:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_27                 #  38:     goto   27
l_f2_26:
    movl    $0, %eax                #  40:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_f2_27:
    movzbl  -16(%ebp), %eax         #  42:     assign v3 <- t3
    movb    %al, -30(%ebp)         
l_f2_30_while_cond:
    jmp     l_f2_29                 #  44:     goto   29
l_f2_33_while_cond:
    leal    -79760(%ebp), %eax      #  46:     &()    t4 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  47:     param  3 <- t4
    pushl   %eax                   
    movl    $0, %eax                #  48:     param  2 <- 0
    pushl   %eax                   
    movl    $3861, %eax             #  49:     sub    t5 <- 3861, 6153
    movl    $6153, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  50:     param  1 <- t5
    pushl   %eax                   
    leal    -19256(%ebp), %eax      #  51:     &()    t6 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  52:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  53:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movl    $98, %eax               #  54:     if     98 >= t7 goto 34_while_body
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_34_while_body     
    jmp     l_f2_32                 #  55:     goto   32
l_f2_34_while_body:
    jmp     l_f2_33_while_cond      #  57:     goto   33_while_cond
l_f2_32:
    jmp     l_f2_30_while_cond      #  59:     goto   30_while_cond
l_f2_29:

l_f2_exit:
    # epilogue
    addl    $79748, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
    jmp     l_test_6_if_false       #   1:     goto   6_if_false
    jmp     l_test_4                #   2:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_0                #   5:     goto   0
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
