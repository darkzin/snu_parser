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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 86 of <array 6 of <array 47 of <array 92 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 47 of <array 68 of <array 66 of <array 59 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    movl    $42021, %eax            #   0:     add    t6 <- 42021, 72022
    movl    $72022, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t7 <- t6, 71460
    movl    $71460, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t8 <- t7, 46432
    movl    $46432, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     if     t8 > 23376 goto 1_if_true
    movl    $23376, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   4:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_6_if_false         #   6:     goto   6_if_false
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_8_while_cond:
    jmp     l_f0_7                  #  14:     goto   7
    movl    $0, %eax                #  15:     assign v3 <- 0
    movb    %al, 16(%ebp)          
    jmp     l_f0_8_while_cond       #  16:     goto   8_while_cond
l_f0_7:
l_f0_12_while_cond:
    jmp     l_f0_11                 #  19:     goto   11
    jmp     l_f0_11                 #  20:     goto   11
    jmp     l_f0_11                 #  21:     goto   11
    jmp     l_f0_18_if_false        #  22:     goto   18_if_false
    jmp     l_f0_16                 #  23:     goto   16
l_f0_18_if_false:
l_f0_16:
    call    dummyBOOLfunc           #  26:     call   t9 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
l_f0_21_while_cond:
    jmp     l_f0_21_while_cond      #  28:     goto   21_while_cond
    jmp     l_f0_12_while_cond      #  29:     goto   12_while_cond
l_f0_11:

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
    #    -77(%ebp)   1  [ $t26      <char> %ebp-77 ]
    #    -78(%ebp)   1  [ $t27      <char> %ebp-78 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 53 of <array 23 of <array 34 of <array 93 of <array 39 of <char>>>>>>> %ebp+12 ]
    #    -97(%ebp)   1  [ $v3       <char> %ebp-97 ]

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
    movl    $9074, %eax             #   0:     sub    t6 <- 9074, 85080
    movl    $85080, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   1:     add    t7 <- t6, 20412
    movl    $20412, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   2:     add    t8 <- t7, 20023
    movl    $20023, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   3:     add    t9 <- t8, 76288
    movl    $76288, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   5:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   6:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -96(%ebp), %eax         #   7:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t12 <- t11, 30352
    movl    $30352, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  12:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     add    t15 <- t14, 79347
    movl    $79347, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  17:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  18:     add    t18 <- t17, 52153
    movl    $52153, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     add    t21 <- t20, 10097
    movl    $10097, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  24:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  26:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  27:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  28:     add    t25 <- v2, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $99, %eax               #  29:     assign @t25 <- 99
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  30:     call   t26 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #  31:     assign v3 <- t26
    movb    %al, -97(%ebp)         
    call    dummyCHARfunc           #  32:     call   t27 <- dummyCHARfunc
    movb    %al, -78(%ebp)         

l_f1_exit:
    # epilogue
    addl    $88, %esp               # remove locals
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
    #    -61(%ebp)   1  [ $t22      <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t23      <bool> %ebp-62 ]
    #    -68(%ebp)   4  [ $t24      <ptr(4) to <array 3 of <array 47 of <array 68 of <array 66 of <array 59 of <int>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <ptr(4) to <array 7 of <array 86 of <array 6 of <array 47 of <array 92 of <int>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <ptr(4) to <array 53 of <array 23 of <array 34 of <array 93 of <array 39 of <char>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t30      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t6       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t7       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 83 of <array 1 of <array 58 of <array 34 of <array 93 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 59 of <array 99 of <array 43 of <array 36 of <array 52 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 14 of <array 17 of <array 8 of <array 38 of <array 86 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #   -109(%ebp)   1  [ $v5       <char> %ebp-109 ]
    #   -62473288(%ebp)  62473176  [ $v6       <array 7 of <array 86 of <array 6 of <array 47 of <array 92 of <int>>>>>> %ebp-62473288 ]
    #   -211816000(%ebp)  149342712  [ $v7       <array 3 of <array 47 of <array 68 of <array 66 of <array 59 of <int>>>>>> %ebp-211816000 ]
    #   -362140668(%ebp)  150324666  [ $v8       <array 53 of <array 23 of <array 34 of <array 93 of <array 39 of <char>>>>>> %ebp-362140668 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $362140656, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $90535164, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-62473288(%ebp)      # local array 'v6': 5 dimensions
    movl    $7,-62473284(%ebp)      #   dimension 1: 7 elements
    movl    $86,-62473280(%ebp)     #   dimension 2: 86 elements
    movl    $6,-62473276(%ebp)      #   dimension 3: 6 elements
    movl    $47,-62473272(%ebp)     #   dimension 4: 47 elements
    movl    $92,-62473268(%ebp)     #   dimension 5: 92 elements
    movl    $5,-211816000(%ebp)     # local array 'v7': 5 dimensions
    movl    $3,-211815996(%ebp)     #   dimension 1: 3 elements
    movl    $47,-211815992(%ebp)    #   dimension 2: 47 elements
    movl    $68,-211815988(%ebp)    #   dimension 3: 68 elements
    movl    $66,-211815984(%ebp)    #   dimension 4: 66 elements
    movl    $59,-211815980(%ebp)    #   dimension 5: 59 elements
    movl    $5,-362140668(%ebp)     # local array 'v8': 5 dimensions
    movl    $53,-362140664(%ebp)    #   dimension 1: 53 elements
    movl    $23,-362140660(%ebp)    #   dimension 2: 23 elements
    movl    $34,-362140656(%ebp)    #   dimension 3: 34 elements
    movl    $93,-362140652(%ebp)    #   dimension 4: 93 elements
    movl    $39,-362140648(%ebp)    #   dimension 5: 39 elements

    # function body
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   5:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   6:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $17188, %eax            #   7:     mul    t7 <- 17188, t6
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   8:     add    t8 <- t7, 13936
    movl    $13936, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  10:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  11:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  12:     mul    t10 <- t8, t9
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     add    t11 <- t10, 57754
    movl    $57754, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  16:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  17:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     add    t14 <- t13, 51399
    movl    $51399, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  21:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  22:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     add    t17 <- t16, 59594
    movl    $59594, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  25:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  26:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  27:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  28:     add    t21 <- v3, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $99, %eax               #  29:     assign @t21 <- 99
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_5                  #  30:     goto   5
l_f2_5:
    jmp     l_f2_8                  #  32:     goto   8
l_f2_8:
    movl    $98, %eax               #  34:     return 98
    jmp     l_f2_exit              
    movl    $97, %eax               #  35:     return 97
    jmp     l_f2_exit              
    movl    $97, %eax               #  36:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  37:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  39:     call   t22 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #  40:     param  3 <- t22
    pushl   %eax                   
    movl    $98, %eax               #  41:     if     98 <= 99 goto 15
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_15                
    jmp     l_f2_16                 #  42:     goto   16
l_f2_15:
    movl    $1, %eax                #  44:     assign t23 <- 1
    movb    %al, -62(%ebp)         
    jmp     l_f2_17                 #  45:     goto   17
l_f2_16:
    movl    $0, %eax                #  47:     assign t23 <- 0
    movb    %al, -62(%ebp)         
l_f2_17:
    movzbl  -62(%ebp), %eax         #  49:     param  2 <- t23
    pushl   %eax                   
    leal    -211816000(%ebp), %eax  #  50:     &()    t24 <- v7
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  51:     param  1 <- t24
    pushl   %eax                   
    leal    -62473288(%ebp), %eax   #  52:     &()    t25 <- v6
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  53:     param  0 <- t25
    pushl   %eax                   
    call    f0                      #  54:     call   f0
    addl    $16, %esp              
    leal    -362140668(%ebp), %eax  #  55:     &()    t26 <- v8
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  56:     param  1 <- t26
    pushl   %eax                   
    movl    $30722, %eax            #  57:     mul    t27 <- 30722, 29056
    movl    $29056, %ebx           
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    $26786, %eax            #  58:     add    t28 <- 26786, t27
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  59:     add    t29 <- t28, 71433
    movl    $71433, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  60:     param  0 <- t29
    pushl   %eax                   
    call    f1                      #  61:     call   t30 <- f1
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        

l_f2_exit:
    # epilogue
    addl    $362140656, %esp        # remove locals
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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t5       <bool> %ebp-24 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $4245, %eax             #   1:     add    t1 <- 4245, 15311
    movl    $15311, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 <= t1 goto 1_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   3:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_6_if_false       #   8:     goto   6_if_false
    jmp     l_test_6_if_false       #   9:     goto   6_if_false
    movl    $39912, %eax            #  10:     assign v0 <- 39912
    movl    %eax, v0               
    jmp     l_test_4                #  11:     goto   4
l_test_6_if_false:
l_test_4:
    call    dummyCHARfunc           #  14:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  15:     if     97 # t2 goto 11_if_true
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_11_if_true      
    jmp     l_test_12_if_false      #  16:     goto   12_if_false
l_test_11_if_true:
    call    dummyBOOLfunc           #  18:     call   t3 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_test_17_if_false      #  19:     goto   17_if_false
    jmp     l_test_15               #  20:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_exit            
    jmp     l_test_10               #  24:     goto   10
l_test_12_if_false:
l_test_10:
l_test_20_while_cond:
    call    dummyBOOLfunc           #  28:     call   t4 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  29:     if     t4 = 1 goto 23
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_23              
    jmp     l_test_19               #  30:     goto   19
l_test_23:
    jmp     l_test_19               #  32:     goto   19
    jmp     l_test_20_while_cond    #  33:     goto   20_while_cond
l_test_19:
    movl    $1, %eax                #  35:     if     1 = 0 goto 25_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_25_if_true      
    jmp     l_test_26_if_false      #  36:     goto   26_if_false
l_test_25_if_true:
    call    dummyBOOLfunc           #  38:     call   t5 <- dummyBOOLfunc
    movb    %al, -24(%ebp)         
    jmp     l_test_24               #  39:     goto   24
l_test_26_if_false:
l_test_24:
l_test_30_while_cond:
    jmp     l_test_31_while_body    #  43:     goto   31_while_body
    jmp     l_test_31_while_body    #  44:     goto   31_while_body
    jmp     l_test_31_while_body    #  45:     goto   31_while_body
    jmp     l_test_29               #  46:     goto   29
l_test_31_while_body:
    jmp     l_test_30_while_cond    #  48:     goto   30_while_cond
l_test_29:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
