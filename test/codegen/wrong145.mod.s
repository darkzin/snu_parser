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
    #    -13(%ebp)   1  [ $t28      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t29      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t30      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t31      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t32      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t33      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t34      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t35      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t36      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t37      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t38      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t39      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t40      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t41      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t42      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t43      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t44      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t45      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t46      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t47      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t48      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t49      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t50      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t51      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t52      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t53      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t54      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t55      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t56      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t57      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t58      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t59      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t60      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t61      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t62      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t63      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t64      <int> %ebp-160 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 5 of <array 8 of <array 2 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 7 of <array 3 of <array 1 of <array 1 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 7 of <array 1 of <array 5 of <array 1 of <char>>>>>>> %ebp+20 ]
    #   -161(%ebp)   1  [ $v4       <bool> %ebp-161 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $152, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $38, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     if     99 # 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t28 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t28 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movl    $23795, %eax            #   8:     sub    t29 <- 23795, 41755
    movl    $41755, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t30 <- t29, 40975
    movl    $40975, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  13:     mul    t32 <- t30, t31
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     add    t33 <- t32, 43442
    movl    $43442, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  18:     mul    t35 <- t33, t34
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  19:     add    t36 <- t35, 71291
    movl    $71291, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t37 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  23:     mul    t38 <- t36, t37
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  24:     add    t39 <- t38, 23642
    movl    $23642, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  28:     mul    t41 <- t39, t40
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  29:     add    t42 <- t41, 31936
    movl    $31936, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  30:     mul    t43 <- t42, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t44 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  33:     add    t45 <- t43, t44
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    12(%ebp), %eax          #  34:     add    t46 <- v1, t45
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movzbl  -13(%ebp), %eax         #  35:     assign @t46 <- t28
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_6_while_cond:
    movl    $0, %eax                #  37:     if     0 # 0 goto 7_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #  38:     goto   5
l_f0_7_while_body:
    movl    $63592, %eax            #  40:     if     63592 # 12819 goto 10_if_true
    movl    $12819, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  41:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  43:     goto   9
l_f0_11_if_false:
l_f0_9:
l_f0_14_while_cond:
    movl    $100, %eax              #  47:     if     100 # 98 goto 15_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_15_while_body     
    jmp     l_f0_13                 #  48:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  50:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_19_if_false        #  52:     goto   19_if_false
    jmp     l_f0_17                 #  53:     goto   17
l_f0_19_if_false:
l_f0_17:
    movl    $2, %eax                #  56:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  57:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  58:     call   t47 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $97126, %eax            #  59:     mul    t48 <- 97126, t47
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  60:     add    t49 <- t48, 31710
    movl    $31710, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $3, %eax                #  61:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  62:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  63:     call   t50 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  64:     mul    t51 <- t49, t50
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  65:     add    t52 <- t51, 12864
    movl    $12864, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $4, %eax                #  66:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  67:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  68:     call   t53 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  69:     mul    t54 <- t52, t53
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  70:     add    t55 <- t54, 42231
    movl    $42231, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $5, %eax                #  71:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  72:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  73:     call   t56 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  74:     mul    t57 <- t55, t56
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  75:     add    t58 <- t57, 7871
    movl    $7871, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  76:     mul    t59 <- t58, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    12(%ebp), %eax          #  77:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  78:     call   t60 <- DOFS
    addl    $4, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  79:     add    t61 <- t59, t60
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    12(%ebp), %eax          #  80:     add    t62 <- v1, t61
    movl    -148(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    $0, %eax                #  81:     assign @t62 <- 0
    movl    -152(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f0_6_while_cond       #  82:     goto   6_while_cond
l_f0_5:
    call    ReadInt                 #  84:     call   t63 <- ReadInt
    movl    %eax, -156(%ebp)       
    movl    $13999, %eax            #  85:     div    t64 <- 13999, t63
    movl    -156(%ebp), %ebx       
    cdq                            
    idivl   %ebx                   
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  86:     return t64
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $152, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t28      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t29      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t30      <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 2 of <array 6 of <array 4 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 4 of <array 7 of <array 1 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 1 of <array 7 of <array 2 of <array 2 of <bool>>>>>>> %ebp+16 ]

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
    jmp     l_f1_exit              
    call    ReadInt                 #   1:     call   t28 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $49763, %eax            #   2:     div    t29 <- 49763, 33564
    movl    $33564, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $83751, %eax            #   3:     sub    t30 <- 83751, t29
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  0 <- t30
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t28      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t29      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t30      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t31      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t32      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t33      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t34      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t35      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t36      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t37      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t38      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t39      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t40      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t41      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t42      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t43      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t44      <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 5 of <array 8 of <array 3 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t28 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   2:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   3:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $80131, %eax            #   4:     mul    t30 <- 80131, t29
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t31 <- t30, 57088
    movl    $57088, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   8:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #   9:     mul    t33 <- t31, t32
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     add    t34 <- t33, 33170
    movl    $33170, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  13:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  14:     mul    t36 <- t34, t35
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  15:     add    t37 <- t36, 18091
    movl    $18091, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  19:     mul    t39 <- t37, t38
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  20:     add    t40 <- t39, 40184
    movl    $40184, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  21:     mul    t41 <- t40, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  23:     call   t42 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  24:     add    t43 <- t41, t42
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  25:     add    t44 <- v0, t43
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -13(%ebp), %eax         #  26:     assign @t44 <- t28
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $97, %eax               #  27:     return 97
    jmp     l_f2_exit              
l_f2_3_while_cond:
    jmp     l_f2_2                  #  29:     goto   2
    jmp     l_f2_3_while_cond       #  30:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $68, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 4 of <array 2 of <array 6 of <array 4 of <array 2 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 4 of <array 2 of <array 6 of <array 4 of <array 2 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <ptr(4) to <array 4 of <array 2 of <array 6 of <array 4 of <array 2 of <int>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 1 of <array 7 of <array 2 of <array 2 of <bool>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 4 of <array 2 of <array 6 of <array 4 of <array 2 of <int>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t27      <bool> %ebp-93 ]
    #   -100(%ebp)   4  [ $t3       <ptr(4) to <array 9 of <array 4 of <array 7 of <array 1 of <array 9 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 2 of <array 6 of <array 4 of <array 2 of <int>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t5       <ptr(4) to <array 4 of <array 2 of <array 6 of <array 4 of <array 2 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t6       <ptr(4) to <array 4 of <array 2 of <array 6 of <array 4 of <array 2 of <int>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t7       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t8       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t9       <int> %ebp-124 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $112, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $28, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $55751, %eax            #   1:     add    t0 <- 55751, 72931
    movl    $72931, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $28129, %eax            #   2:     if     28129 < t0 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_5_if_true        #   7:     goto   5_if_true
    jmp     l_test_5_if_true        #   8:     goto   5_if_true
    jmp     l_test_6_if_false       #   9:     goto   6_if_false
l_test_5_if_true:
    call    dummyCHARfunc           #  11:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    leal    v2, %eax                #  12:     &()    t2 <- v2
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  13:     param  2 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  14:     &()    t3 <- v1
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  15:     param  1 <- t3
    pushl   %eax                   
    leal    v0, %eax                #  16:     &()    t4 <- v0
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  17:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  18:     call   f1
    addl    $12, %esp              
    leal    v0, %eax                #  19:     &()    t5 <- v0
    movl    %eax, -108(%ebp)       
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  21:     &()    t6 <- v0
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  22:     param  0 <- t6
    pushl   %eax                   
    call    DIM                     #  23:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    $366, %eax              #  24:     mul    t8 <- 366, t7
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  25:     add    t9 <- t8, 14823
    movl    $14823, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $3, %eax                #  26:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  27:     &()    t10 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  29:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -124(%ebp), %eax        #  30:     mul    t12 <- t9, t11
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     add    t13 <- t12, 77359
    movl    $77359, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  32:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  33:     &()    t14 <- v0
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  35:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  36:     mul    t16 <- t13, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  37:     add    t17 <- t16, 13553
    movl    $13553, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  38:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  39:     &()    t18 <- v0
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  40:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  41:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  42:     mul    t20 <- t17, t19
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  43:     add    t21 <- t20, 9050
    movl    $9050, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  44:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    leal    v0, %eax                #  45:     &()    t23 <- v0
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  46:     param  0 <- t23
    pushl   %eax                   
    call    DOFS                    #  47:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  48:     add    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -108(%ebp), %eax        #  49:     add    t26 <- t5, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $13089, %eax            #  50:     assign @t26 <- 13089
    movl    -92(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $98, %eax               #  51:     assign v4 <- 98
    movb    %al, v4                
    jmp     l_test_4                #  52:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_15_if_true       #  55:     goto   15_if_true
    jmp     l_test_16_if_false      #  56:     goto   16_if_false
l_test_15_if_true:
    movl    $99, %eax               #  58:     assign v4 <- 99
    movb    %al, v4                
    jmp     l_test_14               #  59:     goto   14
l_test_16_if_false:
l_test_14:
    call    dummyBOOLfunc           #  62:     call   t27 <- dummyBOOLfunc
    movb    %al, -93(%ebp)         

l_test_exit:
    # epilogue
    addl    $112, %esp              # remove locals
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
v0:                                 # <array 4 of <array 2 of <array 6 of <array 4 of <array 2 of <int>>>>>>
    .long    5
    .long    4
    .long    2
    .long    6
    .long    4
    .long    2
    .skip 1536
v1:                                 # <array 9 of <array 4 of <array 7 of <array 1 of <array 9 of <char>>>>>>
    .long    5
    .long    9
    .long    4
    .long    7
    .long    1
    .long    9
    .skip 2268
v2:                                 # <array 4 of <array 1 of <array 7 of <array 2 of <array 2 of <bool>>>>>>
    .long    5
    .long    4
    .long    1
    .long    7
    .long    2
    .long    2
    .skip  112
v3:                                 # <int>
    .skip    4
v4:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
