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
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 57 of <array 86 of <array 32 of <array 2 of <array 55 of <char>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]

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
    movl    $98, %eax               #   0:     assign v1 <- 98
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v1 <- t1
    movb    %al, -15(%ebp)         
    call    dummyBOOLfunc           #   3:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 57 of <array 86 of <array 32 of <array 2 of <array 55 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 75 of <array 49 of <array 3 of <array 18 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 77 of <array 84 of <array 76 of <array 24 of <array 9 of <char>>>>>>> %ebp+16 ]
    #   -17255092(%ebp)  17255064  [ $v3       <array 57 of <array 86 of <array 32 of <array 2 of <array 55 of <char>>>>>> %ebp-17255092 ]
    #   -17255093(%ebp)   1  [ $v4       <bool> %ebp-17255093 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $17255084, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4313771, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-17255092(%ebp)      # local array 'v3': 5 dimensions
    movl    $57,-17255088(%ebp)     #   dimension 1: 57 elements
    movl    $86,-17255084(%ebp)     #   dimension 2: 86 elements
    movl    $32,-17255080(%ebp)     #   dimension 3: 32 elements
    movl    $2,-17255076(%ebp)      #   dimension 4: 2 elements
    movl    $55,-17255072(%ebp)     #   dimension 5: 55 elements

    # function body
    leal    -17255092(%ebp), %eax   #   0:     &()    t1 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   2:     call   t2 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    jmp     l_f1_3                  #   3:     goto   3
    jmp     l_f1_3                  #   4:     goto   3
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f1_4:
    movzbl  -21(%ebp), %eax         #  10:     assign v4 <- t3
    movb    %al, -17255093(%ebp)   
l_f1_10_while_cond:
    movl    $72292, %eax            #  12:     div    t4 <- 72292, 67297
    movl    $67297, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     if     t4 >= 18635 goto 11_while_body
    movl    $18635, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_11_while_body     
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_while_body:
l_f1_14_while_cond:
    jmp     l_f1_13                 #  17:     goto   13
    jmp     l_f1_14_while_cond      #  18:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_18_if_false        #  20:     goto   18_if_false
    jmp     l_f1_16                 #  21:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_10_while_cond      #  24:     goto   10_while_cond
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $17255084, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
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
    #    -57(%ebp)   1  [ $t2       <char> %ebp-57 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t22      <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $t3       <char> %ebp-101 ]
    #   -108(%ebp)   4  [ $t30      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t31      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t32      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t33      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t34      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t35      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t36      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t37      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t38      <int> %ebp-140 ]
    #   -141(%ebp)   1  [ $t4       <char> %ebp-141 ]
    #   -142(%ebp)   1  [ $t5       <bool> %ebp-142 ]
    #   -148(%ebp)   4  [ $t6       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t7       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t8       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t9       <int> %ebp-160 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 35 of <array 35 of <array 31 of <array 80 of <array 19 of <bool>>>>>>> %ebp+12 ]
    #   -161(%ebp)   1  [ $v2       <bool> %ebp-161 ]

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
l_f2_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #   7:     call   t2 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #   8:     if     t2 < 99 goto 4_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   9:     goto   5_if_false
l_f2_4_if_true:
    movl    $15952, %eax            #  11:     if     15952 >= 56220 goto 8_if_true
    movl    $56220, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #  12:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #  14:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_3                  #  17:     goto   3
l_f2_5_if_false:
l_f2_3:
    movl    $78662, %eax            #  20:     if     78662 > 68299 goto 12_if_true
    movl    $68299, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  21:     goto   13_if_false
l_f2_12_if_true:
    movl    $1, %eax                #  23:     assign v2 <- 1
    movb    %al, -161(%ebp)        
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  26:     call   t3 <- dummyCHARfunc
    movb    %al, -101(%ebp)        
    call    dummyCHARfunc           #  27:     call   t4 <- dummyCHARfunc
    movb    %al, -141(%ebp)        
    jmp     l_f2_exit              
l_f2_22_while_cond:
    jmp     l_f2_22_while_cond      #  30:     goto   22_while_cond
    movl    $1, %eax                #  31:     if     1 = 0 goto 25
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_25                
    jmp     l_f2_26                 #  32:     goto   26
l_f2_25:
    movl    $1, %eax                #  34:     assign t5 <- 1
    movb    %al, -142(%ebp)        
    jmp     l_f2_27                 #  35:     goto   27
l_f2_26:
    movl    $0, %eax                #  37:     assign t5 <- 0
    movb    %al, -142(%ebp)        
l_f2_27:
    movl    $2, %eax                #  39:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  40:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  41:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    $1455, %eax             #  42:     mul    t7 <- 1455, t6
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  43:     add    t8 <- t7, 47763
    movl    $47763, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $3, %eax                #  44:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  45:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  46:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -160(%ebp)       
    movl    -156(%ebp), %eax        #  47:     mul    t10 <- t8, t9
    movl    -160(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  48:     add    t11 <- t10, 37922
    movl    $37922, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  49:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  50:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  51:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  52:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  53:     add    t14 <- t13, 86849
    movl    $86849, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  54:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  55:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  56:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  57:     mul    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  58:     add    t17 <- t16, 30961
    movl    $30961, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  59:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  60:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  61:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  62:     add    t20 <- t18, t19
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  63:     add    t21 <- v1, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -142(%ebp), %eax        #  64:     assign @t21 <- t5
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_exit              
    movl    $98, %eax               #  66:     if     98 >= 97 goto 31
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_31                
    jmp     l_f2_32                 #  67:     goto   32
l_f2_31:
    movl    $1, %eax                #  69:     assign t22 <- 1
    movb    %al, -69(%ebp)         
    jmp     l_f2_33                 #  70:     goto   33
l_f2_32:
    movl    $0, %eax                #  72:     assign t22 <- 0
    movb    %al, -69(%ebp)         
l_f2_33:
    movl    $2, %eax                #  74:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  75:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  76:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $43033, %eax            #  77:     mul    t24 <- 43033, t23
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  78:     add    t25 <- t24, 75685
    movl    $75685, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  79:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  80:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  81:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  82:     mul    t27 <- t25, t26
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  83:     add    t28 <- t27, 86235
    movl    $86235, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $4, %eax                #  84:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  85:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  86:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  87:     mul    t30 <- t28, t29
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  88:     add    t31 <- t30, 2287
    movl    $2287, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $5, %eax                #  89:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  90:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  91:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  92:     mul    t33 <- t31, t32
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  93:     add    t34 <- t33, 10535
    movl    $10535, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  94:     mul    t35 <- t34, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    12(%ebp), %eax          #  95:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  96:     call   t36 <- DOFS
    addl    $4, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  97:     add    t37 <- t35, t36
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    12(%ebp), %eax          #  98:     add    t38 <- v1, t37
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movzbl  -69(%ebp), %eax         #  99:     assign @t38 <- t22
    movl    -140(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f2_11                 # 100:     goto   11
l_f2_13_if_false:
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $152, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 35 of <array 35 of <array 31 of <array 80 of <array 19 of <bool>>>>>>> %ebp-16 ]

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
    leal    v0, %eax                #   1:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t0
    pushl   %eax                   
    movl    $100, %eax              #   3:     param  0 <- 100
    pushl   %eax                   
    call    f2                      #   4:     call   f2
    addl    $8, %esp               
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
v0:                                 # <array 35 of <array 35 of <array 31 of <array 80 of <array 19 of <bool>>>>>>
    .long    5
    .long   35
    .long   35
    .long   31
    .long   80
    .long   19
    .skip 57722000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
