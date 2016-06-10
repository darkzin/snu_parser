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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $v0       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $v1       <bool> %ebp-27 ]

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
    movl    $99, %eax               #   0:     if     99 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $69590, %eax            #   4:     if     69590 > 73416 goto 6_while_body
    movl    $73416, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_6_while_body      
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
l_f0_4:
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #  10:     goto   9_while_cond
    movl    $99, %eax               #  11:     assign v0 <- 99
    movb    %al, -26(%ebp)         
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  15:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_17_while_cond:
    jmp     l_f0_17_while_cond      #  17:     goto   17_while_cond
    movl    $0, %eax                #  18:     return 0
    jmp     l_f0_exit              
    movl    $94716, %eax            #  19:     if     94716 <= 85600 goto 21_if_true
    movl    $85600, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_21_if_true        
    jmp     l_f0_22_if_false        #  20:     goto   22_if_false
l_f0_21_if_true:
    jmp     l_f0_20                 #  22:     goto   20
l_f0_22_if_false:
l_f0_20:
    jmp     l_f0_12                 #  25:     goto   12
l_f0_12:
    movl    $62980, %eax            #  27:     add    t2 <- 62980, 63270
    movl    $63270, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     sub    t3 <- t2, 78106
    movl    $78106, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     if     t3 <= 14398 goto 25
    movl    $14398, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_25                
    jmp     l_f0_26                 #  30:     goto   26
l_f0_25:
    movl    $1, %eax                #  32:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_27                 #  33:     goto   27
l_f0_26:
    movl    $0, %eax                #  35:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f0_27:
    movzbl  -25(%ebp), %eax         #  37:     assign v1 <- t4
    movb    %al, -27(%ebp)         

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t31      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t32      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t33      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t34      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t35      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t4       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t5       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t6       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t7       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t8       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t9       <int> %ebp-152 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 29 of <array 68 of <array 57 of <array 55 of <array 99 of <int>>>>>>> %ebp+16 ]

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
    call    WriteLn                 #   0:     call   WriteLn
l_f1_2_while_cond:
    jmp     l_f1_6                  #   2:     goto   6
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   4:     goto   7
l_f1_6:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movl    $1, %eax                #   8:     if     1 = t1 goto 3_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_while_body:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $73649, %eax            #  14:     mul    t3 <- 73649, t2
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  15:     add    t4 <- t3, 92174
    movl    $92174, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  19:     mul    t6 <- t4, t5
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  20:     add    t7 <- t6, 43715
    movl    $43715, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  24:     mul    t9 <- t7, t8
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  25:     add    t10 <- t9, 41946
    movl    $41946, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  29:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     add    t13 <- t12, 44233
    movl    $44233, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     mul    t14 <- t13, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    16(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  33:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  34:     add    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  35:     add    t17 <- v2, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $21855, %eax            #  36:     assign @t17 <- 21855
    movl    -48(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $1, %eax                #  37:     assign v0 <- 1
    movb    %al, 8(%ebp)           
    movl    $9188, %eax             #  38:     return 9188
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #  39:     goto   2_while_cond
l_f1_1:
    movl    $33238, %eax            #  41:     add    t18 <- 33238, 8225
    movl    $8225, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  42:     sub    t19 <- t18, 22664
    movl    $22664, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $2, %eax                #  43:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  44:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  45:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $8473, %eax             #  46:     mul    t21 <- 8473, t20
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  47:     add    t22 <- t21, 85134
    movl    $85134, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  48:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  49:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  50:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  51:     mul    t24 <- t22, t23
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  52:     add    t25 <- t24, 69358
    movl    $69358, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  53:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  54:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  55:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  56:     mul    t27 <- t25, t26
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  57:     add    t28 <- t27, 42122
    movl    $42122, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $5, %eax                #  58:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  59:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  60:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  61:     mul    t30 <- t28, t29
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  62:     add    t31 <- t30, 6127
    movl    $6127, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  63:     mul    t32 <- t31, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    16(%ebp), %eax          #  64:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  65:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  66:     add    t34 <- t32, t33
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    16(%ebp), %eax          #  67:     add    t35 <- v2, t34
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -56(%ebp), %eax         #  68:     assign @t35 <- t19
    movl    -128(%ebp), %edi       
    movl    %eax, (%edi)           

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 45 of <array 74 of <array 45 of <array 15 of <array 66 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    movl    $74503, %eax            #   0:     div    t1 <- 74503, 86536
    movl    $86536, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t1
    movl    %eax, -24(%ebp)        
    jmp     l_f2_2                  #   2:     goto   2
    jmp     l_f2_2                  #   3:     goto   2
l_f2_2:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f2_4:
    movzbl  -17(%ebp), %eax         #   9:     return t2
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  10:     goto   9
    jmp     l_f2_9                  #  11:     goto   9
l_f2_9:
    movl    $1, %eax                #  13:     assign t3 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_11                 #  14:     goto   11
    movl    $0, %eax                #  15:     assign t3 <- 0
    movb    %al, -18(%ebp)         
l_f2_11:
    movzbl  -18(%ebp), %eax         #  17:     return t3
    jmp     l_f2_exit              

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
    jmp     l_test_exit            
    movl    $0, %eax                #   1:     if     0 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
l_test_7_while_cond:
    jmp     l_test_8_while_body     #   9:     goto   8_while_body
    jmp     l_test_8_while_body     #  10:     goto   8_while_body
    jmp     l_test_8_while_body     #  11:     goto   8_while_body
l_test_8_while_body:
    jmp     l_test_exit            
    jmp     l_test_7_while_cond     #  14:     goto   7_while_cond
    call    dummyCHARfunc           #  15:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_21_while_cond:
    movl    $99, %eax               #  17:     if     99 = 97 goto 22_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_22_while_body   
    jmp     l_test_20               #  18:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  20:     goto   21_while_cond
l_test_20:
    jmp     l_test_exit            
    movl    $0, %eax                #  23:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $99, %eax               #  25:     if     99 <= 100 goto 28_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_28_if_true      
    jmp     l_test_29_if_false      #  26:     goto   29_if_false
l_test_28_if_true:
    jmp     l_test_27               #  28:     goto   27
l_test_29_if_false:
l_test_27:
    jmp     l_test_16               #  31:     goto   16
l_test_16:
    jmp     l_test_exit            
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

    # scope: test
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
