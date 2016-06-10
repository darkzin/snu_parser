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
    #    -13(%ebp)   1  [ $t29      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t30      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t31      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t32      <ptr(4) to <array 7 of <char>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t33      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v2       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_1_if_true          #   1:     goto   1_if_true
l_f0_1_if_true:
    movl    $6183, %eax             #   3:     assign v1 <- 6183
    movl    %eax, -32(%ebp)        
    jmp     l_f0_0                  #   4:     goto   0
l_f0_0:
l_f0_7_while_cond:
    movl    $97, %eax               #   7:     if     97 # 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_8_while_body      
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_while_body:
    movl    $97, %eax               #  10:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  11:     call   WriteChar
    addl    $4, %esp               
    movl    $65798, %eax            #  12:     return 65798
    jmp     l_f0_exit              
    movl    $97, %eax               #  13:     if     97 < 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  14:     goto   14_if_false
l_f0_13_if_true:
    call    dummyCHARfunc           #  16:     call   t29 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #  17:     if     100 >= 99 goto 18
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_18                
    jmp     l_f0_19                 #  18:     goto   19
l_f0_18:
    movl    $1, %eax                #  20:     assign t30 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_20                 #  21:     goto   20
l_f0_19:
    movl    $0, %eax                #  23:     assign t30 <- 0
    movb    %al, -14(%ebp)         
l_f0_20:
    movzbl  -14(%ebp), %eax         #  25:     assign v2 <- t30
    movb    %al, -33(%ebp)         
    movl    $26061, %eax            #  26:     param  0 <- 26061
    pushl   %eax                   
    call    WriteInt                #  27:     call   WriteInt
    addl    $4, %esp               
    call    dummyINTfunc            #  28:     call   t31 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #  29:     assign v2 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_12                 #  30:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_7_while_cond       #  33:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_27_if_false        #  35:     goto   27_if_false
    leal    _str_1, %eax            #  36:     &()    t32 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     param  0 <- t32
    pushl   %eax                   
    call    WriteStr                #  38:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_31_if_false        #  39:     goto   31_if_false
l_f0_33_while_cond:
    movl    $99, %eax               #  41:     if     99 <= 97 goto 34_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_34_while_body     
    jmp     l_f0_32                 #  42:     goto   32
l_f0_34_while_body:
    jmp     l_f0_33_while_cond      #  44:     goto   33_while_cond
l_f0_32:
    jmp     l_f0_36                 #  46:     goto   36
l_f0_36:
    call    dummyCHARfunc           #  48:     call   t33 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    jmp     l_f0_40                 #  49:     goto   40
l_f0_40:
    jmp     l_f0_29                 #  51:     goto   29
l_f0_31_if_false:
l_f0_29:
    jmp     l_f0_25                 #  54:     goto   25
l_f0_27_if_false:
l_f0_25:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t29      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t30      <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -18(%ebp)   1  [ $v2       <char> %ebp-18 ]

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
    call    ReadInt                 #   0:     call   t29 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   1:     call   t30 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #   2:     assign v2 <- 100
    movb    %al, -18(%ebp)         

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t29      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t30      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t31      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t32      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t33      <ptr(4) to <array 5 of <char>>> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 62 of <array 93 of <array 36 of <array 31 of <array 82 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 82 of <array 99 of <array 20 of <array 93 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t29 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 = t29 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    movl    $77565, %eax            #   7:     sub    t30 <- 77565, 56885
    movl    $56885, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t31 <- t30, 20535
    movl    $20535, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     add    t32 <- t31, 29703
    movl    $29703, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     return t32
    jmp     l_f2_exit              
    leal    _str_2, %eax            #  11:     &()    t33 <- _str_2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     param  0 <- t33
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 62 of <array 93 of <array 36 of <array 31 of <array 82 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <ptr(4) to <array 62 of <array 93 of <array 36 of <array 31 of <array 82 of <bool>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 62 of <array 93 of <array 36 of <array 31 of <array 82 of <bool>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <array 82 of <array 99 of <array 20 of <array 93 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <ptr(4) to <array 62 of <array 93 of <array 36 of <array 31 of <array 82 of <bool>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t28      <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $t3       <ptr(4) to <array 62 of <array 93 of <array 36 of <array 31 of <array 82 of <bool>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t4       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t5       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t6       <ptr(4) to <array 62 of <array 93 of <array 36 of <array 31 of <array 82 of <bool>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t7       <ptr(4) to <array 62 of <array 93 of <array 36 of <array 31 of <array 82 of <bool>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t8       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t9       <int> %ebp-128 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $116, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $29, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 > 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    movl    $100, %eax              #   5:     if     100 < 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #   6:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   8:     goto   5_while_cond
l_test_4:
    movl    $100, %eax              #  10:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  14:     goto   12_while_cond
l_test_15_while_cond:
    movl    $97, %eax               #  16:     if     97 > 99 goto 16_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_16_while_body   
    jmp     l_test_14               #  17:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  19:     goto   15_while_cond
l_test_14:
l_test_19_while_cond:
    movl    $98, %eax               #  22:     if     98 >= 100 goto 20_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_20_while_body   
    jmp     l_test_18               #  23:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  25:     goto   19_while_cond
l_test_18:
    jmp     l_test_1_while_cond     #  27:     goto   1_while_cond
l_test_0:
l_test_23_while_cond:
    call    dummyBOOLfunc           #  30:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  31:     if     t0 = 1 goto 24_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_24_while_body   
    jmp     l_test_22               #  32:     goto   22
l_test_24_while_body:
    jmp     l_test_25               #  34:     goto   25
l_test_25:
    jmp     l_test_23_while_cond    #  36:     goto   23_while_cond
l_test_22:
    movl    $70528, %eax            #  38:     mul    t1 <- 70528, 96865
    movl    $96865, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $35595, %eax            #  39:     param  3 <- 35595
    pushl   %eax                   
    movl    $97, %eax               #  40:     param  2 <- 97
    pushl   %eax                   
    leal    v2, %eax                #  41:     &()    t2 <- v2
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  42:     param  1 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  43:     &()    t3 <- v1
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  44:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  45:     call   t4 <- f2
    addl    $16, %esp              
    movl    %eax, -108(%ebp)       
    movl    -20(%ebp), %eax         #  46:     mul    t5 <- t1, t4
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  47:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #  48:     call   WriteInt
    addl    $4, %esp               
l_test_30_while_cond:
    jmp     l_test_31_while_body    #  50:     goto   31_while_body
    jmp     l_test_29               #  51:     goto   29
l_test_31_while_body:
    leal    v1, %eax                #  53:     &()    t6 <- v1
    movl    %eax, -116(%ebp)       
    movl    $2, %eax                #  54:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  55:     &()    t7 <- v1
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  56:     param  0 <- t7
    pushl   %eax                   
    call    DIM                     #  57:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    $48213, %eax            #  58:     mul    t9 <- 48213, t8
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  59:     add    t10 <- t9, 43557
    movl    $43557, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  60:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  61:     &()    t11 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  62:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  63:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  64:     mul    t13 <- t10, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  65:     add    t14 <- t13, 64774
    movl    $64774, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  66:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  67:     &()    t15 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  68:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  69:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  70:     mul    t17 <- t14, t16
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  71:     add    t18 <- t17, 63079
    movl    $63079, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  72:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  73:     &()    t19 <- v1
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  74:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  75:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  76:     mul    t21 <- t18, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  77:     add    t22 <- t21, 84900
    movl    $84900, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  78:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    v1, %eax                #  79:     &()    t24 <- v1
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  80:     param  0 <- t24
    pushl   %eax                   
    call    DOFS                    #  81:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  82:     add    t26 <- t23, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -116(%ebp), %eax        #  83:     add    t27 <- t6, t26
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $1, %eax                #  84:     assign @t27 <- 1
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_test_36_if_false      #  85:     goto   36_if_false
    jmp     l_test_34               #  86:     goto   34
l_test_36_if_false:
l_test_34:
l_test_38_while_cond:
    jmp     l_test_37               #  90:     goto   37
    jmp     l_test_38_while_cond    #  91:     goto   38_while_cond
l_test_37:
    jmp     l_test_30_while_cond    #  93:     goto   30_while_cond
l_test_29:
    call    dummyBOOLfunc           #  95:     call   t28 <- dummyBOOLfunc
    movb    %al, -97(%ebp)         

l_test_exit:
    # epilogue
    addl    $116, %esp              # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 62 of <array 93 of <array 36 of <array 31 of <array 82 of <bool>>>>>>
    .long    5
    .long   62
    .long   93
    .long   36
    .long   31
    .long   82
    .skip 527658192
v2:                                 # <array 7 of <array 82 of <array 99 of <array 20 of <array 93 of <char>>>>>>
    .long    5
    .long    7
    .long   82
    .long   99
    .long   20
    .long   93
    .skip 105696360
v3:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
