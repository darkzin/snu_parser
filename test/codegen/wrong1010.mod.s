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
    #    -13(%ebp)   1  [ $t28      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t29      <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 14 of <array 97 of <array 87 of <array 56 of <array 76 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 88 of <array 42 of <array 33 of <array 93 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 62 of <array 82 of <array 74 of <array 30 of <array 37 of <int>>>>>>> %ebp+20 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    jmp     l_f0_1                  #   0:     goto   1
l_f0_1:
    movl    $1, %eax                #   2:     assign t28 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t28 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     return t28
    jmp     l_f0_exit              
    movl    $99, %eax               #   7:     assign v4 <- 99
    movb    %al, -15(%ebp)         
l_f0_8_while_cond:
    call    dummyCHARfunc           #   9:     call   t29 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  10:     if     98 >= t29 goto 9_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_9_while_body      
    jmp     l_f0_7                  #  11:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  13:     goto   8_while_cond
l_f0_7:

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
    #    -16(%ebp)   4  [ $t28      <ptr(4) to <array 62 of <array 82 of <array 74 of <array 30 of <array 37 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t29      <ptr(4) to <array 2 of <array 88 of <array 42 of <array 33 of <array 93 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t30      <ptr(4) to <array 14 of <array 97 of <array 87 of <array 56 of <array 76 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t31      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t32      <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t33      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t34      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t35      <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t36      <char> %ebp-38 ]
    #    -39(%ebp)   1  [ $t37      <bool> %ebp-39 ]
    #    -40(%ebp)   1  [ $v0       <bool> %ebp-40 ]
    #   -502829440(%ebp)  502829400  [ $v1       <array 14 of <array 97 of <array 87 of <array 56 of <array 76 of <char>>>>>> %ebp-502829440 ]
    #   -593573656(%ebp)  90744216  [ $v2       <array 2 of <array 88 of <array 42 of <array 33 of <array 93 of <int>>>>>> %ebp-593573656 ]
    #   2030994576(%ebp)  1670399064  [ $v3       <array 62 of <array 82 of <array 74 of <array 30 of <array 37 of <int>>>>>> %ebp+2030994576 ]
    #   2030994572(%ebp)   4  [ $v4       <int> %ebp+2030994572 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-2030994584, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $565993178, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-502829440(%ebp)     # local array 'v1': 5 dimensions
    movl    $14,-502829436(%ebp)    #   dimension 1: 14 elements
    movl    $97,-502829432(%ebp)    #   dimension 2: 97 elements
    movl    $87,-502829428(%ebp)    #   dimension 3: 87 elements
    movl    $56,-502829424(%ebp)    #   dimension 4: 56 elements
    movl    $76,-502829420(%ebp)    #   dimension 5: 76 elements
    movl    $5,-593573656(%ebp)     # local array 'v2': 5 dimensions
    movl    $2,-593573652(%ebp)     #   dimension 1: 2 elements
    movl    $88,-593573648(%ebp)    #   dimension 2: 88 elements
    movl    $42,-593573644(%ebp)    #   dimension 3: 42 elements
    movl    $33,-593573640(%ebp)    #   dimension 4: 33 elements
    movl    $93,-593573636(%ebp)    #   dimension 5: 93 elements
    movl    $5,2030994576(%ebp)     # local array 'v3': 5 dimensions
    movl    $62,2030994580(%ebp)    #   dimension 1: 62 elements
    movl    $82,2030994584(%ebp)    #   dimension 2: 82 elements
    movl    $74,2030994588(%ebp)    #   dimension 3: 74 elements
    movl    $30,2030994592(%ebp)    #   dimension 4: 30 elements
    movl    $37,2030994596(%ebp)    #   dimension 5: 37 elements

    # function body
    leal    2030994576(%ebp), %eax  #   0:     &()    t28 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t28
    pushl   %eax                   
    leal    -593573656(%ebp), %eax  #   2:     &()    t29 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t29
    pushl   %eax                   
    movl    $52346, %eax            #   4:     param  1 <- 52346
    pushl   %eax                   
    leal    -502829440(%ebp), %eax  #   5:     &()    t30 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t30
    pushl   %eax                   
    call    f0                      #   7:     call   t31 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   8:     if     t31 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_4                 
    jmp     l_f1_2                  #   9:     goto   2
l_f1_4:
    movl    $1, %eax                #  11:     assign t32 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_3                  #  12:     goto   3
l_f1_2:
    movl    $0, %eax                #  14:     assign t32 <- 0
    movb    %al, -26(%ebp)         
l_f1_3:
    movzbl  -26(%ebp), %eax         #  16:     assign v0 <- t32
    movb    %al, -40(%ebp)         
    movl    $86650, %eax            #  17:     sub    t33 <- 86650, 381
    movl    $381, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     sub    t34 <- t33, 51163
    movl    $51163, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     assign v4 <- t34
    movl    %eax, 2030994572(%ebp) 
    call    dummyCHARfunc           #  20:     call   t35 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    call    dummyCHARfunc           #  21:     call   t36 <- dummyCHARfunc
    movb    %al, -38(%ebp)         
    movzbl  -37(%ebp), %eax         #  22:     if     t35 >= t36 goto 7
    movzbl  -38(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_7                 
    jmp     l_f1_8                  #  23:     goto   8
l_f1_7:
    movl    $1, %eax                #  25:     assign t37 <- 1
    movb    %al, -39(%ebp)         
    jmp     l_f1_9                  #  26:     goto   9
l_f1_8:
    movl    $0, %eax                #  28:     assign t37 <- 0
    movb    %al, -39(%ebp)         
l_f1_9:
    movzbl  -39(%ebp), %eax         #  30:     return t37
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $-2030994584, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t28      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t29      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t30      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t31      <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 22 of <array 17 of <array 45 of <array 87 of <array 23 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t28 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t28
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   2:     call   t29 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t29 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_3                  #   4:     goto   3
l_f2_5:
    movl    $1, %eax                #   6:     assign t30 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $0, %eax                #   9:     assign t30 <- 0
    movb    %al, -15(%ebp)         
l_f2_4:
    movzbl  -15(%ebp), %eax         #  11:     assign v1 <- t30
    movb    %al, 12(%ebp)          
    call    dummyINTfunc            #  12:     call   t31 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 22 of <array 17 of <array 45 of <array 87 of <array 23 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 22 of <array 17 of <array 45 of <array 87 of <array 23 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 22 of <array 17 of <array 45 of <array 87 of <array 23 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <ptr(4) to <array 22 of <array 17 of <array 45 of <array 87 of <array 23 of <int>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t2       <bool> %ebp-61 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 22 of <array 17 of <array 45 of <array 87 of <array 23 of <int>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t27      <bool> %ebp-93 ]
    #    -94(%ebp)   1  [ $t3       <char> %ebp-94 ]
    #   -100(%ebp)   4  [ $t4       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t5       <ptr(4) to <array 22 of <array 17 of <array 45 of <array 87 of <array 23 of <int>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t6       <ptr(4) to <array 22 of <array 17 of <array 45 of <array 87 of <array 23 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t7       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <int> %ebp-120 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $108, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $27, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    leal    v0, %eax                #   1:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t0
    pushl   %eax                   
    jmp     l_test_3                #   3:     goto   3
    jmp     l_test_3                #   4:     goto   3
    jmp     l_test_3                #   5:     goto   3
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_4                #   7:     goto   4
l_test_3:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_4:
    movzbl  -17(%ebp), %eax         #  11:     param  1 <- t1
    pushl   %eax                   
    jmp     l_test_10               #  12:     goto   10
    jmp     l_test_10               #  13:     goto   10
l_test_10:
    jmp     l_test_8                #  15:     goto   8
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_test_9                #  17:     goto   9
l_test_8:
    movl    $0, %eax                #  19:     assign t2 <- 0
    movb    %al, -61(%ebp)         
l_test_9:
    movzbl  -61(%ebp), %eax         #  21:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  22:     call   t3 <- f2
    addl    $12, %esp              
    movb    %al, -94(%ebp)         
    movl    $58733, %eax            #  23:     add    t4 <- 58733, 85780
    movl    $85780, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    leal    v0, %eax                #  24:     &()    t5 <- v0
    movl    %eax, -104(%ebp)       
    movl    $2, %eax                #  25:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  26:     &()    t6 <- v0
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  27:     param  0 <- t6
    pushl   %eax                   
    call    DIM                     #  28:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    $659, %eax              #  29:     mul    t8 <- 659, t7
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  30:     add    t9 <- t8, 60245
    movl    $60245, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $3, %eax                #  31:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  32:     &()    t10 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  34:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -120(%ebp), %eax        #  35:     mul    t12 <- t9, t11
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  36:     add    t13 <- t12, 23907
    movl    $23907, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  37:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  38:     &()    t14 <- v0
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  39:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  40:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  41:     mul    t16 <- t13, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  42:     add    t17 <- t16, 93953
    movl    $93953, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  43:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  44:     &()    t18 <- v0
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  45:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  46:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  47:     mul    t20 <- t17, t19
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  48:     add    t21 <- t20, 83887
    movl    $83887, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  49:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    leal    v0, %eax                #  50:     &()    t23 <- v0
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  51:     param  0 <- t23
    pushl   %eax                   
    call    DOFS                    #  52:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  53:     add    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -104(%ebp), %eax        #  54:     add    t26 <- t5, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -100(%ebp), %eax        #  55:     assign @t26 <- t4
    movl    -92(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_test_15               #  56:     goto   15
    jmp     l_test_16               #  57:     goto   16
l_test_15:
    movl    $1, %eax                #  59:     assign t27 <- 1
    movb    %al, -93(%ebp)         
    jmp     l_test_17               #  60:     goto   17
l_test_16:
    movl    $0, %eax                #  62:     assign t27 <- 0
    movb    %al, -93(%ebp)         
l_test_17:
    movzbl  -93(%ebp), %eax         #  64:     assign v2 <- t27
    movb    %al, v2                

l_test_exit:
    # epilogue
    addl    $108, %esp              # remove locals
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
v0:                                 # <array 22 of <array 17 of <array 45 of <array 87 of <array 23 of <int>>>>>>
    .long    5
    .long   22
    .long   17
    .long   45
    .long   87
    .long   23
    .skip 134707320
v1:                                 # <int>
    .skip    4
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
