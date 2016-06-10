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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 9 of <array 3 of <array 5 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 1 of <array 2 of <array 8 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 5 of <array 9 of <array 9 of <array 10 of <array 3 of <int>>>>>>> %ebp+16 ]
    #    -15(%ebp)   1  [ $v5       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $v6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v7       <char> %ebp-21 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $0, %eax                #   4:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v5 <- t11
    movb    %al, -15(%ebp)         
    movl    $18251, %eax            #   7:     assign v6 <- 18251
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #   8:     if     99 = 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #   9:     goto   11_if_false
l_f0_10_if_true:
    call    dummyBOOLfunc           #  11:     call   t12 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_5                  #  15:     goto   5
l_f0_5:
    movl    $98, %eax               #  17:     assign v7 <- 98
    movb    %al, -21(%ebp)         

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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t13      <ptr(4) to <array 5 of <array 9 of <array 9 of <array 10 of <array 3 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <ptr(4) to <array 1 of <array 1 of <array 2 of <array 8 of <array 3 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <ptr(4) to <array 8 of <array 9 of <array 3 of <array 5 of <array 5 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t17      <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]
    #    -34(%ebp)   1  [ $v6       <bool> %ebp-34 ]
    #   -21660(%ebp)  21624  [ $v7       <array 8 of <array 9 of <array 3 of <array 5 of <array 5 of <int>>>>>> %ebp-21660 ]
    #   -21876(%ebp)  216  [ $v8       <array 1 of <array 1 of <array 2 of <array 8 of <array 3 of <int>>>>>> %ebp-21876 ]
    #   -70500(%ebp)  48624  [ $v9       <array 5 of <array 9 of <array 9 of <array 10 of <array 3 of <int>>>>>> %ebp-70500 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $70488, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17622, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-21660(%ebp)         # local array 'v7': 5 dimensions
    movl    $8,-21656(%ebp)         #   dimension 1: 8 elements
    movl    $9,-21652(%ebp)         #   dimension 2: 9 elements
    movl    $3,-21648(%ebp)         #   dimension 3: 3 elements
    movl    $5,-21644(%ebp)         #   dimension 4: 5 elements
    movl    $5,-21640(%ebp)         #   dimension 5: 5 elements
    movl    $5,-21876(%ebp)         # local array 'v8': 5 dimensions
    movl    $1,-21872(%ebp)         #   dimension 1: 1 elements
    movl    $1,-21868(%ebp)         #   dimension 2: 1 elements
    movl    $2,-21864(%ebp)         #   dimension 3: 2 elements
    movl    $8,-21860(%ebp)         #   dimension 4: 8 elements
    movl    $3,-21856(%ebp)         #   dimension 5: 3 elements
    movl    $5,-70500(%ebp)         # local array 'v9': 5 dimensions
    movl    $5,-70496(%ebp)         #   dimension 1: 5 elements
    movl    $9,-70492(%ebp)         #   dimension 2: 9 elements
    movl    $9,-70488(%ebp)         #   dimension 3: 9 elements
    movl    $10,-70484(%ebp)        #   dimension 4: 10 elements
    movl    $3,-70480(%ebp)         #   dimension 5: 3 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t11 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t11 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t12 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t12 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v6 <- t12
    movb    %al, -34(%ebp)         
l_f1_6_while_cond:
    movl    $29720, %eax            #  11:     if     29720 <= 5848 goto 7_while_body
    movl    $5848, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #  12:     goto   5
l_f1_7_while_body:
    leal    -70500(%ebp), %eax      #  14:     &()    t13 <- v9
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  2 <- t13
    pushl   %eax                   
    leal    -21876(%ebp), %eax      #  16:     &()    t14 <- v8
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     param  1 <- t14
    pushl   %eax                   
    leal    -21660(%ebp), %eax      #  18:     &()    t15 <- v7
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  0 <- t15
    pushl   %eax                   
    call    f0                      #  20:     call   t16 <- f0
    addl    $12, %esp              
    movl    %eax, -32(%ebp)        
    jmp     l_f1_6_while_cond       #  21:     goto   6_while_cond
l_f1_5:
    movl    $98, %eax               #  23:     if     98 <= 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  24:     goto   12_if_false
l_f1_11_if_true:
    movl    $98, %eax               #  26:     if     98 >= 97 goto 15
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_15                
    jmp     l_f1_16                 #  27:     goto   16
l_f1_15:
    movl    $1, %eax                #  29:     assign t17 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_17                 #  30:     goto   17
l_f1_16:
    movl    $0, %eax                #  32:     assign t17 <- 0
    movb    %al, -33(%ebp)         
l_f1_17:
    movzbl  -33(%ebp), %eax         #  34:     assign v6 <- t17
    movb    %al, -34(%ebp)         
    jmp     l_f1_10                 #  35:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $70488, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t30      <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 5 of <array 2 of <array 1 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #    -96(%ebp)   4  [ $v4       <int> %ebp-96 ]

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
    call    dummyCHARfunc           #   0:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   2:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   3:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $49251, %eax            #   4:     mul    t13 <- 49251, t12
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $1683, %eax             #   5:     add    t14 <- 1683, 3831
    movl    $3831, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t15 <- t14, 5753
    movl    $5753, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #   7:     add    t16 <- t13, t15
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  10:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  11:     mul    t18 <- t16, t17
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  12:     add    t19 <- t18, 21409
    movl    $21409, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  16:     mul    t21 <- t19, t20
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  17:     add    t22 <- t21, 64698
    movl    $64698, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  21:     mul    t24 <- t22, t23
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  22:     add    t25 <- t24, 5240
    movl    $5240, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  23:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  24:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  25:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  26:     add    t28 <- t26, t27
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  27:     add    t29 <- v2, t28
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $98, %eax               #  28:     assign @t29 <- 98
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_4_if_false         #  29:     goto   4_if_false
    call    dummyINTfunc            #  30:     call   t30 <- dummyINTfunc
    movl    %eax, -92(%ebp)        
    movl    $21197, %eax            #  31:     assign v4 <- 21197
    movl    %eax, -96(%ebp)        
    jmp     l_f2_7                  #  32:     goto   7
l_f2_7:
l_f2_11_while_cond:
    jmp     l_f2_10                 #  35:     goto   10
    jmp     l_f2_11_while_cond      #  36:     goto   11_while_cond
l_f2_10:
l_f2_14_while_cond:
    jmp     l_f2_14_while_cond      #  39:     goto   14_while_cond
    jmp     l_f2_2                  #  40:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $84, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t4       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $93372, %eax            #   0:     mul    t0 <- 93372, 84185
    movl    $84185, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 70198
    movl    $70198, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 97382
    movl    $97382, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     add    t3 <- t2, 45702
    movl    $45702, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     if     t3 < 97274 goto 1
    movl    $97274, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_1               
    jmp     l_test_2                #   5:     goto   2
l_test_1:
    movl    $1, %eax                #   7:     assign t4 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_3                #   8:     goto   3
l_test_2:
    movl    $0, %eax                #  10:     assign t4 <- 0
    movb    %al, -33(%ebp)         
l_test_3:
    movzbl  -33(%ebp), %eax         #  12:     assign v0 <- t4
    movb    %al, v0                
    call    dummyINTfunc            #  13:     call   t5 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    movl    $3715, %eax             #  14:     sub    t6 <- 3715, t5
    movl    -40(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  15:     assign v1 <- t6
    movl    %eax, v1               
l_test_7_while_cond:
    movl    $28348, %eax            #  17:     if     28348 = 60557 goto 10_if_true
    movl    $60557, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_10_if_true      
    jmp     l_test_11_if_false      #  18:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_exit            
    jmp     l_test_9                #  21:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_7_while_cond     #  24:     goto   7_while_cond
l_test_15_while_cond:
    jmp     l_test_16_while_body    #  26:     goto   16_while_body
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  28:     goto   15_while_cond
    call    ReadInt                 #  29:     call   t7 <- ReadInt
    movl    %eax, -48(%ebp)        
l_test_23_while_cond:
    movl    $85549, %eax            #  31:     div    t8 <- 85549, 31534
    movl    $31534, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  32:     div    t9 <- t8, 67887
    movl    $67887, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  33:     mul    t10 <- t9, 35781
    movl    $35781, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     if     t10 > 75372 goto 24_while_body
    movl    $75372, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_24_while_body   
    jmp     l_test_22               #  35:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  37:     goto   23_while_cond
l_test_22:

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
