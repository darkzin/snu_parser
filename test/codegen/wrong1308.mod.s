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
    #    -13(%ebp)   1  [ $t34      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t35      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t36      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t37      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t38      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t39      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t40      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t41      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t42      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t43      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t44      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t45      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t46      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t47      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t48      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t49      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t50      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t51      <char> %ebp-81 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 72 of <array 13 of <array 66 of <array 43 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 95 of <array 43 of <array 79 of <array 45 of <array 77 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 21 of <array 56 of <array 89 of <array 26 of <array 18 of <int>>>>>>> %ebp+16 ]
    #    -88(%ebp)   4  [ $v4       <int> %ebp-88 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    call    dummyCHARfunc           #   2:     call   t34 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     return t34
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   7:     goto   4
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $48443, %eax            #  11:     mul    t36 <- 48443, t35
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t37 <- t36, 67201
    movl    $67201, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  16:     mul    t39 <- t37, t38
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     add    t40 <- t39, 86625
    movl    $86625, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t41 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  21:     mul    t42 <- t40, t41
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     add    t43 <- t42, 4075
    movl    $4075, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  25:     call   t44 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  26:     mul    t45 <- t43, t44
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  27:     add    t46 <- t45, 66402
    movl    $66402, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  28:     mul    t47 <- t46, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  29:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  30:     call   t48 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  31:     add    t49 <- t47, t48
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    16(%ebp), %eax          #  32:     add    t50 <- v3, t49
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $8043, %eax             #  33:     assign @t50 <- 8043
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_5_while_cond       #  34:     goto   5_while_cond
l_f0_4:
    call    dummyCHARfunc           #  36:     call   t51 <- dummyCHARfunc
    movb    %al, -81(%ebp)         
    movzbl  -81(%ebp), %eax         #  37:     return t51
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t34      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t35      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t36      <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t34 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_4                  #   1:     goto   4
    jmp     l_f1_5                  #   2:     goto   5
l_f1_4:
    movl    $1, %eax                #   4:     assign t35 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $0, %eax                #   7:     assign t35 <- 0
    movb    %al, -14(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #   9:     if     t34 # t35 goto 1_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #  10:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #  12:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_9_while_cond:
    jmp     l_f1_8                  #  16:     goto   8
    movl    $98, %eax               #  17:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_9_while_cond       #  18:     goto   9_while_cond
l_f1_8:
    call    dummyINTfunc            #  20:     call   t36 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t34      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t35      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t36      <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 27 of <array 89 of <array 36 of <array 83 of <array 30 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 86 of <array 65 of <array 80 of <array 71 of <array 41 of <bool>>>>>>> %ebp+16 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    movl    $99, %eax               #   0:     return 99
    jmp     l_f2_exit              
    movl    $100, %eax              #   1:     if     100 = 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_2                 
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $1, %eax                #   4:     assign t34 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $0, %eax                #   7:     assign t34 <- 0
    movb    %al, -13(%ebp)         
l_f2_4:
    movzbl  -13(%ebp), %eax         #   9:     param  0 <- t34
    pushl   %eax                   
    call    f1                      #  10:     call   t35 <- f1
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     return t35
    jmp     l_f2_exit              
    call    dummyINTfunc            #  12:     call   t36 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     assign v4 <- t36
    movl    %eax, -24(%ebp)        

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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <ptr(4) to <array 86 of <array 65 of <array 80 of <array 71 of <array 41 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <ptr(4) to <array 86 of <array 65 of <array 80 of <array 71 of <array 41 of <bool>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <ptr(4) to <array 86 of <array 65 of <array 80 of <array 71 of <array 41 of <bool>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <ptr(4) to <array 86 of <array 65 of <array 80 of <array 71 of <array 41 of <bool>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <int> %ebp-108 ]
    #   -109(%ebp)   1  [ $t30      <char> %ebp-109 ]
    #   -110(%ebp)   1  [ $t31      <bool> %ebp-110 ]
    #   -111(%ebp)   1  [ $t32      <bool> %ebp-111 ]
    #   -112(%ebp)   1  [ $t33      <char> %ebp-112 ]
    #   -116(%ebp)   4  [ $t4       <ptr(4) to <array 86 of <array 65 of <array 80 of <array 71 of <array 41 of <bool>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t5       <ptr(4) to <array 27 of <array 89 of <array 36 of <array 83 of <array 30 of <bool>>>>>>> %ebp-120 ]
    #   -121(%ebp)   1  [ $t6       <char> %ebp-121 ]
    #   -122(%ebp)   1  [ $t7       <bool> %ebp-122 ]
    #   -128(%ebp)   4  [ $t8       <ptr(4) to <array 86 of <array 65 of <array 80 of <array 71 of <array 41 of <bool>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t9       <ptr(4) to <array 86 of <array 65 of <array 80 of <array 71 of <array 41 of <bool>>>>>>> %ebp-132 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t0
    movb    %al, v0                
    movl    $95233, %eax            #   3:     mul    t1 <- 95233, 98357
    movl    $98357, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     mul    t2 <- t1, 32299
    movl    $32299, %ebx           
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    $63707, %eax            #   5:     add    t3 <- 63707, t2
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   6:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_5_if_false       #   8:     goto   5_if_false
    jmp     l_test_exit            
    leal    v2, %eax                #  10:     &()    t4 <- v2
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  11:     param  2 <- t4
    pushl   %eax                   
    leal    v1, %eax                #  12:     &()    t5 <- v1
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  13:     param  1 <- t5
    pushl   %eax                   
    movl    $97, %eax               #  14:     param  0 <- 97
    pushl   %eax                   
    call    f2                      #  15:     call   t6 <- f2
    addl    $12, %esp              
    movb    %al, -121(%ebp)        
    movzbl  -121(%ebp), %eax        #  16:     param  0 <- t6
    pushl   %eax                   
    call    WriteChar               #  17:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_10_if_false      #  18:     goto   10_if_false
    jmp     l_test_8                #  19:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $78794, %eax            #  22:     assign v3 <- 78794
    movl    %eax, v3               
    movl    $86708, %eax            #  23:     if     86708 # 64498 goto 13
    movl    $64498, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_13              
    jmp     l_test_14               #  24:     goto   14
l_test_13:
    movl    $1, %eax                #  26:     assign t7 <- 1
    movb    %al, -122(%ebp)        
    jmp     l_test_15               #  27:     goto   15
l_test_14:
    movl    $0, %eax                #  29:     assign t7 <- 0
    movb    %al, -122(%ebp)        
l_test_15:
    leal    v2, %eax                #  31:     &()    t8 <- v2
    movl    %eax, -128(%ebp)       
    movl    $2, %eax                #  32:     param  1 <- 2
    pushl   %eax                   
    leal    v2, %eax                #  33:     &()    t9 <- v2
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  34:     param  0 <- t9
    pushl   %eax                   
    call    DIM                     #  35:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $92215, %eax            #  36:     mul    t11 <- 92215, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  37:     add    t12 <- t11, 35465
    movl    $35465, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  38:     param  1 <- 3
    pushl   %eax                   
    leal    v2, %eax                #  39:     &()    t13 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  40:     param  0 <- t13
    pushl   %eax                   
    call    DIM                     #  41:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  42:     mul    t15 <- t12, t14
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  43:     add    t16 <- t15, 66174
    movl    $66174, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  44:     param  1 <- 4
    pushl   %eax                   
    leal    v2, %eax                #  45:     &()    t17 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  46:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  47:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  48:     mul    t19 <- t16, t18
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  49:     add    t20 <- t19, 22441
    movl    $22441, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  50:     param  1 <- 5
    pushl   %eax                   
    leal    v2, %eax                #  51:     &()    t21 <- v2
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  52:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  53:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  54:     mul    t23 <- t20, t22
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  55:     add    t24 <- t23, 55819
    movl    $55819, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  56:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    leal    v2, %eax                #  57:     &()    t26 <- v2
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  58:     param  0 <- t26
    pushl   %eax                   
    call    DOFS                    #  59:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  60:     add    t28 <- t25, t27
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -128(%ebp), %eax        #  61:     add    t29 <- t8, t28
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movzbl  -122(%ebp), %eax        #  62:     assign @t29 <- t7
    movl    -104(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_test_17               #  63:     goto   17
l_test_17:
    jmp     l_test_3                #  65:     goto   3
l_test_5_if_false:
l_test_3:
l_test_21_while_cond:
    movl    $1, %eax                #  69:     param  0 <- 1
    pushl   %eax                   
    call    f1                      #  70:     call   t30 <- f1
    addl    $4, %esp               
    movb    %al, -109(%ebp)        
    movl    $100, %eax              #  71:     if     100 > t30 goto 22_while_body
    movzbl  -109(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jg      l_test_22_while_body   
    jmp     l_test_20               #  72:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  74:     goto   21_while_cond
l_test_20:
l_test_25_while_cond:
    movl    $99, %eax               #  77:     if     99 = 98 goto 26_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_26_while_body   
    jmp     l_test_24               #  78:     goto   24
l_test_26_while_body:
    movl    $1, %eax                #  80:     if     1 # 1 goto 29_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_29_if_true      
    jmp     l_test_30_if_false      #  81:     goto   30_if_false
l_test_29_if_true:
    jmp     l_test_28               #  83:     goto   28
l_test_30_if_false:
l_test_28:
    call    dummyBOOLfunc           #  86:     call   t31 <- dummyBOOLfunc
    movb    %al, -110(%ebp)        
    movzbl  -110(%ebp), %eax        #  87:     if     t31 = 1 goto 33
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_33              
    jmp     l_test_33               #  88:     goto   33
    jmp     l_test_34               #  89:     goto   34
l_test_33:
    movl    $1, %eax                #  91:     assign t32 <- 1
    movb    %al, -111(%ebp)        
    jmp     l_test_35               #  92:     goto   35
l_test_34:
    movl    $0, %eax                #  94:     assign t32 <- 0
    movb    %al, -111(%ebp)        
l_test_35:
    movzbl  -111(%ebp), %eax        #  96:     param  0 <- t32
    pushl   %eax                   
    call    f1                      #  97:     call   t33 <- f1
    addl    $4, %esp               
    movb    %al, -112(%ebp)        
    jmp     l_test_25_while_cond    #  98:     goto   25_while_cond
l_test_24:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 27 of <array 89 of <array 36 of <array 83 of <array 30 of <bool>>>>>>
    .long    5
    .long   27
    .long   89
    .long   36
    .long   83
    .long   30
    .skip 215404920
v2:                                 # <array 86 of <array 65 of <array 80 of <array 71 of <array 41 of <bool>>>>>>
    .long    5
    .long   86
    .long   65
    .long   80
    .long   71
    .long   41
    .skip 1301799200
v3:                                 # <int>
    .skip    4
v4:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
