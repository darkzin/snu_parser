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
    #    -13(%ebp)   1  [ $t12      <char> %ebp-13 ]
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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 6 of <array 2 of <array 10 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 6 of <array 5 of <array 8 of <array 8 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 6 of <array 9 of <array 4 of <array 8 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t12 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t12
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $100, %eax              #   3:     if     100 < 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    movl    $99, %eax               #   6:     if     99 = 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   7:     goto   7_if_false
l_f0_6_if_true:
    movl    $3997, %eax             #   9:     assign v1 <- 3997
    movl    %eax, 8(%ebp)          
l_f0_11_while_cond:
    jmp     l_f0_10                 #  11:     goto   10
    jmp     l_f0_11_while_cond      #  12:     goto   11_while_cond
l_f0_10:
    movl    $88384, %eax            #  14:     assign v1 <- 88384
    movl    %eax, 8(%ebp)          
    jmp     l_f0_5                  #  15:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_2_while_cond       #  18:     goto   2_while_cond
l_f0_1:
    movl    $89456, %eax            #  20:     sub    t13 <- 89456, 61523
    movl    $61523, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  22:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  23:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  24:     mul    t15 <- t13, t14
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    call    ReadInt                 #  25:     call   t16 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t17 <- t15, t16
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  27:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  28:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  29:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  30:     mul    t19 <- t17, t18
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     add    t20 <- t19, 6558
    movl    $6558, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  32:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  33:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  34:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  35:     mul    t22 <- t20, t21
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  36:     add    t23 <- t22, 98857
    movl    $98857, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  37:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  38:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  39:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  40:     mul    t25 <- t23, t24
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  41:     add    t26 <- t25, 25911
    movl    $25911, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  42:     mul    t27 <- t26, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    20(%ebp), %eax          #  43:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  44:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  45:     add    t29 <- t27, t28
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    20(%ebp), %eax          #  46:     add    t30 <- v4, t29
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $79392, %eax            #  47:     assign @t30 <- 79392
    movl    -88(%ebp), %edi        
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t12      <ptr(4) to <array 1 of <array 6 of <array 9 of <array 4 of <array 8 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t13      <ptr(4) to <array 1 of <array 6 of <array 5 of <array 8 of <array 8 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <ptr(4) to <array 9 of <array 6 of <array 2 of <array 10 of <array 4 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t16      <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $v1       <char> %ebp-45 ]
    #   -4392(%ebp)  4344  [ $v2       <array 9 of <array 6 of <array 2 of <array 10 of <array 4 of <bool>>>>>> %ebp-4392 ]
    #   -6336(%ebp)  1944  [ $v3       <array 1 of <array 6 of <array 5 of <array 8 of <array 8 of <char>>>>>> %ebp-6336 ]
    #   -13272(%ebp)  6936  [ $v4       <array 1 of <array 6 of <array 9 of <array 4 of <array 8 of <int>>>>>> %ebp-13272 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $13260, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3315, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4392(%ebp)          # local array 'v2': 5 dimensions
    movl    $9,-4388(%ebp)          #   dimension 1: 9 elements
    movl    $6,-4384(%ebp)          #   dimension 2: 6 elements
    movl    $2,-4380(%ebp)          #   dimension 3: 2 elements
    movl    $10,-4376(%ebp)         #   dimension 4: 10 elements
    movl    $4,-4372(%ebp)          #   dimension 5: 4 elements
    movl    $5,-6336(%ebp)          # local array 'v3': 5 dimensions
    movl    $1,-6332(%ebp)          #   dimension 1: 1 elements
    movl    $6,-6328(%ebp)          #   dimension 2: 6 elements
    movl    $5,-6324(%ebp)          #   dimension 3: 5 elements
    movl    $8,-6320(%ebp)          #   dimension 4: 8 elements
    movl    $8,-6316(%ebp)          #   dimension 5: 8 elements
    movl    $5,-13272(%ebp)         # local array 'v4': 5 dimensions
    movl    $1,-13268(%ebp)         #   dimension 1: 1 elements
    movl    $6,-13264(%ebp)         #   dimension 2: 6 elements
    movl    $9,-13260(%ebp)         #   dimension 3: 9 elements
    movl    $4,-13256(%ebp)         #   dimension 4: 4 elements
    movl    $8,-13252(%ebp)         #   dimension 5: 8 elements

    # function body
    leal    -13272(%ebp), %eax      #   0:     &()    t12 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t12
    pushl   %eax                   
    leal    -6336(%ebp), %eax       #   2:     &()    t13 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t13
    pushl   %eax                   
    leal    -4392(%ebp), %eax       #   4:     &()    t14 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  1 <- t14
    pushl   %eax                   
    movl    $93411, %eax            #   6:     sub    t15 <- 93411, 95502
    movl    $95502, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  0 <- t15
    pushl   %eax                   
    call    f0                      #   8:     call   t16 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   9:     assign v1 <- t16
    movb    %al, -45(%ebp)         
    movl    $3749, %eax             #  10:     div    t17 <- 3749, 57581
    movl    $57581, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     mul    t18 <- t17, 4493
    movl    $4493, %ebx            
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     return t18
    jmp     l_f1_exit              
    call    ReadInt                 #  13:     call   t19 <- ReadInt
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  14:     return t19
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $13260, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 3 of <array 6 of <array 9 of <array 7 of <int>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    jmp     l_f2_exit              
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
    #    -25(%ebp)   1  [ $t11      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <array 3 of <array 6 of <array 9 of <array 7 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t3       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t5       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 3 of <array 6 of <array 9 of <array 7 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <ptr(4) to <array 1 of <array 6 of <array 9 of <array 4 of <array 8 of <int>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <ptr(4) to <array 1 of <array 6 of <array 5 of <array 8 of <array 8 of <char>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <ptr(4) to <array 9 of <array 6 of <array 2 of <array 10 of <array 4 of <bool>>>>>>> %ebp-60 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
    movl    $9652, %eax             #   1:     if     9652 # 47269 goto 2_if_true
    movl    $47269, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $26261, %eax            #   4:     sub    t0 <- 26261, 3857
    movl    $3857, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     add    t1 <- t0, 74044
    movl    $74044, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3083, %eax             #   6:     if     3083 > t1 goto 6_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   9:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_1                #  12:     goto   1
l_test_3_if_false:
l_test_1:
l_test_10_while_cond:
    jmp     l_test_9                #  16:     goto   9
    jmp     l_test_9                #  17:     goto   9
    jmp     l_test_9                #  18:     goto   9
    jmp     l_test_10_while_cond    #  19:     goto   10_while_cond
l_test_9:
    leal    v1, %eax                #  21:     &()    t2 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     param  1 <- t2
    pushl   %eax                   
    call    ReadInt                 #  23:     call   t3 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    $3677, %eax             #  24:     div    t4 <- 3677, t3
    movl    -36(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  25:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  26:     call   f2
    addl    $8, %esp               
    jmp     l_test_18_if_false      #  27:     goto   18_if_false
    call    dummyBOOLfunc           #  28:     call   t5 <- dummyBOOLfunc
    movb    %al, -41(%ebp)         
    leal    v1, %eax                #  29:     &()    t6 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     param  1 <- t6
    pushl   %eax                   
    movl    $57396, %eax            #  31:     param  0 <- 57396
    pushl   %eax                   
    call    f2                      #  32:     call   f2
    addl    $8, %esp               
    jmp     l_test_16               #  33:     goto   16
l_test_18_if_false:
l_test_16:
    leal    v4, %eax                #  36:     &()    t7 <- v4
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  37:     param  3 <- t7
    pushl   %eax                   
    leal    v3, %eax                #  38:     &()    t8 <- v3
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  39:     param  2 <- t8
    pushl   %eax                   
    leal    v2, %eax                #  40:     &()    t9 <- v2
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  41:     param  1 <- t9
    pushl   %eax                   
    movl    $45312, %eax            #  42:     div    t10 <- 45312, 49740
    movl    $49740, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  43:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  44:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         

l_test_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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
v1:                                 # <array 5 of <array 3 of <array 6 of <array 9 of <array 7 of <int>>>>>>
    .long    5
    .long    5
    .long    3
    .long    6
    .long    9
    .long    7
    .skip 22680
v2:                                 # <array 9 of <array 6 of <array 2 of <array 10 of <array 4 of <bool>>>>>>
    .long    5
    .long    9
    .long    6
    .long    2
    .long   10
    .long    4
    .skip 4320
v3:                                 # <array 1 of <array 6 of <array 5 of <array 8 of <array 8 of <char>>>>>>
    .long    5
    .long    1
    .long    6
    .long    5
    .long    8
    .long    8
    .skip 1920
v4:                                 # <array 1 of <array 6 of <array 9 of <array 4 of <array 8 of <int>>>>>>
    .long    5
    .long    1
    .long    6
    .long    9
    .long    4
    .long    8
    .skip 6912








    # end of global data section
    #-----------------------------------------

    .end
##################################################
