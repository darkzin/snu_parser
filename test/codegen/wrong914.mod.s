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
    #    -65(%ebp)   1  [ $t23      <char> %ebp-65 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 7 of <array 2 of <array 2 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 4 of <array 7 of <array 2 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #    -89(%ebp)   1  [ $v4       <bool> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $8780, %eax             #   0:     div    t5 <- 8780, 48981
    movl    $48981, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   1:     sub    t6 <- t5, 51360
    movl    $51360, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   4:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #   5:     mul    t8 <- t6, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   6:     add    t9 <- t8, 54107
    movl    $54107, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  10:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t12 <- t11, 27149
    movl    $27149, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t15 <- t14, 41075
    movl    $41075, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  20:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     add    t18 <- t17, 5812
    movl    $5812, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  24:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  25:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t22 <- v3, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $1, %eax                #  27:     assign @t22 <- 1
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  28:     call   t23 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    #    -65(%ebp)   1  [ $t23      <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 9 of <array 4 of <array 1 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 4 of <array 9 of <array 3 of <array 4 of <array 6 of <int>>>>>>> %ebp+16 ]
    #    -92(%ebp)   4  [ $v5       <int> %ebp-92 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $94238, %eax            #   2:     return 94238
    jmp     l_f1_exit              
    movl    $29797, %eax            #   3:     return 29797
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #   6:     call   t5 <- ReadInt
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   7:     div    t6 <- t5, 90800
    movl    $90800, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   8:     return t6
    jmp     l_f1_exit              
l_f1_11_while_cond:
    movl    $100, %eax              #  10:     if     100 >= 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_12_while_body     
    jmp     l_f1_10                 #  11:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  13:     goto   11_while_cond
l_f1_10:
l_f1_15_while_cond:
    movl    $48024, %eax            #  16:     if     48024 # 69938 goto 16_while_body
    movl    $69938, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_16_while_body     
    jmp     l_f1_14                 #  17:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  19:     goto   15_while_cond
l_f1_14:
    movl    $25236, %eax            #  21:     return 25236
    jmp     l_f1_exit              
    movl    $2, %eax                #  22:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  24:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $45348, %eax            #  25:     mul    t8 <- 45348, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  26:     add    t9 <- t8, 53265
    movl    $53265, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  27:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  28:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  29:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  30:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     add    t12 <- t11, 92808
    movl    $92808, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  32:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  33:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  34:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  35:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  36:     add    t15 <- t14, 41150
    movl    $41150, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  37:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  38:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  39:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  40:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  41:     add    t18 <- t17, 31569
    movl    $31569, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  42:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  43:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  44:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  45:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  46:     add    t22 <- v3, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $75808, %eax            #  47:     assign @t22 <- 75808
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $98, %eax               #  48:     if     98 <= 99 goto 21
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_21                
    jmp     l_f1_22                 #  49:     goto   22
l_f1_21:
    movl    $1, %eax                #  51:     assign t23 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f1_23                 #  52:     goto   23
l_f1_22:
    movl    $0, %eax                #  54:     assign t23 <- 0
    movb    %al, -65(%ebp)         
l_f1_23:
    movzbl  -65(%ebp), %eax         #  56:     assign v2 <- t23
    movb    %al, 8(%ebp)           
    jmp     l_f1_25                 #  57:     goto   25
l_f1_25:
    movl    $23178, %eax            #  59:     return 23178
    jmp     l_f1_exit              
    movl    $241, %eax              #  60:     assign v5 <- 241
    movl    %eax, -92(%ebp)        
    jmp     l_f1_30                 #  61:     goto   30
l_f1_30:
    jmp     l_f1_7                  #  63:     goto   7
l_f1_7:

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <ptr(4) to <array 4 of <array 9 of <array 3 of <array 4 of <array 6 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 3 of <array 9 of <array 4 of <array 1 of <array 8 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <bool> %ebp-41 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 2 of <array 8 of <array 5 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 7 of <array 4 of <array 6 of <array 2 of <int>>>>>>> %ebp+16 ]
    #   -3524(%ebp)  3480  [ $v5       <array 3 of <array 9 of <array 4 of <array 1 of <array 8 of <int>>>>>> %ebp-3524 ]
    #   -13916(%ebp)  10392  [ $v6       <array 4 of <array 9 of <array 3 of <array 4 of <array 6 of <int>>>>>> %ebp-13916 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $13904, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3476, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3524(%ebp)          # local array 'v5': 5 dimensions
    movl    $3,-3520(%ebp)          #   dimension 1: 3 elements
    movl    $9,-3516(%ebp)          #   dimension 2: 9 elements
    movl    $4,-3512(%ebp)          #   dimension 3: 4 elements
    movl    $1,-3508(%ebp)          #   dimension 4: 1 elements
    movl    $8,-3504(%ebp)          #   dimension 5: 8 elements
    movl    $5,-13916(%ebp)         # local array 'v6': 5 dimensions
    movl    $4,-13912(%ebp)         #   dimension 1: 4 elements
    movl    $9,-13908(%ebp)         #   dimension 2: 9 elements
    movl    $3,-13904(%ebp)         #   dimension 3: 3 elements
    movl    $4,-13900(%ebp)         #   dimension 4: 4 elements
    movl    $6,-13896(%ebp)         #   dimension 5: 6 elements

    # function body
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    $34413, %eax            #   1:     add    t6 <- 34413, 8178
    movl    $8178, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    leal    -13916(%ebp), %eax      #   2:     &()    t7 <- v6
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     param  2 <- t7
    pushl   %eax                   
    leal    -3524(%ebp), %eax       #   4:     &()    t8 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     param  1 <- t8
    pushl   %eax                   
    movl    $98, %eax               #   6:     if     98 > 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2                 
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $1, %eax                #   9:     assign t9 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f2_4                  #  10:     goto   4
l_f2_3:
    movl    $0, %eax                #  12:     assign t9 <- 0
    movb    %al, -41(%ebp)         
l_f2_4:
    movzbl  -41(%ebp), %eax         #  14:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  15:     call   t10 <- f1
    addl    $12, %esp              
    movl    %eax, -16(%ebp)        
    movl    -32(%ebp), %eax         #  16:     sub    t11 <- t6, t10
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     return t11
    jmp     l_f2_exit              
l_f2_7_while_cond:
    call    dummyBOOLfunc           #  19:     call   t12 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  20:     if     t12 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9                 
    jmp     l_f2_6                  #  21:     goto   6
l_f2_9:
    jmp     l_f2_6                  #  23:     goto   6
    jmp     l_f2_7_while_cond       #  24:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $13904, %esp            # remove locals
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
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
l_test_1_while_cond:
l_test_4_while_cond:
    movl    $22626, %eax            #   2:     div    t0 <- 22626, 87522
    movl    $87522, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t0 > 76776 goto 5_while_body
    movl    $76776, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_5_while_body    
    jmp     l_test_3                #   4:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   6:     goto   4_while_cond
l_test_3:
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
    movl    $98, %eax               #   9:     if     98 >= 100 goto 8
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_8               
    jmp     l_test_9                #  10:     goto   9
l_test_8:
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_10               #  13:     goto   10
l_test_9:
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_10:
    movzbl  -17(%ebp), %eax         #  17:     assign v0 <- t1
    movb    %al, v0                
    call    dummyINTfunc            #  18:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
l_test_17_while_cond:
    jmp     l_test_16               #  20:     goto   16
    jmp     l_test_17_while_cond    #  21:     goto   17_while_cond
l_test_16:
    movl    $81123, %eax            #  23:     assign v1 <- 81123
    movl    %eax, v1               
    call    dummyCHARfunc           #  24:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_12               #  25:     goto   12
l_test_12:
    jmp     l_test_exit            
    movl    $1, %eax                #  28:     if     1 = 0 goto 23_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_23_if_true      
    jmp     l_test_24_if_false      #  29:     goto   24_if_false
l_test_23_if_true:
l_test_27_while_cond:
    jmp     l_test_27_while_cond    #  32:     goto   27_while_cond
    movl    $100, %eax              #  33:     assign v2 <- 100
    movb    %al, v2                
    jmp     l_test_22               #  34:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_32_if_false      #  37:     goto   32_if_false
    jmp     l_test_33               #  38:     goto   33
l_test_33:
    jmp     l_test_exit            
    call    dummyINTfunc            #  41:     call   t4 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    jmp     l_test_30               #  42:     goto   30
l_test_32_if_false:
l_test_30:

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
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
