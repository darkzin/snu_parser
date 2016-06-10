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
    #    -13(%ebp)   1  [ $t32      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t33      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
    movl    $84479, %eax            #   0:     assign v0 <- 84479
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   1:     call   t32 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t33 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t32      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t33      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t34      <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 7 of <array 6 of <array 1 of <array 5 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 1 of <array 4 of <array 4 of <array 2 of <char>>>>>>> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t32 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $75669, %eax            #   1:     div    t33 <- 75669, t32
    movl    -16(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t33
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   3:     call   t34 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #   4:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t32      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t33      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t34      <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 4 of <array 7 of <array 7 of <array 4 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 4 of <array 4 of <array 10 of <array 5 of <char>>>>>>> %ebp+20 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t32 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $0, %eax                #   4:     assign t32 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v1 <- t32
    movb    %al, 12(%ebp)          
    jmp     l_f2_10                 #   7:     goto   10
    jmp     l_f2_6                  #   8:     goto   6
l_f2_10:
    jmp     l_f2_7                  #  10:     goto   7
l_f2_6:
    movl    $1, %eax                #  12:     assign t33 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_8                  #  13:     goto   8
l_f2_7:
    movl    $0, %eax                #  15:     assign t33 <- 0
    movb    %al, -14(%ebp)         
l_f2_8:
    movzbl  -14(%ebp), %eax         #  17:     return t33
    jmp     l_f2_exit              
l_f2_13_while_cond:
    jmp     l_f2_12                 #  19:     goto   12
    movl    $98, %eax               #  20:     if     98 >= 100 goto 16_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  21:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  23:     goto   15
l_f2_17_if_false:
l_f2_15:
    movl    $99, %eax               #  26:     if     99 = 100 goto 20_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  27:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  29:     goto   19
l_f2_21_if_false:
l_f2_19:
    call    dummyCHARfunc           #  32:     call   t34 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f2_13_while_cond      #  33:     goto   13_while_cond
l_f2_12:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 9 of <array 4 of <array 4 of <array 10 of <array 5 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <ptr(4) to <array 2 of <array 4 of <array 7 of <array 7 of <array 4 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 2 of <array 4 of <array 7 of <array 7 of <array 4 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 4 of <array 7 of <array 7 of <array 4 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 2 of <array 4 of <array 7 of <array 7 of <array 4 of <int>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <ptr(4) to <array 2 of <array 4 of <array 7 of <array 7 of <array 4 of <int>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $t3       <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -117(%ebp)   1  [ $t4       <char> %ebp-117 ]
    #   -118(%ebp)   1  [ $t5       <bool> %ebp-118 ]
    #   -124(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 4 of <array 7 of <array 7 of <array 4 of <int>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t7       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t8       <ptr(4) to <array 2 of <array 4 of <array 7 of <array 7 of <array 4 of <int>>>>>>> %ebp-132 ]
    #   -136(%ebp)   4  [ $t9       <int> %ebp-136 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
    movl    $98, %eax               #   6:     if     98 = 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #   7:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #   9:     goto   8
l_test_10_if_false:
l_test_8:
l_test_13_while_cond:
    jmp     l_test_12               #  13:     goto   12
    jmp     l_test_13_while_cond    #  14:     goto   13_while_cond
l_test_12:
l_test_16_while_cond:
    jmp     l_test_15               #  17:     goto   15
    jmp     l_test_16_while_cond    #  18:     goto   16_while_cond
l_test_15:
    jmp     l_test_2                #  20:     goto   2
l_test_2:
l_test_19_while_cond:
    leal    v1, %eax                #  23:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  3 <- t1
    pushl   %eax                   
    leal    v0, %eax                #  25:     &()    t2 <- v0
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  26:     param  2 <- t2
    pushl   %eax                   
    movl    $68086, %eax            #  27:     if     68086 > 60479 goto 22
    movl    $60479, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_22              
    jmp     l_test_23               #  28:     goto   23
l_test_22:
    movl    $1, %eax                #  30:     assign t3 <- 1
    movb    %al, -105(%ebp)        
    jmp     l_test_24               #  31:     goto   24
l_test_23:
    movl    $0, %eax                #  33:     assign t3 <- 0
    movb    %al, -105(%ebp)        
l_test_24:
    movzbl  -105(%ebp), %eax        #  35:     param  1 <- t3
    pushl   %eax                   
    call    dummyCHARfunc           #  36:     call   t4 <- dummyCHARfunc
    movb    %al, -117(%ebp)        
    movzbl  -117(%ebp), %eax        #  37:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  38:     call   t5 <- f2
    addl    $16, %esp              
    movb    %al, -118(%ebp)        
    movzbl  -118(%ebp), %eax        #  39:     if     t5 = 1 goto 20_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_20_while_body   
    jmp     l_test_18               #  40:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  42:     goto   19_while_cond
l_test_18:
    jmp     l_test_exit            
    leal    v0, %eax                #  45:     &()    t6 <- v0
    movl    %eax, -124(%ebp)       
    movl    $36945, %eax            #  46:     add    t7 <- 36945, 68939
    movl    $68939, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $2, %eax                #  47:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  48:     &()    t8 <- v0
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  49:     param  0 <- t8
    pushl   %eax                   
    call    DIM                     #  50:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    -128(%ebp), %eax        #  51:     mul    t10 <- t7, t9
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  52:     add    t11 <- t10, 53411
    movl    $53411, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  53:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  54:     &()    t12 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  55:     param  0 <- t12
    pushl   %eax                   
    call    DIM                     #  56:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  57:     mul    t14 <- t11, t13
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $79392, %eax            #  58:     sub    t15 <- 79392, 67994
    movl    $67994, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  59:     sub    t16 <- t15, 42907
    movl    $42907, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  60:     add    t17 <- t16, 24418
    movl    $24418, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -40(%ebp), %eax         #  61:     add    t18 <- t14, t17
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  62:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  63:     &()    t19 <- v0
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  64:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  65:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  66:     mul    t21 <- t18, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  67:     add    t22 <- t21, 90135
    movl    $90135, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  68:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  69:     &()    t23 <- v0
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  70:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  71:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  72:     mul    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  73:     add    t26 <- t25, 89621
    movl    $89621, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  74:     mul    t27 <- t26, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    leal    v0, %eax                #  75:     &()    t28 <- v0
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  76:     param  0 <- t28
    pushl   %eax                   
    call    DOFS                    #  77:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    -96(%ebp), %eax         #  78:     add    t30 <- t27, t29
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -124(%ebp), %eax        #  79:     add    t31 <- t6, t30
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $82539, %eax            #  80:     assign @t31 <- 82539
    movl    -116(%ebp), %edi       
    movl    %eax, (%edi)           

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
v0:                                 # <array 2 of <array 4 of <array 7 of <array 7 of <array 4 of <int>>>>>>
    .long    5
    .long    2
    .long    4
    .long    7
    .long    7
    .long    4
    .skip 6272
v1:                                 # <array 9 of <array 4 of <array 4 of <array 10 of <array 5 of <char>>>>>>
    .long    5
    .long    9
    .long    4
    .long    4
    .long   10
    .long    5
    .skip 7200
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
