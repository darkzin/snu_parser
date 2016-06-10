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
    #    -13(%ebp)   1  [ $t14      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t17      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t18      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t19      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t20      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t21      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t22      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t23      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t24      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t25      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t26      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t27      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t28      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t29      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t30      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t31      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t32      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t33      <char> %ebp-89 ]
    #    -90(%ebp)   1  [ $t34      <bool> %ebp-90 ]
    #    -96(%ebp)   4  [ $t35      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t36      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t37      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t38      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t39      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t40      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t41      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t42      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t43      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t44      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t45      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t46      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t47      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t48      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t49      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t50      <int> %ebp-156 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 68 of <array 93 of <array 77 of <array 10 of <array 13 of <bool>>>>>>> %ebp+12 ]
    #   -157(%ebp)   1  [ $v3       <bool> %ebp-157 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_5_if_false         #   1:     goto   5_if_false
    jmp     l_f0_3                  #   2:     goto   3
l_f0_5_if_false:
l_f0_3:
    jmp     l_f0_6                  #   5:     goto   6
l_f0_6:
    movl    $9369, %eax             #   7:     if     9369 <= 80380 goto 10
    movl    $80380, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_10                
    jmp     l_f0_11                 #   8:     goto   11
l_f0_10:
    movl    $1, %eax                #  10:     assign t14 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_12                 #  11:     goto   12
l_f0_11:
    movl    $0, %eax                #  13:     assign t14 <- 0
    movb    %al, -13(%ebp)         
l_f0_12:
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $48884, %eax            #  18:     mul    t16 <- 48884, t15
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t17 <- t16, 87341
    movl    $87341, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  23:     mul    t19 <- t17, t18
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t20 <- t19, 45905
    movl    $45905, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t22 <- t20, t21
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  29:     add    t23 <- t22, 17253
    movl    $17253, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  31:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  32:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  33:     mul    t25 <- t23, t24
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  34:     add    t26 <- t25, 35797
    movl    $35797, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  35:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  37:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  38:     add    t29 <- t27, t28
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  39:     add    t30 <- v2, t29
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -13(%ebp), %eax         #  40:     assign @t30 <- t14
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_0                  #  41:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyINTfunc            #  44:     call   t31 <- dummyINTfunc
    movl    %eax, -84(%ebp)        
    movl    $39180, %eax            #  45:     div    t32 <- 39180, t31
    movl    -84(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  46:     return t32
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  47:     call   t33 <- dummyCHARfunc
    movb    %al, -89(%ebp)         
    movzbl  -89(%ebp), %eax         #  48:     if     t33 >= 99 goto 16
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_16                
    jmp     l_f0_17                 #  49:     goto   17
l_f0_16:
    movl    $1, %eax                #  51:     assign t34 <- 1
    movb    %al, -90(%ebp)         
    jmp     l_f0_18                 #  52:     goto   18
l_f0_17:
    movl    $0, %eax                #  54:     assign t34 <- 0
    movb    %al, -90(%ebp)         
l_f0_18:
    movl    $2, %eax                #  56:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  57:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  58:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $29150, %eax            #  59:     mul    t36 <- 29150, t35
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  60:     add    t37 <- t36, 85036
    movl    $85036, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $3, %eax                #  61:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  62:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  63:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  64:     mul    t39 <- t37, t38
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  65:     add    t40 <- t39, 46490
    movl    $46490, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $4, %eax                #  66:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  67:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  68:     call   t41 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  69:     mul    t42 <- t40, t41
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  70:     add    t43 <- t42, 70800
    movl    $70800, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $5, %eax                #  71:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  72:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  73:     call   t44 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  74:     mul    t45 <- t43, t44
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  75:     add    t46 <- t45, 92684
    movl    $92684, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  76:     mul    t47 <- t46, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    12(%ebp), %eax          #  77:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  78:     call   t48 <- DOFS
    addl    $4, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  79:     add    t49 <- t47, t48
    movl    -148(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    12(%ebp), %eax          #  80:     add    t50 <- v2, t49
    movl    -152(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movzbl  -90(%ebp), %eax         #  81:     assign @t50 <- t34
    movl    -156(%ebp), %edi       
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $148, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 15 of <array 87 of <array 17 of <array 95 of <array 45 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -13(%ebp)   1  [ $v3       <bool> %ebp-13 ]

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
l_f1_4_while_cond:
    jmp     l_f1_3                  #   1:     goto   3
    jmp     l_f1_4_while_cond       #   2:     goto   4_while_cond
l_f1_3:
l_f1_7_while_cond:
    jmp     l_f1_6                  #   5:     goto   6
    jmp     l_f1_7_while_cond       #   6:     goto   7_while_cond
l_f1_6:
    call    dummyProcedure          #   8:     call   dummyProcedure
    jmp     l_f1_0                  #   9:     goto   0
l_f1_0:
l_f1_14_while_cond:
    movl    $98, %eax               #  12:     if     98 < 99 goto 15_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  13:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  15:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_19_if_false        #  17:     goto   19_if_false
    jmp     l_f1_17                 #  18:     goto   17
l_f1_19_if_false:
l_f1_17:
    jmp     l_f1_10                 #  21:     goto   10
l_f1_10:
    movl    $1, %eax                #  23:     assign v3 <- 1
    movb    %al, -13(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t16      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t17      <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 28 of <array 41 of <array 25 of <array 88 of <array 11 of <char>>>>>>> %ebp+8 ]
    #    -29(%ebp)   1  [ $v2       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $v3       <int> %ebp-36 ]

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
    movl    $24034, %eax            #   0:     add    t14 <- 24034, 19707
    movl    $19707, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t15 <- t14, 82473
    movl    $82473, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t15
    jmp     l_f2_exit              
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
    call    dummyCHARfunc           #   4:     call   t16 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #   5:     assign v2 <- 100
    movb    %al, -29(%ebp)         
    jmp     l_f2_1                  #   6:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $82179, %eax            #   9:     div    t17 <- 82179, 18117
    movl    $18117, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     assign v3 <- t17
    movl    %eax, -36(%ebp)        

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t2       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t3       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t4       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t5       <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t6       <bool> %ebp-53 ]
    #    -54(%ebp)   1  [ $t7       <bool> %ebp-54 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $92269, %eax            #   0:     sub    t0 <- 92269, 61946
    movl    $61946, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 80354
    movl    $80354, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 48593
    movl    $48593, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     add    t3 <- t2, 16867
    movl    $16867, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     sub    t4 <- t3, 90740
    movl    $90740, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   5:     sub    t5 <- t4, 42413
    movl    $42413, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   6:     assign v0 <- t5
    movl    %eax, v0               
l_test_2_while_cond:
    movl    $100, %eax              #   8:     if     100 <= 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_3_while_body    
    jmp     l_test_1                #   9:     goto   1
l_test_3_while_body:
    call    dummyBOOLfunc           #  11:     call   t6 <- dummyBOOLfunc
    movb    %al, -53(%ebp)         
    movl    $0, %eax                #  12:     if     0 = 0 goto 7_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_7_if_true       
    jmp     l_test_8_if_false       #  13:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #  15:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_exit            
    movl    $98, %eax               #  19:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  20:     call   WriteChar
    addl    $4, %esp               
    call    dummyBOOLfunc           #  21:     call   t7 <- dummyBOOLfunc
    movb    %al, -54(%ebp)         
    jmp     l_test_2_while_cond     #  22:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
l_test_15_while_cond:
    movl    $61321, %eax            #  26:     add    t8 <- 61321, 99200
    movl    $99200, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  27:     sub    t9 <- t8, 81827
    movl    $81827, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  28:     add    t10 <- t9, 15398
    movl    $15398, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $43967, %eax            #  29:     sub    t11 <- 43967, 53916
    movl    $53916, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     sub    t12 <- t11, 96098
    movl    $96098, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     sub    t13 <- t12, 13484
    movl    $13484, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -24(%ebp), %eax         #  32:     if     t10 <= t13 goto 16_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_16_while_body   
    jmp     l_test_14               #  33:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  35:     goto   15_while_cond
l_test_14:
l_test_19_while_cond:
    jmp     l_test_18               #  38:     goto   18
    jmp     l_test_23_if_false      #  39:     goto   23_if_false
    jmp     l_test_21               #  40:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_28_if_false      #  45:     goto   28_if_false
    jmp     l_test_26               #  46:     goto   26
l_test_28_if_false:
l_test_26:
    jmp     l_test_31_if_false      #  49:     goto   31_if_false
    jmp     l_test_29               #  50:     goto   29
l_test_31_if_false:
l_test_29:
    jmp     l_test_19_while_cond    #  53:     goto   19_while_cond
l_test_18:

l_test_exit:
    # epilogue
    addl    $52, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
