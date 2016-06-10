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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 15 of <array 33 of <array 84 of <array 75 of <array 27 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 93 of <array 88 of <array 84 of <array 43 of <array 85 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $91800, %eax            #   1:     sub    t3 <- 91800, 15653
    movl    $15653, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t4 <- t3, 68355
    movl    $68355, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $9612, %eax             #   3:     div    t5 <- 9612, 15002
    movl    $15002, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t6 <- t4, t5
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_4_if_false         #   6:     goto   4_if_false
l_f0_6_while_cond:
    jmp     l_f0_5                  #   8:     goto   5
    jmp     l_f0_6_while_cond       #   9:     goto   6_while_cond
l_f0_5:
    movl    $78808, %eax            #  11:     return 78808
    jmp     l_f0_exit              
    jmp     l_f0_9                  #  12:     goto   9
l_f0_9:
    jmp     l_f0_2                  #  14:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 93 of <array 88 of <array 84 of <array 43 of <array 85 of <bool>>>>>>> %ebp-56 ]
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
    #   -100(%ebp)   4  [ $t3       <ptr(4) to <array 15 of <array 33 of <array 84 of <array 75 of <array 27 of <bool>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t31      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t32      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t33      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t34      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t35      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t36      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t37      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t38      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t39      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t4       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t40      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t41      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t5       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t6       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t7       <int> %ebp-164 ]
    #   -165(%ebp)   1  [ $t8       <char> %ebp-165 ]
    #   -166(%ebp)   1  [ $t9       <bool> %ebp-166 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 14 of <array 18 of <array 55 of <array 44 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 90 of <array 21 of <array 76 of <array 94 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 12 of <array 39 of <array 32 of <array 82 of <array 94 of <bool>>>>>>> %ebp+16 ]
    #   -84199692(%ebp)  84199524  [ $v3       <array 15 of <array 33 of <array 84 of <array 75 of <array 27 of <bool>>>>>> %ebp-84199692 ]
    #   1698115900(%ebp)  -1782315592  [ $v4       <array 93 of <array 88 of <array 84 of <array 43 of <array 85 of <bool>>>>>> %ebp+1698115900 ]
    #   1698115899(%ebp)   1  [ $v5       <bool> %ebp+1698115899 ]
    #   1698115892(%ebp)   4  [ $v6       <int> %ebp+1698115892 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1698115904, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-424528976, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-84199692(%ebp)      # local array 'v3': 5 dimensions
    movl    $15,-84199688(%ebp)     #   dimension 1: 15 elements
    movl    $33,-84199684(%ebp)     #   dimension 2: 33 elements
    movl    $84,-84199680(%ebp)     #   dimension 3: 84 elements
    movl    $75,-84199676(%ebp)     #   dimension 4: 75 elements
    movl    $27,-84199672(%ebp)     #   dimension 5: 27 elements
    movl    $5,1698115900(%ebp)     # local array 'v4': 5 dimensions
    movl    $93,1698115904(%ebp)    #   dimension 1: 93 elements
    movl    $88,1698115908(%ebp)    #   dimension 2: 88 elements
    movl    $84,1698115912(%ebp)    #   dimension 3: 84 elements
    movl    $43,1698115916(%ebp)    #   dimension 4: 43 elements
    movl    $85,1698115920(%ebp)    #   dimension 5: 85 elements

    # function body
l_f1_1_while_cond:
    leal    1698115900(%ebp), %eax  #   1:     &()    t2 <- v4
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   2:     param  3 <- t2
    pushl   %eax                   
    leal    -84199692(%ebp), %eax   #   3:     &()    t3 <- v3
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   4:     param  2 <- t3
    pushl   %eax                   
    movl    $41837, %eax            #   5:     param  1 <- 41837
    pushl   %eax                   
    movl    $97, %eax               #   6:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #   7:     call   t4 <- f0
    addl    $16, %esp              
    movl    %eax, -144(%ebp)       
    movl    $24521, %eax            #   8:     add    t5 <- 24521, 68149
    movl    $68149, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #   9:     add    t6 <- t5, 14727
    movl    $14727, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  10:     add    t7 <- t6, 62333
    movl    $62333, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -164(%ebp)       
    movl    -144(%ebp), %eax        #  11:     if     t4 > t7 goto 2_while_body
    movl    -164(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #  12:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  16:     call   t8 <- dummyCHARfunc
    movb    %al, -165(%ebp)        
    movzbl  -165(%ebp), %eax        #  17:     if     t8 = 99 goto 5
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_6                  #  18:     goto   6
l_f1_5:
    movl    $1, %eax                #  20:     assign t9 <- 1
    movb    %al, -166(%ebp)        
    jmp     l_f1_7                  #  21:     goto   7
l_f1_6:
    movl    $0, %eax                #  23:     assign t9 <- 0
    movb    %al, -166(%ebp)        
l_f1_7:
    movl    $2, %eax                #  25:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $97390, %eax            #  28:     mul    t11 <- 97390, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     add    t12 <- t11, 41490
    movl    $41490, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  30:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  31:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  32:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  33:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     add    t15 <- t14, 42008
    movl    $42008, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  38:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  39:     add    t18 <- t17, 92959
    movl    $92959, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  41:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  42:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  43:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  44:     add    t21 <- t20, 18980
    movl    $18980, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  45:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  46:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  47:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  48:     add    t24 <- t22, t23
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    16(%ebp), %eax          #  49:     add    t25 <- v2, t24
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -166(%ebp), %eax        #  50:     assign @t25 <- t9
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $2, %eax                #  51:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  52:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  53:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $40751, %eax            #  54:     mul    t27 <- 40751, t26
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  55:     add    t28 <- t27, 41334
    movl    $41334, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  56:     param  1 <- 3
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
    movl    -104(%ebp), %eax        #  60:     add    t31 <- t30, 35312
    movl    $35312, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $4, %eax                #  61:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  62:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  63:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  64:     mul    t33 <- t31, t32
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  65:     add    t34 <- t33, 35273
    movl    $35273, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $5, %eax                #  66:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  67:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  68:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  69:     mul    t36 <- t34, t35
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  70:     add    t37 <- t36, 58465
    movl    $58465, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  71:     mul    t38 <- t37, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    12(%ebp), %eax          #  72:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  73:     call   t39 <- DOFS
    addl    $4, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  74:     add    t40 <- t38, t39
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    12(%ebp), %eax          #  75:     add    t41 <- v1, t40
    movl    -148(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    $87365, %eax            #  76:     assign @t41 <- 87365
    movl    -152(%ebp), %edi       
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $-1698115904, %esp      # remove locals
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
    #    -49(%ebp)   1  [ $t19      <char> %ebp-49 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t20      <bool> %ebp-57 ]
    #    -58(%ebp)   1  [ $t21      <bool> %ebp-58 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t36      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t37      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t38      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t4       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t5       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t6       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t7       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t8       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t9       <int> %ebp-156 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 29 of <array 82 of <array 66 of <array 52 of <array 31 of <bool>>>>>>> %ebp+8 ]
    #   -157(%ebp)   1  [ $v1       <bool> %ebp-157 ]

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
    movl    8(%ebp), %eax           #   1:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   2:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $89000, %eax            #   3:     mul    t3 <- 89000, t2
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    $2942, %eax             #   4:     add    t4 <- 2942, 53114
    movl    $53114, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    -96(%ebp), %eax         #   5:     add    t5 <- t3, t4
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   8:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #   9:     mul    t7 <- t5, t6
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  10:     add    t8 <- t7, 29103
    movl    $29103, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  13:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -156(%ebp)       
    movl    -152(%ebp), %eax        #  14:     mul    t10 <- t8, t9
    movl    -156(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     add    t11 <- t10, 99852
    movl    $99852, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  19:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     add    t14 <- t13, 15546
    movl    $15546, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  23:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  25:     add    t18 <- v0, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $1, %eax                #  26:     assign @t18 <- 1
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  27:     call   t19 <- dummyCHARfunc
    movb    %al, -49(%ebp)         
    movzbl  -49(%ebp), %eax         #  28:     if     t19 > 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2                 
    jmp     l_f2_3                  #  29:     goto   3
l_f2_2:
    movl    $1, %eax                #  31:     assign t20 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f2_4                  #  32:     goto   4
l_f2_3:
    movl    $0, %eax                #  34:     assign t20 <- 0
    movb    %al, -57(%ebp)         
l_f2_4:
    movzbl  -57(%ebp), %eax         #  36:     return t20
    jmp     l_f2_exit              
    movl    $100, %eax              #  37:     if     100 = 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_8                  #  38:     goto   8
l_f2_7:
    movl    $1, %eax                #  40:     assign t21 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f2_9                  #  41:     goto   9
l_f2_8:
    movl    $0, %eax                #  43:     assign t21 <- 0
    movb    %al, -58(%ebp)         
l_f2_9:
    movl    $2, %eax                #  45:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  46:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  47:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $26890, %eax            #  48:     mul    t23 <- 26890, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    $13168, %eax            #  49:     add    t24 <- 13168, 15069
    movl    $15069, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  50:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  51:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  52:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  53:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  54:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  55:     add    t28 <- t27, 50786
    movl    $50786, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  56:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  57:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  58:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  59:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  60:     add    t31 <- t30, 81648
    movl    $81648, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $5, %eax                #  61:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  62:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  63:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  64:     mul    t33 <- t31, t32
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  65:     add    t34 <- t33, 84467
    movl    $84467, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  66:     mul    t35 <- t34, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    8(%ebp), %eax           #  67:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  68:     call   t36 <- DOFS
    addl    $4, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  69:     add    t37 <- t35, t36
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    8(%ebp), %eax           #  70:     add    t38 <- v0, t37
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movzbl  -58(%ebp), %eax         #  71:     assign @t38 <- t21
    movl    -132(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $148, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]

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
    movl    $98, %eax               #   0:     if     98 >= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $25652, %eax            #   4:     if     25652 # 1685 goto 6_while_body
    movl    $1685, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    movl    $97, %eax               #   9:     assign v0 <- 97
    movb    %al, v0                
    call    ReadInt                 #  10:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
l_test_11_while_cond:
    jmp     l_test_12_while_body    #  15:     goto   12_while_body
    jmp     l_test_12_while_body    #  16:     goto   12_while_body
l_test_12_while_body:
    movl    $32175, %eax            #  18:     if     32175 < 5365 goto 18_if_true
    movl    $5365, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_18_if_true      
    jmp     l_test_19_if_false      #  19:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  21:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_11_while_cond    #  24:     goto   11_while_cond
    leal    _str_1, %eax            #  25:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  27:     call   WriteStr
    addl    $4, %esp               

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

    # scope: test
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
