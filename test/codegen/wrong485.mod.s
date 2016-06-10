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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 2 of <array 1 of <array 4 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -25(%ebp)   1  [ $v4       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $v5       <int> %ebp-32 ]

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
    movl    $98, %eax               #   0:     if     98 > 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v4 <- t4
    movb    %al, -25(%ebp)         
    movl    $95338, %eax            #   9:     add    t5 <- 95338, 39305
    movl    $39305, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t6 <- t5, 9807
    movl    $9807, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     assign v5 <- t6
    movl    %eax, -32(%ebp)        
    movl    $98, %eax               #  12:     if     98 = 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  13:     goto   8_if_false
l_f0_7_if_true:
    movl    $0, %eax                #  15:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  16:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t21      <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t36      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t37      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t38      <ptr(4) to <array 9 of <array 2 of <array 1 of <array 4 of <array 10 of <bool>>>>>>> %ebp-128 ]
    #   -129(%ebp)   1  [ $t39      <bool> %ebp-129 ]
    #   -130(%ebp)   1  [ $t4       <bool> %ebp-130 ]
    #   -136(%ebp)   4  [ $t40      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t5       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t6       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t7       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t8       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t9       <int> %ebp-156 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 4 of <array 2 of <array 3 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 4 of <array 4 of <array 9 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #   -157(%ebp)   1  [ $v3       <bool> %ebp-157 ]
    #   -904(%ebp)  744  [ $v4       <array 9 of <array 2 of <array 1 of <array 4 of <array 10 of <bool>>>>>> %ebp-904 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $892, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $223, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-904(%ebp)           # local array 'v4': 5 dimensions
    movl    $9,-900(%ebp)           #   dimension 1: 9 elements
    movl    $2,-896(%ebp)           #   dimension 2: 2 elements
    movl    $1,-892(%ebp)           #   dimension 3: 1 elements
    movl    $4,-888(%ebp)           #   dimension 4: 4 elements
    movl    $10,-884(%ebp)          #   dimension 5: 10 elements

    # function body
    movl    $1, %eax                #   0:     return 1
    jmp     l_f1_exit              
    movl    $98, %eax               #   1:     if     98 >= 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_5                 
    jmp     l_f1_6                  #   2:     goto   6
l_f1_5:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -130(%ebp)        
    jmp     l_f1_7                  #   5:     goto   7
l_f1_6:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -130(%ebp)        
l_f1_7:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    $97366, %eax            #  12:     mul    t6 <- 97366, t5
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  13:     add    t7 <- t6, 5370
    movl    $5370, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #  17:     mul    t9 <- t7, t8
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  18:     add    t10 <- t9, 87672
    movl    $87672, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  22:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t13 <- t12, 13092
    movl    $13092, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  26:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  27:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     add    t16 <- t15, 43872
    movl    $43872, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  29:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  30:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  31:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  32:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  33:     add    t20 <- v2, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movzbl  -130(%ebp), %eax        #  34:     assign @t20 <- t4
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_10_while_cond:
    movl    $6152, %eax             #  36:     if     6152 <= 99241 goto 11_while_body
    movl    $99241, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  37:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  39:     goto   10_while_cond
l_f1_9:
    movl    $98, %eax               #  41:     if     98 # 97 goto 14
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_14                
    jmp     l_f1_15                 #  42:     goto   15
l_f1_14:
    movl    $1, %eax                #  44:     assign t21 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f1_16                 #  45:     goto   16
l_f1_15:
    movl    $0, %eax                #  47:     assign t21 <- 0
    movb    %al, -57(%ebp)         
l_f1_16:
    movl    $2, %eax                #  49:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  50:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  51:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $41903, %eax            #  52:     mul    t23 <- 41903, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  53:     add    t24 <- t23, 22535
    movl    $22535, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  54:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  55:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  56:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  57:     mul    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  58:     add    t27 <- t26, 54794
    movl    $54794, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  59:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  60:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  61:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  62:     mul    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  63:     add    t30 <- t29, 84034
    movl    $84034, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $5, %eax                #  64:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  65:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  66:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  67:     mul    t32 <- t30, t31
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  68:     add    t33 <- t32, 12763
    movl    $12763, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  69:     mul    t34 <- t33, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    12(%ebp), %eax          #  70:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  71:     call   t35 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  72:     add    t36 <- t34, t35
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    12(%ebp), %eax          #  73:     add    t37 <- v2, t36
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movzbl  -57(%ebp), %eax         #  74:     assign @t37 <- t21
    movl    -124(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_0                  #  75:     goto   0
l_f1_0:
    movl    $99, %eax               #  77:     if     99 # 100 goto 19_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  78:     goto   20_if_false
l_f1_19_if_true:
l_f1_23_while_cond:
    jmp     l_f1_22                 #  81:     goto   22
    jmp     l_f1_23_while_cond      #  82:     goto   23_while_cond
l_f1_22:
l_f1_26_while_cond:
    jmp     l_f1_26_while_cond      #  85:     goto   26_while_cond
    jmp     l_f1_18                 #  86:     goto   18
l_f1_20_if_false:
l_f1_18:
l_f1_29_while_cond:
l_f1_32_while_cond:
    jmp     l_f1_31                 #  91:     goto   31
    jmp     l_f1_32_while_cond      #  92:     goto   32_while_cond
l_f1_31:
    movl    $100, %eax              #  94:     param  2 <- 100
    pushl   %eax                   
    movl    $100, %eax              #  95:     param  1 <- 100
    pushl   %eax                   
    leal    -904(%ebp), %eax        #  96:     &()    t38 <- v4
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  97:     param  0 <- t38
    pushl   %eax                   
    call    f0                      #  98:     call   t39 <- f0
    addl    $12, %esp              
    movb    %al, -129(%ebp)        
    movl    $90415, %eax            #  99:     sub    t40 <- 90415, 81157
    movl    $81157, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        # 100:     param  0 <- t40
    pushl   %eax                   
    call    WriteInt                # 101:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_29_while_cond      # 102:     goto   29_while_cond

l_f1_exit:
    # epilogue
    addl    $892, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    jmp     l_f2_5_if_false         #   1:     goto   5_if_false
    jmp     l_f2_3                  #   2:     goto   3
l_f2_5_if_false:
l_f2_3:
    movl    $100, %eax              #   5:     assign v1 <- 100
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   6:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_10_if_false        #  10:     goto   10_if_false
    jmp     l_f2_11                 #  11:     goto   11
l_f2_11:
    movl    $97, %eax               #  13:     if     97 > 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  14:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 #  16:     goto   14
l_f2_16_if_false:
l_f2_14:
l_f2_19_while_cond:
    jmp     l_f2_18                 #  20:     goto   18
    jmp     l_f2_19_while_cond      #  21:     goto   19_while_cond
l_f2_18:
    jmp     l_f2_8                  #  23:     goto   8
l_f2_10_if_false:
l_f2_8:
l_f2_22_while_cond:
    jmp     l_f2_23_while_body      #  27:     goto   23_while_body
    jmp     l_f2_23_while_body      #  28:     goto   23_while_body
l_f2_23_while_body:
l_f2_27_while_cond:
    movl    $88174, %eax            #  31:     if     88174 >= 30314 goto 28_while_body
    movl    $30314, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_28_while_body     
    jmp     l_f2_26                 #  32:     goto   26
l_f2_28_while_body:
    jmp     l_f2_27_while_cond      #  34:     goto   27_while_cond
l_f2_26:
    jmp     l_f2_22_while_cond      #  36:     goto   22_while_cond

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    movl    $97, %eax               #   0:     if     97 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $47356, %eax            #   3:     if     47356 >= 38736 goto 5_if_true
    movl    $38736, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    movl    $99, %eax               #   6:     assign v0 <- 99
    movb    %al, v0                
    movl    $99, %eax               #   7:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
l_test_11_while_cond:
    movl    $12439, %eax            #  10:     if     12439 # 82658 goto 12_while_body
    movl    $82658, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_12_while_body   
    jmp     l_test_10               #  11:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  13:     goto   11_while_cond
l_test_10:
    movl    $98, %eax               #  15:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_15               #  16:     goto   15
l_test_15:
    jmp     l_test_4                #  18:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_0                #  21:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $41355, %eax            #  25:     mul    t0 <- 41355, 19437
    movl    $19437, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  26:     mul    t1 <- t0, 32673
    movl    $32673, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     mul    t2 <- t1, 97080
    movl    $97080, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     assign v1 <- t2
    movl    %eax, v1               
    movl    $1, %eax                #  29:     if     1 # 0 goto 21_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_21_if_true      
    jmp     l_test_22_if_false      #  30:     goto   22_if_false
l_test_21_if_true:
    movl    $100, %eax              #  32:     assign v0 <- 100
    movb    %al, v0                
l_test_26_while_cond:
    jmp     l_test_26_while_cond    #  34:     goto   26_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_20               #  37:     goto   20
l_test_22_if_false:
l_test_20:
    call    f2                      #  40:     call   t3 <- f2
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  41:     assign v0 <- t3
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
