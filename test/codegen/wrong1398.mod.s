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
    #    -62(%ebp)   1  [ $t23      <bool> %ebp-62 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 18 of <array 14 of <array 12 of <array 88 of <array 93 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 75 of <array 25 of <array 94 of <array 82 of <array 41 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 80 of <array 41 of <array 21 of <array 38 of <array 7 of <char>>>>>>> %ebp+20 ]
    #    -85(%ebp)   1  [ $v5       <char> %ebp-85 ]

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
    jmp     l_f0_0                  #   2:     goto   0
    jmp     l_f0_5                  #   3:     goto   5
l_f0_5:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    ReadInt                 #   7:     call   t5 <- ReadInt
    movl    %eax, -68(%ebp)        
    movl    $68289, %eax            #   8:     if     68289 # t5 goto 9_if_true
    movl    -68(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #   9:     goto   10_if_false
l_f0_9_if_true:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  12:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  13:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $85233, %eax            #  14:     mul    t7 <- 85233, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  15:     add    t8 <- t7, 91361
    movl    $91361, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  17:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  18:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  19:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     add    t11 <- t10, 43608
    movl    $43608, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  22:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  23:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  24:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t14 <- t13, 62942
    movl    $62942, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  27:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  28:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     add    t17 <- t16, 7982
    movl    $7982, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  32:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  33:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  34:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    20(%ebp), %eax          #  35:     add    t21 <- v4, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $100, %eax              #  36:     assign @t21 <- 100
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  37:     call   t22 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         
l_f0_15_while_cond:
    jmp     l_f0_15_while_cond      #  39:     goto   15_while_cond
    jmp     l_f0_8                  #  40:     goto   8
l_f0_10_if_false:
l_f0_8:
    call    dummyBOOLfunc           #  43:     call   t23 <- dummyBOOLfunc
    movb    %al, -62(%ebp)         

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 32 of <array 79 of <array 71 of <array 37 of <array 2 of <bool>>>>>>> %ebp+8 ]

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
l_f1_1_while_cond:
    movl    $99, %eax               #   1:     if     99 < 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyCHARfunc           #   4:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_exit              
l_f1_7_while_cond:
    movl    $18536, %eax            #   9:     add    t6 <- 18536, 11804
    movl    $11804, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t7 <- t6, 24727
    movl    $24727, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $74247, %eax            #  11:     if     74247 <= t7 goto 8_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_8_while_body      
    jmp     l_f1_6                  #  12:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  14:     goto   7_while_cond
l_f1_6:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 18 of <array 14 of <array 12 of <array 88 of <array 93 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 18 of <array 14 of <array 12 of <array 88 of <array 93 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <ptr(4) to <array 18 of <array 14 of <array 12 of <array 88 of <array 93 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <ptr(4) to <array 18 of <array 14 of <array 12 of <array 88 of <array 93 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <ptr(4) to <array 18 of <array 14 of <array 12 of <array 88 of <array 93 of <bool>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <ptr(4) to <array 18 of <array 14 of <array 12 of <array 88 of <array 93 of <bool>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t5       <ptr(4) to <array 80 of <array 41 of <array 21 of <array 38 of <array 7 of <char>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t6       <ptr(4) to <array 75 of <array 25 of <array 94 of <array 82 of <array 41 of <int>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t7       <ptr(4) to <array 18 of <array 14 of <array 12 of <array 88 of <array 93 of <bool>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t8       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t9       <int> %ebp-124 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 73 of <array 28 of <array 37 of <array 69 of <array 62 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 36 of <array 3 of <array 71 of <array 73 of <array 76 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 94 of <array 88 of <array 16 of <array 28 of <array 75 of <char>>>>>>> %ebp+20 ]
    #   -24748564(%ebp)  24748440  [ $v5       <array 18 of <array 14 of <array 12 of <array 88 of <array 93 of <bool>>>>>> %ebp-24748564 ]
    #   1900008708(%ebp)  -1924757272  [ $v6       <array 75 of <array 25 of <array 94 of <array 82 of <array 41 of <int>>>>>> %ebp+1900008708 ]
    #   1881686604(%ebp)  18322104  [ $v7       <array 80 of <array 41 of <array 21 of <array 38 of <array 7 of <char>>>>>> %ebp+1881686604 ]
    #   1881686603(%ebp)   1  [ $v8       <bool> %ebp+1881686603 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1881686612, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-470421653, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-24748564(%ebp)      # local array 'v5': 5 dimensions
    movl    $18,-24748560(%ebp)     #   dimension 1: 18 elements
    movl    $14,-24748556(%ebp)     #   dimension 2: 14 elements
    movl    $12,-24748552(%ebp)     #   dimension 3: 12 elements
    movl    $88,-24748548(%ebp)     #   dimension 4: 88 elements
    movl    $93,-24748544(%ebp)     #   dimension 5: 93 elements
    movl    $5,1900008708(%ebp)     # local array 'v6': 5 dimensions
    movl    $75,1900008712(%ebp)    #   dimension 1: 75 elements
    movl    $25,1900008716(%ebp)    #   dimension 2: 25 elements
    movl    $94,1900008720(%ebp)    #   dimension 3: 94 elements
    movl    $82,1900008724(%ebp)    #   dimension 4: 82 elements
    movl    $41,1900008728(%ebp)    #   dimension 5: 41 elements
    movl    $5,1881686604(%ebp)     # local array 'v7': 5 dimensions
    movl    $80,1881686608(%ebp)    #   dimension 1: 80 elements
    movl    $41,1881686612(%ebp)    #   dimension 2: 41 elements
    movl    $21,1881686616(%ebp)    #   dimension 3: 21 elements
    movl    $38,1881686620(%ebp)    #   dimension 4: 38 elements
    movl    $7,1881686624(%ebp)     #   dimension 5: 7 elements

    # function body
    leal    1881686604(%ebp), %eax  #   0:     &()    t5 <- v7
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   1:     param  3 <- t5
    pushl   %eax                   
    leal    1900008708(%ebp), %eax  #   2:     &()    t6 <- v6
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   3:     param  2 <- t6
    pushl   %eax                   
    leal    -24748564(%ebp), %eax   #   4:     &()    t7 <- v5
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #   5:     param  1 <- t7
    pushl   %eax                   
    call    dummyINTfunc            #   6:     call   t8 <- dummyINTfunc
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #   7:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #   8:     call   t9 <- f0
    addl    $16, %esp              
    movl    %eax, -124(%ebp)       
    jmp     l_f2_3                  #   9:     goto   3
    movl    $1, %eax                #  10:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_4                  #  11:     goto   4
l_f2_3:
    movl    $0, %eax                #  13:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_4:
    leal    -24748564(%ebp), %eax   #  15:     &()    t11 <- v5
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    leal    -24748564(%ebp), %eax   #  17:     &()    t12 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  0 <- t12
    pushl   %eax                   
    call    DIM                     #  19:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $88714, %eax            #  20:     mul    t14 <- 88714, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t15 <- t14, 63477
    movl    $63477, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    leal    -24748564(%ebp), %eax   #  23:     &()    t16 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     param  0 <- t16
    pushl   %eax                   
    call    DIM                     #  25:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  26:     mul    t18 <- t15, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  27:     add    t19 <- t18, 34564
    movl    $34564, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    leal    -24748564(%ebp), %eax   #  29:     &()    t20 <- v5
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  30:     param  0 <- t20
    pushl   %eax                   
    call    DIM                     #  31:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  32:     mul    t22 <- t19, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  33:     add    t23 <- t22, 5475
    movl    $5475, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    leal    -24748564(%ebp), %eax   #  35:     &()    t24 <- v5
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  36:     param  0 <- t24
    pushl   %eax                   
    call    DIM                     #  37:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  38:     mul    t26 <- t23, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  39:     add    t27 <- t26, 87087
    movl    $87087, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  40:     mul    t28 <- t27, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    leal    -24748564(%ebp), %eax   #  41:     &()    t29 <- v5
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  42:     param  0 <- t29
    pushl   %eax                   
    call    DOFS                    #  43:     call   t30 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  44:     add    t31 <- t28, t30
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -20(%ebp), %eax         #  45:     add    t32 <- t11, t31
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movzbl  -13(%ebp), %eax         #  46:     assign @t32 <- t10
    movl    -104(%ebp), %edi       
    movb    %al, (%edi)            
l_f2_10_while_cond:
    movl    $1, %eax                #  48:     return 1
    jmp     l_f2_exit              
l_f2_14_while_cond:
    jmp     l_f2_14_while_cond      #  50:     goto   14_while_cond
    jmp     l_f2_10_while_cond      #  51:     goto   10_while_cond

l_f2_exit:
    # epilogue
    addl    $-1881686612, %esp      # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]

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
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_0                #   2:     goto   0
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
l_test_0:
    call    dummyBOOLfunc           #   5:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $57287, %eax            #   6:     div    t1 <- 57287, 86793
    movl    $86793, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     assign v0 <- t1
    movl    %eax, v0               
    jmp     l_test_7_if_true        #   8:     goto   7_if_true
    jmp     l_test_7_if_true        #   9:     goto   7_if_true
    jmp     l_test_7_if_true        #  10:     goto   7_if_true
    jmp     l_test_7_if_true        #  11:     goto   7_if_true
l_test_7_if_true:
    call    dummyBOOLfunc           #  13:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_6                #  14:     goto   6
l_test_6:
l_test_17_while_cond:
    movl    $91305, %eax            #  17:     if     91305 < 348 goto 18_while_body
    movl    $348, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_18_while_body   
    jmp     l_test_16               #  18:     goto   16
l_test_18_while_body:
    movl    $80634, %eax            #  20:     if     80634 >= 16425 goto 21_if_true
    movl    $16425, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_21_if_true      
    jmp     l_test_22_if_false      #  21:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  23:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_exit            
    jmp     l_test_17_while_cond    #  27:     goto   17_while_cond
l_test_16:
l_test_26_while_cond:
    call    dummyCHARfunc           #  30:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $97, %eax               #  31:     if     97 < t3 goto 27_while_body
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_27_while_body   
    jmp     l_test_25               #  32:     goto   25
l_test_27_while_body:
    movl    $98, %eax               #  34:     if     98 <= 99 goto 30
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_30              
    jmp     l_test_31               #  35:     goto   31
l_test_30:
    movl    $1, %eax                #  37:     assign t4 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_test_32               #  38:     goto   32
l_test_31:
    movl    $0, %eax                #  40:     assign t4 <- 0
    movb    %al, -23(%ebp)         
l_test_32:
    movzbl  -23(%ebp), %eax         #  42:     assign v1 <- t4
    movb    %al, v1                
    jmp     l_test_26_while_cond    #  43:     goto   26_while_cond
l_test_25:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
