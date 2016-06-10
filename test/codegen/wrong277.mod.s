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
    #    -13(%ebp)   1  [ $t35      <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 7 of <array 5 of <array 10 of <array 7 of <char>>>>>>> %ebp+8 ]

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
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t35 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_7_while_cond:
    jmp     l_f0_7_while_cond       #   4:     goto   7_while_cond
    movl    $99, %eax               #   5:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_exit              
    jmp     l_f0_1                  #   8:     goto   1
l_f0_1:
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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 5 of <array 2 of <array 9 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -13(%ebp)   1  [ $v3       <char> %ebp-13 ]

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
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    movl    $97, %eax               #   2:     if     97 >= 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   3:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   5:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $97, %eax               #   8:     assign v3 <- 97
    movb    %al, -13(%ebp)         
    jmp     l_f1_2                  #   9:     goto   2
l_f1_2:

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
    #    -16(%ebp)   4  [ $t35      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t36      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t37      <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 10 of <array 7 of <array 7 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 6 of <array 7 of <array 1 of <array 4 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 8 of <array 10 of <array 6 of <array 9 of <int>>>>>>> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t35 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   1:     call   t36 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   2:     call   t37 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   3:     return t37
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <array 8 of <array 10 of <array 6 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 5 of <array 10 of <array 7 of <array 7 of <array 5 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t12      <ptr(4) to <array 7 of <array 8 of <array 10 of <array 6 of <array 9 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <ptr(4) to <array 7 of <array 8 of <array 10 of <array 6 of <array 9 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <ptr(4) to <array 7 of <array 8 of <array 10 of <array 6 of <array 9 of <int>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 6 of <array 7 of <array 1 of <array 4 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <ptr(4) to <array 7 of <array 8 of <array 10 of <array 6 of <array 9 of <int>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <ptr(4) to <array 7 of <array 8 of <array 10 of <array 6 of <array 9 of <int>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 10 of <array 7 of <array 7 of <array 5 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t30      <ptr(4) to <array 7 of <array 8 of <array 10 of <array 6 of <array 9 of <int>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t32      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t33      <int> %ebp-124 ]
    #   -125(%ebp)   1  [ $t34      <bool> %ebp-125 ]
    #   -132(%ebp)   4  [ $t4       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t5       <int> %ebp-136 ]
    #   -137(%ebp)   1  [ $t6       <char> %ebp-137 ]
    #   -138(%ebp)   1  [ $t7       <bool> %ebp-138 ]
    #   -144(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <array 8 of <array 10 of <array 6 of <array 9 of <int>>>>>>> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <ptr(4) to <array 9 of <array 6 of <array 7 of <array 1 of <array 4 of <char>>>>>>> %ebp-148 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $136, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $34, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_4_while_cond:
    movl    $94083, %eax            #   3:     if     94083 # 30827 goto 5_while_body
    movl    $30827, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_5_while_body    
    jmp     l_test_3                #   4:     goto   3
l_test_5_while_body:
    call    ReadInt                 #   6:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    leal    v2, %eax                #   7:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  3 <- t1
    pushl   %eax                   
    leal    v1, %eax                #   9:     &()    t2 <- v1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  10:     param  2 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  11:     &()    t3 <- v0
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  12:     param  1 <- t3
    pushl   %eax                   
    movl    $90869, %eax            #  13:     div    t4 <- 90869, 2986
    movl    $2986, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  14:     mul    t5 <- t4, 34639
    movl    $34639, %ebx           
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  15:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  16:     call   t6 <- f2
    addl    $16, %esp              
    movb    %al, -137(%ebp)        
    jmp     l_test_4_while_cond     #  17:     goto   4_while_cond
l_test_3:
    jmp     l_test_1_while_cond     #  19:     goto   1_while_cond
l_test_0:
    jmp     l_test_10_if_true       #  21:     goto   10_if_true
    jmp     l_test_11_if_false      #  22:     goto   11_if_false
l_test_10_if_true:
    movl    $49460, %eax            #  24:     if     49460 < 80811 goto 16
    movl    $80811, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_16              
    jmp     l_test_17               #  25:     goto   17
l_test_16:
    movl    $1, %eax                #  27:     assign t7 <- 1
    movb    %al, -138(%ebp)        
    jmp     l_test_18               #  28:     goto   18
l_test_17:
    movl    $0, %eax                #  30:     assign t7 <- 0
    movb    %al, -138(%ebp)        
l_test_18:
    movzbl  -138(%ebp), %eax        #  32:     assign v3 <- t7
    movb    %al, v3                
    leal    v2, %eax                #  33:     &()    t8 <- v2
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  34:     param  3 <- t8
    pushl   %eax                   
    leal    v1, %eax                #  35:     &()    t9 <- v1
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  36:     param  2 <- t9
    pushl   %eax                   
    leal    v0, %eax                #  37:     &()    t10 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  38:     param  1 <- t10
    pushl   %eax                   
    movl    $28636, %eax            #  39:     param  0 <- 28636
    pushl   %eax                   
    call    f2                      #  40:     call   t11 <- f2
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movl    $59132, %eax            #  41:     if     59132 = 34235 goto 22_if_true
    movl    $34235, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_22_if_true      
    jmp     l_test_23_if_false      #  42:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  44:     goto   21
l_test_23_if_false:
l_test_21:
    leal    v2, %eax                #  47:     &()    t12 <- v2
    movl    %eax, -32(%ebp)        
    movl    $2, %eax                #  48:     param  1 <- 2
    pushl   %eax                   
    leal    v2, %eax                #  49:     &()    t13 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  50:     param  0 <- t13
    pushl   %eax                   
    call    DIM                     #  51:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    $36283, %eax            #  52:     mul    t15 <- 36283, t14
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  53:     add    t16 <- t15, 30341
    movl    $30341, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $3, %eax                #  54:     param  1 <- 3
    pushl   %eax                   
    leal    v2, %eax                #  55:     &()    t17 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  56:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  57:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  58:     mul    t19 <- t16, t18
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  59:     add    t20 <- t19, 19010
    movl    $19010, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  60:     param  1 <- 4
    pushl   %eax                   
    leal    v2, %eax                #  61:     &()    t21 <- v2
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  62:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  63:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  64:     mul    t23 <- t20, t22
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  65:     add    t24 <- t23, 9114
    movl    $9114, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $5, %eax                #  66:     param  1 <- 5
    pushl   %eax                   
    leal    v2, %eax                #  67:     &()    t25 <- v2
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  68:     param  0 <- t25
    pushl   %eax                   
    call    DIM                     #  69:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  70:     mul    t27 <- t24, t26
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  71:     add    t28 <- t27, 14271
    movl    $14271, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  72:     mul    t29 <- t28, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    leal    v2, %eax                #  73:     &()    t30 <- v2
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  74:     param  0 <- t30
    pushl   %eax                   
    call    DOFS                    #  75:     call   t31 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -104(%ebp), %eax        #  76:     add    t32 <- t29, t31
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -32(%ebp), %eax         #  77:     add    t33 <- t12, t32
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $37277, %eax            #  78:     assign @t33 <- 37277
    movl    -124(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_test_9                #  79:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_27               #  82:     goto   27
l_test_27:
    movl    $1, %eax                #  84:     assign t34 <- 1
    movb    %al, -125(%ebp)        
    jmp     l_test_29               #  85:     goto   29
    movl    $0, %eax                #  86:     assign t34 <- 0
    movb    %al, -125(%ebp)        
l_test_29:
    movzbl  -125(%ebp), %eax        #  88:     assign v3 <- t34
    movb    %al, v3                

l_test_exit:
    # epilogue
    addl    $136, %esp              # remove locals
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
v0:                                 # <array 5 of <array 10 of <array 7 of <array 7 of <array 5 of <int>>>>>>
    .long    5
    .long    5
    .long   10
    .long    7
    .long    7
    .long    5
    .skip 49000
v1:                                 # <array 9 of <array 6 of <array 7 of <array 1 of <array 4 of <char>>>>>>
    .long    5
    .long    9
    .long    6
    .long    7
    .long    1
    .long    4
    .skip 1512
v2:                                 # <array 7 of <array 8 of <array 10 of <array 6 of <array 9 of <int>>>>>>
    .long    5
    .long    7
    .long    8
    .long   10
    .long    6
    .long    9
    .skip 120960
v3:                                 # <bool>
    .skip    1
    .align   4
v4:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
