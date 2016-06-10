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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t9       <char> %ebp-23 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    call    dummyCHARfunc           #   1:     call   t9 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #   2:     assign v0 <- t9
    movb    %al, 8(%ebp)           
    movl    $1109, %eax             #   3:     mul    t10 <- 1109, 40787
    movl    $40787, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $82155, %eax            #   4:     sub    t11 <- 82155, t10
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     if     t11 > 94875 goto 3
    movl    $94875, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_3                 
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $1, %eax                #   8:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_5                  #   9:     goto   5
l_f0_4:
    movl    $0, %eax                #  11:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f0_5:
    movzbl  -21(%ebp), %eax         #  13:     return t12
    jmp     l_f0_exit              

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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t27      <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $t28      <char> %ebp-82 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t30      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t31      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t32      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t33      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t34      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t35      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t36      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t37      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t38      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t39      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t40      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t41      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t42      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t43      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t44      <int> %ebp-148 ]
    #   -149(%ebp)   1  [ $t8       <bool> %ebp-149 ]
    #   -156(%ebp)   4  [ $t9       <int> %ebp-156 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 5 of <array 3 of <array 8 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 5 of <array 8 of <array 10 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 2 of <array 4 of <array 10 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 2 of <array 4 of <array 1 of <array 6 of <bool>>>>>>> %ebp+20 ]
    #   -157(%ebp)   1  [ $v4       <bool> %ebp-157 ]
    #   -158(%ebp)   1  [ $v5       <char> %ebp-158 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $148, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $37, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     if     97 <= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t8 <- 1
    movb    %al, -149(%ebp)        
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t8 <- 0
    movb    %al, -149(%ebp)        
l_f1_3:
    movl    $82933, %eax            #   8:     mul    t9 <- 82933, 17000
    movl    $17000, %ebx           
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #   9:     sub    t10 <- t9, 71254
    movl    $71254, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  11:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  12:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  13:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     add    t13 <- t12, 57140
    movl    $57140, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  16:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  17:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  18:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     add    t16 <- t15, 72407
    movl    $72407, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  22:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  23:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  24:     add    t19 <- t18, 64233
    movl    $64233, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  26:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  27:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  28:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  29:     add    t22 <- t21, 15605
    movl    $15605, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  30:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    20(%ebp), %eax          #  31:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  32:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  33:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    20(%ebp), %eax          #  34:     add    t26 <- v3, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -149(%ebp), %eax        #  35:     assign @t26 <- t8
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  36:     call   t27 <- dummyCHARfunc
    movb    %al, -81(%ebp)         
    call    dummyCHARfunc           #  37:     call   t28 <- dummyCHARfunc
    movb    %al, -82(%ebp)         
    movl    $2, %eax                #  38:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  40:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $71504, %eax            #  41:     mul    t30 <- 71504, t29
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  42:     add    t31 <- t30, 3190
    movl    $3190, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  43:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  45:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  46:     mul    t33 <- t31, t32
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  47:     add    t34 <- t33, 37794
    movl    $37794, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $4, %eax                #  48:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  49:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  50:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  51:     mul    t36 <- t34, t35
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  52:     add    t37 <- t36, 86081
    movl    $86081, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $5, %eax                #  53:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  54:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  55:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  56:     mul    t39 <- t37, t38
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  57:     add    t40 <- t39, 55317
    movl    $55317, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  58:     mul    t41 <- t40, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    8(%ebp), %eax           #  59:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  60:     call   t42 <- DOFS
    addl    $4, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  61:     add    t43 <- t41, t42
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    8(%ebp), %eax           #  62:     add    t44 <- v0, t43
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movzbl  -82(%ebp), %eax         #  63:     assign @t44 <- t28
    movl    -148(%ebp), %edi       
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $148, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 10 of <array 5 of <array 8 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 5 of <array 3 of <array 4 of <array 10 of <int>>>>>>> %ebp+16 ]
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
l_f2_1_while_cond:
    movl    $88398, %eax            #   1:     if     88398 = 55644 goto 2_while_body
    movl    $55644, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    movl    $0, %eax                #   5:     if     0 = 0 goto 6_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6_while_body      
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_while_body:
l_f2_9_while_cond:
    movl    $97, %eax               #   9:     if     97 >= 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_10_while_body     
    jmp     l_f2_8                  #  10:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  12:     goto   9_while_cond
l_f2_8:
l_f2_13_while_cond:
    movl    $7088, %eax             #  15:     if     7088 >= 32649 goto 14_while_body
    movl    $32649, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_14_while_body     
    jmp     l_f2_12                 #  16:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  18:     goto   13_while_cond
l_f2_12:
    movl    $46472, %eax            #  20:     if     46472 <= 34420 goto 17_if_true
    movl    $34420, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  21:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  23:     goto   16
l_f2_18_if_false:
l_f2_16:
    movl    $100, %eax              #  26:     if     100 > 97 goto 21
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_21                
    jmp     l_f2_22                 #  27:     goto   22
l_f2_21:
    movl    $1, %eax                #  29:     assign t8 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_23                 #  30:     goto   23
l_f2_22:
    movl    $0, %eax                #  32:     assign t8 <- 0
    movb    %al, -21(%ebp)         
l_f2_23:
    movzbl  -21(%ebp), %eax         #  34:     assign v1 <- t8
    movb    %al, 12(%ebp)          
    movl    $98, %eax               #  35:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #  36:     call   t9 <- f0
    addl    $4, %esp               
    movb    %al, -22(%ebp)         
    jmp     l_f2_5_while_cond       #  37:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_1_while_cond       #  39:     goto   1_while_cond
l_f2_0:
    movl    $97, %eax               #  41:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  42:     call   t10 <- f0
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  43:     if     t10 = 1 goto 27
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_27                
    jmp     l_f2_27                 #  44:     goto   27
    jmp     l_f2_27                 #  45:     goto   27
    jmp     l_f2_27                 #  46:     goto   27
l_f2_27:
    movl    $1, %eax                #  48:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_29                 #  49:     goto   29
    movl    $0, %eax                #  50:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_29:
    movzbl  -14(%ebp), %eax         #  52:     return t11
    jmp     l_f2_exit              
    movl    $49903, %eax            #  53:     if     49903 > 12415 goto 35_if_true
    movl    $12415, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_35_if_true        
    jmp     l_f2_36_if_false        #  54:     goto   36_if_false
l_f2_35_if_true:
l_f2_39_while_cond:
    jmp     l_f2_39_while_cond      #  57:     goto   39_while_cond
    call    ReadInt                 #  58:     call   t12 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f2_34                 #  59:     goto   34
l_f2_36_if_false:
l_f2_34:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 2 of <array 4 of <array 1 of <array 6 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 9 of <array 2 of <array 4 of <array 10 of <array 6 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 9 of <array 5 of <array 8 of <array 10 of <array 10 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 5 of <array 3 of <array 8 of <array 9 of <char>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <char> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $40277, %eax            #   0:     div    t0 <- 40277, 38920
    movl    $38920, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $62050, %eax            #   1:     sub    t1 <- 62050, t0
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t1
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   5:     goto   3_while_body
l_test_3_while_body:
    call    dummyINTfunc            #   7:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
    jmp     l_test_exit            
    leal    v3, %eax                #  11:     &()    t3 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  3 <- t3
    pushl   %eax                   
    leal    v2, %eax                #  13:     &()    t4 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     param  2 <- t4
    pushl   %eax                   
    leal    v1, %eax                #  15:     &()    t5 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     param  1 <- t5
    pushl   %eax                   
    leal    v0, %eax                #  17:     &()    t6 <- v0
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  18:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  19:     call   t7 <- f1
    addl    $16, %esp              
    movb    %al, -41(%ebp)         
    movl    $100, %eax              #  20:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  21:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
l_test_15_while_cond:
    movl    $100, %eax              #  24:     if     100 # 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_16_while_body   
    jmp     l_test_14               #  25:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  27:     goto   15_while_cond
l_test_14:
    movl    $97, %eax               #  29:     assign v4 <- 97
    movb    %al, v4                
    jmp     l_test_7                #  30:     goto   7
l_test_7:

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v0:                                 # <array 5 of <array 5 of <array 3 of <array 8 of <array 9 of <char>>>>>>
    .long    5
    .long    5
    .long    5
    .long    3
    .long    8
    .long    9
    .skip 5400
v1:                                 # <array 9 of <array 5 of <array 8 of <array 10 of <array 10 of <char>>>>>>
    .long    5
    .long    9
    .long    5
    .long    8
    .long   10
    .long   10
    .skip 36000
v2:                                 # <array 9 of <array 2 of <array 4 of <array 10 of <array 6 of <bool>>>>>>
    .long    5
    .long    9
    .long    2
    .long    4
    .long   10
    .long    6
    .skip 4320
v3:                                 # <array 5 of <array 2 of <array 4 of <array 1 of <array 6 of <bool>>>>>>
    .long    5
    .long    5
    .long    2
    .long    4
    .long    1
    .long    6
    .skip  240
v4:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
