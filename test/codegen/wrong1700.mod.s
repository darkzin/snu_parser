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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 56 of <array 2 of <array 33 of <array 88 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t5 >= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $98, %eax               #   5:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #   8:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     if     t6 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_7                  #  10:     goto   7
l_f0_10:
    jmp     l_f0_7                  #  12:     goto   7
    movl    $1, %eax                #  13:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_8                  #  14:     goto   8
l_f0_7:
    movl    $0, %eax                #  16:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f0_8:
    movzbl  -15(%ebp), %eax         #  18:     assign v3 <- t7
    movb    %al, -21(%ebp)         
l_f0_12_while_cond:
    movl    $99, %eax               #  20:     if     99 < 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_13_while_body     
    jmp     l_f0_11                 #  21:     goto   11
l_f0_13_while_body:
    movl    $85319, %eax            #  23:     assign v0 <- 85319
    movl    %eax, 8(%ebp)          
    movl    $3375, %eax             #  24:     div    t8 <- 3375, 52703
    movl    $52703, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $33723, %eax            #  25:     if     33723 >= t8 goto 17_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  26:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  28:     goto   16
l_f0_18_if_false:
l_f0_16:
    jmp     l_f0_12_while_cond      #  31:     goto   12_while_cond
l_f0_11:

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
    #    -77(%ebp)   1  [ $t26      <bool> %ebp-77 ]
    #    -78(%ebp)   1  [ $t27      <char> %ebp-78 ]
    #    -84(%ebp)   4  [ $t5       <ptr(4) to <array 56 of <array 2 of <array 33 of <array 88 of <array 3 of <int>>>>>>> %ebp-84 ]
    #    -85(%ebp)   1  [ $t6       <char> %ebp-85 ]
    #    -92(%ebp)   4  [ $t7       <ptr(4) to <array 56 of <array 2 of <array 33 of <array 88 of <array 3 of <int>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t9       <char> %ebp-97 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 9 of <array 69 of <array 60 of <array 46 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 86 of <array 57 of <array 96 of <array 55 of <array 41 of <int>>>>>>> %ebp+16 ]
    #    -98(%ebp)   1  [ $v3       <char> %ebp-98 ]
    #   -3903100(%ebp)  3903000  [ $v4       <array 56 of <array 2 of <array 33 of <array 88 of <array 3 of <int>>>>>> %ebp-3903100 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3903088, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $975772, %ecx          
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3903100(%ebp)       # local array 'v4': 5 dimensions
    movl    $56,-3903096(%ebp)      #   dimension 1: 56 elements
    movl    $2,-3903092(%ebp)       #   dimension 2: 2 elements
    movl    $33,-3903088(%ebp)      #   dimension 3: 33 elements
    movl    $88,-3903084(%ebp)      #   dimension 4: 88 elements
    movl    $3,-3903080(%ebp)       #   dimension 5: 3 elements

    # function body
    movl    $97, %eax               #   0:     param  2 <- 97
    pushl   %eax                   
    leal    -3903100(%ebp), %eax    #   1:     &()    t5 <- v4
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   2:     param  1 <- t5
    pushl   %eax                   
    movl    $62683, %eax            #   3:     param  0 <- 62683
    pushl   %eax                   
    call    f0                      #   4:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -85(%ebp)         
    movzbl  -85(%ebp), %eax         #   5:     param  2 <- t6
    pushl   %eax                   
    leal    -3903100(%ebp), %eax    #   6:     &()    t7 <- v4
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   7:     param  1 <- t7
    pushl   %eax                   
    call    dummyINTfunc            #   8:     call   t8 <- dummyINTfunc
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   9:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  10:     call   t9 <- f0
    addl    $12, %esp              
    movb    %al, -97(%ebp)         
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $82538, %eax            #  14:     mul    t11 <- 82538, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t12 <- t11, 79800
    movl    $79800, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  19:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     add    t15 <- t14, 16270
    movl    $16270, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  24:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     add    t18 <- t17, 58703
    movl    $58703, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  29:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  30:     add    t21 <- t20, 2329
    movl    $2329, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  31:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  32:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  33:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  34:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  35:     add    t25 <- v1, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -97(%ebp), %eax         #  36:     assign @t25 <- t9
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  37:     call   t26 <- dummyBOOLfunc
    movb    %al, -77(%ebp)         
    jmp     l_f1_4_if_false         #  38:     goto   4_if_false
l_f1_6_while_cond:
    movl    $98, %eax               #  40:     if     98 > 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #  41:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  43:     goto   6_while_cond
l_f1_5:
    call    dummyCHARfunc           #  45:     call   t27 <- dummyCHARfunc
    movb    %al, -78(%ebp)         
l_f1_11_while_cond:
    movl    $100, %eax              #  47:     if     100 > 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_12_while_body     
    jmp     l_f1_10                 #  48:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  50:     goto   11_while_cond
l_f1_10:
    movl    $76824, %eax            #  52:     if     76824 <= 30556 goto 15_if_true
    movl    $30556, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  53:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  55:     goto   14
l_f1_16_if_false:
l_f1_14:
    jmp     l_f1_2                  #  58:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $3903088, %esp          # remove locals
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
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 78 of <array 53 of <array 63 of <array 67 of <array 98 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 67 of <array 60 of <array 52 of <array 46 of <array 41 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -101(%ebp)   1  [ $v4       <char> %ebp-101 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   1:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   2:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $82829, %eax            #   3:     mul    t6 <- 82829, t5
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    $29728, %eax            #   4:     div    t7 <- 29728, 14647
    movl    $14647, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   5:     div    t8 <- t7, 36794
    movl    $36794, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #   6:     add    t9 <- t6, t8
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -100(%ebp), %eax        #  10:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t12 <- t11, 46331
    movl    $46331, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t15 <- t14, 45233
    movl    $45233, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  20:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     add    t18 <- t17, 5516
    movl    $5516, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  25:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t22 <- v1, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $99, %eax               #  27:     assign @t22 <- 99
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $75924, %eax            #  28:     sub    t23 <- 75924, 55056
    movl    $55056, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  29:     sub    t24 <- t23, 57570
    movl    $57570, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  30:     sub    t25 <- t24, 32234
    movl    $32234, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  31:     sub    t26 <- t25, 77374
    movl    $77374, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  32:     return t26
    jmp     l_f2_exit              
    movl    $52427, %eax            #  33:     if     52427 # 73880 goto 3_if_true
    movl    $73880, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #  34:     goto   4_if_false
l_f2_3_if_true:
    movl    $100, %eax              #  36:     assign v4 <- 100
    movb    %al, -101(%ebp)        
    jmp     l_f2_2                  #  37:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 56 of <array 2 of <array 33 of <array 88 of <array 3 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 56 of <array 2 of <array 33 of <array 88 of <array 3 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]

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
    movl    $99, %eax               #   0:     param  2 <- 99
    pushl   %eax                   
    leal    v1, %eax                #   1:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t0
    pushl   %eax                   
    movl    $13124, %eax            #   3:     param  0 <- 13124
    pushl   %eax                   
    call    f0                      #   4:     call   t1 <- f0
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     assign v0 <- t1
    movb    %al, v0                
    movl    $98, %eax               #   6:     if     98 >= 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   7:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_5                #  10:     goto   5
    jmp     l_test_6_while_cond     #  11:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    movl    $99, %eax               #  14:     param  2 <- 99
    pushl   %eax                   
    leal    v1, %eax                #  15:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  1 <- t2
    pushl   %eax                   
    movl    $52099, %eax            #  17:     param  0 <- 52099
    pushl   %eax                   
    call    f0                      #  18:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movl    $99, %eax               #  19:     if     99 < 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #  20:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  22:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_1                #  25:     goto   1
l_test_3_if_false:
l_test_1:
l_test_15_while_cond:
    call    dummyBOOLfunc           #  29:     call   t4 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  30:     if     t4 = 1 goto 16_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_16_while_body   
    jmp     l_test_14               #  31:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  33:     goto   15_while_cond
l_test_14:

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

    # scope: test
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 56 of <array 2 of <array 33 of <array 88 of <array 3 of <int>>>>>>
    .long    5
    .long   56
    .long    2
    .long   33
    .long   88
    .long    3
    .skip 3902976








    # end of global data section
    #-----------------------------------------

    .end
##################################################
