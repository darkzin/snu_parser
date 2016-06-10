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
    #    -21(%ebp)   1  [ $t32      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t33      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t34      <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $v0       <bool> %ebp-30 ]

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
    call    dummyCHARfunc           #   0:     call   t29 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   1:     assign v0 <- 0
    movb    %al, -30(%ebp)         
l_f0_3_while_cond:
    jmp     l_f0_2                  #   3:     goto   2
    movl    $97, %eax               #   4:     if     97 >= 97 goto 8
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_8                 
    jmp     l_f0_9                  #   5:     goto   9
l_f0_8:
    movl    $1, %eax                #   7:     assign t30 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_10                 #   8:     goto   10
l_f0_9:
    movl    $0, %eax                #  10:     assign t30 <- 0
    movb    %al, -14(%ebp)         
l_f0_10:
    movzbl  -14(%ebp), %eax         #  12:     assign v0 <- t30
    movb    %al, -30(%ebp)         
    call    ReadInt                 #  13:     call   t31 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  14:     if     97 > 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  15:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  17:     goto   13
l_f0_15_if_false:
l_f0_13:
    call    dummyCHARfunc           #  20:     call   t32 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    call    dummyINTfunc            #  21:     call   t33 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    call    dummyBOOLfunc           #  22:     call   t34 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_f0_3_while_cond       #  23:     goto   3_while_cond
l_f0_2:

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
    #    -13(%ebp)   1  [ $t29      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t30      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t31      <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 58 of <array 2 of <array 7 of <array 4 of <char>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t29 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t30 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     return t30
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   3:     call   t31 <- dummyBOOLfunc
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
    #    -16(%ebp)   4  [ $t29      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t30      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t31      <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 95 of <array 12 of <array 16 of <array 69 of <array 41 of <char>>>>>>> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyINTfunc            #   0:     call   t29 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $66424, %eax            #   1:     mul    t30 <- 66424, t29
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v2 <- t30
    movl    %eax, -28(%ebp)        
    call    dummyBOOLfunc           #   3:     call   t31 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 6 of <array 58 of <array 2 of <array 7 of <array 4 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <ptr(4) to <array 6 of <array 58 of <array 2 of <array 7 of <array 4 of <char>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t2       <char> %ebp-61 ]
    #    -68(%ebp)   4  [ $t20      <ptr(4) to <array 6 of <array 58 of <array 2 of <array 7 of <array 4 of <char>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <ptr(4) to <array 6 of <array 58 of <array 2 of <array 7 of <array 4 of <char>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <ptr(4) to <array 6 of <array 58 of <array 2 of <array 7 of <array 4 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 58 of <array 2 of <array 7 of <array 4 of <char>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t5       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t6       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t7       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t8       <ptr(4) to <array 6 of <array 58 of <array 2 of <array 7 of <array 4 of <char>>>>>>> %ebp-124 ]
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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_4_while_cond:
l_test_7_while_cond:
    movl    $98, %eax               #   3:     if     98 <= 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_8_while_body    
    jmp     l_test_6                #   4:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #   6:     goto   7_while_cond
l_test_6:
    movl    $85405, %eax            #   8:     if     85405 > 64842 goto 11_if_true
    movl    $64842, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_11_if_true      
    jmp     l_test_12_if_false      #   9:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  11:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_14               #  14:     goto   14
l_test_14:
l_test_18_while_cond:
    movl    $0, %eax                #  17:     if     0 # 1 goto 19_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_19_while_body   
    jmp     l_test_17               #  18:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  20:     goto   18_while_cond
l_test_17:
    jmp     l_test_exit            
    jmp     l_test_4_while_cond     #  23:     goto   4_while_cond
    jmp     l_test_0                #  24:     goto   0
l_test_2_if_false:
l_test_0:
    leal    v0, %eax                #  27:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  28:     param  1 <- t0
    pushl   %eax                   
    call    dummyCHARfunc           #  29:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  30:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  31:     call   t2 <- f1
    addl    $8, %esp               
    movb    %al, -61(%ebp)         
    leal    v0, %eax                #  32:     &()    t3 <- v0
    movl    %eax, -104(%ebp)       
    movl    $2, %eax                #  33:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  34:     &()    t4 <- v0
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  35:     param  0 <- t4
    pushl   %eax                   
    call    DIM                     #  36:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    $83667, %eax            #  37:     mul    t6 <- 83667, t5
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  38:     add    t7 <- t6, 70856
    movl    $70856, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $3, %eax                #  39:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  40:     &()    t8 <- v0
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  41:     param  0 <- t8
    pushl   %eax                   
    call    DIM                     #  42:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -120(%ebp), %eax        #  43:     mul    t10 <- t7, t9
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $43231, %eax            #  44:     mul    t11 <- 43231, 18553
    movl    $18553, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  45:     sub    t12 <- t11, 66070
    movl    $66070, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  46:     sub    t13 <- t12, 10155
    movl    $10155, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  47:     add    t14 <- t13, 37519
    movl    $37519, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -24(%ebp), %eax         #  48:     add    t15 <- t10, t14
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  49:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  50:     &()    t16 <- v0
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  51:     param  0 <- t16
    pushl   %eax                   
    call    DIM                     #  52:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  53:     mul    t18 <- t15, t17
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  54:     add    t19 <- t18, 95459
    movl    $95459, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  55:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  56:     &()    t20 <- v0
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  57:     param  0 <- t20
    pushl   %eax                   
    call    DIM                     #  58:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -60(%ebp), %eax         #  59:     mul    t22 <- t19, t21
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  60:     add    t23 <- t22, 49504
    movl    $49504, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  61:     mul    t24 <- t23, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    leal    v0, %eax                #  62:     &()    t25 <- v0
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  63:     param  0 <- t25
    pushl   %eax                   
    call    DOFS                    #  64:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  65:     add    t27 <- t24, t26
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -104(%ebp), %eax        #  66:     add    t28 <- t3, t27
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $98, %eax               #  67:     assign @t28 <- 98
    movl    -100(%ebp), %edi       
    movb    %al, (%edi)            

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
v0:                                 # <array 6 of <array 58 of <array 2 of <array 7 of <array 4 of <char>>>>>>
    .long    5
    .long    6
    .long   58
    .long    2
    .long    7
    .long    4
    .skip 19488
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
