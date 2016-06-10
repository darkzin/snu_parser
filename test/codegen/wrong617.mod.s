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
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t3       <bool> %ebp-62 ]
    #    -63(%ebp)   1  [ $t4       <char> %ebp-63 ]
    #    -64(%ebp)   1  [ $t5       <bool> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 2 of <array 7 of <array 8 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #    -84(%ebp)   4  [ $v3       <int> %ebp-84 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_1                  #   0:     goto   1
l_f0_1:
    movl    $1, %eax                #   2:     assign t3 <- 1
    movb    %al, -62(%ebp)         
    jmp     l_f0_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t3 <- 0
    movb    %al, -62(%ebp)         
l_f0_3:
    movzbl  -62(%ebp), %eax         #   6:     assign v1 <- t3
    movb    %al, 12(%ebp)          
    movl    $99, %eax               #   7:     if     99 < 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   8:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_9                  #  10:     goto   9
l_f0_9:
    movl    $14976, %eax            #  12:     if     14976 > 47329 goto 13_if_true
    movl    $47329, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  13:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  15:     goto   12
l_f0_14_if_false:
l_f0_12:
    movl    $64907, %eax            #  18:     assign v3 <- 64907
    movl    %eax, -84(%ebp)        
    call    dummyCHARfunc           #  19:     call   t4 <- dummyCHARfunc
    movb    %al, -63(%ebp)         
l_f0_19_while_cond:
    jmp     l_f0_18                 #  21:     goto   18
    jmp     l_f0_19_while_cond      #  22:     goto   19_while_cond
l_f0_18:
    jmp     l_f0_5                  #  24:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $1, %eax                #  27:     if     1 # 0 goto 25
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_25                
    jmp     l_f0_26                 #  28:     goto   26
l_f0_25:
    movl    $1, %eax                #  30:     assign t5 <- 1
    movb    %al, -64(%ebp)         
    jmp     l_f0_27                 #  31:     goto   27
l_f0_26:
    movl    $0, %eax                #  33:     assign t5 <- 0
    movb    %al, -64(%ebp)         
l_f0_27:
    movl    $2, %eax                #  35:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $31375, %eax            #  38:     mul    t7 <- 31375, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     add    t8 <- t7, 68988
    movl    $68988, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  40:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  41:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  42:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  43:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  44:     add    t11 <- t10, 21698
    movl    $21698, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  45:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  46:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  47:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  48:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  49:     add    t14 <- t13, 45065
    movl    $45065, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  50:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  51:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  52:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  53:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  54:     add    t17 <- t16, 61159
    movl    $61159, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  55:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  56:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  57:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  58:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  59:     add    t21 <- v2, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -64(%ebp), %eax         #  60:     assign @t21 <- t5
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  61:     call   t22 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         
    jmp     l_f0_21                 #  62:     goto   21
l_f0_21:

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 2 of <array 5 of <array 7 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 9 of <array 1 of <array 7 of <array 5 of <bool>>>>>>> %ebp+16 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $4078, %eax             #   2:     mul    t4 <- 4078, 21388
    movl    $21388, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t5 <- t4, 38867
    movl    $38867, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     return t5
    jmp     l_f1_exit              

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
    #    -84(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 2 of <array 7 of <array 8 of <array 3 of <bool>>>>>>> %ebp-84 ]
    #    -85(%ebp)   1  [ $t4       <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $t5       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t6       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t7       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $t9       <bool> %ebp-105 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 6 of <array 9 of <array 7 of <array 5 of <int>>>>>>> %ebp+8 ]
    #   -3492(%ebp)  3384  [ $v1       <array 10 of <array 2 of <array 7 of <array 8 of <array 3 of <bool>>>>>> %ebp-3492 ]
    #   -3496(%ebp)   4  [ $v2       <int> %ebp-3496 ]
    #   -3497(%ebp)   1  [ $v3       <bool> %ebp-3497 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3488, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $872, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3492(%ebp)          # local array 'v1': 5 dimensions
    movl    $10,-3488(%ebp)         #   dimension 1: 10 elements
    movl    $2,-3484(%ebp)          #   dimension 2: 2 elements
    movl    $7,-3480(%ebp)          #   dimension 3: 7 elements
    movl    $8,-3476(%ebp)          #   dimension 4: 8 elements
    movl    $3,-3472(%ebp)          #   dimension 5: 3 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    leal    -3492(%ebp), %eax       #   2:     &()    t3 <- v1
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   3:     param  2 <- t3
    pushl   %eax                   
    movl    $92394, %eax            #   4:     if     92394 > 91969 goto 4
    movl    $91969, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_4                 
    jmp     l_f2_5                  #   5:     goto   5
l_f2_4:
    movl    $1, %eax                #   7:     assign t4 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f2_6                  #   8:     goto   6
l_f2_5:
    movl    $0, %eax                #  10:     assign t4 <- 0
    movb    %al, -85(%ebp)         
l_f2_6:
    movzbl  -85(%ebp), %eax         #  12:     param  1 <- t4
    pushl   %eax                   
    call    ReadInt                 #  13:     call   t5 <- ReadInt
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  14:     add    t6 <- t5, 92087
    movl    $92087, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  15:     sub    t7 <- t6, 77153
    movl    $77153, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  16:     add    t8 <- t7, 5032
    movl    $5032, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $79356, %eax            #  17:     if     79356 >= t8 goto 8
    movl    -104(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jge     l_f2_8                 
    jmp     l_f2_9                  #  18:     goto   9
l_f2_8:
    movl    $1, %eax                #  20:     assign t9 <- 1
    movb    %al, -105(%ebp)        
    jmp     l_f2_10                 #  21:     goto   10
l_f2_9:
    movl    $0, %eax                #  23:     assign t9 <- 0
    movb    %al, -105(%ebp)        
l_f2_10:
    movzbl  -105(%ebp), %eax        #  25:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  26:     call   f0
    addl    $12, %esp              
    jmp     l_f2_1_while_cond       #  27:     goto   1_while_cond
l_f2_0:
l_f2_13_while_cond:
    movl    $7894, %eax             #  30:     if     7894 > 63290 goto 14_while_body
    movl    $63290, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_14_while_body     
    jmp     l_f2_12                 #  31:     goto   12
l_f2_14_while_body:
    jmp     l_f2_18_if_false        #  33:     goto   18_if_false
    jmp     l_f2_16                 #  34:     goto   16
l_f2_18_if_false:
l_f2_16:
    movl    $0, %eax                #  37:     return 0
    jmp     l_f2_exit              
l_f2_21_while_cond:
    movl    $10390, %eax            #  39:     if     10390 > 90808 goto 22_while_body
    movl    $90808, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_22_while_body     
    jmp     l_f2_20                 #  40:     goto   20
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  42:     goto   21_while_cond
l_f2_20:
    movl    $2, %eax                #  44:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  45:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  46:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $22738, %eax            #  47:     mul    t11 <- 22738, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  48:     add    t12 <- t11, 72420
    movl    $72420, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  49:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  50:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  51:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  52:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  53:     add    t15 <- t14, 65210
    movl    $65210, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  54:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  55:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  56:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  57:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  58:     add    t18 <- t17, 58889
    movl    $58889, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  59:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  60:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  61:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  62:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  63:     add    t21 <- t20, 35463
    movl    $35463, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  64:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  65:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  66:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  67:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  68:     add    t25 <- v0, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $72229, %eax            #  69:     assign @t25 <- 72229
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $1, %eax                #  70:     assign v3 <- 1
    movb    %al, -3497(%ebp)       
    jmp     l_f2_13_while_cond      #  71:     goto   13_while_cond
l_f2_12:
    call    dummyINTfunc            #  73:     call   t26 <- dummyINTfunc
    movl    %eax, -80(%ebp)        

l_f2_exit:
    # epilogue
    addl    $3488, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   4:     if     99 <= t1 goto 4_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_4_if_true       
    jmp     l_test_5_if_false       #   5:     goto   5_if_false
l_test_4_if_true:
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #   8:     goto   8_while_cond
    jmp     l_test_3                #   9:     goto   3
l_test_5_if_false:
l_test_3:
    call    ReadInt                 #  12:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_15_while_cond:
    jmp     l_test_15_while_cond    #  14:     goto   15_while_cond
    jmp     l_test_11               #  15:     goto   11
l_test_11:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
