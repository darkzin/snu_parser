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
    #    -13(%ebp)   1  [ $t25      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t26      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t27      <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 3 of <array 8 of <array 2 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t25 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t25
    jmp     l_f0_exit              
    movl    $99, %eax               #   2:     if     99 <= 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    call    ReadInt                 #   5:     call   t26 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f0_7_while_cond:
    jmp     l_f0_7_while_cond       #   7:     goto   7_while_cond
    jmp     l_f0_1                  #   8:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    ReadInt                 #  11:     call   t27 <- ReadInt
    movl    %eax, -24(%ebp)        

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t25      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t26      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t27      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t28      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t29      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t30      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t31      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t32      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t33      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t34      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t35      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t36      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t37      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t38      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t39      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t40      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t41      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t42      <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $t43      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t44      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t45      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t46      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t47      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t48      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t49      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t50      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t51      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t52      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t53      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t54      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t55      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t56      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t57      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t58      <int> %ebp-148 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 1 of <array 8 of <array 9 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 1 of <array 5 of <array 6 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #   -152(%ebp)   4  [ $v2       <int> %ebp-152 ]
    #   -153(%ebp)   1  [ $v3       <char> %ebp-153 ]
    #   -154(%ebp)   1  [ $v4       <bool> %ebp-154 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $144, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $36, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $20355, %eax            #   0:     assign v2 <- 20355
    movl    %eax, -152(%ebp)       
    call    dummyCHARfunc           #   1:     call   t25 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   4:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $85488, %eax            #   5:     mul    t27 <- 85488, t26
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     add    t28 <- t27, 16163
    movl    $16163, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   9:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  10:     mul    t30 <- t28, t29
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     add    t31 <- t30, 46921
    movl    $46921, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  15:     mul    t33 <- t31, t32
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  16:     add    t34 <- t33, 64409
    movl    $64409, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  20:     mul    t36 <- t34, t35
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  21:     add    t37 <- t36, 59168
    movl    $59168, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  22:     mul    t38 <- t37, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  24:     call   t39 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  25:     add    t40 <- t38, t39
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  26:     add    t41 <- v0, t40
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -13(%ebp), %eax         #  27:     assign @t41 <- t25
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_4_if_false         #  28:     goto   4_if_false
    movl    $97, %eax               #  29:     if     97 <= 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  30:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #  32:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $98, %eax               #  35:     return 98
    jmp     l_f1_exit              
l_f1_11_while_cond:
    jmp     l_f1_10                 #  37:     goto   10
    jmp     l_f1_11_while_cond      #  38:     goto   11_while_cond
l_f1_10:
l_f1_14_while_cond:
    movl    $99, %eax               #  41:     if     99 = 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_15_while_body     
    jmp     l_f1_13                 #  42:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  44:     goto   14_while_cond
l_f1_13:
    movl    $100, %eax              #  46:     if     100 < 100 goto 18
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_18                
    jmp     l_f1_19                 #  47:     goto   19
l_f1_18:
    movl    $1, %eax                #  49:     assign t42 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f1_20                 #  50:     goto   20
l_f1_19:
    movl    $0, %eax                #  52:     assign t42 <- 0
    movb    %al, -81(%ebp)         
l_f1_20:
    movl    $2, %eax                #  54:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  55:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  56:     call   t43 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $73292, %eax            #  57:     mul    t44 <- 73292, t43
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  58:     add    t45 <- t44, 66848
    movl    $66848, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  59:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  60:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  61:     call   t46 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  62:     mul    t47 <- t45, t46
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  63:     add    t48 <- t47, 10742
    movl    $10742, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $4, %eax                #  64:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  65:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  66:     call   t49 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  67:     mul    t50 <- t48, t49
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  68:     add    t51 <- t50, 26339
    movl    $26339, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $5, %eax                #  69:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  70:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  71:     call   t52 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  72:     mul    t53 <- t51, t52
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  73:     add    t54 <- t53, 35320
    movl    $35320, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  74:     mul    t55 <- t54, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    12(%ebp), %eax          #  75:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  76:     call   t56 <- DOFS
    addl    $4, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  77:     add    t57 <- t55, t56
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    12(%ebp), %eax          #  78:     add    t58 <- v1, t57
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movzbl  -81(%ebp), %eax         #  79:     assign @t58 <- t42
    movl    -148(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_2                  #  80:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $144, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t25      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   1:     assign v0 <- 100
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #   2:     call   t25 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 6 of <array 3 of <array 8 of <array 2 of <array 10 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <ptr(4) to <array 6 of <array 3 of <array 8 of <array 2 of <array 10 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <ptr(4) to <array 6 of <array 3 of <array 8 of <array 2 of <array 10 of <char>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 6 of <array 3 of <array 8 of <array 2 of <array 10 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <ptr(4) to <array 6 of <array 3 of <array 8 of <array 2 of <array 10 of <char>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t3       <ptr(4) to <array 6 of <array 3 of <array 8 of <array 2 of <array 10 of <char>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t4       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t5       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t6       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t7       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <ptr(4) to <array 6 of <array 3 of <array 8 of <array 2 of <array 10 of <char>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t9       <int> %ebp-112 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $100, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $25, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     param  3 <- 99
    pushl   %eax                   
    movl    $49131, %eax            #   1:     param  2 <- 49131
    pushl   %eax                   
    movl    $95190, %eax            #   2:     param  1 <- 95190
    pushl   %eax                   
    leal    v1, %eax                #   3:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t0
    pushl   %eax                   
    call    f0                      #   5:     call   t1 <- f0
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   6:     assign v0 <- t1
    movb    %al, v0                
    leal    v1, %eax                #   7:     &()    t2 <- v1
    movl    %eax, -64(%ebp)        
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #   9:     &()    t3 <- v1
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  10:     param  0 <- t3
    pushl   %eax                   
    call    DIM                     #  11:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $55079, %eax            #  12:     mul    t5 <- 55079, t4
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    $40298, %eax            #  13:     add    t6 <- 40298, 92120
    movl    $92120, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  14:     add    t7 <- t5, t6
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  16:     &()    t8 <- v1
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  17:     param  0 <- t8
    pushl   %eax                   
    call    DIM                     #  18:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -104(%ebp), %eax        #  19:     mul    t10 <- t7, t9
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     add    t11 <- t10, 32297
    movl    $32297, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  22:     &()    t12 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     param  0 <- t12
    pushl   %eax                   
    call    DIM                     #  24:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  25:     mul    t14 <- t11, t13
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     add    t15 <- t14, 6606
    movl    $6606, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  28:     &()    t16 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     param  0 <- t16
    pushl   %eax                   
    call    DIM                     #  30:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  31:     mul    t18 <- t15, t17
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  32:     add    t19 <- t18, 5766
    movl    $5766, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  33:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    leal    v1, %eax                #  34:     &()    t21 <- v1
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  35:     param  0 <- t21
    pushl   %eax                   
    call    DOFS                    #  36:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  37:     add    t23 <- t20, t22
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -64(%ebp), %eax         #  38:     add    t24 <- t2, t23
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $98, %eax               #  39:     assign @t24 <- 98
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $100, %esp              # remove locals
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
v1:                                 # <array 6 of <array 3 of <array 8 of <array 2 of <array 10 of <char>>>>>>
    .long    5
    .long    6
    .long    3
    .long    8
    .long    2
    .long   10
    .skip 2880








    # end of global data section
    #-----------------------------------------

    .end
##################################################
