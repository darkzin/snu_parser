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
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]

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
    movl    $97, %eax               #   0:     assign v1 <- 97
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   1:     assign v1 <- 100
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t3       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t4       <bool> %ebp-89 ]
    #    -90(%ebp)   1  [ $t5       <bool> %ebp-90 ]
    #    -96(%ebp)   4  [ $t6       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t7       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 9 of <array 8 of <array 7 of <array 4 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 6 of <array 3 of <array 6 of <array 8 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   1:     add    t3 <- t2, 11312
    movl    $11312, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   2:     if     t3 <= 56629 goto 1
    movl    $56629, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   3:     goto   2
l_f1_1:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -89(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -89(%ebp)         
l_f1_3:
    movzbl  -89(%ebp), %eax         #  10:     return t4
    jmp     l_f1_exit              
    movl    $91827, %eax            #  11:     if     91827 <= 89555 goto 6
    movl    $89555, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6                 
    jmp     l_f1_6                  #  12:     goto   6
l_f1_6:
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -90(%ebp)         
    jmp     l_f1_8                  #  15:     goto   8
    movl    $0, %eax                #  16:     assign t5 <- 0
    movb    %al, -90(%ebp)         
l_f1_8:
    movzbl  -90(%ebp), %eax         #  18:     return t5
    jmp     l_f1_exit              
    call    dummyINTfunc            #  19:     call   t6 <- dummyINTfunc
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  20:     mul    t7 <- t6, 81374
    movl    $81374, %ebx           
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  21:     mul    t8 <- t7, 65360
    movl    $65360, %ebx           
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  22:     mul    t9 <- t8, 63650
    movl    $63650, %ebx           
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  23:     mul    t10 <- t9, 4621
    movl    $4621, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  24:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  26:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  27:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     add    t13 <- t12, 23556
    movl    $23556, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  30:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  31:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  32:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     add    t16 <- t15, 86994
    movl    $86994, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  35:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  36:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  37:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  38:     add    t19 <- t18, 1507
    movl    $1507, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  39:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  40:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  41:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  42:     mul    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  43:     add    t22 <- t21, 16968
    movl    $16968, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  44:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  45:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  46:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  47:     add    t25 <- t23, t24
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  48:     add    t26 <- v2, t25
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $92354, %eax            #  49:     assign @t26 <- 92354
    movl    -84(%ebp), %edi        
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $96, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t8       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $v1       <bool> %ebp-20 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]

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
    jmp     l_f2_5                  #   0:     goto   5
    jmp     l_f2_5                  #   1:     goto   5
    movl    $1, %eax                #   2:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   3:     goto   6
l_f2_5:
    movl    $0, %eax                #   5:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #   7:     if     t2 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   8:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_10_if_false        #  10:     goto   10_if_false
    jmp     l_f2_8                  #  11:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $100, %eax              #  14:     if     100 > 99 goto 12
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_12                
    jmp     l_f2_13                 #  15:     goto   13
l_f2_12:
    movl    $1, %eax                #  17:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_14                 #  18:     goto   14
l_f2_13:
    movl    $0, %eax                #  20:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_14:
    movzbl  -14(%ebp), %eax         #  22:     return t3
    jmp     l_f2_exit              
    movl    $68348, %eax            #  23:     if     68348 = 83042 goto 17
    movl    $83042, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_17                
    jmp     l_f2_18                 #  24:     goto   18
l_f2_17:
    movl    $1, %eax                #  26:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_19                 #  27:     goto   19
l_f2_18:
    movl    $0, %eax                #  29:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f2_19:
    movzbl  -15(%ebp), %eax         #  31:     assign v1 <- t4
    movb    %al, -20(%ebp)         
    jmp     l_f2_0                  #  32:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #  35:     call   t5 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movl    $82687, %eax            #  36:     if     82687 >= 74686 goto 26
    movl    $74686, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_26                
    jmp     l_f2_27                 #  37:     goto   27
l_f2_26:
    movl    $1, %eax                #  39:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_28                 #  40:     goto   28
l_f2_27:
    movl    $0, %eax                #  42:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f2_28:
    movzbl  -17(%ebp), %eax         #  44:     return t6
    jmp     l_f2_exit              
    movl    $9956, %eax             #  45:     if     9956 >= 37196 goto 31
    movl    $37196, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_31                
    jmp     l_f2_32                 #  46:     goto   32
l_f2_31:
    movl    $1, %eax                #  48:     assign t7 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_33                 #  49:     goto   33
l_f2_32:
    movl    $0, %eax                #  51:     assign t7 <- 0
    movb    %al, -18(%ebp)         
l_f2_33:
    movzbl  -18(%ebp), %eax         #  53:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_21                 #  54:     goto   21
l_f2_21:
    movl    $1, %eax                #  56:     if     1 = 1 goto 36_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_36_if_true        
    jmp     l_f2_37_if_false        #  57:     goto   37_if_false
l_f2_36_if_true:
    movl    $100, %eax              #  59:     assign v2 <- 100
    movb    %al, -21(%ebp)         
    movl    $1, %eax                #  60:     return 1
    jmp     l_f2_exit              
    movl    $100, %eax              #  61:     if     100 = 98 goto 42
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_42                
    jmp     l_f2_43                 #  62:     goto   43
l_f2_42:
    movl    $1, %eax                #  64:     assign t8 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_44                 #  65:     goto   44
l_f2_43:
    movl    $0, %eax                #  67:     assign t8 <- 0
    movb    %al, -19(%ebp)         
l_f2_44:
    movzbl  -19(%ebp), %eax         #  69:     assign v1 <- t8
    movb    %al, -20(%ebp)         
    jmp     l_f2_35                 #  70:     goto   35
l_f2_37_if_false:
l_f2_35:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $6552, %eax             #   3:     param  0 <- 6552
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
    movl    $22908, %eax            #   5:     add    t1 <- 22908, 85948
    movl    $85948, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $66661, %eax            #   6:     if     66661 <= t1 goto 5_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_5_if_true       
    jmp     l_test_6_if_false       #   7:     goto   6_if_false
l_test_5_if_true:
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #  10:     goto   9_while_cond
    jmp     l_test_4                #  11:     goto   4
l_test_6_if_false:
l_test_4:

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
