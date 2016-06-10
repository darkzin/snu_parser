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
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 3 of <array 1 of <array 2 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t12 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f0_3_while_cond:
    movl    $52385, %eax            #   3:     if     52385 <= 73791 goto 4_while_body
    movl    $73791, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_4_while_body      
    jmp     l_f0_2                  #   4:     goto   2
l_f0_4_while_body:
    movl    $97, %eax               #   6:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #   7:     goto   3_while_cond
l_f0_2:

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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
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
    #   -152(%ebp)   4  [ $t45      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t46      <int> %ebp-156 ]
    #   -157(%ebp)   1  [ $t47      <char> %ebp-157 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 3 of <array 8 of <array 8 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 7 of <array 2 of <array 9 of <array 5 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 2 of <array 2 of <array 6 of <array 5 of <int>>>>>>> %ebp+20 ]
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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   1:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   2:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $38010, %eax            #   3:     mul    t12 <- 38010, t11
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t13 <- t12, 88466
    movl    $88466, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   6:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   7:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   8:     mul    t15 <- t13, t14
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    call    dummyINTfunc            #   9:     call   t16 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  10:     add    t17 <- t15, t16
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  13:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  14:     mul    t19 <- t17, t18
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $23691, %eax            #  15:     add    t20 <- 23691, 59631
    movl    $59631, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  16:     add    t21 <- t20, 38563
    movl    $38563, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  17:     add    t22 <- t19, t21
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  21:     mul    t24 <- t22, t23
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  22:     add    t25 <- t24, 31562
    movl    $31562, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  23:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    16(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  25:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  26:     add    t28 <- t26, t27
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    16(%ebp), %eax          #  27:     add    t29 <- v3, t28
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $98, %eax               #  28:     assign @t29 <- 98
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $2, %eax                #  29:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  30:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  31:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $54332, %eax            #  32:     mul    t31 <- 54332, t30
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    call    dummyINTfunc            #  33:     call   t32 <- dummyINTfunc
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  34:     add    t33 <- t31, t32
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $3, %eax                #  35:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  36:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  37:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  38:     mul    t35 <- t33, t34
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  39:     add    t36 <- t35, 84995
    movl    $84995, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $4, %eax                #  40:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  41:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  42:     call   t37 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  43:     mul    t38 <- t36, t37
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  44:     add    t39 <- t38, 64856
    movl    $64856, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $5, %eax                #  45:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  46:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  47:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  48:     mul    t41 <- t39, t40
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  49:     add    t42 <- t41, 65311
    movl    $65311, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  50:     mul    t43 <- t42, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    16(%ebp), %eax          #  51:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  52:     call   t44 <- DOFS
    addl    $4, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  53:     add    t45 <- t43, t44
    movl    -148(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    16(%ebp), %eax          #  54:     add    t46 <- v3, t45
    movl    -152(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $100, %eax              #  55:     assign @t46 <- 100
    movl    -156(%ebp), %edi       
    movb    %al, (%edi)            
l_f1_3_while_cond:
    call    dummyCHARfunc           #  57:     call   t47 <- dummyCHARfunc
    movb    %al, -157(%ebp)        
    jmp     l_f1_3_while_cond       #  58:     goto   3_while_cond

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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $100, %eax              #   2:     if     100 < 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    movl    $0, %eax                #   6:     if     0 # 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #   7:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   9:     goto   6_while_cond
l_f2_5:
    movl    $100, %eax              #  11:     if     100 <= 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  12:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  14:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_2_while_cond       #  17:     goto   2_while_cond
l_f2_1:
    call    dummyINTfunc            #  19:     call   t11 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 3 of <array 3 of <array 1 of <array 2 of <array 6 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t2       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t3       <ptr(4) to <array 6 of <array 2 of <array 2 of <array 6 of <array 5 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 7 of <array 2 of <array 9 of <array 5 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <ptr(4) to <array 6 of <array 3 of <array 8 of <array 8 of <array 7 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    movl    $44175, %eax            #   2:     assign v0 <- 44175
    movl    %eax, v0               
    movl    $98, %eax               #   3:     param  0 <- 98
    pushl   %eax                   
    call    f2                      #   4:     call   f2
    addl    $4, %esp               
    jmp     l_test_exit            
    movl    $97, %eax               #   6:     if     97 <= 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
    movl    $97, %eax               #   9:     param  1 <- 97
    pushl   %eax                   
    leal    v1, %eax                #  10:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  12:     call   t2 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    leal    v4, %eax                #  13:     &()    t3 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     param  3 <- t3
    pushl   %eax                   
    leal    v3, %eax                #  15:     &()    t4 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     param  2 <- t4
    pushl   %eax                   
    leal    v2, %eax                #  17:     &()    t5 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  18:     param  1 <- t5
    pushl   %eax                   
    movl    $78163, %eax            #  19:     sub    t6 <- 78163, 82692
    movl    $82692, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     sub    t7 <- t6, 97700
    movl    $97700, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     add    t8 <- t7, 28404
    movl    $28404, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t9 <- t8, 6517
    movl    $6517, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  24:     call   t10 <- f1
    addl    $16, %esp              
    movl    %eax, -24(%ebp)        
    jmp     l_test_5                #  25:     goto   5
l_test_7_if_false:
l_test_5:

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
v1:                                 # <array 3 of <array 3 of <array 1 of <array 2 of <array 6 of <int>>>>>>
    .long    5
    .long    3
    .long    3
    .long    1
    .long    2
    .long    6
    .skip  432
v2:                                 # <array 6 of <array 3 of <array 8 of <array 8 of <array 7 of <int>>>>>>
    .long    5
    .long    6
    .long    3
    .long    8
    .long    8
    .long    7
    .skip 32256
v3:                                 # <array 7 of <array 7 of <array 2 of <array 9 of <array 5 of <char>>>>>>
    .long    5
    .long    7
    .long    7
    .long    2
    .long    9
    .long    5
    .skip 4410
    .align   4
v4:                                 # <array 6 of <array 2 of <array 2 of <array 6 of <array 5 of <int>>>>>>
    .long    5
    .long    6
    .long    2
    .long    2
    .long    6
    .long    5
    .skip 2880








    # end of global data section
    #-----------------------------------------

    .end
##################################################
