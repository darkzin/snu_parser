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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 79 of <array 67 of <array 11 of <array 87 of <array 34 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 47 of <array 73 of <array 48 of <array 71 of <array 14 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -26(%ebp)   1  [ $v4       <bool> %ebp-26 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   5:     goto   4
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_1_while_cond       #   8:     goto   1_while_cond
l_f0_0:
    movl    $29874, %eax            #  10:     add    t4 <- 29874, 80610
    movl    $80610, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t5 <- t4, 38086
    movl    $38086, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     sub    t6 <- t5, 46539
    movl    $46539, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     if     t6 # 93829 goto 8
    movl    $93829, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_8                 
    jmp     l_f0_9                  #  14:     goto   9
l_f0_8:
    movl    $1, %eax                #  16:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_10                 #  17:     goto   10
l_f0_9:
    movl    $0, %eax                #  19:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f0_10:
    movzbl  -25(%ebp), %eax         #  21:     assign v4 <- t7
    movb    %al, -26(%ebp)         
    call    dummyProcedure          #  22:     call   dummyProcedure

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 83 of <array 6 of <array 10 of <array 79 of <array 19 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 74 of <array 98 of <array 32 of <array 51 of <array 47 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 22 of <array 29 of <array 10 of <array 97 of <char>>>>>>> %ebp+20 ]

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
    movl    $11195, %eax            #   0:     sub    t4 <- 11195, 44667
    movl    $44667, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $73806, %eax            #   1:     add    t5 <- 73806, 18569
    movl    $18569, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t4 >= t5 goto 1_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   3:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyINTfunc            #   8:     call   t6 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $65910, %eax            #   9:     mul    t7 <- 65910, t6
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     return t7
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  11:     call   t8 <- dummyCHARfunc
    movb    %al, -29(%ebp)         

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 47 of <array 73 of <array 48 of <array 71 of <array 14 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 47 of <array 73 of <array 48 of <array 71 of <array 14 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 47 of <array 73 of <array 48 of <array 71 of <array 14 of <char>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 47 of <array 73 of <array 48 of <array 71 of <array 14 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 47 of <array 73 of <array 48 of <array 71 of <array 14 of <char>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t31      <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $t4       <ptr(4) to <array 47 of <array 73 of <array 48 of <array 71 of <array 14 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t5       <ptr(4) to <array 79 of <array 67 of <array 11 of <array 87 of <array 34 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t6       <int> %ebp-112 ]
    #   -113(%ebp)   1  [ $t7       <char> %ebp-113 ]
    #   -120(%ebp)   4  [ $t8       <ptr(4) to <array 47 of <array 73 of <array 48 of <array 71 of <array 14 of <char>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t9       <int> %ebp-124 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 54 of <array 28 of <array 59 of <array 91 of <array 66 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #   -688894684(%ebp)  688894560  [ $v2       <array 79 of <array 67 of <array 11 of <array 87 of <array 34 of <int>>>>>> %ebp-688894684 ]
    #   -852594580(%ebp)  163699896  [ $v3       <array 47 of <array 73 of <array 48 of <array 71 of <array 14 of <char>>>>>> %ebp-852594580 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $852594568, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $213148642, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-688894684(%ebp)     # local array 'v2': 5 dimensions
    movl    $79,-688894680(%ebp)    #   dimension 1: 79 elements
    movl    $67,-688894676(%ebp)    #   dimension 2: 67 elements
    movl    $11,-688894672(%ebp)    #   dimension 3: 11 elements
    movl    $87,-688894668(%ebp)    #   dimension 4: 87 elements
    movl    $34,-688894664(%ebp)    #   dimension 5: 34 elements
    movl    $5,-852594580(%ebp)     # local array 'v3': 5 dimensions
    movl    $47,-852594576(%ebp)    #   dimension 1: 47 elements
    movl    $73,-852594572(%ebp)    #   dimension 2: 73 elements
    movl    $48,-852594568(%ebp)    #   dimension 3: 48 elements
    movl    $71,-852594564(%ebp)    #   dimension 4: 71 elements
    movl    $14,-852594560(%ebp)    #   dimension 5: 14 elements

    # function body
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     param  3 <- 97
    pushl   %eax                   
    leal    -852594580(%ebp), %eax  #   2:     &()    t4 <- v3
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   3:     param  2 <- t4
    pushl   %eax                   
    leal    -688894684(%ebp), %eax  #   4:     &()    t5 <- v2
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   5:     param  1 <- t5
    pushl   %eax                   
    movl    $16925, %eax            #   6:     sub    t6 <- 16925, 4866
    movl    $4866, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   7:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   8:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -113(%ebp)        
    movzbl  -113(%ebp), %eax        #   9:     if     t7 >= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
l_f2_0:
    leal    -852594580(%ebp), %eax  #  14:     &()    t8 <- v3
    movl    %eax, -120(%ebp)       
    movl    $78882, %eax            #  15:     div    t9 <- 78882, 60213
    movl    $60213, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    leal    -852594580(%ebp), %eax  #  17:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  19:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -124(%ebp), %eax        #  20:     mul    t12 <- t9, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     add    t13 <- t12, 89032
    movl    $89032, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    leal    -852594580(%ebp), %eax  #  23:     &()    t14 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  25:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  26:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  27:     add    t17 <- t16, 89842
    movl    $89842, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    leal    -852594580(%ebp), %eax  #  29:     &()    t18 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  31:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  32:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  33:     add    t21 <- t20, 46934
    movl    $46934, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    leal    -852594580(%ebp), %eax  #  35:     &()    t22 <- v3
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  36:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  37:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  38:     mul    t24 <- t21, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     add    t25 <- t24, 37428
    movl    $37428, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  40:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    -852594580(%ebp), %eax  #  41:     &()    t27 <- v3
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  42:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  43:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  44:     add    t29 <- t26, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -120(%ebp), %eax        #  45:     add    t30 <- t8, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $100, %eax              #  46:     assign @t30 <- 100
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $77737, %eax            #  47:     if     77737 < 92181 goto 6_if_true
    movl    $92181, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  48:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_14                 #  50:     goto   14
    movl    $1, %eax                #  51:     assign t31 <- 1
    movb    %al, -97(%ebp)         
    jmp     l_f2_15                 #  52:     goto   15
l_f2_14:
    movl    $0, %eax                #  54:     assign t31 <- 0
    movb    %al, -97(%ebp)         
l_f2_15:
    movzbl  -97(%ebp), %eax         #  56:     if     t31 = 0 goto 10_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  57:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  59:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_5                  #  62:     goto   5
l_f2_7_if_false:
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $852594568, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 54 of <array 28 of <array 59 of <array 91 of <array 66 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
l_test_2_while_body:
    movl    $59543, %eax            #   4:     if     59543 > 34014 goto 6
    movl    $34014, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6               
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   8:     goto   8
l_test_7:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movzbl  -13(%ebp), %eax         #  12:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_1_while_cond     #  13:     goto   1_while_cond
l_test_14_while_cond:
    movl    $100, %eax              #  15:     if     100 < 97 goto 15_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  16:     goto   13
l_test_15_while_body:
    movl    $97, %eax               #  18:     if     97 < 97 goto 18_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_18_if_true      
    jmp     l_test_19_if_false      #  19:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  21:     goto   17
l_test_19_if_false:
l_test_17:
    call    dummyCHARfunc           #  24:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  25:     param  1 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  26:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  28:     call   f2
    addl    $8, %esp               
    jmp     l_test_14_while_cond    #  29:     goto   14_while_cond
l_test_13:
    jmp     l_test_10               #  31:     goto   10
l_test_10:
    call    dummyBOOLfunc           #  33:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 54 of <array 28 of <array 59 of <array 91 of <array 66 of <char>>>>>>
    .long    5
    .long   54
    .long   28
    .long   59
    .long   91
    .long   66
    .skip 535783248








    # end of global data section
    #-----------------------------------------

    .end
##################################################
