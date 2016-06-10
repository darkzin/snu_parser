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
    #    -13(%ebp)   1  [ $t33      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t34      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t35      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t36      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t37      <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 30 of <array 76 of <array 50 of <array 7 of <array 41 of <char>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t33 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t33
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $96114, %eax            #   3:     add    t34 <- 96114, 95654
    movl    $95654, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t35 <- t34, 82348
    movl    $82348, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     sub    t36 <- t35, 32646
    movl    $32646, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     sub    t37 <- t36, 10868
    movl    $10868, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     if     t37 < 26659 goto 3_while_body
    movl    $26659, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_3_while_body      
    jmp     l_f0_1                  #   8:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  10:     goto   2_while_cond
l_f0_1:
    movl    $97, %eax               #  12:     return 97
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t33      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t34      <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t33 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 >= t33 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t34 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t34 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v1 <- t34
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #  10:     return 97
    jmp     l_f1_exit              
    movl    $97, %eax               #  11:     return 97
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t33      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t34      <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 16 of <array 48 of <array 70 of <array 4 of <array 95 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    jmp     l_f2_exit              
    jmp     l_f2_2_if_true          #   1:     goto   2_if_true
    jmp     l_f2_2_if_true          #   2:     goto   2_if_true
    jmp     l_f2_2_if_true          #   3:     goto   2_if_true
    jmp     l_f2_2_if_true          #   4:     goto   2_if_true
    jmp     l_f2_2_if_true          #   5:     goto   2_if_true
l_f2_2_if_true:
    jmp     l_f2_1                  #   7:     goto   1
l_f2_1:
l_f2_11_while_cond:
    movl    $92863, %eax            #  10:     mul    t33 <- 92863, 85702
    movl    $85702, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $84652, %eax            #  11:     if     84652 < t33 goto 12_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_12_while_body     
    jmp     l_f2_10                 #  12:     goto   10
l_f2_12_while_body:
    call    dummyBOOLfunc           #  14:     call   t34 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $76300, %eax            #  15:     param  0 <- 76300
    pushl   %eax                   
    call    WriteInt                #  16:     call   WriteInt
    addl    $4, %esp               
    movl    $40127, %eax            #  17:     if     40127 <= 23998 goto 17_if_true
    movl    $23998, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  18:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  20:     goto   16
l_f2_18_if_false:
l_f2_16:
    jmp     l_f2_11_while_cond      #  23:     goto   11_while_cond
l_f2_10:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t10      <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 30 of <array 76 of <array 50 of <array 7 of <array 41 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 30 of <array 76 of <array 50 of <array 7 of <array 41 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <ptr(4) to <array 30 of <array 76 of <array 50 of <array 7 of <array 41 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 30 of <array 76 of <array 50 of <array 7 of <array 41 of <char>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <ptr(4) to <array 30 of <array 76 of <array 50 of <array 7 of <array 41 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <ptr(4) to <array 30 of <array 76 of <array 50 of <array 7 of <array 41 of <char>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <ptr(4) to <array 30 of <array 76 of <array 50 of <array 7 of <array 41 of <char>>>>>>> %ebp-96 ]
    #    -97(%ebp)   1  [ $t3       <char> %ebp-97 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t31      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t32      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t4       <ptr(4) to <array 30 of <array 76 of <array 50 of <array 7 of <array 41 of <char>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t5       <ptr(4) to <array 30 of <array 76 of <array 50 of <array 7 of <array 41 of <char>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t6       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t7       <int> %ebp-128 ]
    #   -129(%ebp)   1  [ $t8       <char> %ebp-129 ]
    #   -130(%ebp)   1  [ $t9       <char> %ebp-130 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $120, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $30, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     if     100 = 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   3:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $99279, %eax            #   6:     if     99279 >= 84725 goto 5_if_true
    movl    $84725, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_5_if_true       
    jmp     l_test_6_if_false       #   7:     goto   6_if_false
l_test_5_if_true:
    movl    $100, %eax              #   9:     if     100 <= 98 goto 9
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_9               
    jmp     l_test_10               #  10:     goto   10
l_test_9:
    movl    $1, %eax                #  12:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_11               #  13:     goto   11
l_test_10:
    movl    $0, %eax                #  15:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_11:
    movzbl  -13(%ebp), %eax         #  17:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #  18:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    leal    v1, %eax                #  19:     &()    t2 <- v1
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  20:     param  2 <- t2
    pushl   %eax                   
    movl    $100, %eax              #  21:     param  1 <- 100
    pushl   %eax                   
    movl    $65403, %eax            #  22:     param  0 <- 65403
    pushl   %eax                   
    call    f0                      #  23:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -97(%ebp)         
    leal    v1, %eax                #  24:     &()    t4 <- v1
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  25:     param  2 <- t4
    pushl   %eax                   
    leal    v1, %eax                #  26:     &()    t5 <- v1
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  27:     param  2 <- t5
    pushl   %eax                   
    movl    $99, %eax               #  28:     param  1 <- 99
    pushl   %eax                   
    movl    $623, %eax              #  29:     mul    t6 <- 623, 98035
    movl    $98035, %ebx           
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  30:     mul    t7 <- t6, 6348
    movl    $6348, %ebx            
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  31:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  32:     call   t8 <- f0
    addl    $12, %esp              
    movb    %al, -129(%ebp)        
    movzbl  -129(%ebp), %eax        #  33:     param  1 <- t8
    pushl   %eax                   
    movl    $19065, %eax            #  34:     param  0 <- 19065
    pushl   %eax                   
    call    f0                      #  35:     call   t9 <- f0
    addl    $12, %esp              
    movb    %al, -130(%ebp)        
    call    dummyCHARfunc           #  36:     call   t10 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
l_test_18_while_cond:
    jmp     l_test_18_while_cond    #  38:     goto   18_while_cond
    jmp     l_test_4                #  39:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $98, %eax               #  42:     if     98 < 100 goto 21_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_21_if_true      
    jmp     l_test_22_if_false      #  43:     goto   22_if_false
l_test_21_if_true:
l_test_25_while_cond:
    movl    $99, %eax               #  46:     if     99 < 97 goto 26_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_26_while_body   
    jmp     l_test_24               #  47:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  49:     goto   25_while_cond
l_test_24:
    movl    $0, %eax                #  51:     assign v0 <- 0
    movb    %al, v0                
    leal    v1, %eax                #  52:     &()    t11 <- v1
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  53:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  54:     &()    t12 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  55:     param  0 <- t12
    pushl   %eax                   
    call    DIM                     #  56:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $28593, %eax            #  57:     mul    t14 <- 28593, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  58:     add    t15 <- t14, 83757
    movl    $83757, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  59:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  60:     &()    t16 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  61:     param  0 <- t16
    pushl   %eax                   
    call    DIM                     #  62:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  63:     mul    t18 <- t15, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  64:     add    t19 <- t18, 91895
    movl    $91895, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  65:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  66:     &()    t20 <- v1
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  67:     param  0 <- t20
    pushl   %eax                   
    call    DIM                     #  68:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -52(%ebp), %eax         #  69:     mul    t22 <- t19, t21
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  70:     add    t23 <- t22, 10676
    movl    $10676, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  71:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  72:     &()    t24 <- v1
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  73:     param  0 <- t24
    pushl   %eax                   
    call    DIM                     #  74:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  75:     mul    t26 <- t23, t25
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  76:     add    t27 <- t26, 65856
    movl    $65856, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  77:     mul    t28 <- t27, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    leal    v1, %eax                #  78:     &()    t29 <- v1
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  79:     param  0 <- t29
    pushl   %eax                   
    call    DOFS                    #  80:     call   t30 <- DOFS
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    -92(%ebp), %eax         #  81:     add    t31 <- t28, t30
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -20(%ebp), %eax         #  82:     add    t32 <- t11, t31
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $100, %eax              #  83:     assign @t32 <- 100
    movl    -112(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $90297, %eax            #  86:     assign v3 <- 90297
    movl    %eax, v3               
    jmp     l_test_20               #  87:     goto   20
l_test_22_if_false:
l_test_20:

l_test_exit:
    # epilogue
    addl    $120, %esp              # remove locals
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
v1:                                 # <array 30 of <array 76 of <array 50 of <array 7 of <array 41 of <char>>>>>>
    .long    5
    .long   30
    .long   76
    .long   50
    .long    7
    .long   41
    .skip 32718000
v2:                                 # <char>
    .skip    1
    .align   4
v3:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
