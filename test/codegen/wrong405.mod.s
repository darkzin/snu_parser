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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -13(%ebp)   1  [ $v2       <char> %ebp-13 ]

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
    movl    $99, %eax               #   0:     assign v2 <- 99
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
l_f0_3_while_cond:
    jmp     l_f0_4_while_body       #   3:     goto   4_while_body
l_f0_4_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #   6:     goto   3_while_cond

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
    #    -16(%ebp)   4  [ $t37      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t38      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 8 of <array 9 of <array 9 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 6 of <array 9 of <array 1 of <array 3 of <char>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    jmp     l_f1_exit              
    call    dummyINTfunc            #   1:     call   t37 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $60644, %eax            #   2:     mul    t38 <- 60644, 42005
    movl    $42005, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v2 <- t38
    movl    %eax, -24(%ebp)        

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
    #    -13(%ebp)   1  [ $t37      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t38      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t39      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t40      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 8 of <array 5 of <array 2 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 7 of <array 10 of <array 6 of <array 5 of <int>>>>>>> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t37 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   1:     goto   7
    jmp     l_f2_7                  #   2:     goto   7
    movl    $1, %eax                #   3:     assign t38 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_8                  #   4:     goto   8
l_f2_7:
    movl    $0, %eax                #   6:     assign t38 <- 0
    movb    %al, -14(%ebp)         
l_f2_8:
    movzbl  -14(%ebp), %eax         #   8:     if     t38 # 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2                 
    jmp     l_f2_3                  #   9:     goto   3
l_f2_2:
    movl    $1, %eax                #  11:     assign t39 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_4                  #  12:     goto   4
l_f2_3:
    movl    $0, %eax                #  14:     assign t39 <- 0
    movb    %al, -15(%ebp)         
l_f2_4:
    movzbl  -15(%ebp), %eax         #  16:     return t39
    jmp     l_f2_exit              
    call    dummyINTfunc            #  17:     call   t40 <- dummyINTfunc
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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 5 of <array 7 of <array 10 of <array 6 of <array 5 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <ptr(4) to <array 5 of <array 7 of <array 10 of <array 6 of <array 5 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 5 of <array 7 of <array 10 of <array 6 of <array 5 of <int>>>>>>> %ebp-60 ]
    #    -61(%ebp)   1  [ $t2       <bool> %ebp-61 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 5 of <array 7 of <array 10 of <array 6 of <array 5 of <int>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <ptr(4) to <array 5 of <array 7 of <array 10 of <array 6 of <array 5 of <int>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 7 of <array 10 of <array 6 of <array 5 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t32      <ptr(4) to <array 5 of <array 7 of <array 10 of <array 6 of <array 5 of <int>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t33      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t34      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t35      <int> %ebp-132 ]
    #   -133(%ebp)   1  [ $t36      <bool> %ebp-133 ]
    #   -134(%ebp)   1  [ $t4       <bool> %ebp-134 ]
    #   -135(%ebp)   1  [ $t5       <bool> %ebp-135 ]
    #   -140(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 8 of <array 5 of <array 2 of <array 3 of <char>>>>>>> %ebp-140 ]
    #   -141(%ebp)   1  [ $t7       <bool> %ebp-141 ]
    #   -142(%ebp)   1  [ $t8       <bool> %ebp-142 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]

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
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #   4:     call   t2 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         
    leal    v2, %eax                #   5:     &()    t3 <- v2
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   6:     param  2 <- t3
    pushl   %eax                   
    jmp     l_test_13               #   7:     goto   13
    jmp     l_test_13               #   8:     goto   13
l_test_13:
    movl    $1, %eax                #  10:     assign t4 <- 1
    movb    %al, -134(%ebp)        
    jmp     l_test_15               #  11:     goto   15
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -134(%ebp)        
l_test_15:
    movl    $1, %eax                #  14:     if     1 # t4 goto 9
    movzbl  -134(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jne     l_test_9               
    jmp     l_test_10               #  15:     goto   10
l_test_9:
    movl    $1, %eax                #  17:     assign t5 <- 1
    movb    %al, -135(%ebp)        
    jmp     l_test_11               #  18:     goto   11
l_test_10:
    movl    $0, %eax                #  20:     assign t5 <- 0
    movb    %al, -135(%ebp)        
l_test_11:
    movzbl  -135(%ebp), %eax        #  22:     param  1 <- t5
    pushl   %eax                   
    leal    v1, %eax                #  23:     &()    t6 <- v1
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  24:     param  0 <- t6
    pushl   %eax                   
    call    f2                      #  25:     call   t7 <- f2
    addl    $12, %esp              
    movb    %al, -141(%ebp)        
    movzbl  -141(%ebp), %eax        #  26:     if     t7 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8               
    jmp     l_test_5                #  27:     goto   5
l_test_8:
    movl    $1, %eax                #  29:     assign t8 <- 1
    movb    %al, -142(%ebp)        
    jmp     l_test_6                #  30:     goto   6
l_test_5:
    movl    $0, %eax                #  32:     assign t8 <- 0
    movb    %al, -142(%ebp)        
l_test_6:
    movzbl  -142(%ebp), %eax        #  34:     assign v0 <- t8
    movb    %al, v0                
    movl    $12532, %eax            #  35:     mul    t9 <- 12532, 36003
    movl    $36003, %ebx           
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  36:     mul    t10 <- t9, 24725
    movl    $24725, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     div    t11 <- t10, 63425
    movl    $63425, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  38:     mul    t12 <- t11, 45865
    movl    $45865, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $34158, %eax            #  39:     sub    t13 <- 34158, t12
    movl    -32(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    leal    v2, %eax                #  40:     &()    t14 <- v2
    movl    %eax, -40(%ebp)        
    movl    $2, %eax                #  41:     param  1 <- 2
    pushl   %eax                   
    leal    v2, %eax                #  42:     &()    t15 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  43:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  44:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    $19279, %eax            #  45:     mul    t17 <- 19279, t16
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  46:     add    t18 <- t17, 86602
    movl    $86602, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $3, %eax                #  47:     param  1 <- 3
    pushl   %eax                   
    leal    v2, %eax                #  48:     &()    t19 <- v2
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  49:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  50:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  51:     mul    t21 <- t18, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  52:     add    t22 <- t21, 7825
    movl    $7825, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  53:     param  1 <- 4
    pushl   %eax                   
    leal    v2, %eax                #  54:     &()    t23 <- v2
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  55:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  56:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  57:     mul    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  58:     add    t26 <- t25, 67079
    movl    $67079, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $5, %eax                #  59:     param  1 <- 5
    pushl   %eax                   
    leal    v2, %eax                #  60:     &()    t27 <- v2
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  61:     param  0 <- t27
    pushl   %eax                   
    call    DIM                     #  62:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  63:     mul    t29 <- t26, t28
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  64:     add    t30 <- t29, 27762
    movl    $27762, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  65:     mul    t31 <- t30, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    leal    v2, %eax                #  66:     &()    t32 <- v2
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  67:     param  0 <- t32
    pushl   %eax                   
    call    DOFS                    #  68:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -124(%ebp)       
    movl    -116(%ebp), %eax        #  69:     add    t34 <- t31, t33
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -40(%ebp), %eax         #  70:     add    t35 <- t14, t34
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -36(%ebp), %eax         #  71:     assign @t35 <- t13
    movl    -132(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $98, %eax               #  72:     if     98 = 98 goto 20_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_20_if_true      
    jmp     l_test_21_if_false      #  73:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_25               #  75:     goto   25
    movl    $1, %eax                #  76:     assign t36 <- 1
    movb    %al, -133(%ebp)        
    jmp     l_test_26               #  77:     goto   26
l_test_25:
    movl    $0, %eax                #  79:     assign t36 <- 0
    movb    %al, -133(%ebp)        
l_test_26:
    movzbl  -133(%ebp), %eax        #  81:     assign v0 <- t36
    movb    %al, v0                
    jmp     l_test_19               #  82:     goto   19
l_test_21_if_false:
l_test_19:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <array 5 of <array 8 of <array 5 of <array 2 of <array 3 of <char>>>>>>
    .long    5
    .long    5
    .long    8
    .long    5
    .long    2
    .long    3
    .skip 1200
v2:                                 # <array 5 of <array 7 of <array 10 of <array 6 of <array 5 of <int>>>>>>
    .long    5
    .long    5
    .long    7
    .long   10
    .long    6
    .long    5
    .skip 42000
v3:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
