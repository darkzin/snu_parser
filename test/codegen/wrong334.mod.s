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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 10 of <array 4 of <array 8 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 7 of <array 3 of <array 7 of <array 10 of <bool>>>>>>> %ebp+12 ]

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
    movl    $72413, %eax            #   0:     add    t0 <- 72413, 92470
    movl    $92470, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t0
    jmp     l_f0_exit              
    movl    $62498, %eax            #   2:     mul    t1 <- 62498, 52783
    movl    $52783, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $19172, %eax            #   3:     add    t2 <- 19172, t1
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     return t2
    jmp     l_f0_exit              
l_f0_3_while_cond:
    movl    $100, %eax              #   6:     if     100 > 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_4_while_body      
    jmp     l_f0_2                  #   7:     goto   2
l_f0_4_while_body:
    movl    $98, %eax               #   9:     if     98 <= 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  10:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #  12:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_3_while_cond       #  15:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 10 of <array 7 of <array 3 of <array 7 of <array 10 of <bool>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 10 of <array 4 of <array 8 of <array 1 of <int>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t4       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 6 of <array 3 of <array 2 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 1 of <array 7 of <array 4 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #   -104(%ebp)   4  [ $v2       <int> %ebp-104 ]
    #   -3968(%ebp)  3864  [ $v3       <array 3 of <array 10 of <array 4 of <array 8 of <array 1 of <int>>>>>> %ebp-3968 ]
    #   -18692(%ebp)  14724  [ $v4       <array 10 of <array 7 of <array 3 of <array 7 of <array 10 of <bool>>>>>> %ebp-18692 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $18680, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4670, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3968(%ebp)          # local array 'v3': 5 dimensions
    movl    $3,-3964(%ebp)          #   dimension 1: 3 elements
    movl    $10,-3960(%ebp)         #   dimension 2: 10 elements
    movl    $4,-3956(%ebp)          #   dimension 3: 4 elements
    movl    $8,-3952(%ebp)          #   dimension 4: 8 elements
    movl    $1,-3948(%ebp)          #   dimension 5: 1 elements
    movl    $5,-18692(%ebp)         # local array 'v4': 5 dimensions
    movl    $10,-18688(%ebp)        #   dimension 1: 10 elements
    movl    $7,-18684(%ebp)         #   dimension 2: 7 elements
    movl    $3,-18680(%ebp)         #   dimension 3: 3 elements
    movl    $7,-18676(%ebp)         #   dimension 4: 7 elements
    movl    $10,-18672(%ebp)        #   dimension 5: 10 elements

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    leal    -18692(%ebp), %eax      #   2:     &()    t2 <- v4
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   3:     param  1 <- t2
    pushl   %eax                   
    leal    -3968(%ebp), %eax       #   4:     &()    t3 <- v3
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   5:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   6:     call   t4 <- f0
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $15148, %eax            #   7:     add    t5 <- 15148, t4
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $34426, %eax            #  11:     mul    t7 <- 34426, t6
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  12:     add    t8 <- t7, 62907
    movl    $62907, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  16:     mul    t10 <- t8, t9
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     add    t11 <- t10, 3262
    movl    $3262, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
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
    movl    -36(%ebp), %eax         #  22:     add    t14 <- t13, 91862
    movl    $91862, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  26:     mul    t16 <- t14, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  27:     add    t17 <- t16, 49846
    movl    $49846, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  28:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  30:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  31:     add    t20 <- t18, t19
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  32:     add    t21 <- v0, t20
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -84(%ebp), %eax         #  33:     assign @t21 <- t5
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $18680, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
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
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 7 of <array 9 of <array 5 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 9 of <array 4 of <array 10 of <array 10 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -97(%ebp)   1  [ $v4       <bool> %ebp-97 ]

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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   1:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   2:     call   t0 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $54942, %eax            #   3:     mul    t1 <- 54942, t0
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   4:     call   t2 <- dummyINTfunc
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   5:     mul    t3 <- t2, 94093
    movl    $94093, %ebx           
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   6:     div    t4 <- t3, 18160
    movl    $18160, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   7:     mul    t5 <- t4, 75538
    movl    $75538, %ebx           
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t6 <- t1, t5
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  12:     mul    t8 <- t6, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  13:     add    t9 <- t8, 972
    movl    $972, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -96(%ebp), %eax         #  17:     mul    t11 <- t9, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     add    t12 <- t11, 46774
    movl    $46774, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  22:     mul    t14 <- t12, t13
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     add    t15 <- t14, 35347
    movl    $35347, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  26:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  27:     add    t18 <- t16, t17
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  28:     add    t19 <- v2, t18
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $0, %eax                #  29:     assign @t19 <- 0
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyINTfunc            #  30:     call   t20 <- dummyINTfunc
    movl    %eax, -68(%ebp)        
    movl    $21218, %eax            #  31:     assign v1 <- 21218
    movl    %eax, 12(%ebp)         

l_f2_exit:
    # epilogue
    addl    $88, %esp               # remove locals
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
    call    WriteLn                 #   0:     call   WriteLn
    movl    $94081, %eax            #   1:     assign v0 <- 94081
    movl    %eax, v0               
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
