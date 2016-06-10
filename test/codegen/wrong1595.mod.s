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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 75 of <array 57 of <array 89 of <array 51 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 52 of <array 48 of <array 43 of <array 13 of <array 69 of <int>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v1 <- t1
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t2
    jmp     l_f0_exit              
l_f0_3_while_cond:
    jmp     l_f0_2                  #   5:     goto   2
    movl    $97, %eax               #   6:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #   7:     goto   3_while_cond
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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 52 of <array 48 of <array 43 of <array 13 of <array 69 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 2 of <array 75 of <array 57 of <array 89 of <array 51 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 52 of <array 48 of <array 43 of <array 13 of <array 69 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 75 of <array 57 of <array 89 of <array 51 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t7       <char> %ebp-34 ]
    #    -35(%ebp)   1  [ $t8       <char> %ebp-35 ]
    #    -36(%ebp)   1  [ $t9       <bool> %ebp-36 ]
    #   -38808512(%ebp)  38808474  [ $v1       <array 2 of <array 75 of <array 57 of <array 89 of <array 51 of <char>>>>>> %ebp-38808512 ]
    #   -423901400(%ebp)  385092888  [ $v2       <array 52 of <array 48 of <array 43 of <array 13 of <array 69 of <int>>>>>> %ebp-423901400 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $423901388, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $105975347, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-38808512(%ebp)      # local array 'v1': 5 dimensions
    movl    $2,-38808508(%ebp)      #   dimension 1: 2 elements
    movl    $75,-38808504(%ebp)     #   dimension 2: 75 elements
    movl    $57,-38808500(%ebp)     #   dimension 3: 57 elements
    movl    $89,-38808496(%ebp)     #   dimension 4: 89 elements
    movl    $51,-38808492(%ebp)     #   dimension 5: 51 elements
    movl    $5,-423901400(%ebp)     # local array 'v2': 5 dimensions
    movl    $52,-423901396(%ebp)    #   dimension 1: 52 elements
    movl    $48,-423901392(%ebp)    #   dimension 2: 48 elements
    movl    $43,-423901388(%ebp)    #   dimension 3: 43 elements
    movl    $13,-423901384(%ebp)    #   dimension 4: 13 elements
    movl    $69,-423901380(%ebp)    #   dimension 5: 69 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t1
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    leal    -423901400(%ebp), %eax  #   3:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  3 <- t2
    pushl   %eax                   
    leal    -38808512(%ebp), %eax   #   5:     &()    t3 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  2 <- t3
    pushl   %eax                   
    movl    $1, %eax                #   7:     param  1 <- 1
    pushl   %eax                   
    leal    -423901400(%ebp), %eax  #   8:     &()    t4 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     param  3 <- t4
    pushl   %eax                   
    leal    -38808512(%ebp), %eax   #  10:     &()    t5 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     param  2 <- t5
    pushl   %eax                   
    jmp     l_f1_2                  #  12:     goto   2
    jmp     l_f1_2                  #  13:     goto   2
    jmp     l_f1_2                  #  14:     goto   2
    jmp     l_f1_2                  #  15:     goto   2
    jmp     l_f1_2                  #  16:     goto   2
l_f1_2:
    movl    $1, %eax                #  18:     assign t6 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_4                  #  19:     goto   4
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -33(%ebp)         
l_f1_4:
    movzbl  -33(%ebp), %eax         #  22:     param  1 <- t6
    pushl   %eax                   
    movl    $97, %eax               #  23:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  24:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -34(%ebp)         
    movzbl  -34(%ebp), %eax         #  25:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  26:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -35(%ebp)         
l_f1_13_while_cond:
    call    dummyBOOLfunc           #  28:     call   t9 <- dummyBOOLfunc
    movb    %al, -36(%ebp)         
    movzbl  -36(%ebp), %eax         #  29:     if     t9 = 1 goto 14_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_14_while_body     
    jmp     l_f1_12                 #  30:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  32:     goto   13_while_cond
l_f1_12:

l_f1_exit:
    # epilogue
    addl    $423901388, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 52 of <array 48 of <array 43 of <array 13 of <array 69 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <ptr(4) to <array 52 of <array 48 of <array 43 of <array 13 of <array 69 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <ptr(4) to <array 52 of <array 48 of <array 43 of <array 13 of <array 69 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 75 of <array 57 of <array 89 of <array 51 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <ptr(4) to <array 52 of <array 48 of <array 43 of <array 13 of <array 69 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <ptr(4) to <array 52 of <array 48 of <array 43 of <array 13 of <array 69 of <int>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $t3       <char> %ebp-101 ]
    #   -102(%ebp)   1  [ $t4       <bool> %ebp-102 ]
    #   -103(%ebp)   1  [ $t5       <char> %ebp-103 ]
    #   -104(%ebp)   1  [ $t6       <bool> %ebp-104 ]
    #   -108(%ebp)   4  [ $t7       <ptr(4) to <array 52 of <array 48 of <array 43 of <array 13 of <array 69 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t8       <ptr(4) to <array 52 of <array 48 of <array 43 of <array 13 of <array 69 of <int>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t9       <int> %ebp-116 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 81 of <array 64 of <array 64 of <array 39 of <array 23 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #   -117(%ebp)   1  [ $v3       <bool> %ebp-117 ]
    #   -38808592(%ebp)  38808474  [ $v4       <array 2 of <array 75 of <array 57 of <array 89 of <array 51 of <char>>>>>> %ebp-38808592 ]
    #   -423901480(%ebp)  385092888  [ $v5       <array 52 of <array 48 of <array 43 of <array 13 of <array 69 of <int>>>>>> %ebp-423901480 ]
    #   -423901484(%ebp)   4  [ $v6       <int> %ebp-423901484 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $423901472, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $105975368, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-38808592(%ebp)      # local array 'v4': 5 dimensions
    movl    $2,-38808588(%ebp)      #   dimension 1: 2 elements
    movl    $75,-38808584(%ebp)     #   dimension 2: 75 elements
    movl    $57,-38808580(%ebp)     #   dimension 3: 57 elements
    movl    $89,-38808576(%ebp)     #   dimension 4: 89 elements
    movl    $51,-38808572(%ebp)     #   dimension 5: 51 elements
    movl    $5,-423901480(%ebp)     # local array 'v5': 5 dimensions
    movl    $52,-423901476(%ebp)    #   dimension 1: 52 elements
    movl    $48,-423901472(%ebp)    #   dimension 2: 48 elements
    movl    $43,-423901468(%ebp)    #   dimension 3: 43 elements
    movl    $13,-423901464(%ebp)    #   dimension 4: 13 elements
    movl    $69,-423901460(%ebp)    #   dimension 5: 69 elements

    # function body
    leal    -423901480(%ebp), %eax  #   0:     &()    t1 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t1
    pushl   %eax                   
    leal    -38808592(%ebp), %eax   #   2:     &()    t2 <- v4
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   3:     param  2 <- t2
    pushl   %eax                   
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -101(%ebp)        
    movl    $100, %eax              #   5:     if     100 # t3 goto 5
    movzbl  -101(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jne     l_f2_5                 
    jmp     l_f2_6                  #   6:     goto   6
l_f2_5:
    movl    $1, %eax                #   8:     assign t4 <- 1
    movb    %al, -102(%ebp)        
    jmp     l_f2_7                  #   9:     goto   7
l_f2_6:
    movl    $0, %eax                #  11:     assign t4 <- 0
    movb    %al, -102(%ebp)        
l_f2_7:
    movzbl  -102(%ebp), %eax        #  13:     param  1 <- t4
    pushl   %eax                   
    movl    $98, %eax               #  14:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #  15:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -103(%ebp)        
    movl    $100, %eax              #  16:     if     100 > t5 goto 1
    movzbl  -103(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #  17:     goto   2
l_f2_1:
    movl    $1, %eax                #  19:     assign t6 <- 1
    movb    %al, -104(%ebp)        
    jmp     l_f2_3                  #  20:     goto   3
l_f2_2:
    movl    $0, %eax                #  22:     assign t6 <- 0
    movb    %al, -104(%ebp)        
l_f2_3:
    movzbl  -104(%ebp), %eax        #  24:     assign v3 <- t6
    movb    %al, -117(%ebp)        
    movl    $65511, %eax            #  25:     if     65511 >= 53358 goto 10_if_true
    movl    $53358, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  26:     goto   11_if_false
l_f2_10_if_true:
    leal    -423901480(%ebp), %eax  #  28:     &()    t7 <- v5
    movl    %eax, -108(%ebp)       
    movl    $2, %eax                #  29:     param  1 <- 2
    pushl   %eax                   
    leal    -423901480(%ebp), %eax  #  30:     &()    t8 <- v5
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  31:     param  0 <- t8
    pushl   %eax                   
    call    DIM                     #  32:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    $3452, %eax             #  33:     mul    t10 <- 3452, t9
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  34:     add    t11 <- t10, 17321
    movl    $17321, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  35:     param  1 <- 3
    pushl   %eax                   
    leal    -423901480(%ebp), %eax  #  36:     &()    t12 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  37:     param  0 <- t12
    pushl   %eax                   
    call    DIM                     #  38:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  39:     mul    t14 <- t11, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  40:     add    t15 <- t14, 56843
    movl    $56843, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  41:     param  1 <- 4
    pushl   %eax                   
    leal    -423901480(%ebp), %eax  #  42:     &()    t16 <- v5
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  43:     param  0 <- t16
    pushl   %eax                   
    call    DIM                     #  44:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  45:     mul    t18 <- t15, t17
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  46:     add    t19 <- t18, 9903
    movl    $9903, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  47:     param  1 <- 5
    pushl   %eax                   
    leal    -423901480(%ebp), %eax  #  48:     &()    t20 <- v5
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  49:     param  0 <- t20
    pushl   %eax                   
    call    DIM                     #  50:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  51:     mul    t22 <- t19, t21
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  52:     add    t23 <- t22, 19339
    movl    $19339, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  53:     mul    t24 <- t23, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    -423901480(%ebp), %eax  #  54:     &()    t25 <- v5
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  55:     param  0 <- t25
    pushl   %eax                   
    call    DOFS                    #  56:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  57:     add    t27 <- t24, t26
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -108(%ebp), %eax        #  58:     add    t28 <- t7, t27
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $72500, %eax            #  59:     assign @t28 <- 72500
    movl    -96(%ebp), %edi        
    movl    %eax, (%edi)           
l_f2_15_while_cond:
    movl    $98, %eax               #  61:     if     98 > 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_16_while_body     
    jmp     l_f2_14                 #  62:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  64:     goto   15_while_cond
l_f2_14:
    movl    $71022, %eax            #  66:     if     71022 >= 93931 goto 19_if_true
    movl    $93931, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  67:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  69:     goto   18
l_f2_20_if_false:
l_f2_18:
    call    WriteLn                 #  72:     call   WriteLn
    jmp     l_f2_9                  #  73:     goto   9
l_f2_11_if_false:
l_f2_9:
l_f2_24_while_cond:
    movl    $0, %eax                #  77:     if     0 # 0 goto 25_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_25_while_body     
    jmp     l_f2_23                 #  78:     goto   23
l_f2_25_while_body:
    call    dummyINTfunc            #  80:     call   t29 <- dummyINTfunc
    movl    %eax, -100(%ebp)       
    jmp     l_f2_24_while_cond      #  81:     goto   24_while_cond
l_f2_23:

l_f2_exit:
    # epilogue
    addl    $423901472, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_5_if_false       #   2:     goto   5_if_false
    jmp     l_test_3                #   3:     goto   3
l_test_5_if_false:
l_test_3:
    call    dummyProcedure          #   6:     call   dummyProcedure
    movl    $99450, %eax            #   7:     assign v0 <- 99450
    movl    %eax, v0               
    movl    $94147, %eax            #   8:     assign v0 <- 94147
    movl    %eax, v0               
    call    dummyBOOLfunc           #   9:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #  10:     goto   1_while_cond
l_test_0:
l_test_11_while_cond:
    movl    $97, %eax               #  13:     if     97 > 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_12_while_body   
    jmp     l_test_10               #  14:     goto   10
l_test_12_while_body:
    jmp     l_test_exit            
    jmp     l_test_17_if_false      #  17:     goto   17_if_false
    jmp     l_test_15               #  18:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_11_while_cond    #  23:     goto   11_while_cond
l_test_10:
    jmp     l_test_exit            
    movl    $1, %eax                #  26:     assign v1 <- 1
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
