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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 89 of <array 2 of <array 56 of <array 61 of <array 58 of <char>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #   1:     if     100 = 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    call    dummyINTfunc            #   4:     call   t8 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    call    dummyBOOLfunc           #   5:     call   t9 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    leal    _str_1, %eax            #   6:     &()    t10 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     param  0 <- t10
    pushl   %eax                   
    call    WriteStr                #   8:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    ReadInt                 #  12:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     return t11
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t7       <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $t8       <char> %ebp-82 ]
    #    -88(%ebp)   4  [ $t9       <ptr(4) to <array 89 of <array 2 of <array 56 of <array 61 of <array 58 of <char>>>>>>> %ebp-88 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 85 of <array 5 of <array 8 of <array 9 of <array 58 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 77 of <array 82 of <array 59 of <array 90 of <array 47 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 81 of <array 87 of <array 13 of <array 7 of <array 37 of <char>>>>>>> %ebp+20 ]
    #    -89(%ebp)   1  [ $v5       <char> %ebp-89 ]
    #   -35266900(%ebp)  35266808  [ $v6       <array 89 of <array 2 of <array 56 of <array 61 of <array 58 of <char>>>>>> %ebp-35266900 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $35266888, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8816722, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-35266900(%ebp)      # local array 'v6': 5 dimensions
    movl    $89,-35266896(%ebp)     #   dimension 1: 89 elements
    movl    $2,-35266892(%ebp)      #   dimension 2: 2 elements
    movl    $56,-35266888(%ebp)     #   dimension 3: 56 elements
    movl    $61,-35266884(%ebp)     #   dimension 4: 61 elements
    movl    $58,-35266880(%ebp)     #   dimension 5: 58 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -81(%ebp)         
    call    dummyCHARfunc           #   1:     call   t8 <- dummyCHARfunc
    movb    %al, -82(%ebp)         
    leal    -35266900(%ebp), %eax   #   2:     &()    t9 <- v6
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   3:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #   4:     call   t10 <- f0
    addl    $4, %esp               
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   6:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   7:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   8:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     add    t13 <- t12, 88463
    movl    $88463, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  13:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     add    t16 <- t15, 39628
    movl    $39628, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  18:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  19:     add    t19 <- t18, 53948
    movl    $53948, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  23:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  24:     add    t22 <- t21, 72428
    movl    $72428, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  25:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  27:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  28:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  29:     add    t26 <- v1, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $100, %eax              #  30:     assign @t26 <- 100
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $35266888, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
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
    #    -96(%ebp)   4  [ $t7       <ptr(4) to <array 81 of <array 87 of <array 13 of <array 7 of <array 37 of <char>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t8       <ptr(4) to <array 77 of <array 82 of <array 59 of <array 90 of <array 47 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <ptr(4) to <array 85 of <array 5 of <array 8 of <array 9 of <array 58 of <char>>>>>>> %ebp-104 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 62 of <array 60 of <array 72 of <array 3 of <int>>>>>>> %ebp+8 ]
    #   -1774928(%ebp)  1774824  [ $v2       <array 85 of <array 5 of <array 8 of <array 9 of <array 58 of <char>>>>>> %ebp-1774928 ]
    #   -1577559932(%ebp)  1575785004  [ $v3       <array 77 of <array 82 of <array 59 of <array 90 of <array 47 of <char>>>>>> %ebp-1577559932 ]
    #   -1601287208(%ebp)  23727273  [ $v4       <array 81 of <array 87 of <array 13 of <array 7 of <array 37 of <char>>>>>> %ebp-1601287208 ]
    #   -1601287212(%ebp)   4  [ $v5       <int> %ebp-1601287212 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1601287200, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $400321800, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1774928(%ebp)       # local array 'v2': 5 dimensions
    movl    $85,-1774924(%ebp)      #   dimension 1: 85 elements
    movl    $5,-1774920(%ebp)       #   dimension 2: 5 elements
    movl    $8,-1774916(%ebp)       #   dimension 3: 8 elements
    movl    $9,-1774912(%ebp)       #   dimension 4: 9 elements
    movl    $58,-1774908(%ebp)      #   dimension 5: 58 elements
    movl    $5,-1577559932(%ebp)    # local array 'v3': 5 dimensions
    movl    $77,-1577559928(%ebp)   #   dimension 1: 77 elements
    movl    $82,-1577559924(%ebp)   #   dimension 2: 82 elements
    movl    $59,-1577559920(%ebp)   #   dimension 3: 59 elements
    movl    $90,-1577559916(%ebp)   #   dimension 4: 90 elements
    movl    $47,-1577559912(%ebp)   #   dimension 5: 47 elements
    movl    $5,-1601287208(%ebp)    # local array 'v4': 5 dimensions
    movl    $81,-1601287204(%ebp)   #   dimension 1: 81 elements
    movl    $87,-1601287200(%ebp)   #   dimension 2: 87 elements
    movl    $13,-1601287196(%ebp)   #   dimension 3: 13 elements
    movl    $7,-1601287192(%ebp)    #   dimension 4: 7 elements
    movl    $37,-1601287188(%ebp)   #   dimension 5: 37 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    leal    -1601287208(%ebp), %eax #   2:     &()    t7 <- v4
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   3:     param  3 <- t7
    pushl   %eax                   
    movl    $0, %eax                #   4:     param  2 <- 0
    pushl   %eax                   
    leal    -1577559932(%ebp), %eax #   5:     &()    t8 <- v3
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   6:     param  1 <- t8
    pushl   %eax                   
    leal    -1774928(%ebp), %eax    #   7:     &()    t9 <- v2
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   8:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #   9:     call   t10 <- f1
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
l_f2_5_while_cond:
    jmp     l_f2_6_while_body       #  13:     goto   6_while_body
l_f2_6_while_body:
    movl    $98, %eax               #  15:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_5_while_cond       #  16:     goto   5_while_cond
    movl    $14585, %eax            #  17:     sub    t11 <- 14585, 99530
    movl    $99530, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     add    t12 <- t11, 85274
    movl    $85274, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  19:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  22:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    call    dummyINTfunc            #  23:     call   t15 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  24:     add    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     add    t19 <- t18, 49193
    movl    $49193, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  33:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  34:     add    t22 <- t21, 64154
    movl    $64154, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  37:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  38:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     add    t25 <- t24, 76426
    movl    $76426, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  40:     mul    t26 <- t25, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    8(%ebp), %eax           #  41:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  42:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  43:     add    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    8(%ebp), %eax           #  44:     add    t29 <- v1, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $85856, %eax            #  45:     assign @t29 <- 85856
    movl    -92(%ebp), %edi        
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $1601287200, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 81 of <array 87 of <array 13 of <array 7 of <array 37 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 77 of <array 82 of <array 59 of <array 90 of <array 47 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 85 of <array 5 of <array 8 of <array 9 of <array 58 of <char>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
    call    dummyINTfunc            #   4:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_7_while_cond:
    movl    $83030, %eax            #   6:     if     83030 >= 2022 goto 8_while_body
    movl    $2022, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_8_while_body    
    jmp     l_test_6                #   7:     goto   6
l_test_8_while_body:
    movl    $59872, %eax            #   9:     assign v0 <- 59872
    movl    %eax, v0               
    movl    $34276, %eax            #  10:     if     34276 >= 81958 goto 12_if_true
    movl    $81958, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_12_if_true      
    jmp     l_test_13_if_false      #  11:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_exit            
    movl    $0, %eax                #  14:     if     0 = 0 goto 17_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_17_if_true      
    jmp     l_test_18_if_false      #  15:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  17:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_11               #  20:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_7_while_cond     #  23:     goto   7_while_cond
l_test_6:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  26:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  27:     assign v1 <- t1
    movb    %al, v1                
    leal    v4, %eax                #  28:     &()    t2 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     param  3 <- t2
    pushl   %eax                   
    movl    $43835, %eax            #  30:     if     43835 > 2587 goto 23
    movl    $2587, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_23              
    jmp     l_test_24               #  31:     goto   24
l_test_23:
    movl    $1, %eax                #  33:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_25               #  34:     goto   25
l_test_24:
    movl    $0, %eax                #  36:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_25:
    movzbl  -25(%ebp), %eax         #  38:     param  2 <- t3
    pushl   %eax                   
    leal    v3, %eax                #  39:     &()    t4 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  40:     param  1 <- t4
    pushl   %eax                   
    leal    v2, %eax                #  41:     &()    t5 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  42:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  43:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -37(%ebp)         

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 85 of <array 5 of <array 8 of <array 9 of <array 58 of <char>>>>>>
    .long    5
    .long   85
    .long    5
    .long    8
    .long    9
    .long   58
    .skip 1774800
v3:                                 # <array 77 of <array 82 of <array 59 of <array 90 of <array 47 of <char>>>>>>
    .long    5
    .long   77
    .long   82
    .long   59
    .long   90
    .long   47
    .skip 1575784980
v4:                                 # <array 81 of <array 87 of <array 13 of <array 7 of <array 37 of <char>>>>>>
    .long    5
    .long   81
    .long   87
    .long   13
    .long    7
    .long   37
    .skip 23727249








    # end of global data section
    #-----------------------------------------

    .end
##################################################
