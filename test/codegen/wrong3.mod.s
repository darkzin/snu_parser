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
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t36      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t37      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t38      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t39      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t40      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t41      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t42      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t43      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t44      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t45      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t6       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t7       <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t8       <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t9       <int> %ebp-172 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 2 of <array 5 of <array 5 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v6       <ptr(4) to <array 7 of <array 2 of <array 4 of <array 6 of <array 2 of <int>>>>>>> %ebp+20 ]
    #   -173(%ebp)   1  [ $v7       <char> %ebp-173 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $164, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $41, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $6156, %eax             #   0:     add    t6 <- 6156, 67168
    movl    $67168, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #   1:     add    t7 <- t6, 88462
    movl    $88462, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -164(%ebp)       
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   4:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -168(%ebp)       
    movl    -164(%ebp), %eax        #   5:     mul    t9 <- t7, t8
    movl    -168(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #   6:     add    t10 <- t9, 61435
    movl    $61435, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  10:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $76582, %eax            #  11:     div    t13 <- 76582, 98128
    movl    $98128, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     mul    t14 <- t13, 51994
    movl    $51994, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  13:     add    t15 <- t12, t14
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  16:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  17:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  18:     add    t18 <- t17, 14133
    movl    $14133, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  21:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     add    t21 <- t20, 82847
    movl    $82847, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  24:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  26:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  27:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t25 <- v3, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $100, %eax              #  29:     assign @t25 <- 100
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyINTfunc            #  30:     call   t26 <- dummyINTfunc
    movl    %eax, -80(%ebp)        
    movl    $32734, %eax            #  31:     add    t27 <- 32734, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  32:     return t27
    jmp     l_f0_exit              
    movl    $53535, %eax            #  33:     add    t28 <- 53535, 15758
    movl    $15758, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    call    ReadInt                 #  34:     call   t29 <- ReadInt
    movl    %eax, -92(%ebp)        
    movl    $2, %eax                #  35:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  36:     param  0 <- v6
    pushl   %eax                   
    call    DIM                     #  37:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  38:     mul    t31 <- t29, t30
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  39:     add    t32 <- t31, 34120
    movl    $34120, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $3, %eax                #  40:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  41:     param  0 <- v6
    pushl   %eax                   
    call    DIM                     #  42:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  43:     mul    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  44:     add    t35 <- t34, 87088
    movl    $87088, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $4, %eax                #  45:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  46:     param  0 <- v6
    pushl   %eax                   
    call    DIM                     #  47:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  48:     mul    t37 <- t35, t36
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  49:     add    t38 <- t37, 66733
    movl    $66733, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $5, %eax                #  50:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  51:     param  0 <- v6
    pushl   %eax                   
    call    DIM                     #  52:     call   t39 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  53:     mul    t40 <- t38, t39
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  54:     add    t41 <- t40, 30916
    movl    $30916, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  55:     mul    t42 <- t41, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    20(%ebp), %eax          #  56:     param  0 <- v6
    pushl   %eax                   
    call    DOFS                    #  57:     call   t43 <- DOFS
    addl    $4, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  58:     add    t44 <- t42, t43
    movl    -148(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    20(%ebp), %eax          #  59:     add    t45 <- v6, t44
    movl    -152(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    -88(%ebp), %eax         #  60:     assign @t45 <- t28
    movl    -156(%ebp), %edi       
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $164, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 3 of <array 9 of <array 5 of <array 10 of <char>>>>>>> %ebp+8 ]
    #    -21(%ebp)   1  [ $v4       <bool> %ebp-21 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $0, %eax                #   4:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v4 <- t6
    movb    %al, -21(%ebp)         
    movl    $23035, %eax            #   7:     if     23035 < 71246 goto 7_if_true
    movl    $71246, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   8:     goto   8_if_false
l_f1_7_if_true:
    call    ReadInt                 #  10:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f1_6                  #  11:     goto   6
l_f1_8_if_false:
l_f1_6:
    call    WriteLn                 #  14:     call   WriteLn

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 2 of <array 7 of <array 3 of <array 5 of <int>>>>>>> %ebp+8 ]
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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v4 <- t6
    movb    %al, -14(%ebp)         
    jmp     l_f2_exit              
l_f2_3_while_cond:
    jmp     l_f2_2                  #   4:     goto   2
    jmp     l_f2_exit              
    jmp     l_f2_3_while_cond       #   6:     goto   3_while_cond
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]

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
    movl    $77877, %eax            #   0:     assign v0 <- 77877
    movl    %eax, v0               
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
    jmp     l_test_3_while_body     #   3:     goto   3_while_body
    jmp     l_test_3_while_body     #   4:     goto   3_while_body
    jmp     l_test_3_while_body     #   5:     goto   3_while_body
l_test_3_while_body:
    movl    $97, %eax               #   7:     if     97 <= 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_10              
    jmp     l_test_11               #   8:     goto   11
l_test_10:
    movl    $1, %eax                #  10:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_12               #  11:     goto   12
l_test_11:
    movl    $0, %eax                #  13:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_12:
    movzbl  -13(%ebp), %eax         #  15:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_2_while_cond     #  16:     goto   2_while_cond
    movl    $99, %eax               #  17:     assign v2 <- 99
    movb    %al, v2                
    jmp     l_test_17_if_false      #  18:     goto   17_if_false
    call    ReadInt                 #  19:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $63094, %eax            #  20:     assign v0 <- 63094
    movl    %eax, v0               
    call    dummyINTfunc            #  21:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_15               #  22:     goto   15
l_test_17_if_false:
l_test_15:
l_test_22_while_cond:
    movl    $62356, %eax            #  26:     div    t3 <- 62356, 11073
    movl    $11073, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     mul    t4 <- t3, 67665
    movl    $67665, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $52125, %eax            #  28:     if     52125 <= t4 goto 23_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_23_while_body   
    jmp     l_test_21               #  29:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  31:     goto   22_while_cond
l_test_21:
l_test_26_while_cond:
    jmp     l_test_25               #  34:     goto   25
    movl    $36215, %eax            #  35:     param  0 <- 36215
    pushl   %eax                   
    call    WriteInt                #  36:     call   WriteInt
    addl    $4, %esp               
l_test_30_while_cond:
    jmp     l_test_33               #  38:     goto   33
    jmp     l_test_34               #  39:     goto   34
l_test_33:
    movl    $1, %eax                #  41:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_35               #  42:     goto   35
l_test_34:
    movl    $0, %eax                #  44:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_35:
    movzbl  -33(%ebp), %eax         #  46:     if     t5 = 1 goto 31_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_31_while_body   
    jmp     l_test_29               #  47:     goto   29
l_test_31_while_body:
    jmp     l_test_30_while_cond    #  49:     goto   30_while_cond
l_test_29:
    jmp     l_test_26_while_cond    #  51:     goto   26_while_cond
l_test_25:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
