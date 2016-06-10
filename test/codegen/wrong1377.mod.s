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
    #    -13(%ebp)   1  [ $t27      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t28      <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t27 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t27
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t28 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   3:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_2                  #   4:     goto   2
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
    #    -13(%ebp)   1  [ $t27      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t28      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t29      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t30      <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -29(%ebp)   1  [ $v1       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $v2       <int> %ebp-36 ]

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
    movl    $99, %eax               #   0:     if     99 # 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t27 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t27 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t27
    movb    %al, -29(%ebp)         
    movl    $76067, %eax            #   9:     sub    t28 <- 76067, 99963
    movl    $99963, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     assign v2 <- t28
    movl    %eax, -36(%ebp)        
    call    dummyINTfunc            #  11:     call   t29 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $79991, %eax            #  12:     add    t30 <- 79991, t29
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     return t30
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t27      <bool> %ebp-13 ]
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
    #   -120(%ebp)   4  [ $t53      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t54      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t55      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t56      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t57      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t58      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t59      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t60      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t61      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t62      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t63      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t64      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t65      <int> %ebp-168 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 98 of <array 94 of <array 87 of <array 4 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 41 of <array 89 of <array 69 of <array 18 of <array 83 of <int>>>>>>> %ebp+16 ]
    #   -169(%ebp)   1  [ $v3       <bool> %ebp-169 ]
    #   -170(%ebp)   1  [ $v4       <char> %ebp-170 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $160, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $40, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $1, %eax                #   0:     assign t27 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   1:     goto   3
    movl    $0, %eax                #   2:     assign t27 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   4:     assign v3 <- t27
    movb    %al, -169(%ebp)        
    jmp     l_f2_7_if_false         #   5:     goto   7_if_false
    movl    $13253, %eax            #   6:     if     13253 < 61323 goto 9_if_true
    movl    $61323, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   7:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #   9:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $60170, %eax            #  15:     mul    t29 <- 60170, t28
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     add    t30 <- t29, 6958
    movl    $6958, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  20:     mul    t32 <- t30, t31
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     add    t33 <- t32, 88692
    movl    $88692, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  25:     mul    t35 <- t33, t34
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  26:     add    t36 <- t35, 8614
    movl    $8614, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  29:     call   t37 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  30:     mul    t38 <- t36, t37
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  31:     add    t39 <- t38, 48016
    movl    $48016, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  32:     mul    t40 <- t39, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  33:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  34:     call   t41 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  35:     add    t42 <- t40, t41
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  36:     add    t43 <- v0, t42
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $100, %eax              #  37:     assign @t43 <- 100
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_14_while_cond:
    jmp     l_f2_14_while_cond      #  39:     goto   14_while_cond
    jmp     l_f2_5                  #  40:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $67823, %eax            #  43:     div    t44 <- 67823, 10215
    movl    $10215, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  44:     mul    t45 <- t44, 79941
    movl    $79941, %ebx           
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  45:     add    t46 <- t45, 85410
    movl    $85410, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  46:     add    t47 <- t46, 33779
    movl    $33779, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  47:     sub    t48 <- t47, 62830
    movl    $62830, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  48:     add    t49 <- t48, 13528
    movl    $13528, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $2, %eax                #  49:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  50:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  51:     call   t50 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    $58656, %eax            #  52:     mul    t51 <- 58656, t50
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  53:     add    t52 <- t51, 24012
    movl    $24012, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $3, %eax                #  54:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  55:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  56:     call   t53 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  57:     mul    t54 <- t52, t53
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  58:     add    t55 <- t54, 40546
    movl    $40546, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $4, %eax                #  59:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  60:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  61:     call   t56 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  62:     mul    t57 <- t55, t56
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  63:     add    t58 <- t57, 9901
    movl    $9901, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $5, %eax                #  64:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  65:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  66:     call   t59 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  67:     mul    t60 <- t58, t59
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  68:     add    t61 <- t60, 23286
    movl    $23286, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  69:     mul    t62 <- t61, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    16(%ebp), %eax          #  70:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  71:     call   t63 <- DOFS
    addl    $4, %esp               
    movl    %eax, -160(%ebp)       
    movl    -156(%ebp), %eax        #  72:     add    t64 <- t62, t63
    movl    -160(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -164(%ebp)       
    movl    16(%ebp), %eax          #  73:     add    t65 <- v2, t64
    movl    -164(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -168(%ebp)       
    movl    -104(%ebp), %eax        #  74:     assign @t65 <- t49
    movl    -168(%ebp), %edi       
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $160, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 41 of <array 89 of <array 69 of <array 18 of <array 83 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 98 of <array 94 of <array 87 of <array 4 of <array 10 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 98 of <array 94 of <array 87 of <array 4 of <array 10 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <ptr(4) to <array 98 of <array 94 of <array 87 of <array 4 of <array 10 of <char>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t2       <char> %ebp-61 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 98 of <array 94 of <array 87 of <array 4 of <array 10 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <ptr(4) to <array 98 of <array 94 of <array 87 of <array 4 of <array 10 of <char>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t4       <ptr(4) to <array 98 of <array 94 of <array 87 of <array 4 of <array 10 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t5       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t6       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t7       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <ptr(4) to <array 98 of <array 94 of <array 87 of <array 4 of <array 10 of <char>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <int> %ebp-120 ]

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
    movl    $5745, %eax             #   0:     if     5745 # 93839 goto 1_if_true
    movl    $93839, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $97, %eax               #   4:     if     97 < 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
l_test_9_while_cond:
    movl    $97, %eax               #  10:     if     97 <= 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:
    movl    $1, %eax                #  15:     assign v0 <- 1
    movb    %al, v0                
l_test_14_while_cond:
    movl    $0, %eax                #  17:     if     0 # 1 goto 15_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_15_while_body   
    jmp     l_test_13               #  18:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  20:     goto   14_while_cond
l_test_13:
    jmp     l_test_0                #  22:     goto   0
l_test_2_if_false:
l_test_0:
l_test_21_while_cond:
    jmp     l_test_21_while_cond    #  26:     goto   21_while_cond
    jmp     l_test_25_if_false      #  27:     goto   25_if_false
    jmp     l_test_23               #  28:     goto   23
l_test_25_if_false:
l_test_23:
l_test_27_while_cond:
    jmp     l_test_26               #  32:     goto   26
    jmp     l_test_27_while_cond    #  33:     goto   27_while_cond
l_test_26:
    leal    v2, %eax                #  35:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  36:     param  2 <- t0
    pushl   %eax                   
    movl    $18469, %eax            #  37:     param  1 <- 18469
    pushl   %eax                   
    leal    v1, %eax                #  38:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  39:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #  40:     call   t2 <- f2
    addl    $12, %esp              
    movb    %al, -61(%ebp)         
    movl    $97494, %eax            #  41:     if     97494 # 59459 goto 31_if_true
    movl    $59459, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_31_if_true      
    jmp     l_test_32_if_false      #  42:     goto   32_if_false
l_test_31_if_true:
    jmp     l_test_30               #  44:     goto   30
l_test_32_if_false:
l_test_30:
    jmp     l_test_exit            
    jmp     l_test_17               #  48:     goto   17
l_test_17:
    leal    v1, %eax                #  50:     &()    t3 <- v1
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #  51:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  52:     &()    t4 <- v1
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  53:     param  0 <- t4
    pushl   %eax                   
    call    DIM                     #  54:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    $69705, %eax            #  55:     mul    t6 <- 69705, t5
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  56:     add    t7 <- t6, 72813
    movl    $72813, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $3, %eax                #  57:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  58:     &()    t8 <- v1
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  59:     param  0 <- t8
    pushl   %eax                   
    call    DIM                     #  60:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -112(%ebp), %eax        #  61:     mul    t10 <- t7, t9
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $85704, %eax            #  62:     sub    t11 <- 85704, 3239
    movl    $3239, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  63:     sub    t12 <- t11, 62326
    movl    $62326, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  64:     add    t13 <- t10, t12
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  65:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  66:     &()    t14 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  67:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  68:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  69:     mul    t16 <- t13, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  70:     add    t17 <- t16, 50568
    movl    $50568, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  71:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  72:     &()    t18 <- v1
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  73:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  74:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  75:     mul    t20 <- t17, t19
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  76:     add    t21 <- t20, 17503
    movl    $17503, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  77:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    leal    v1, %eax                #  78:     &()    t23 <- v1
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  79:     param  0 <- t23
    pushl   %eax                   
    call    DOFS                    #  80:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  81:     add    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -96(%ebp), %eax         #  82:     add    t26 <- t3, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $100, %eax              #  83:     assign @t26 <- 100
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            

l_test_exit:
    # epilogue
    addl    $108, %esp              # remove locals
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
v1:                                 # <array 98 of <array 94 of <array 87 of <array 4 of <array 10 of <char>>>>>>
    .long    5
    .long   98
    .long   94
    .long   87
    .long    4
    .long   10
    .skip 32057760
v2:                                 # <array 41 of <array 89 of <array 69 of <array 18 of <array 83 of <int>>>>>>
    .long    5
    .long   41
    .long   89
    .long   69
    .long   18
    .long   83
    .skip 1504643256
v3:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
