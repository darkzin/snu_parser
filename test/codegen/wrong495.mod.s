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
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t3       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t4       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t5       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t6       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t7       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 1 of <array 1 of <array 6 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 9 of <array 4 of <array 4 of <array 5 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #   1:     assign v1 <- t2
    movb    %al, 12(%ebp)          
    movl    $93043, %eax            #   2:     mul    t3 <- 93043, 95916
    movl    $95916, %ebx           
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   3:     mul    t4 <- t3, 64250
    movl    $64250, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   4:     div    t5 <- t4, 66081
    movl    $66081, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   5:     div    t6 <- t5, 42327
    movl    $42327, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   6:     div    t7 <- t6, 50006
    movl    $50006, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    $35184, %eax            #   7:     mul    t8 <- 35184, 70628
    movl    $70628, %ebx           
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  11:     mul    t10 <- t8, t9
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     add    t11 <- t10, 50228
    movl    $50228, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  16:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     add    t14 <- t13, 29552
    movl    $29552, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     add    t17 <- t16, 26310
    movl    $26310, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  26:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  27:     add    t20 <- t19, 67092
    movl    $67092, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  28:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  30:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  31:     add    t23 <- t21, t22
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  32:     add    t24 <- v0, t23
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -96(%ebp), %eax         #  33:     assign @t24 <- t7
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyProcedure          #  34:     call   dummyProcedure

l_f0_exit:
    # epilogue
    addl    $92, %esp               # remove locals
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
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t3       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t31      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t32      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t33      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t34      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t35      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t4       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t5       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t6       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 4 of <array 1 of <array 4 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 4 of <array 5 of <array 1 of <array 6 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 9 of <array 2 of <array 2 of <array 5 of <int>>>>>>> %ebp+20 ]
    #   -152(%ebp)   4  [ $v4       <int> %ebp-152 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $140, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $35, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $57798, %eax            #  10:     mul    t3 <- 57798, t2
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  11:     add    t4 <- t3, 2676
    movl    $2676, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  15:     mul    t6 <- t4, t5
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  16:     add    t7 <- t6, 11530
    movl    $11530, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  20:     mul    t9 <- t7, t8
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  21:     add    t10 <- t9, 15939
    movl    $15939, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  24:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  25:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     add    t13 <- t12, 98877
    movl    $98877, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     mul    t14 <- t13, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    20(%ebp), %eax          #  28:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  29:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  30:     add    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  31:     add    t17 <- v3, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $44427, %eax            #  32:     assign @t17 <- 44427
    movl    -44(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_10_if_false        #  33:     goto   10_if_false
    jmp     l_f1_8                  #  34:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_2_while_cond       #  37:     goto   2_while_cond
l_f1_1:
    movl    $19328, %eax            #  39:     add    t18 <- 19328, 63001
    movl    $63001, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  40:     sub    t19 <- t18, 2584
    movl    $2584, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $2, %eax                #  41:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  42:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  43:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  44:     mul    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  45:     add    t22 <- t21, 9740
    movl    $9740, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  46:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  47:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  48:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  49:     mul    t24 <- t22, t23
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  50:     add    t25 <- t24, 32277
    movl    $32277, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  51:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  52:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  53:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  54:     mul    t27 <- t25, t26
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  55:     add    t28 <- t27, 51591
    movl    $51591, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $5, %eax                #  56:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  57:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  58:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  59:     mul    t30 <- t28, t29
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  60:     add    t31 <- t30, 66576
    movl    $66576, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  61:     mul    t32 <- t31, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    12(%ebp), %eax          #  62:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  63:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  64:     add    t34 <- t32, t33
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    12(%ebp), %eax          #  65:     add    t35 <- v1, t34
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $99, %eax               #  66:     assign @t35 <- 99
    movl    -124(%ebp), %edi       
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $140, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    jmp     l_f2_exit              
l_f2_3_while_cond:
    movl    $69832, %eax            #   3:     mul    t2 <- 69832, 50711
    movl    $50711, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     if     t2 = 37372 goto 4_while_body
    movl    $37372, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_4_while_body      
    jmp     l_f2_2                  #   5:     goto   2
l_f2_4_while_body:
l_f2_7_while_cond:
    movl    $36204, %eax            #   8:     if     36204 <= 92230 goto 8_while_body
    movl    $92230, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_8_while_body      
    jmp     l_f2_6                  #   9:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  11:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_3_while_cond       #  13:     goto   3_while_cond
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_1_if_true        #   1:     goto   1_if_true
    jmp     l_test_1_if_true        #   2:     goto   1_if_true
    jmp     l_test_1_if_true        #   3:     goto   1_if_true
    jmp     l_test_1_if_true        #   4:     goto   1_if_true
    jmp     l_test_1_if_true        #   5:     goto   1_if_true
    jmp     l_test_2_if_false       #   6:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #  11:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #  12:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  13:     if     t1 = 1 goto 12_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_12_if_true      
    jmp     l_test_13_if_false      #  14:     goto   13_if_false
l_test_12_if_true:
    movl    $46217, %eax            #  16:     if     46217 >= 62259 goto 15_if_true
    movl    $62259, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_15_if_true      
    jmp     l_test_16_if_false      #  17:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  19:     goto   14
l_test_16_if_false:
l_test_14:
l_test_19_while_cond:
    jmp     l_test_18               #  23:     goto   18
    jmp     l_test_19_while_cond    #  24:     goto   19_while_cond
l_test_18:
    jmp     l_test_11               #  26:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
