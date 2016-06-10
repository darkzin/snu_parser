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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t3       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t4       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t5       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t6       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t7       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t8       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t9       <int> %ebp-124 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 3 of <array 5 of <array 6 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #   -125(%ebp)   1  [ $v3       <char> %ebp-125 ]

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
l_f0_1_while_cond:
    movl    $44041, %eax            #   1:     div    t0 <- 44041, 99865
    movl    $99865, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t1 <- t0, 37407
    movl    $37407, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t2 <- t1, 99319
    movl    $99319, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   4:     mul    t3 <- t2, 84348
    movl    $84348, %ebx           
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   5:     div    t4 <- t3, 44231
    movl    $44231, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   6:     sub    t5 <- t4, 41766
    movl    $41766, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   7:     if     t5 > 20537 goto 2_while_body
    movl    $20537, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
l_f0_5_while_cond:
    movl    $39483, %eax            #  13:     sub    t6 <- 39483, 47136
    movl    $47136, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  14:     sub    t7 <- t6, 4062
    movl    $4062, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $80856, %eax            #  15:     mul    t8 <- 80856, 12967
    movl    $12967, %ebx           
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  16:     div    t9 <- t8, 37361
    movl    $37361, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -116(%ebp), %eax        #  17:     sub    t10 <- t7, t9
    movl    -124(%ebp), %ebx       
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $46870, %eax            #  18:     if     46870 > t10 goto 6_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_6_while_body      
    jmp     l_f0_4                  #  19:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  21:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_exit              
    movl    $52435, %eax            #  24:     param  0 <- 52435
    pushl   %eax                   
    call    WriteInt                #  25:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #  26:     call   t11 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $2, %eax                #  27:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  29:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $41319, %eax            #  30:     mul    t13 <- 41319, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t14 <- t13, 50021
    movl    $50021, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  32:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  33:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  34:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  35:     mul    t16 <- t14, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  36:     add    t17 <- t16, 91453
    movl    $91453, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  37:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  38:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  39:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  40:     mul    t19 <- t17, t18
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  41:     add    t20 <- t19, 49535
    movl    $49535, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  42:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  43:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  44:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  45:     mul    t22 <- t20, t21
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  46:     add    t23 <- t22, 29437
    movl    $29437, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  47:     mul    t24 <- t23, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  48:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  49:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  50:     add    t26 <- t24, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    8(%ebp), %eax           #  51:     add    t27 <- v0, t26
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $61443, %eax            #  52:     assign @t27 <- 61443
    movl    -96(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $98, %eax               #  53:     assign v3 <- 98
    movb    %al, -125(%ebp)        
    jmp     l_f0_8                  #  54:     goto   8
l_f0_8:

l_f0_exit:
    # epilogue
    addl    $116, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 7 of <array 9 of <array 4 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    jmp     l_f1_exit              
    movl    $27804, %eax            #   1:     add    t0 <- 27804, 5149
    movl    $5149, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t1 <- t0, 58652
    movl    $58652, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   4:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   5:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $21962, %eax            #   6:     mul    t3 <- 21962, t2
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    call    dummyINTfunc            #   7:     call   t4 <- dummyINTfunc
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #   8:     add    t5 <- t3, t4
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  12:     mul    t7 <- t5, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  13:     add    t8 <- t7, 34065
    movl    $34065, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  17:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     add    t11 <- t10, 13519
    movl    $13519, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  22:     mul    t13 <- t11, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     add    t14 <- t13, 63231
    movl    $63231, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  25:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  26:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  27:     add    t17 <- t15, t16
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  28:     add    t18 <- v1, t17
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -20(%ebp), %eax         #  29:     assign @t18 <- t1
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
l_f1_3_while_cond:
    jmp     l_f1_2                  #  31:     goto   2
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #  33:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 5 of <array 9 of <array 4 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 6 of <array 1 of <array 5 of <array 2 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #   2:     if     97 < 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
l_f2_3_if_true:
l_f2_7_while_cond:
    jmp     l_f2_7_while_cond       #   6:     goto   7_while_cond
    movl    $98, %eax               #   7:     if     98 = 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #   8:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  10:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $15337, %eax            #  13:     if     15337 <= 25680 goto 14_if_true
    movl    $25680, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  14:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  16:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_2                  #  19:     goto   2
l_f2_4_if_false:
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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
    movl    $81020, %eax            #   1:     assign v0 <- 81020
    movl    %eax, v0               
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
