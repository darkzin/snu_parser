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
    #    -16(%ebp)   4  [ $t27      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t28      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t29      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t30      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t31      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t32      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t33      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t34      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t35      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t36      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t37      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t38      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t39      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t40      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t41      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t42      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t43      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t44      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t45      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t46      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t47      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t48      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t49      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t50      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t51      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t52      <int> %ebp-116 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 9 of <array 2 of <array 5 of <array 9 of <int>>>>>>> %ebp+8 ]
    #   -120(%ebp)   4  [ $v2       <int> %ebp-120 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $108, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $27, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     if     100 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $23812, %eax            #   3:     return 23812
    jmp     l_f0_exit              
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   5:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   6:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $28415, %eax            #   7:     mul    t28 <- 28415, t27
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t29 <- t28, 20373
    movl    $20373, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  12:     mul    t31 <- t29, t30
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     add    t32 <- t31, 29615
    movl    $29615, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  17:     mul    t34 <- t32, t33
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  18:     add    t35 <- t34, 15443
    movl    $15443, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t37 <- t35, t36
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     add    t38 <- t37, 13515
    movl    $13515, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  24:     mul    t39 <- t38, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  26:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  27:     add    t41 <- t39, t40
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t42 <- v1, t41
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $65290, %eax            #  29:     assign @t42 <- 65290
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_0                  #  30:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $57561, %eax            #  33:     mul    t43 <- 57561, 21314
    movl    $21314, %ebx           
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  34:     mul    t44 <- t43, 95909
    movl    $95909, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  35:     div    t45 <- t44, 61101
    movl    $61101, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  36:     mul    t46 <- t45, 67487
    movl    $67487, %ebx           
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  37:     mul    t47 <- t46, 63791
    movl    $63791, %ebx           
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  38:     div    t48 <- t47, 26884
    movl    $26884, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  39:     add    t49 <- t48, 24550
    movl    $24550, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  40:     return t49
    jmp     l_f0_exit              
    movl    $37523, %eax            #  41:     div    t50 <- 37523, 1722
    movl    $1722, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -108(%ebp)       
    call    dummyINTfunc            #  42:     call   t51 <- dummyINTfunc
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  43:     mul    t52 <- t50, t51
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  44:     return t52
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $108, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t27      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t28      <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 7 of <array 10 of <array 8 of <array 5 of <char>>>>>>> %ebp+12 ]

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
    movl    $99, %eax               #   0:     if     99 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    ReadInt                 #   3:     call   t27 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_6_while_cond:
    jmp     l_f1_5                  #   8:     goto   5
l_f1_9_while_cond:
    jmp     l_f1_10_while_body      #  10:     goto   10_while_body
    jmp     l_f1_10_while_body      #  11:     goto   10_while_body
    jmp     l_f1_8                  #  12:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  14:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_6_while_cond       #  16:     goto   6_while_cond
l_f1_5:
l_f1_16_while_cond:
    jmp     l_f1_15                 #  19:     goto   15
    movl    $0, %eax                #  20:     if     0 = 0 goto 19
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_19                
    jmp     l_f1_20                 #  21:     goto   20
l_f1_19:
    movl    $1, %eax                #  23:     assign t28 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_21                 #  24:     goto   21
l_f1_20:
    movl    $0, %eax                #  26:     assign t28 <- 0
    movb    %al, -17(%ebp)         
l_f1_21:
    movzbl  -17(%ebp), %eax         #  28:     return t28
    jmp     l_f1_exit              
    jmp     l_f1_16_while_cond      #  29:     goto   16_while_cond
l_f1_15:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t27      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t28      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t29      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t30      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t31      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t32      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t33      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t34      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t35      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t36      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t37      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t38      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t39      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t40      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t41      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t42      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t43      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t44      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t45      <char> %ebp-85 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 5 of <array 6 of <array 2 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 5 of <array 6 of <array 6 of <array 1 of <array 7 of <char>>>>>>> %ebp+20 ]
    #    -86(%ebp)   1  [ $v5       <char> %ebp-86 ]

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
l_f2_1_while_cond:
    movl    $61815, %eax            #   1:     if     61815 = 34078 goto 2_while_body
    movl    $34078, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
    movl    $90889, %eax            #   5:     sub    t27 <- 90889, 42372
    movl    $42372, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     sub    t28 <- t27, 96519
    movl    $96519, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   8:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   9:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  10:     mul    t30 <- t28, t29
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     add    t31 <- t30, 59829
    movl    $59829, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  13:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  14:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  15:     mul    t33 <- t31, t32
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     add    t34 <- t33, 29792
    movl    $29792, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  18:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  19:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  20:     mul    t36 <- t34, t35
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  21:     add    t37 <- t36, 68230
    movl    $68230, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  23:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  24:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  25:     mul    t39 <- t37, t38
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  26:     add    t40 <- t39, 46573
    movl    $46573, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  27:     mul    t41 <- t40, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    20(%ebp), %eax          #  28:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  29:     call   t42 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  30:     add    t43 <- t41, t42
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    20(%ebp), %eax          #  31:     add    t44 <- v4, t43
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $98, %eax               #  32:     assign @t44 <- 98
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_9_while_cond:
    call    dummyCHARfunc           #  34:     call   t45 <- dummyCHARfunc
    movb    %al, -85(%ebp)         
    movzbl  -85(%ebp), %eax         #  35:     if     t45 <= 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_10_while_body     
    jmp     l_f2_8                  #  36:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  38:     goto   9_while_cond
l_f2_8:

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 1 of <array 7 of <array 10 of <array 8 of <array 5 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 1 of <array 7 of <array 10 of <array 8 of <array 5 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <ptr(4) to <array 1 of <array 7 of <array 10 of <array 8 of <array 5 of <char>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 1 of <array 7 of <array 10 of <array 8 of <array 5 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 1 of <array 7 of <array 10 of <array 8 of <array 5 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t3       <bool> %ebp-93 ]
    #    -94(%ebp)   1  [ $t4       <bool> %ebp-94 ]
    #   -100(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 7 of <array 10 of <array 8 of <array 5 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t6       <ptr(4) to <array 1 of <array 7 of <array 10 of <array 8 of <array 5 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t7       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t8       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t9       <int> %ebp-116 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $104, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $26, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $66368, %eax            #   0:     assign v0 <- 66368
    movl    %eax, v0               
    movl    $67821, %eax            #   1:     assign v0 <- 67821
    movl    %eax, v0               
    call    ReadInt                 #   2:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_4_while_cond:
    movl    $98, %eax               #   4:     if     98 < 98 goto 5_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_5_while_body    
    jmp     l_test_3                #   5:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   7:     goto   4_while_cond
l_test_3:
    movl    $1, %eax                #   9:     assign v1 <- 1
    movb    %al, v1                
    call    dummyCHARfunc           #  10:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  11:     if     t1 <= 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_9_if_true       
    jmp     l_test_10_if_false      #  12:     goto   10_if_false
l_test_9_if_true:
    movl    $100, %eax              #  14:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    movl    $30257, %eax            #  16:     if     30257 # 90639 goto 14_if_true
    movl    $90639, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_14_if_true      
    jmp     l_test_15_if_false      #  17:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  19:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_19_if_false      #  22:     goto   19_if_false
    jmp     l_test_17               #  23:     goto   17
l_test_19_if_false:
l_test_17:
    leal    v2, %eax                #  26:     &()    t2 <- v2
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  27:     param  1 <- t2
    pushl   %eax                   
    movl    $76461, %eax            #  28:     if     76461 >= 2816 goto 21
    movl    $2816, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_21              
    jmp     l_test_22               #  29:     goto   22
l_test_21:
    movl    $1, %eax                #  31:     assign t3 <- 1
    movb    %al, -93(%ebp)         
    jmp     l_test_23               #  32:     goto   23
l_test_22:
    movl    $0, %eax                #  34:     assign t3 <- 0
    movb    %al, -93(%ebp)         
l_test_23:
    movzbl  -93(%ebp), %eax         #  36:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  37:     call   t4 <- f1
    addl    $8, %esp               
    movb    %al, -94(%ebp)         
    jmp     l_test_exit            
    leal    v2, %eax                #  39:     &()    t5 <- v2
    movl    %eax, -100(%ebp)       
    movl    $2, %eax                #  40:     param  1 <- 2
    pushl   %eax                   
    leal    v2, %eax                #  41:     &()    t6 <- v2
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  42:     param  0 <- t6
    pushl   %eax                   
    call    DIM                     #  43:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    $31224, %eax            #  44:     mul    t8 <- 31224, t7
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  45:     add    t9 <- t8, 62956
    movl    $62956, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $3, %eax                #  46:     param  1 <- 3
    pushl   %eax                   
    leal    v2, %eax                #  47:     &()    t10 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  48:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  49:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -116(%ebp), %eax        #  50:     mul    t12 <- t9, t11
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  51:     add    t13 <- t12, 66679
    movl    $66679, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  52:     param  1 <- 4
    pushl   %eax                   
    leal    v2, %eax                #  53:     &()    t14 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  54:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  55:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  56:     mul    t16 <- t13, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  57:     add    t17 <- t16, 82943
    movl    $82943, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  58:     param  1 <- 5
    pushl   %eax                   
    leal    v2, %eax                #  59:     &()    t18 <- v2
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  60:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  61:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  62:     mul    t20 <- t17, t19
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  63:     add    t21 <- t20, 74409
    movl    $74409, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  64:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    leal    v2, %eax                #  65:     &()    t23 <- v2
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  66:     param  0 <- t23
    pushl   %eax                   
    call    DOFS                    #  67:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  68:     add    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -100(%ebp), %eax        #  69:     add    t26 <- t5, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $100, %eax              #  70:     assign @t26 <- 100
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            
l_test_28_while_cond:
    jmp     l_test_28_while_cond    #  72:     goto   28_while_cond
    jmp     l_test_8                #  73:     goto   8
l_test_10_if_false:
l_test_8:

l_test_exit:
    # epilogue
    addl    $104, %esp              # remove locals
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
    .align   4
v2:                                 # <array 1 of <array 7 of <array 10 of <array 8 of <array 5 of <char>>>>>>
    .long    5
    .long    1
    .long    7
    .long   10
    .long    8
    .long    5
    .skip 2800
v3:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
