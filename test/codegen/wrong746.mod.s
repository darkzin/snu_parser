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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 9 of <array 9 of <array 3 of <array 8 of <char>>>>>>> %ebp+12 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   3:     return 98
    jmp     l_f0_exit              
    movl    $98, %eax               #   4:     assign v1 <- 98
    movb    %al, 8(%ebp)           
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $37588, %eax            #   7:     if     37588 <= 26323 goto 7_if_true
    movl    $26323, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   8:     goto   8_if_false
l_f0_7_if_true:
l_f0_11_while_cond:
    jmp     l_f0_11_while_cond      #  11:     goto   11_while_cond
l_f0_14_while_cond:
    jmp     l_f0_13                 #  13:     goto   13
    jmp     l_f0_14_while_cond      #  14:     goto   14_while_cond
l_f0_13:
    movl    $98, %eax               #  16:     return 98
    jmp     l_f0_exit              
    movl    $98, %eax               #  17:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_20_if_false        #  18:     goto   20_if_false
    jmp     l_f0_18                 #  19:     goto   18
l_f0_20_if_false:
l_f0_18:
    jmp     l_f0_6                  #  22:     goto   6
l_f0_8_if_false:
l_f0_6:
    call    dummyBOOLfunc           #  25:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t23      <char> %ebp-62 ]
    #    -63(%ebp)   1  [ $t5       <char> %ebp-63 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 4 of <array 5 of <array 7 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 7 of <array 2 of <array 8 of <array 2 of <char>>>>>>> %ebp+12 ]
    #    -81(%ebp)   1  [ $v3       <char> %ebp-81 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -63(%ebp)         
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   2:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   3:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $37407, %eax            #   4:     mul    t7 <- 37407, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   5:     add    t8 <- t7, 85742
    movl    $85742, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   7:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   8:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #   9:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     add    t11 <- t10, 42318
    movl    $42318, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  14:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     add    t14 <- t13, 30271
    movl    $30271, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  19:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  20:     add    t17 <- t16, 70184
    movl    $70184, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  23:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  24:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  25:     add    t21 <- v2, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -63(%ebp), %eax         #  26:     assign @t21 <- t5
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_2_while_cond:
    call    dummyBOOLfunc           #  28:     call   t22 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #  29:     if     t22 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #  31:     goto   2_while_cond
    call    dummyCHARfunc           #  32:     call   t23 <- dummyCHARfunc
    movb    %al, -62(%ebp)         
    movzbl  -62(%ebp), %eax         #  33:     assign v3 <- t23
    movb    %al, -81(%ebp)         

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
    #    -76(%ebp)   4  [ $t5       <ptr(4) to <array 6 of <array 7 of <array 2 of <array 8 of <array 2 of <char>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 4 of <array 5 of <array 7 of <array 1 of <int>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t8       <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 6 of <array 6 of <array 5 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #   -1236(%ebp)  1144  [ $v3       <array 2 of <array 4 of <array 5 of <array 7 of <array 1 of <int>>>>>> %ebp-1236 ]
    #   -2604(%ebp)  1368  [ $v4       <array 6 of <array 7 of <array 2 of <array 8 of <array 2 of <char>>>>>> %ebp-2604 ]
    #   -2608(%ebp)   4  [ $v5       <int> %ebp-2608 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2596, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $649, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1236(%ebp)          # local array 'v3': 5 dimensions
    movl    $2,-1232(%ebp)          #   dimension 1: 2 elements
    movl    $4,-1228(%ebp)          #   dimension 2: 4 elements
    movl    $5,-1224(%ebp)          #   dimension 3: 5 elements
    movl    $7,-1220(%ebp)          #   dimension 4: 7 elements
    movl    $1,-1216(%ebp)          #   dimension 5: 1 elements
    movl    $5,-2604(%ebp)          # local array 'v4': 5 dimensions
    movl    $6,-2600(%ebp)          #   dimension 1: 6 elements
    movl    $7,-2596(%ebp)          #   dimension 2: 7 elements
    movl    $2,-2592(%ebp)          #   dimension 3: 2 elements
    movl    $8,-2588(%ebp)          #   dimension 4: 8 elements
    movl    $2,-2584(%ebp)          #   dimension 5: 2 elements

    # function body
    leal    -2604(%ebp), %eax       #   0:     &()    t5 <- v4
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   1:     param  1 <- t5
    pushl   %eax                   
    leal    -1236(%ebp), %eax       #   2:     &()    t6 <- v3
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   3:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #   4:     call   t7 <- f1
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    jmp     l_f2_3_if_false         #   5:     goto   3_if_false
    jmp     l_f2_6_if_false         #   6:     goto   6_if_false
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  14:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_12_while_cond:
    jmp     l_f2_13_while_body      #  18:     goto   13_while_body
    jmp     l_f2_11                 #  19:     goto   11
l_f2_13_while_body:
    movl    $8403, %eax             #  21:     assign v5 <- 8403
    movl    %eax, -2608(%ebp)      
    movl    $100, %eax              #  22:     if     100 > 97 goto 17
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_17                
    jmp     l_f2_18                 #  23:     goto   18
l_f2_17:
    movl    $1, %eax                #  25:     assign t8 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f2_19                 #  26:     goto   19
l_f2_18:
    movl    $0, %eax                #  28:     assign t8 <- 0
    movb    %al, -85(%ebp)         
l_f2_19:
    movl    $2, %eax                #  30:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  32:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $23861, %eax            #  33:     mul    t10 <- 23861, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  34:     add    t11 <- t10, 60568
    movl    $60568, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  35:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  37:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  38:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  39:     add    t14 <- t13, 13211
    movl    $13211, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  40:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  41:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  42:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  43:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  44:     add    t17 <- t16, 52582
    movl    $52582, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  45:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  46:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  47:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  48:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  49:     add    t20 <- t19, 56847
    movl    $56847, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  50:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  51:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  52:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  53:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  54:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -85(%ebp), %eax         #  55:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_12_while_cond      #  56:     goto   12_while_cond
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $2596, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <array 9 of <array 9 of <array 3 of <array 8 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   1:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_exit            
    call    WriteLn                 #   3:     call   WriteLn
    jmp     l_test_exit            
    call    dummyProcedure          #   5:     call   dummyProcedure
    call    dummyBOOLfunc           #   6:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_10               #   7:     goto   10
l_test_10:
    leal    v1, %eax                #   9:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  1 <- t2
    pushl   %eax                   
    movl    $99, %eax               #  11:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  12:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  13:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #  14:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_3                #  15:     goto   3
l_test_3:
    call    dummyBOOLfunc           #  17:     call   t4 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 7 of <array 9 of <array 9 of <array 3 of <array 8 of <char>>>>>>
    .long    5
    .long    7
    .long    9
    .long    9
    .long    3
    .long    8
    .skip 13608








    # end of global data section
    #-----------------------------------------

    .end
##################################################
