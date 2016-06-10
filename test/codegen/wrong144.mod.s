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
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 2 of <array 10 of <array 5 of <array 2 of <int>>>>>>> %ebp+16 ]
    #    -16(%ebp)   1  [ $v4       <bool> %ebp-16 ]

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
    movl    $97, %eax               #   0:     assign v1 <- 97
    movb    %al, 8(%ebp)           
    call    dummyBOOLfunc           #   1:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   2:     if     0 = 1 goto 3_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
l_f0_3_if_true:
    movl    $98, %eax               #   5:     if     98 >= 98 goto 7
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_7                 
    jmp     l_f0_8                  #   6:     goto   8
l_f0_7:
    movl    $1, %eax                #   8:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_9                  #   9:     goto   9
l_f0_8:
    movl    $0, %eax                #  11:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f0_9:
    movzbl  -14(%ebp), %eax         #  13:     assign v4 <- t8
    movb    %al, -16(%ebp)         
    call    dummyBOOLfunc           #  14:     call   t9 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f0_2                  #  15:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -69(%ebp)   1  [ $t24      <bool> %ebp-69 ]
    #    -70(%ebp)   1  [ $t7       <char> %ebp-70 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 4 of <array 8 of <array 7 of <array 3 of <char>>>>>>> %ebp+8 ]
    #    -81(%ebp)   1  [ $v2       <char> %ebp-81 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -70(%ebp)         
    movzbl  -70(%ebp), %eax         #   1:     assign v2 <- t7
    movb    %al, -81(%ebp)         
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   4:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $93138, %eax            #   5:     mul    t9 <- 93138, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   6:     add    t10 <- t9, 49987
    movl    $49987, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  10:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     add    t13 <- t12, 40629
    movl    $40629, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  15:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     add    t16 <- t15, 5140
    movl    $5140, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  20:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     add    t19 <- t18, 36439
    movl    $36439, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  25:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  26:     add    t23 <- v1, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $99, %eax               #  27:     assign @t23 <- 99
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_3_while_cond:
    movl    $21127, %eax            #  29:     if     21127 < 84480 goto 4_while_body
    movl    $84480, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_4_while_body      
    jmp     l_f1_2                  #  30:     goto   2
l_f1_4_while_body:
    jmp     l_f1_8                  #  32:     goto   8
    jmp     l_f1_8                  #  33:     goto   8
    movl    $1, %eax                #  34:     assign t24 <- 1
    movb    %al, -69(%ebp)         
    jmp     l_f1_9                  #  35:     goto   9
l_f1_8:
    movl    $0, %eax                #  37:     assign t24 <- 0
    movb    %al, -69(%ebp)         
l_f1_9:
    movzbl  -69(%ebp), %eax         #  39:     return t24
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #  40:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
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
    #    -81(%ebp)   1  [ $t28      <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $t7       <bool> %ebp-82 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <ptr(4) to <array 9 of <array 4 of <array 8 of <array 7 of <array 3 of <char>>>>>>> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 6 of <array 10 of <array 3 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 1 of <array 10 of <array 8 of <array 5 of <int>>>>>>> %ebp+16 ]
    #    -93(%ebp)   1  [ $v4       <bool> %ebp-93 ]
    #   -6168(%ebp)  6072  [ $v5       <array 9 of <array 4 of <array 8 of <array 7 of <array 3 of <char>>>>>> %ebp-6168 ]
    #   -6172(%ebp)   4  [ $v6       <int> %ebp-6172 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $6160, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1540, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6168(%ebp)          # local array 'v5': 5 dimensions
    movl    $9,-6164(%ebp)          #   dimension 1: 9 elements
    movl    $4,-6160(%ebp)          #   dimension 2: 4 elements
    movl    $8,-6156(%ebp)          #   dimension 3: 8 elements
    movl    $7,-6152(%ebp)          #   dimension 4: 7 elements
    movl    $3,-6148(%ebp)          #   dimension 5: 3 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $33706, %eax            #   1:     if     33706 > 86701 goto 5
    movl    $86701, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #   2:     goto   6
l_f2_5:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -82(%ebp)         
    jmp     l_f2_7                  #   5:     goto   7
l_f2_6:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -82(%ebp)         
l_f2_7:
    movzbl  -82(%ebp), %eax         #   9:     assign v4 <- t7
    movb    %al, -93(%ebp)         
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_10_while_cond:
    movl    $97, %eax               #  14:     if     97 >= 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_11_while_body     
    jmp     l_f2_9                  #  15:     goto   9
l_f2_11_while_body:
    call    ReadInt                 #  17:     call   t8 <- ReadInt
    movl    %eax, -88(%ebp)        
    jmp     l_f2_16_if_false        #  18:     goto   16_if_false
    leal    -6168(%ebp), %eax       #  19:     &()    t9 <- v5
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  20:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  21:     call   t10 <- f1
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    movl    $34997, %eax            #  22:     assign v6 <- 34997
    movl    %eax, -6172(%ebp)      
    movl    $67342, %eax            #  23:     if     67342 >= 48787 goto 20
    movl    $48787, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_20                
    jmp     l_f2_21                 #  24:     goto   21
l_f2_20:
    movl    $1, %eax                #  26:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_22                 #  27:     goto   22
l_f2_21:
    movl    $0, %eax                #  29:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_22:
    movl    $2, %eax                #  31:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  32:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  33:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $16024, %eax            #  34:     mul    t13 <- 16024, t12
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  35:     add    t14 <- t13, 84465
    movl    $84465, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  36:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  37:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  38:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  39:     mul    t16 <- t14, t15
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  40:     add    t17 <- t16, 25206
    movl    $25206, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  41:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  42:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  43:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  44:     mul    t19 <- t17, t18
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  45:     add    t20 <- t19, 48186
    movl    $48186, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  46:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  47:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  48:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  49:     mul    t22 <- t20, t21
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  50:     add    t23 <- t22, 30347
    movl    $30347, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  51:     mul    t24 <- t23, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  52:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  53:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  54:     add    t26 <- t24, t25
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  55:     add    t27 <- v1, t26
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -14(%ebp), %eax         #  56:     assign @t27 <- t11
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_26_if_false        #  57:     goto   26_if_false
    jmp     l_f2_24                 #  58:     goto   24
l_f2_26_if_false:
l_f2_24:
    jmp     l_f2_14                 #  61:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_10_while_cond      #  64:     goto   10_while_cond
l_f2_9:
    call    dummyCHARfunc           #  66:     call   t28 <- dummyCHARfunc
    movb    %al, -81(%ebp)         

l_f2_exit:
    # epilogue
    addl    $6160, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <char> %ebp-29 ]

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
    jmp     l_test_2                #   0:     goto   2
    jmp     l_test_2                #   1:     goto   2
    jmp     l_test_2                #   2:     goto   2
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
l_test_8_while_cond:
    call    dummyCHARfunc           #  10:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  11:     if     100 # t1 goto 9_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_9_while_body    
    jmp     l_test_7                #  12:     goto   7
l_test_9_while_body:
    call    dummyCHARfunc           #  14:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_8_while_cond     #  15:     goto   8_while_cond
l_test_7:
l_test_13_while_cond:
    jmp     l_test_16               #  18:     goto   16
l_test_16:
    call    dummyINTfunc            #  20:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    call    ReadInt                 #  22:     call   t4 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $45425, %eax            #  23:     assign v1 <- 45425
    movl    %eax, v1               
    jmp     l_test_13_while_cond    #  24:     goto   13_while_cond
    call    ReadInt                 #  25:     call   t5 <- ReadInt
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  26:     call   t6 <- dummyCHARfunc
    movb    %al, -29(%ebp)         

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
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
