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
    #    -13(%ebp)   1  [ $t32      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t33      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t34      <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 91 of <array 41 of <array 20 of <array 59 of <array 39 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t32 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t33 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     assign v5 <- t33
    movb    %al, 20(%ebp)          
    jmp     l_f0_3                  #   3:     goto   3
    jmp     l_f0_3                  #   4:     goto   3
l_f0_3:
    movl    $1, %eax                #   6:     assign t34 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_5                  #   7:     goto   5
    movl    $0, %eax                #   8:     assign t34 <- 0
    movb    %al, -15(%ebp)         
l_f0_5:
    movzbl  -15(%ebp), %eax         #  10:     return t34
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t32      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t33      <ptr(4) to <array 91 of <array 41 of <array 20 of <array 59 of <array 39 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t34      <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 74 of <array 36 of <array 1 of <array 34 of <array 48 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 56 of <array 50 of <array 98 of <array 83 of <array 43 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 77 of <array 46 of <array 42 of <array 99 of <array 35 of <char>>>>>>> %ebp+20 ]
    #    -22(%ebp)   1  [ $v6       <char> %ebp-22 ]
    #   -686802528(%ebp)  686802504  [ $v7       <array 91 of <array 41 of <array 20 of <array 59 of <array 39 of <int>>>>>> %ebp-686802528 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $686802516, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $171700629, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-686802528(%ebp)     # local array 'v7': 5 dimensions
    movl    $91,-686802524(%ebp)    #   dimension 1: 91 elements
    movl    $41,-686802520(%ebp)    #   dimension 2: 41 elements
    movl    $20,-686802516(%ebp)    #   dimension 3: 20 elements
    movl    $59,-686802512(%ebp)    #   dimension 4: 59 elements
    movl    $39,-686802508(%ebp)    #   dimension 5: 39 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t32 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v6 <- t32
    movb    %al, -22(%ebp)         
l_f1_2_while_cond:
    movl    $3721, %eax             #   3:     return 3721
    jmp     l_f1_exit              
l_f1_6_while_cond:
    jmp     l_f1_5                  #   5:     goto   5
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
l_f1_9_while_cond:
    jmp     l_f1_8                  #  10:     goto   8
    jmp     l_f1_12                 #  11:     goto   12
l_f1_12:
    movl    $100, %eax              #  13:     param  3 <- 100
    pushl   %eax                   
    movl    $22369, %eax            #  14:     param  2 <- 22369
    pushl   %eax                   
    movl    $1, %eax                #  15:     param  1 <- 1
    pushl   %eax                   
    leal    -686802528(%ebp), %eax  #  16:     &()    t33 <- v7
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  0 <- t33
    pushl   %eax                   
    call    f0                      #  18:     call   t34 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
l_f1_17_while_cond:
    movl    $86190, %eax            #  20:     if     86190 >= 20020 goto 18_while_body
    movl    $20020, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_18_while_body     
    jmp     l_f1_16                 #  21:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  23:     goto   17_while_cond
l_f1_16:
    jmp     l_f1_9_while_cond       #  25:     goto   9_while_cond
l_f1_8:

l_f1_exit:
    # epilogue
    addl    $686802516, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t32      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t33      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t34      <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 74 of <array 98 of <array 49 of <array 91 of <array 2 of <char>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t32 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t32
    jmp     l_f2_exit              
l_f2_2_while_cond:
    jmp     l_f2_1                  #   3:     goto   1
l_f2_5_while_cond:
    movl    $6641, %eax             #   5:     if     6641 # 1992 goto 6_while_body
    movl    $1992, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_6_while_body      
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   8:     goto   5_while_cond
l_f2_4:
l_f2_9_while_cond:
    movl    $29731, %eax            #  11:     if     29731 >= 92860 goto 10_while_body
    movl    $92860, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_10_while_body     
    jmp     l_f2_8                  #  12:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  14:     goto   9_while_cond
l_f2_8:
l_f2_13_while_cond:
    jmp     l_f2_13_while_cond      #  17:     goto   13_while_cond
    call    dummyBOOLfunc           #  18:     call   t33 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_16                 #  19:     goto   16
l_f2_16:
    jmp     l_f2_2_while_cond       #  21:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #  23:     call   t34 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  24:     return t34
    jmp     l_f2_exit              

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
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 77 of <array 46 of <array 42 of <array 99 of <array 35 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 77 of <array 46 of <array 42 of <array 99 of <array 35 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <ptr(4) to <array 77 of <array 46 of <array 42 of <array 99 of <array 35 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 77 of <array 46 of <array 42 of <array 99 of <array 35 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 77 of <array 46 of <array 42 of <array 99 of <array 35 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <ptr(4) to <array 77 of <array 46 of <array 42 of <array 99 of <array 35 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $t3       <char> %ebp-105 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t4       <ptr(4) to <array 77 of <array 46 of <array 42 of <array 99 of <array 35 of <char>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t5       <ptr(4) to <array 56 of <array 50 of <array 98 of <array 83 of <array 43 of <int>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t6       <ptr(4) to <array 74 of <array 36 of <array 1 of <array 34 of <array 48 of <bool>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t7       <int> %ebp-132 ]
    #   -133(%ebp)   1  [ $t8       <bool> %ebp-133 ]
    #   -134(%ebp)   1  [ $t9       <char> %ebp-134 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $124, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $31, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_4_while_cond:
    movl    $98, %eax               #   2:     if     98 = 100 goto 5_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_5_while_body    
    jmp     l_test_3                #   3:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   5:     goto   4_while_cond
l_test_3:
    movl    $99, %eax               #   7:     if     99 # 99 goto 8
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_8               
    jmp     l_test_9                #   8:     goto   9
l_test_8:
    movl    $1, %eax                #  10:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_10               #  11:     goto   10
l_test_9:
    movl    $0, %eax                #  13:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  15:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
l_test_14_while_cond:
    movl    $1, %eax                #  18:     if     1 = 0 goto 15_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15_while_body   
    jmp     l_test_13               #  19:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  21:     goto   14_while_cond
l_test_13:
    call    ReadInt                 #  23:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  24:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  25:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    call    dummyINTfunc            #  27:     call   t2 <- dummyINTfunc
    movl    %eax, -64(%ebp)        
    call    dummyCHARfunc           #  28:     call   t3 <- dummyCHARfunc
    movb    %al, -105(%ebp)        
    jmp     l_test_0                #  29:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $72401, %eax            #  32:     assign v1 <- 72401
    movl    %eax, v1               
    jmp     l_test_24_if_true       #  33:     goto   24_if_true
    jmp     l_test_24_if_true       #  34:     goto   24_if_true
l_test_24_if_true:
    movl    $63772, %eax            #  36:     if     63772 <= 85075 goto 30_if_true
    movl    $85075, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_30_if_true      
    jmp     l_test_31_if_false      #  37:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_29               #  39:     goto   29
l_test_31_if_false:
l_test_29:
    leal    v4, %eax                #  42:     &()    t4 <- v4
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  43:     param  3 <- t4
    pushl   %eax                   
    leal    v3, %eax                #  44:     &()    t5 <- v3
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  45:     param  2 <- t5
    pushl   %eax                   
    movl    $57107, %eax            #  46:     param  1 <- 57107
    pushl   %eax                   
    leal    v2, %eax                #  47:     &()    t6 <- v2
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  48:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  49:     call   t7 <- f1
    addl    $16, %esp              
    movl    %eax, -132(%ebp)       
    jmp     l_test_23               #  50:     goto   23
l_test_23:
l_test_35_while_cond:
    jmp     l_test_34               #  53:     goto   34
    jmp     l_test_37               #  54:     goto   37
l_test_37:
    call    dummyBOOLfunc           #  56:     call   t8 <- dummyBOOLfunc
    movb    %al, -133(%ebp)        
    call    dummyCHARfunc           #  57:     call   t9 <- dummyCHARfunc
    movb    %al, -134(%ebp)        
    jmp     l_test_exit            
    movl    $100, %eax              #  59:     if     100 >= 100 goto 44_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_44_if_true      
    jmp     l_test_45_if_false      #  60:     goto   45_if_false
l_test_44_if_true:
    jmp     l_test_43               #  62:     goto   43
l_test_45_if_false:
l_test_43:
    jmp     l_test_47               #  65:     goto   47
l_test_47:
    leal    v4, %eax                #  67:     &()    t10 <- v4
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  68:     param  1 <- 2
    pushl   %eax                   
    leal    v4, %eax                #  69:     &()    t11 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  70:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  71:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $51606, %eax            #  72:     mul    t13 <- 51606, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  73:     add    t14 <- t13, 11351
    movl    $11351, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  74:     param  1 <- 3
    pushl   %eax                   
    leal    v4, %eax                #  75:     &()    t15 <- v4
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  76:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  77:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  78:     mul    t17 <- t14, t16
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  79:     add    t18 <- t17, 93945
    movl    $93945, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  80:     param  1 <- 4
    pushl   %eax                   
    leal    v4, %eax                #  81:     &()    t19 <- v4
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  82:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  83:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  84:     mul    t21 <- t18, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  85:     add    t22 <- t21, 81858
    movl    $81858, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  86:     param  1 <- 5
    pushl   %eax                   
    leal    v4, %eax                #  87:     &()    t23 <- v4
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  88:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  89:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  90:     mul    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  91:     add    t26 <- t25, 69476
    movl    $69476, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  92:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    leal    v4, %eax                #  93:     &()    t28 <- v4
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  94:     param  0 <- t28
    pushl   %eax                   
    call    DOFS                    #  95:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    -96(%ebp), %eax         #  96:     add    t30 <- t27, t29
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -24(%ebp), %eax         #  97:     add    t31 <- t10, t30
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $99, %eax               #  98:     assign @t31 <- 99
    movl    -116(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_test_35_while_cond    #  99:     goto   35_while_cond
l_test_34:
    jmp     l_test_exit            
l_test_56_while_cond:
    movl    $98, %eax               # 103:     if     98 > 97 goto 57_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_57_while_body   
    jmp     l_test_55               # 104:     goto   55
l_test_57_while_body:
    jmp     l_test_56_while_cond    # 106:     goto   56_while_cond
l_test_55:
    jmp     l_test_51               # 108:     goto   51
l_test_51:

l_test_exit:
    # epilogue
    addl    $124, %esp              # remove locals
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
v2:                                 # <array 74 of <array 36 of <array 1 of <array 34 of <array 48 of <bool>>>>>>
    .long    5
    .long   74
    .long   36
    .long    1
    .long   34
    .long   48
    .skip 4347648
v3:                                 # <array 56 of <array 50 of <array 98 of <array 83 of <array 43 of <int>>>>>>
    .long    5
    .long   56
    .long   50
    .long   98
    .long   83
    .long   43
    .skip -377632896
v4:                                 # <array 77 of <array 46 of <array 42 of <array 99 of <array 35 of <char>>>>>>
    .long    5
    .long   77
    .long   46
    .long   42
    .long   99
    .long   35
    .skip 515467260
v5:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
