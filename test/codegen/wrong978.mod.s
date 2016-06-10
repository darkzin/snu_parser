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
    #    -69(%ebp)   1  [ $t6       <char> %ebp-69 ]
    #    -70(%ebp)   1  [ $t7       <char> %ebp-70 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 6 of <array 4 of <array 8 of <array 7 of <char>>>>>>> %ebp+8 ]
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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movzbl  -69(%ebp), %eax         #   1:     return t6
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t7 <- dummyCHARfunc
    movb    %al, -70(%ebp)         
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   4:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   5:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $8614, %eax             #   6:     mul    t9 <- 8614, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   7:     add    t10 <- t9, 55657
    movl    $55657, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  11:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t13 <- t12, 26274
    movl    $26274, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  16:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     add    t16 <- t15, 30545
    movl    $30545, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  21:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     add    t19 <- t18, 32412
    movl    $32412, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  23:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  25:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  26:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  27:     add    t23 <- v1, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $100, %eax              #  28:     assign @t23 <- 100
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 4 of <array 6 of <array 4 of <array 8 of <array 7 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 4 of <array 6 of <array 4 of <array 8 of <array 7 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <ptr(4) to <array 4 of <array 6 of <array 4 of <array 8 of <array 7 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <ptr(4) to <array 4 of <array 6 of <array 4 of <array 8 of <array 7 of <char>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <ptr(4) to <array 4 of <array 6 of <array 4 of <array 8 of <array 7 of <char>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <ptr(4) to <array 4 of <array 6 of <array 4 of <array 8 of <array 7 of <char>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $t33      <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t6       <ptr(4) to <array 4 of <array 6 of <array 4 of <array 8 of <array 7 of <char>>>>>>> %ebp-112 ]
    #   -113(%ebp)   1  [ $t7       <char> %ebp-113 ]
    #   -114(%ebp)   1  [ $t8       <bool> %ebp-114 ]
    #   -115(%ebp)   1  [ $t9       <bool> %ebp-115 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 10 of <array 4 of <array 9 of <array 4 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 4 of <array 8 of <array 8 of <array 3 of <char>>>>>>> %ebp+20 ]
    #   -5516(%ebp)  5400  [ $v5       <array 4 of <array 6 of <array 4 of <array 8 of <array 7 of <char>>>>>> %ebp-5516 ]
    #   -5517(%ebp)   1  [ $v6       <bool> %ebp-5517 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5508, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1377, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-5516(%ebp)          # local array 'v5': 5 dimensions
    movl    $4,-5512(%ebp)          #   dimension 1: 4 elements
    movl    $6,-5508(%ebp)          #   dimension 2: 6 elements
    movl    $4,-5504(%ebp)          #   dimension 3: 4 elements
    movl    $8,-5500(%ebp)          #   dimension 4: 8 elements
    movl    $7,-5496(%ebp)          #   dimension 5: 7 elements

    # function body
l_f1_1_while_cond:
l_f1_4_while_cond:
    jmp     l_f1_3                  #   2:     goto   3
    jmp     l_f1_4_while_cond       #   3:     goto   4_while_cond
l_f1_3:
    leal    -5516(%ebp), %eax       #   5:     &()    t6 <- v5
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   6:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   7:     call   t7 <- f0
    addl    $4, %esp               
    movb    %al, -113(%ebp)        
    movl    $97, %eax               #   8:     if     97 > 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   9:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #  11:     goto   7
l_f1_9_if_false:
l_f1_7:
l_f1_12_while_cond:
    jmp     l_f1_11                 #  15:     goto   11
    jmp     l_f1_12_while_cond      #  16:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_1_while_cond       #  18:     goto   1_while_cond
l_f1_15_while_cond:
    movl    $99, %eax               #  20:     if     99 < 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_16_while_body     
    jmp     l_f1_14                 #  21:     goto   14
l_f1_16_while_body:
    call    dummyBOOLfunc           #  23:     call   t8 <- dummyBOOLfunc
    movb    %al, -114(%ebp)        
    call    dummyBOOLfunc           #  24:     call   t9 <- dummyBOOLfunc
    movb    %al, -115(%ebp)        
    leal    -5516(%ebp), %eax       #  25:     &()    t10 <- v5
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  26:     param  1 <- 2
    pushl   %eax                   
    leal    -5516(%ebp), %eax       #  27:     &()    t11 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  29:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $40287, %eax            #  30:     mul    t13 <- 40287, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  31:     add    t14 <- t13, 80096
    movl    $80096, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  32:     param  1 <- 3
    pushl   %eax                   
    leal    -5516(%ebp), %eax       #  33:     &()    t15 <- v5
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  34:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  35:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  36:     mul    t17 <- t14, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  37:     add    t18 <- t17, 94729
    movl    $94729, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  38:     param  1 <- 4
    pushl   %eax                   
    leal    -5516(%ebp), %eax       #  39:     &()    t19 <- v5
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  40:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  41:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  42:     mul    t21 <- t18, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  43:     add    t22 <- t21, 56546
    movl    $56546, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  44:     param  1 <- 5
    pushl   %eax                   
    leal    -5516(%ebp), %eax       #  45:     &()    t23 <- v5
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  46:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  47:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -64(%ebp), %eax         #  48:     mul    t25 <- t22, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  49:     add    t26 <- t25, 33787
    movl    $33787, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  50:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    leal    -5516(%ebp), %eax       #  51:     &()    t28 <- v5
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  52:     param  0 <- t28
    pushl   %eax                   
    call    DOFS                    #  53:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  54:     add    t30 <- t27, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -16(%ebp), %eax         #  55:     add    t31 <- t10, t30
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $99, %eax               #  56:     assign @t31 <- 99
    movl    -100(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_15_while_cond      #  57:     goto   15_while_cond
l_f1_14:
l_f1_22_while_cond:
    jmp     l_f1_21                 #  60:     goto   21
    jmp     l_f1_exit              
    movl    $0, %eax                #  62:     assign v6 <- 0
    movb    %al, -5517(%ebp)       
l_f1_27_while_cond:
    jmp     l_f1_27_while_cond      #  64:     goto   27_while_cond
    call    dummyINTfunc            #  65:     call   t32 <- dummyINTfunc
    movl    %eax, -104(%ebp)       
    call    dummyBOOLfunc           #  66:     call   t33 <- dummyBOOLfunc
    movb    %al, -105(%ebp)        
    jmp     l_f1_22_while_cond      #  67:     goto   22_while_cond
l_f1_21:

l_f1_exit:
    # epilogue
    addl    $5508, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 4 of <array 4 of <array 7 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $98, %eax               #   0:     assign v3 <- 98
    movb    %al, 16(%ebp)          
l_f2_2_while_cond:
    jmp     l_f2_2_while_cond       #   2:     goto   2_while_cond
l_f2_7_while_cond:
    jmp     l_f2_7_while_cond       #   4:     goto   7_while_cond

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

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
    movl    $0, %eax                #   1:     assign v0 <- 0
    movb    %al, v0                
    movl    $1, %eax                #   2:     assign v0 <- 1
    movb    %al, v0                
l_test_7_while_cond:
    movl    $83802, %eax            #   4:     if     83802 > 20872 goto 8_while_body
    movl    $20872, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_8_while_body    
    jmp     l_test_6                #   5:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #   7:     goto   7_while_cond
l_test_6:
    jmp     l_test_1                #   9:     goto   1
l_test_1:
    call    dummyCHARfunc           #  11:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  12:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #  13:     call   WriteChar
    addl    $4, %esp               
    movl    $3308, %eax             #  14:     sub    t1 <- 3308, 61967
    movl    $61967, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #  15:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t3 <- t1, t2
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     assign v1 <- t3
    movl    %eax, v1               
    movl    $68293, %eax            #  18:     div    t4 <- 68293, 57101
    movl    $57101, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     div    t5 <- t4, 41342
    movl    $41342, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     assign v1 <- t5
    movl    %eax, v1               

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
