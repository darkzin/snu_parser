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
    #    -25(%ebp)   1  [ $t13      <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t8       <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 2 of <array 8 of <array 10 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -33(%ebp)   1  [ $v3       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $50987, %eax            #   1:     if     50987 < 13453 goto 2_while_body
    movl    $13453, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_if_false:
l_f0_4:
    call    WriteLn                 #   8:     call   WriteLn
    call    dummyBOOLfunc           #   9:     call   t8 <- dummyBOOLfunc
    movb    %al, -27(%ebp)         
    call    ReadInt                 #  10:     call   t9 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    $0, %eax                #  11:     assign v3 <- 0
    movb    %al, -33(%ebp)         
    movl    $98, %eax               #  12:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
l_f0_0:
    movl    $52002, %eax            #  15:     mul    t10 <- 52002, 94751
    movl    $94751, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     div    t11 <- t10, 86098
    movl    $86098, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     div    t12 <- t11, 2627
    movl    $2627, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $69559, %eax            #  18:     if     69559 > t12 goto 13_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  19:     goto   14_if_false
l_f0_13_if_true:
    call    dummyCHARfunc           #  21:     call   t13 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    jmp     l_f0_17                 #  22:     goto   17
l_f0_17:
    jmp     l_f0_12                 #  24:     goto   12
l_f0_14_if_false:
l_f0_12:
    call    dummyCHARfunc           #  27:     call   t14 <- dummyCHARfunc
    movb    %al, -26(%ebp)         

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 10 of <array 2 of <array 10 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   1:     call   t8 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_5                  #   2:     goto   5
l_f1_5:
    movl    $100, %eax              #   4:     if     100 > 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   5:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #   7:     goto   8
l_f1_10_if_false:
l_f1_8:
l_f1_13_while_cond:
    movl    $99, %eax               #  11:     if     99 = 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_14_while_body     
    jmp     l_f1_12                 #  12:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  14:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_1                  #  16:     goto   1
l_f1_1:
    jmp     l_f1_19                 #  18:     goto   19
l_f1_19:
    jmp     l_f1_16                 #  20:     goto   16
l_f1_16:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
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
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <ptr(4) to <array 8 of <array 2 of <array 8 of <array 10 of <array 5 of <char>>>>>>> %ebp-116 ]
    #   -117(%ebp)   1  [ $t36      <char> %ebp-117 ]
    #   -124(%ebp)   4  [ $t8       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t9       <int> %ebp-128 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 3 of <array 10 of <array 4 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 4 of <array 9 of <array 4 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 8 of <array 3 of <array 2 of <array 4 of <int>>>>>>> %ebp+20 ]
    #   -6552(%ebp)  6424  [ $v5       <array 8 of <array 2 of <array 8 of <array 10 of <array 5 of <char>>>>>> %ebp-6552 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $6540, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1635, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6552(%ebp)          # local array 'v5': 5 dimensions
    movl    $8,-6548(%ebp)          #   dimension 1: 8 elements
    movl    $2,-6544(%ebp)          #   dimension 2: 2 elements
    movl    $8,-6540(%ebp)          #   dimension 3: 8 elements
    movl    $10,-6536(%ebp)         #   dimension 4: 10 elements
    movl    $5,-6532(%ebp)          #   dimension 5: 5 elements

    # function body
    movl    $51269, %eax            #   0:     sub    t8 <- 51269, 87273
    movl    $87273, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #   1:     sub    t9 <- t8, 8676
    movl    $8676, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #   2:     sub    t10 <- t9, 93671
    movl    $93671, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t10 <= 70383 goto 1
    movl    $70383, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   4:     goto   2
l_f2_1:
    movl    $1, %eax                #   6:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_3:
    movzbl  -17(%ebp), %eax         #  11:     return t11
    jmp     l_f2_exit              
    movl    $68542, %eax            #  12:     sub    t12 <- 68542, 99944
    movl    $99944, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     sub    t13 <- t12, 49180
    movl    $49180, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  17:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     add    t16 <- t15, 6927
    movl    $6927, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  22:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $2958, %eax             #  23:     sub    t19 <- 2958, 9501
    movl    $9501, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  24:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  28:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  29:     add    t23 <- t22, 14626
    movl    $14626, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  31:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  32:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  33:     mul    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  34:     add    t26 <- t25, 94897
    movl    $94897, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  35:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    12(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  37:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  38:     add    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    12(%ebp), %eax          #  39:     add    t30 <- v2, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $100, %eax              #  40:     assign @t30 <- 100
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_7_while_cond:
    movl    $58761, %eax            #  42:     sub    t31 <- 58761, 19605
    movl    $19605, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  43:     sub    t32 <- t31, 14245
    movl    $14245, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  44:     sub    t33 <- t32, 22937
    movl    $22937, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  45:     sub    t34 <- t33, 53337
    movl    $53337, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  46:     param  1 <- t34
    pushl   %eax                   
    leal    -6552(%ebp), %eax       #  47:     &()    t35 <- v5
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  48:     param  0 <- t35
    pushl   %eax                   
    call    f0                      #  49:     call   t36 <- f0
    addl    $8, %esp               
    movb    %al, -117(%ebp)        
    movl    $97, %eax               #  50:     if     97 > t36 goto 8_while_body
    movzbl  -117(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jg      l_f2_8_while_body      
    jmp     l_f2_6                  #  51:     goto   6
l_f2_8_while_body:
    jmp     l_f2_10                 #  53:     goto   10
l_f2_10:
    jmp     l_f2_7_while_cond       #  55:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $6540, %esp             # remove locals
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
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_0                #   2:     goto   0
    movl    $36251, %eax            #   3:     assign v0 <- 36251
    movl    %eax, v0               
    jmp     l_test_6                #   4:     goto   6
l_test_6:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    call    dummyINTfunc            #   8:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     add    t1 <- t0, 47534
    movl    $47534, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     sub    t2 <- t1, 72896
    movl    $72896, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     add    t3 <- t2, 18609
    movl    $18609, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     assign v0 <- t3
    movl    %eax, v0               
l_test_11_while_cond:
    jmp     l_test_10               #  14:     goto   10
    jmp     l_test_10               #  15:     goto   10
    jmp     l_test_10               #  16:     goto   10
    jmp     l_test_11_while_cond    #  17:     goto   11_while_cond
l_test_10:
    movl    $84078, %eax            #  19:     assign v0 <- 84078
    movl    %eax, v0               
l_test_18_while_cond:
    movl    $19949, %eax            #  21:     sub    t4 <- 19949, 52663
    movl    $52663, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     add    t5 <- t4, 36815
    movl    $36815, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     sub    t6 <- t5, 52896
    movl    $52896, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     if     t6 # 35016 goto 19_while_body
    movl    $35016, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_19_while_body   
    jmp     l_test_17               #  25:     goto   17
l_test_19_while_body:
    jmp     l_test_21               #  27:     goto   21
l_test_21:
    jmp     l_test_exit            
    call    dummyINTfunc            #  30:     call   t7 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    jmp     l_test_18_while_cond    #  31:     goto   18_while_cond
l_test_17:
l_test_27_while_cond:
l_test_31_while_cond:
    movl    $98, %eax               #  35:     if     98 # 99 goto 32_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_32_while_body   
    jmp     l_test_30               #  36:     goto   30
l_test_32_while_body:
    jmp     l_test_31_while_cond    #  38:     goto   31_while_cond
l_test_30:
    jmp     l_test_27_while_cond    #  40:     goto   27_while_cond

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
