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
    #    -13(%ebp)   1  [ $t30      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t31      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t32      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t33      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t34      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t35      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t36      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t37      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t38      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t39      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t40      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t41      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t42      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t43      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t44      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t45      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t46      <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 8 of <array 10 of <array 4 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 9 of <array 6 of <array 4 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 6 of <array 10 of <array 5 of <array 3 of <array 6 of <char>>>>>>> %ebp+20 ]
    #    -84(%ebp)   4  [ $v6       <int> %ebp-84 ]

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
    movl    $1, %eax                #   0:     assign v3 <- 1
    movb    %al, 12(%ebp)          
    movl    $1, %eax                #   1:     assign v3 <- 1
    movb    %al, 12(%ebp)          
l_f0_3_while_cond:
    call    dummyBOOLfunc           #   3:     call   t30 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_8_if_false         #   4:     goto   8_if_false
    jmp     l_f0_6                  #   5:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  10:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $50530, %eax            #  11:     mul    t32 <- 50530, t31
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t33 <- t32, 59001
    movl    $59001, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  16:     mul    t35 <- t33, t34
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     add    t36 <- t35, 9851
    movl    $9851, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t37 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  21:     mul    t38 <- t36, t37
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     add    t39 <- t38, 29482
    movl    $29482, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  26:     mul    t41 <- t39, t40
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  27:     add    t42 <- t41, 48843
    movl    $48843, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  28:     mul    t43 <- t42, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  29:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  30:     call   t44 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  31:     add    t45 <- t43, t44
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  32:     add    t46 <- v2, t45
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $51310, %eax            #  33:     assign @t46 <- 51310
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $30073, %eax            #  34:     if     30073 < 51642 goto 11_if_true
    movl    $51642, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  35:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  37:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_16_if_false        #  40:     goto   16_if_false
    jmp     l_f0_14                 #  41:     goto   14
l_f0_16_if_false:
l_f0_14:
l_f0_18_while_cond:
    movl    $24391, %eax            #  45:     if     24391 < 47040 goto 19_while_body
    movl    $47040, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_19_while_body     
    jmp     l_f0_17                 #  46:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  48:     goto   18_while_cond
l_f0_17:
    movl    $53625, %eax            #  50:     return 53625
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  51:     goto   3_while_cond

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
    #    -13(%ebp)   1  [ $t30      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t31      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t32      <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
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
    call    dummyBOOLfunc           #   0:     call   t30 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 > 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_2                 
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $1, %eax                #   4:     assign t31 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $0, %eax                #   7:     assign t31 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v4 <- t31
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  10:     call   t32 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t30      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t31      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t32      <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 3 of <array 2 of <array 6 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 8 of <array 6 of <array 2 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 5 of <array 3 of <array 3 of <array 1 of <char>>>>>>> %ebp+16 ]
    #    -16(%ebp)   1  [ $v5       <char> %ebp-16 ]

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
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t30 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t30 # 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
l_f2_6_while_cond:
    jmp     l_f2_9                  #   9:     goto   9
    jmp     l_f2_9                  #  10:     goto   9
l_f2_9:
    movl    $1, %eax                #  12:     assign t31 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_11                 #  13:     goto   11
    movl    $0, %eax                #  14:     assign t31 <- 0
    movb    %al, -14(%ebp)         
l_f2_11:
    movzbl  -14(%ebp), %eax         #  16:     if     t31 # 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #  17:     goto   5
l_f2_7_while_body:
    movl    $100, %eax              #  19:     assign v5 <- 100
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  20:     call   t32 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f2_6_while_cond       #  21:     goto   6_while_cond
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <ptr(4) to <array 6 of <array 10 of <array 5 of <array 3 of <array 6 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <ptr(4) to <array 6 of <array 10 of <array 5 of <array 3 of <array 6 of <char>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t2       <char> %ebp-61 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <ptr(4) to <array 6 of <array 10 of <array 5 of <array 3 of <array 6 of <char>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <ptr(4) to <array 6 of <array 10 of <array 5 of <array 3 of <array 6 of <char>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $t3       <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 10 of <array 5 of <array 3 of <array 6 of <char>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 9 of <array 6 of <array 4 of <array 3 of <bool>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 8 of <array 10 of <array 4 of <array 8 of <int>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t7       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t8       <ptr(4) to <array 6 of <array 10 of <array 5 of <array 3 of <array 6 of <char>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t9       <ptr(4) to <array 6 of <array 10 of <array 5 of <array 3 of <array 6 of <char>>>>>>> %ebp-132 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    call    dummyINTfunc            #   4:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $6875, %eax             #   8:     assign v0 <- 6875
    movl    %eax, v0               
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movl    $97, %eax               #  10:     if     97 > t2 goto 6
    movzbl  -61(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_6               
    jmp     l_test_7                #  11:     goto   7
l_test_6:
    movl    $1, %eax                #  13:     assign t3 <- 1
    movb    %al, -105(%ebp)        
    jmp     l_test_8                #  14:     goto   8
l_test_7:
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -105(%ebp)        
l_test_8:
    movzbl  -105(%ebp), %eax        #  18:     assign v1 <- t3
    movb    %al, v1                
    leal    v4, %eax                #  19:     &()    t4 <- v4
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  20:     param  3 <- t4
    pushl   %eax                   
    leal    v3, %eax                #  21:     &()    t5 <- v3
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  22:     param  2 <- t5
    pushl   %eax                   
    movl    $1, %eax                #  23:     param  1 <- 1
    pushl   %eax                   
    leal    v2, %eax                #  24:     &()    t6 <- v2
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  25:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  26:     call   t7 <- f0
    addl    $16, %esp              
    movl    %eax, -124(%ebp)       
    jmp     l_test_exit            
l_test_13_while_cond:
    movl    $97, %eax               #  29:     if     97 < 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_17_if_true      
    jmp     l_test_18_if_false      #  30:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  32:     goto   16
l_test_18_if_false:
l_test_16:
    leal    v4, %eax                #  35:     &()    t8 <- v4
    movl    %eax, -128(%ebp)       
    movl    $2, %eax                #  36:     param  1 <- 2
    pushl   %eax                   
    leal    v4, %eax                #  37:     &()    t9 <- v4
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  38:     param  0 <- t9
    pushl   %eax                   
    call    DIM                     #  39:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $79381, %eax            #  40:     mul    t11 <- 79381, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  41:     add    t12 <- t11, 61804
    movl    $61804, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  42:     param  1 <- 3
    pushl   %eax                   
    leal    v4, %eax                #  43:     &()    t13 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  44:     param  0 <- t13
    pushl   %eax                   
    call    DIM                     #  45:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  46:     mul    t15 <- t12, t14
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  47:     add    t16 <- t15, 51950
    movl    $51950, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  48:     param  1 <- 4
    pushl   %eax                   
    leal    v4, %eax                #  49:     &()    t17 <- v4
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  50:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  51:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  52:     mul    t19 <- t16, t18
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  53:     add    t20 <- t19, 79259
    movl    $79259, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  54:     param  1 <- 5
    pushl   %eax                   
    leal    v4, %eax                #  55:     &()    t21 <- v4
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  56:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  57:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  58:     mul    t23 <- t20, t22
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  59:     add    t24 <- t23, 3917
    movl    $3917, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  60:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    leal    v4, %eax                #  61:     &()    t26 <- v4
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  62:     param  0 <- t26
    pushl   %eax                   
    call    DOFS                    #  63:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  64:     add    t28 <- t25, t27
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -128(%ebp), %eax        #  65:     add    t29 <- t8, t28
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $97, %eax               #  66:     assign @t29 <- 97
    movl    -104(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_test_13_while_cond    #  67:     goto   13_while_cond

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 2 of <array 8 of <array 10 of <array 4 of <array 8 of <int>>>>>>
    .long    5
    .long    2
    .long    8
    .long   10
    .long    4
    .long    8
    .skip 20480
v3:                                 # <array 2 of <array 9 of <array 6 of <array 4 of <array 3 of <bool>>>>>>
    .long    5
    .long    2
    .long    9
    .long    6
    .long    4
    .long    3
    .skip 1296
v4:                                 # <array 6 of <array 10 of <array 5 of <array 3 of <array 6 of <char>>>>>>
    .long    5
    .long    6
    .long   10
    .long    5
    .long    3
    .long    6
    .skip 5400
v5:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
