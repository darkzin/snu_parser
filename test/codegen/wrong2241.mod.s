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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t2
    movb    %al, 16(%ebp)          
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     assign v3 <- t3
    movb    %al, 16(%ebp)          
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   5:     param  0 <- t4
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 67 of <array 55 of <array 71 of <array 81 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    movl    $99, %eax               #   0:     if     99 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $13251, %eax            #   3:     return 13251
    jmp     l_f1_exit              
    movl    $98, %eax               #   4:     assign v4 <- 98
    movb    %al, -14(%ebp)         
l_f1_7_while_cond:
    jmp     l_f1_6                  #   6:     goto   6
    jmp     l_f1_7_while_cond       #   7:     goto   7_while_cond
l_f1_6:
    movl    $0, %eax                #   9:     if     0 # 1 goto 10_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  10:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_0                  #  15:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $99, %eax               #  18:     if     99 <= 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  19:     goto   15_if_false
l_f1_14_if_true:
l_f1_18_while_cond:
    movl    $78729, %eax            #  22:     if     78729 < 1156 goto 19_while_body
    movl    $1156, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_19_while_body     
    jmp     l_f1_17                 #  23:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  25:     goto   18_while_cond
l_f1_17:
l_f1_22_while_cond:
    movl    $9222, %eax             #  28:     if     9222 # 55351 goto 23_while_body
    movl    $55351, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_23_while_body     
    jmp     l_f1_21                 #  29:     goto   21
l_f1_23_while_body:
    jmp     l_f1_22_while_cond      #  31:     goto   22_while_cond
l_f1_21:
    jmp     l_f1_13                 #  33:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_27_if_false        #  36:     goto   27_if_false
    call    dummyCHARfunc           #  37:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $15673, %eax            #  38:     return 15673
    jmp     l_f1_exit              
l_f1_31_while_cond:
    jmp     l_f1_31_while_cond      #  40:     goto   31_while_cond
l_f1_34_while_cond:
    jmp     l_f1_33                 #  42:     goto   33
    jmp     l_f1_34_while_cond      #  43:     goto   34_while_cond
l_f1_33:
    movl    $97, %eax               #  45:     assign v4 <- 97
    movb    %al, -14(%ebp)         
    jmp     l_f1_25                 #  46:     goto   25
l_f1_27_if_false:
l_f1_25:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 67 of <array 55 of <array 71 of <array 81 of <array 10 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 67 of <array 55 of <array 71 of <array 81 of <array 10 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 67 of <array 55 of <array 71 of <array 81 of <array 10 of <bool>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <ptr(4) to <array 67 of <array 55 of <array 71 of <array 81 of <array 10 of <bool>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <ptr(4) to <array 67 of <array 55 of <array 71 of <array 81 of <array 10 of <bool>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t3       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t4       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t5       <ptr(4) to <array 67 of <array 55 of <array 71 of <array 81 of <array 10 of <bool>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t6       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t7       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t8       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t9       <ptr(4) to <array 67 of <array 55 of <array 71 of <array 81 of <array 10 of <bool>>>>>>> %ebp-128 ]
    #   -211924504(%ebp)  211924374  [ $v1       <array 67 of <array 55 of <array 71 of <array 81 of <array 10 of <bool>>>>>> %ebp-211924504 ]
    #   -211924505(%ebp)   1  [ $v2       <bool> %ebp-211924505 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $211924496, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $52981124, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-211924504(%ebp)     # local array 'v1': 5 dimensions
    movl    $67,-211924500(%ebp)    #   dimension 1: 67 elements
    movl    $55,-211924496(%ebp)    #   dimension 2: 55 elements
    movl    $71,-211924492(%ebp)    #   dimension 3: 71 elements
    movl    $81,-211924488(%ebp)    #   dimension 4: 81 elements
    movl    $10,-211924484(%ebp)    #   dimension 5: 10 elements

    # function body
l_f2_1_while_cond:
    movl    $18113, %eax            #   1:     add    t2 <- 18113, 64591
    movl    $64591, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   2:     sub    t3 <- t2, 81154
    movl    $81154, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   3:     add    t4 <- t3, 79177
    movl    $79177, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $36758, %eax            #   4:     if     36758 <= t4 goto 2_while_body
    movl    -108(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_while_body:
    movl    $1, %eax                #   7:     param  2 <- 1
    pushl   %eax                   
    leal    -211924504(%ebp), %eax  #   8:     &()    t5 <- v1
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   9:     param  1 <- t5
    pushl   %eax                   
    movl    $1, %eax                #  10:     param  0 <- 1
    pushl   %eax                   
    call    f1                      #  11:     call   t6 <- f1
    addl    $12, %esp              
    movl    %eax, -116(%ebp)       
    jmp     l_f2_7_if_false         #  12:     goto   7_if_false
    jmp     l_f2_5                  #  13:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $100, %eax              #  16:     if     100 < 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  17:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  19:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_12                 #  22:     goto   12
l_f2_12:
    movl    $97, %eax               #  24:     if     97 = 100 goto 16_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  25:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  27:     goto   15
l_f2_17_if_false:
l_f2_15:
    jmp     l_f2_1_while_cond       #  30:     goto   1_while_cond
l_f2_0:
    call    dummyINTfunc            #  32:     call   t7 <- dummyINTfunc
    movl    %eax, -120(%ebp)       
    call    dummyINTfunc            #  33:     call   t8 <- dummyINTfunc
    movl    %eax, -124(%ebp)       
    jmp     l_f2_26_if_false        #  34:     goto   26_if_false
    jmp     l_f2_24                 #  35:     goto   24
l_f2_26_if_false:
l_f2_24:
    leal    -211924504(%ebp), %eax  #  38:     &()    t9 <- v1
    movl    %eax, -128(%ebp)       
    movl    $2, %eax                #  39:     param  1 <- 2
    pushl   %eax                   
    leal    -211924504(%ebp), %eax  #  40:     &()    t10 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  41:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  42:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $15591, %eax            #  43:     mul    t12 <- 15591, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  44:     add    t13 <- t12, 31134
    movl    $31134, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  45:     param  1 <- 3
    pushl   %eax                   
    leal    -211924504(%ebp), %eax  #  46:     &()    t14 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  47:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  48:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  49:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  50:     add    t17 <- t16, 48282
    movl    $48282, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  51:     param  1 <- 4
    pushl   %eax                   
    leal    -211924504(%ebp), %eax  #  52:     &()    t18 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  53:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  54:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  55:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  56:     add    t21 <- t20, 56706
    movl    $56706, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  57:     param  1 <- 5
    pushl   %eax                   
    leal    -211924504(%ebp), %eax  #  58:     &()    t22 <- v1
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  59:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  60:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -64(%ebp), %eax         #  61:     mul    t24 <- t21, t23
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  62:     add    t25 <- t24, 93339
    movl    $93339, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  63:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    leal    -211924504(%ebp), %eax  #  64:     &()    t27 <- v1
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  65:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  66:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  67:     add    t29 <- t26, t28
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -128(%ebp), %eax        #  68:     add    t30 <- t9, t29
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $1, %eax                #  69:     assign @t30 <- 1
    movl    -104(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f2_20                 #  70:     goto   20
l_f2_20:

l_f2_exit:
    # epilogue
    addl    $211924496, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_1                #   3:     goto   1
    jmp     l_test_exit            
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #   6:     goto   7_while_cond
    movl    $97, %eax               #   7:     assign v0 <- 97
    movb    %al, v0                
    movl    $98, %eax               #   8:     assign v0 <- 98
    movb    %al, v0                
l_test_12_while_cond:
    movl    $99, %eax               #  10:     if     99 > 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_13_while_body   
    jmp     l_test_11               #  11:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  13:     goto   12_while_cond
l_test_11:
    jmp     l_test_2_while_cond     #  15:     goto   2_while_cond
l_test_1:
    movl    $97, %eax               #  17:     assign v0 <- 97
    movb    %al, v0                
    call    dummyCHARfunc           #  18:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_19_if_false      #  19:     goto   19_if_false
    jmp     l_test_exit            
    jmp     l_test_17               #  21:     goto   17
l_test_19_if_false:
l_test_17:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
