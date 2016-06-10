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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
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
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t28      <bool> %ebp-85 ]
    #    -86(%ebp)   1  [ $t29      <bool> %ebp-86 ]
    #    -92(%ebp)   4  [ $t30      <ptr(4) to <array 7 of <char>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t31      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t32      <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $t33      <bool> %ebp-101 ]
    #   -102(%ebp)   1  [ $t34      <bool> %ebp-102 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 16 of <array 81 of <array 74 of <array 78 of <array 88 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 81 of <array 5 of <array 69 of <array 11 of <array 57 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 53 of <array 95 of <array 98 of <array 67 of <array 39 of <bool>>>>>>> %ebp+16 ]
    #   -109(%ebp)   1  [ $v3       <bool> %ebp-109 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $100, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $25, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $78659, %eax            #   0:     sub    t9 <- 78659, 13779
    movl    $13779, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   1:     add    t10 <- t9, 42835
    movl    $42835, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $59483, %eax            #   2:     if     59483 >= t10 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   3:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $57810, %eax            #   6:     if     57810 <= 75222 goto 6_while_body
    movl    $75222, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_6_while_body      
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   9:     goto   5_while_cond
l_f0_4:
    movl    $99, %eax               #  11:     if     99 >= 99 goto 9
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_9                 
    jmp     l_f0_10                 #  12:     goto   10
l_f0_9:
    movl    $1, %eax                #  14:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_11                 #  15:     goto   11
l_f0_10:
    movl    $0, %eax                #  17:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f0_11:
    movl    $2, %eax                #  19:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $59436, %eax            #  22:     mul    t13 <- 59436, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     add    t14 <- t13, 36801
    movl    $36801, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  26:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  27:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     add    t17 <- t16, 51377
    movl    $51377, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  30:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  31:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  32:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  33:     add    t20 <- t19, 21437
    movl    $21437, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  35:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  36:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  37:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  38:     add    t23 <- t22, 11825
    movl    $11825, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  39:     mul    t24 <- t23, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  40:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  41:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  42:     add    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    16(%ebp), %eax          #  43:     add    t27 <- v2, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movzbl  -17(%ebp), %eax         #  44:     assign @t27 <- t11
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $35407, %eax            #  45:     if     35407 >= 77411 goto 14
    movl    $77411, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_14                
    jmp     l_f0_15                 #  46:     goto   15
l_f0_14:
    movl    $1, %eax                #  48:     assign t28 <- 1
    movb    %al, -85(%ebp)         
    jmp     l_f0_16                 #  49:     goto   16
l_f0_15:
    movl    $0, %eax                #  51:     assign t28 <- 0
    movb    %al, -85(%ebp)         
l_f0_16:
    movzbl  -85(%ebp), %eax         #  53:     return t28
    jmp     l_f0_exit              
    movl    $51523, %eax            #  54:     if     51523 >= 13032 goto 19
    movl    $13032, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_19                
    jmp     l_f0_20                 #  55:     goto   20
l_f0_19:
    movl    $1, %eax                #  57:     assign t29 <- 1
    movb    %al, -86(%ebp)         
    jmp     l_f0_21                 #  58:     goto   21
l_f0_20:
    movl    $0, %eax                #  60:     assign t29 <- 0
    movb    %al, -86(%ebp)         
l_f0_21:
    movzbl  -86(%ebp), %eax         #  62:     return t29
    jmp     l_f0_exit              
    jmp     l_f0_25_if_false        #  63:     goto   25_if_false
    jmp     l_f0_23                 #  64:     goto   23
l_f0_25_if_false:
l_f0_23:
l_f0_27_while_cond:
    movl    $36867, %eax            #  68:     if     36867 = 58890 goto 28_while_body
    movl    $58890, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_28_while_body     
    jmp     l_f0_26                 #  69:     goto   26
l_f0_28_while_body:
    jmp     l_f0_27_while_cond      #  71:     goto   27_while_cond
l_f0_26:
    leal    _str_1, %eax            #  73:     &()    t30 <- _str_1
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  74:     param  0 <- t30
    pushl   %eax                   
    call    WriteStr                #  75:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_0                  #  76:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $23807, %eax            #  79:     sub    t31 <- 23807, 83324
    movl    $83324, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $55819, %eax            #  80:     add    t32 <- 55819, 84523
    movl    $84523, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  81:     if     t31 < t32 goto 32
    movl    -100(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jl      l_f0_32                
    jmp     l_f0_33                 #  82:     goto   33
l_f0_32:
    movl    $1, %eax                #  84:     assign t33 <- 1
    movb    %al, -101(%ebp)        
    jmp     l_f0_34                 #  85:     goto   34
l_f0_33:
    movl    $0, %eax                #  87:     assign t33 <- 0
    movb    %al, -101(%ebp)        
l_f0_34:
    movzbl  -101(%ebp), %eax        #  89:     return t33
    jmp     l_f0_exit              
    jmp     l_f0_41                 #  90:     goto   41
l_f0_41:
    movl    $1, %eax                #  92:     assign t34 <- 1
    movb    %al, -102(%ebp)        
    jmp     l_f0_39                 #  93:     goto   39
    movl    $0, %eax                #  94:     assign t34 <- 0
    movb    %al, -102(%ebp)        
l_f0_39:
    movzbl  -102(%ebp), %eax        #  96:     return t34
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $100, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 99 of <array 26 of <array 95 of <array 97 of <array 96 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
    jmp     l_f1_2_while_cond       #   3:     goto   2_while_cond
l_f1_1:
    movl    $73445, %eax            #   5:     sub    t9 <- 73445, 4607
    movl    $4607, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     if     t9 >= 84614 goto 7
    movl    $84614, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7                 
    jmp     l_f1_8                  #   7:     goto   8
l_f1_7:
    movl    $1, %eax                #   9:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_9                  #  10:     goto   9
l_f1_8:
    movl    $0, %eax                #  12:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_9:
    movzbl  -13(%ebp), %eax         #  14:     assign v3 <- t10
    movb    %al, -21(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 81 of <array 5 of <array 69 of <array 11 of <array 57 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 16 of <array 81 of <array 74 of <array 78 of <array 88 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t15      <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t16      <ptr(4) to <array 53 of <array 95 of <array 98 of <array 67 of <array 39 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <ptr(4) to <array 53 of <array 95 of <array 98 of <array 67 of <array 39 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <ptr(4) to <array 53 of <array 95 of <array 98 of <array 67 of <array 39 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <ptr(4) to <array 53 of <array 95 of <array 98 of <array 67 of <array 39 of <bool>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t29      <ptr(4) to <array 53 of <array 95 of <array 98 of <array 67 of <array 39 of <bool>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t30      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t31      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t32      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t33      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t34      <ptr(4) to <array 53 of <array 95 of <array 98 of <array 67 of <array 39 of <bool>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t35      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t36      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t37      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t38      <ptr(4) to <array 5 of <char>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t9       <ptr(4) to <array 53 of <array 95 of <array 98 of <array 67 of <array 39 of <bool>>>>>>> %ebp-128 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 32 of <array 56 of <array 88 of <array 16 of <array 72 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -658285208(%ebp)  658285080  [ $v3       <array 16 of <array 81 of <array 74 of <array 78 of <array 88 of <char>>>>>> %ebp-658285208 ]
    #   -728371292(%ebp)  70086084  [ $v4       <array 81 of <array 5 of <array 69 of <array 11 of <array 57 of <int>>>>>> %ebp-728371292 ]
    #   -2017703908(%ebp)  1289332614  [ $v5       <array 53 of <array 95 of <array 98 of <array 67 of <array 39 of <bool>>>>>> %ebp-2017703908 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2017703896, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $504425974, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-658285208(%ebp)     # local array 'v3': 5 dimensions
    movl    $16,-658285204(%ebp)    #   dimension 1: 16 elements
    movl    $81,-658285200(%ebp)    #   dimension 2: 81 elements
    movl    $74,-658285196(%ebp)    #   dimension 3: 74 elements
    movl    $78,-658285192(%ebp)    #   dimension 4: 78 elements
    movl    $88,-658285188(%ebp)    #   dimension 5: 88 elements
    movl    $5,-728371292(%ebp)     # local array 'v4': 5 dimensions
    movl    $81,-728371288(%ebp)    #   dimension 1: 81 elements
    movl    $5,-728371284(%ebp)     #   dimension 2: 5 elements
    movl    $69,-728371280(%ebp)    #   dimension 3: 69 elements
    movl    $11,-728371276(%ebp)    #   dimension 4: 11 elements
    movl    $57,-728371272(%ebp)    #   dimension 5: 57 elements
    movl    $5,-2017703908(%ebp)    # local array 'v5': 5 dimensions
    movl    $53,-2017703904(%ebp)   #   dimension 1: 53 elements
    movl    $95,-2017703900(%ebp)   #   dimension 2: 95 elements
    movl    $98,-2017703896(%ebp)   #   dimension 3: 98 elements
    movl    $67,-2017703892(%ebp)   #   dimension 4: 67 elements
    movl    $39,-2017703888(%ebp)   #   dimension 5: 39 elements

    # function body
    leal    -2017703908(%ebp), %eax #   0:     &()    t9 <- v5
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #   1:     param  2 <- t9
    pushl   %eax                   
    leal    -728371292(%ebp), %eax  #   2:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  1 <- t10
    pushl   %eax                   
    leal    -658285208(%ebp), %eax  #   4:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #   6:     call   t12 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #   7:     if     100 >= 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   8:     goto   3_if_false
l_f2_2_if_true:
    movl    $50918, %eax            #  10:     if     50918 # 8719 goto 6
    movl    $8719, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_6                 
    jmp     l_f2_7                  #  11:     goto   7
l_f2_6:
    movl    $1, %eax                #  13:     assign t13 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_8                  #  14:     goto   8
l_f2_7:
    movl    $0, %eax                #  16:     assign t13 <- 0
    movb    %al, -22(%ebp)         
l_f2_8:
    movzbl  -22(%ebp), %eax         #  18:     return t13
    jmp     l_f2_exit              
    call    ReadInt                 #  19:     call   t14 <- ReadInt
    movl    %eax, -28(%ebp)        
l_f2_12_while_cond:
    movl    $98577, %eax            #  21:     if     98577 < 66419 goto 13_while_body
    movl    $66419, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_13_while_body     
    jmp     l_f2_11                 #  22:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  24:     goto   12_while_cond
l_f2_11:
l_f2_16_while_cond:
    jmp     l_f2_16_while_cond      #  27:     goto   16_while_cond
    movl    $0, %eax                #  28:     if     0 # 0 goto 19
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_19                
    jmp     l_f2_20                 #  29:     goto   20
l_f2_19:
    movl    $1, %eax                #  31:     assign t15 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_21                 #  32:     goto   21
l_f2_20:
    movl    $0, %eax                #  34:     assign t15 <- 0
    movb    %al, -29(%ebp)         
l_f2_21:
    leal    -2017703908(%ebp), %eax #  36:     &()    t16 <- v5
    movl    %eax, -36(%ebp)        
    movl    $2, %eax                #  37:     param  1 <- 2
    pushl   %eax                   
    leal    -2017703908(%ebp), %eax #  38:     &()    t17 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  39:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  40:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    $41494, %eax            #  41:     mul    t19 <- 41494, t18
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  42:     add    t20 <- t19, 68372
    movl    $68372, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $3, %eax                #  43:     param  1 <- 3
    pushl   %eax                   
    leal    -2017703908(%ebp), %eax #  44:     &()    t21 <- v5
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  45:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  46:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  47:     mul    t23 <- t20, t22
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  48:     add    t24 <- t23, 56991
    movl    $56991, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  49:     param  1 <- 4
    pushl   %eax                   
    leal    -2017703908(%ebp), %eax #  50:     &()    t25 <- v5
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  51:     param  0 <- t25
    pushl   %eax                   
    call    DIM                     #  52:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  53:     mul    t27 <- t24, t26
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  54:     add    t28 <- t27, 16892
    movl    $16892, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $5, %eax                #  55:     param  1 <- 5
    pushl   %eax                   
    leal    -2017703908(%ebp), %eax #  56:     &()    t29 <- v5
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  57:     param  0 <- t29
    pushl   %eax                   
    call    DIM                     #  58:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  59:     mul    t31 <- t28, t30
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  60:     add    t32 <- t31, 17030
    movl    $17030, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  61:     mul    t33 <- t32, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    leal    -2017703908(%ebp), %eax #  62:     &()    t34 <- v5
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  63:     param  0 <- t34
    pushl   %eax                   
    call    DOFS                    #  64:     call   t35 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -104(%ebp), %eax        #  65:     add    t36 <- t33, t35
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -36(%ebp), %eax         #  66:     add    t37 <- t16, t36
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movzbl  -29(%ebp), %eax         #  67:     assign @t37 <- t15
    movl    -120(%ebp), %edi       
    movb    %al, (%edi)            
    leal    _str_2, %eax            #  68:     &()    t38 <- _str_2
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  69:     param  0 <- t38
    pushl   %eax                   
    call    WriteStr                #  70:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_1                  #  71:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_25_while_cond:
    jmp     l_f2_28                 #  75:     goto   28
    jmp     l_f2_26_while_body      #  76:     goto   26_while_body
l_f2_28:
    jmp     l_f2_26_while_body      #  78:     goto   26_while_body
l_f2_26_while_body:
    jmp     l_f2_25_while_cond      #  80:     goto   25_while_cond

l_f2_exit:
    # epilogue
    addl    $2017703896, %esp       # remove locals
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
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $86115, %eax            #   1:     div    t0 <- 86115, 75376
    movl    $75376, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t1 <- t0, 79761
    movl    $79761, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t2 <- t1, 8232
    movl    $8232, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t3 <- t2, 90154
    movl    $90154, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $83757, %eax            #   5:     if     83757 > t3 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   6:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_6_while_cond:
    jmp     l_test_5                #  12:     goto   5
    jmp     l_test_6_while_cond     #  13:     goto   6_while_cond
l_test_5:
    movl    $85054, %eax            #  15:     if     85054 = 27722 goto 11
    movl    $27722, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11              
    jmp     l_test_12               #  16:     goto   12
l_test_11:
    movl    $1, %eax                #  18:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_13               #  19:     goto   13
l_test_12:
    movl    $0, %eax                #  21:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_13:
    movzbl  -29(%ebp), %eax         #  23:     assign v0 <- t4
    movb    %al, v0                
l_test_16_while_cond:
    movl    $98807, %eax            #  25:     add    t5 <- 98807, 29216
    movl    $29216, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  26:     sub    t6 <- t5, 81756
    movl    $81756, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  27:     sub    t7 <- t6, 48082
    movl    $48082, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $57349, %eax            #  28:     sub    t8 <- 57349, 46825
    movl    $46825, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  29:     if     t7 < t8 goto 17_while_body
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_17_while_body   
    jmp     l_test_15               #  30:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  32:     goto   16_while_cond
l_test_15:

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
