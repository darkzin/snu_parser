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
    #    -77(%ebp)   1  [ $t26      <char> %ebp-77 ]
    #    -78(%ebp)   1  [ $t4       <bool> %ebp-78 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 5 of <array 7 of <array 2 of <array 7 of <int>>>>>>> %ebp+8 ]
    #   -101(%ebp)   1  [ $v1       <bool> %ebp-101 ]
    #   -108(%ebp)   4  [ $v2       <int> %ebp-108 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $82286, %eax            #   0:     if     82286 >= 55993 goto 1
    movl    $55993, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -78(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -78(%ebp)         
l_f0_3:
    movzbl  -78(%ebp), %eax         #   8:     assign v1 <- t4
    movb    %al, -101(%ebp)        
    call    dummyINTfunc            #   9:     call   t5 <- dummyINTfunc
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  10:     sub    t6 <- t5, 60758
    movl    $60758, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  11:     add    t7 <- t6, 3937
    movl    $3937, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  12:     sub    t8 <- t7, 83260
    movl    $83260, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  13:     sub    t9 <- t8, 69270
    movl    $69270, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -100(%ebp), %eax        #  17:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     add    t12 <- t11, 4643
    movl    $4643, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  22:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     add    t15 <- t14, 44867
    movl    $44867, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  26:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  27:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  28:     add    t18 <- t17, 37649
    movl    $37649, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  31:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  32:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  33:     add    t21 <- t20, 48113
    movl    $48113, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  34:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  35:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  36:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  37:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  38:     add    t25 <- v0, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $98129, %eax            #  39:     assign @t25 <- 98129
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  40:     call   t26 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #  41:     return t26
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $96, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <array 5 of <array 7 of <array 2 of <array 7 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 5 of <array 7 of <array 2 of <array 7 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 8 of <array 2 of <array 3 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 7 of <array 6 of <array 4 of <array 3 of <char>>>>>>> %ebp+16 ]
    #   -9852(%ebp)  9824  [ $v3       <array 5 of <array 5 of <array 7 of <array 2 of <array 7 of <int>>>>>> %ebp-9852 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $9840, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2460, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-9852(%ebp)          # local array 'v3': 5 dimensions
    movl    $5,-9848(%ebp)          #   dimension 1: 5 elements
    movl    $5,-9844(%ebp)          #   dimension 2: 5 elements
    movl    $7,-9840(%ebp)          #   dimension 3: 7 elements
    movl    $2,-9836(%ebp)          #   dimension 4: 2 elements
    movl    $7,-9832(%ebp)          #   dimension 5: 7 elements

    # function body
    movl    $25422, %eax            #   0:     if     25422 > 81252 goto 1_if_true
    movl    $81252, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $97, %eax               #   3:     return 97
    jmp     l_f1_exit              
l_f1_6_while_cond:
    movl    $100, %eax              #   5:     if     100 > 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    leal    -9852(%ebp), %eax       #  10:     &()    t4 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  12:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #  13:     return 99
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  14:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_12_while_cond:
    movl    $97, %eax               #  18:     if     97 <= 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_13_while_body     
    jmp     l_f1_11                 #  19:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  21:     goto   12_while_cond
l_f1_11:
    leal    -9852(%ebp), %eax       #  23:     &()    t6 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  25:     call   t7 <- f0
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  26:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $9840, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t29      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t30      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t31      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <array 5 of <array 7 of <array 2 of <array 7 of <int>>>>>>> %ebp-96 ]
    #    -97(%ebp)   1  [ $t5       <char> %ebp-97 ]
    #   -104(%ebp)   4  [ $t6       <ptr(4) to <array 6 of <array 7 of <array 6 of <array 4 of <array 3 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t7       <ptr(4) to <array 6 of <array 8 of <array 2 of <array 3 of <array 3 of <char>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t8       <ptr(4) to <array 6 of <array 7 of <array 6 of <array 4 of <array 3 of <char>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t9       <ptr(4) to <array 6 of <array 8 of <array 2 of <array 3 of <array 3 of <char>>>>>>> %ebp-116 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 9 of <array 5 of <array 7 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 9 of <array 2 of <array 5 of <array 6 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -9940(%ebp)  9824  [ $v4       <array 5 of <array 5 of <array 7 of <array 2 of <array 7 of <int>>>>>> %ebp-9940 ]
    #   -9941(%ebp)   1  [ $v5       <char> %ebp-9941 ]
    #   -10832(%ebp)  888  [ $v6       <array 6 of <array 8 of <array 2 of <array 3 of <array 3 of <char>>>>>> %ebp-10832 ]
    #   -13880(%ebp)  3048  [ $v7       <array 6 of <array 7 of <array 6 of <array 4 of <array 3 of <char>>>>>> %ebp-13880 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $13868, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3467, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-9940(%ebp)          # local array 'v4': 5 dimensions
    movl    $5,-9936(%ebp)          #   dimension 1: 5 elements
    movl    $5,-9932(%ebp)          #   dimension 2: 5 elements
    movl    $7,-9928(%ebp)          #   dimension 3: 7 elements
    movl    $2,-9924(%ebp)          #   dimension 4: 2 elements
    movl    $7,-9920(%ebp)          #   dimension 5: 7 elements
    movl    $5,-10832(%ebp)         # local array 'v6': 5 dimensions
    movl    $6,-10828(%ebp)         #   dimension 1: 6 elements
    movl    $8,-10824(%ebp)         #   dimension 2: 8 elements
    movl    $2,-10820(%ebp)         #   dimension 3: 2 elements
    movl    $3,-10816(%ebp)         #   dimension 4: 3 elements
    movl    $3,-10812(%ebp)         #   dimension 5: 3 elements
    movl    $5,-13880(%ebp)         # local array 'v7': 5 dimensions
    movl    $6,-13876(%ebp)         #   dimension 1: 6 elements
    movl    $7,-13872(%ebp)         #   dimension 2: 7 elements
    movl    $6,-13868(%ebp)         #   dimension 3: 6 elements
    movl    $4,-13864(%ebp)         #   dimension 4: 4 elements
    movl    $3,-13860(%ebp)         #   dimension 5: 3 elements

    # function body
    leal    -9940(%ebp), %eax       #   0:     &()    t4 <- v4
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   2:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -97(%ebp)         
    movzbl  -97(%ebp), %eax         #   3:     return t5
    jmp     l_f2_exit              
    leal    -13880(%ebp), %eax      #   4:     &()    t6 <- v7
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   5:     param  2 <- t6
    pushl   %eax                   
    leal    -10832(%ebp), %eax      #   6:     &()    t7 <- v6
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   7:     param  1 <- t7
    pushl   %eax                   
    leal    -13880(%ebp), %eax      #   8:     &()    t8 <- v7
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   9:     param  2 <- t8
    pushl   %eax                   
    leal    -10832(%ebp), %eax      #  10:     &()    t9 <- v6
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  11:     param  1 <- t9
    pushl   %eax                   
    call    dummyCHARfunc           #  12:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  14:     call   t11 <- f1
    addl    $12, %esp              
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  15:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  16:     call   t12 <- f1
    addl    $12, %esp              
    movb    %al, -15(%ebp)         
    movl    $26448, %eax            #  17:     sub    t13 <- 26448, 13311
    movl    $13311, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     sub    t14 <- t13, 25973
    movl    $25973, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t15 <- t14, 53621
    movl    $53621, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  23:     mul    t17 <- t15, t16
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t18 <- t17, 83911
    movl    $83911, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t20 <- t18, t19
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     add    t21 <- t20, 3269
    movl    $3269, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  31:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  32:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  33:     mul    t23 <- t21, t22
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  34:     add    t24 <- t23, 33854
    movl    $33854, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  38:     mul    t26 <- t24, t25
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     add    t27 <- t26, 12903
    movl    $12903, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  40:     mul    t28 <- t27, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    16(%ebp), %eax          #  41:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  42:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  43:     add    t30 <- t28, t29
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    16(%ebp), %eax          #  44:     add    t31 <- v2, t30
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movzbl  -15(%ebp), %eax         #  45:     assign @t31 <- t12
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $99, %eax               #  46:     return 99
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $13868, %esp            # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #   2:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_5_if_false       #   4:     goto   5_if_false
    call    dummyINTfunc            #   5:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $29105, %eax            #   6:     if     29105 <= 72584 goto 8_if_true
    movl    $72584, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_8_if_true       
    jmp     l_test_9_if_false       #   7:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #   9:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_exit            
    movl    $43388, %eax            #  13:     param  0 <- 43388
    pushl   %eax                   
    call    WriteInt                #  14:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_3                #  15:     goto   3
l_test_5_if_false:
l_test_3:
    call    dummyCHARfunc           #  18:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
