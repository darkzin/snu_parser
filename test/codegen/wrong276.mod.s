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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 2 of <array 5 of <array 6 of <array 5 of <char>>>>>>> %ebp+20 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $0, %eax                #   4:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v1 <- t7
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   7:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   8:     call   t9 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   9:     return t9
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
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
    #    -92(%ebp)   4  [ $t29      <ptr(4) to <array 2 of <array 2 of <array 5 of <array 6 of <array 5 of <char>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t31      <bool> %ebp-97 ]
    #    -98(%ebp)   1  [ $t32      <bool> %ebp-98 ]
    #    -99(%ebp)   1  [ $t33      <char> %ebp-99 ]
    #   -104(%ebp)   4  [ $t7       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t9       <int> %ebp-112 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 1 of <array 4 of <array 4 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #   -736(%ebp)  624  [ $v5       <array 2 of <array 2 of <array 5 of <array 6 of <array 5 of <char>>>>>> %ebp-736 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $724, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $181, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-736(%ebp)           # local array 'v5': 5 dimensions
    movl    $2,-732(%ebp)           #   dimension 1: 2 elements
    movl    $2,-728(%ebp)           #   dimension 2: 2 elements
    movl    $5,-724(%ebp)           #   dimension 3: 5 elements
    movl    $6,-720(%ebp)           #   dimension 4: 6 elements
    movl    $5,-716(%ebp)           #   dimension 5: 5 elements

    # function body
    movl    $15148, %eax            #   0:     mul    t7 <- 15148, 76388
    movl    $76388, %ebx           
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   1:     div    t8 <- t7, 29439
    movl    $29439, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   2:     div    t9 <- t8, 87422
    movl    $87422, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   3:     mul    t10 <- t9, 99063
    movl    $99063, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     div    t11 <- t10, 13999
    movl    $13999, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $21483, %eax            #   5:     if     21483 >= t11 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   6:     goto   2
l_f1_1:
    movl    $1, %eax                #   8:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_3                  #   9:     goto   3
l_f1_2:
    movl    $0, %eax                #  11:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f1_3:
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $75584, %eax            #  16:     mul    t14 <- 75584, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     add    t15 <- t14, 39000
    movl    $39000, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  21:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  22:     add    t18 <- t17, 40062
    movl    $40062, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  26:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  27:     add    t21 <- t20, 93657
    movl    $93657, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  31:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  32:     add    t24 <- t23, 13242
    movl    $13242, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  33:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  35:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  36:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    12(%ebp), %eax          #  37:     add    t28 <- v2, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movzbl  -21(%ebp), %eax         #  38:     assign @t28 <- t12
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    leal    -736(%ebp), %eax        #  39:     &()    t29 <- v5
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  40:     param  3 <- t29
    pushl   %eax                   
    movl    $100, %eax              #  41:     param  2 <- 100
    pushl   %eax                   
    movl    $81142, %eax            #  42:     sub    t30 <- 81142, 40733
    movl    $40733, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $96409, %eax            #  43:     if     96409 # t30 goto 6
    movl    -96(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_6                 
    jmp     l_f1_7                  #  44:     goto   7
l_f1_6:
    movl    $1, %eax                #  46:     assign t31 <- 1
    movb    %al, -97(%ebp)         
    jmp     l_f1_8                  #  47:     goto   8
l_f1_7:
    movl    $0, %eax                #  49:     assign t31 <- 0
    movb    %al, -97(%ebp)         
l_f1_8:
    movzbl  -97(%ebp), %eax         #  51:     param  1 <- t31
    pushl   %eax                   
    jmp     l_f1_11                 #  52:     goto   11
    jmp     l_f1_11                 #  53:     goto   11
    movl    $1, %eax                #  54:     assign t32 <- 1
    movb    %al, -98(%ebp)         
    jmp     l_f1_12                 #  55:     goto   12
l_f1_11:
    movl    $0, %eax                #  57:     assign t32 <- 0
    movb    %al, -98(%ebp)         
l_f1_12:
    movzbl  -98(%ebp), %eax         #  59:     param  0 <- t32
    pushl   %eax                   
    call    f0                      #  60:     call   t33 <- f0
    addl    $16, %esp              
    movb    %al, -99(%ebp)         
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $724, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 2 of <array 9 of <array 4 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 4 of <array 4 of <array 5 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
    movl    $100, %eax              #   0:     if     100 <= 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     return t7
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   9:     call   t8 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #  10:     if     0 # 0 goto 10_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  11:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_15_if_false        #  13:     goto   15_if_false
    jmp     l_f2_13                 #  14:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_9                  #  17:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_6                  #  20:     goto   6
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 3 of <array 4 of <array 4 of <array 5 of <array 7 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 2 of <array 9 of <array 4 of <array 10 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t0
    movb    %al, v0                
    movl    $66113, %eax            #   3:     param  2 <- 66113
    pushl   %eax                   
    leal    v2, %eax                #   4:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  1 <- t1
    pushl   %eax                   
    leal    v1, %eax                #   6:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #   8:     call   t3 <- f2
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    call    dummyCHARfunc           #   9:     call   t4 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movl    $97, %eax               #  10:     if     97 < 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_5_if_true       
    jmp     l_test_6_if_false       #  11:     goto   6_if_false
l_test_5_if_true:
    call    dummyINTfunc            #  13:     call   t5 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    $19873, %eax            #  14:     if     19873 = 30488 goto 10
    movl    $30488, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_10              
    jmp     l_test_11               #  15:     goto   11
l_test_10:
    movl    $1, %eax                #  17:     assign t6 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_12               #  18:     goto   12
l_test_11:
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -33(%ebp)         
l_test_12:
    movzbl  -33(%ebp), %eax         #  22:     assign v3 <- t6
    movb    %al, v3                
    movl    $100, %eax              #  23:     if     100 < 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_15_if_true      
    jmp     l_test_16_if_false      #  24:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  26:     goto   14
l_test_16_if_false:
l_test_14:
l_test_19_while_cond:
    jmp     l_test_18               #  30:     goto   18
    jmp     l_test_19_while_cond    #  31:     goto   19_while_cond
l_test_18:
    jmp     l_test_exit            
    jmp     l_test_4                #  34:     goto   4
l_test_6_if_false:
l_test_4:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 2 of <array 2 of <array 9 of <array 4 of <array 10 of <int>>>>>>
    .long    5
    .long    2
    .long    2
    .long    9
    .long    4
    .long   10
    .skip 5760
v2:                                 # <array 3 of <array 4 of <array 4 of <array 5 of <array 7 of <int>>>>>>
    .long    5
    .long    3
    .long    4
    .long    4
    .long    5
    .long    7
    .skip 6720
v3:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
