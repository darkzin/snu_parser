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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 6 of <array 8 of <array 5 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 1 of <array 4 of <array 5 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     if     98 < 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $1, %eax                #   4:     assign v2 <- 1
    movb    %al, 16(%ebp)          
l_f0_6_while_cond:
    movl    $0, %eax                #   6:     if     0 # 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   9:     goto   6_while_cond
l_f0_5:
l_f0_10_while_cond:
    movl    $0, %eax                #  12:     if     0 = 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_11_while_body     
    jmp     l_f0_9                  #  13:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  15:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_15_if_false        #  17:     goto   15_if_false
    jmp     l_f0_13                 #  18:     goto   13
l_f0_15_if_false:
l_f0_13:
    movl    $98, %eax               #  21:     if     98 <= 98 goto 17_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  22:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  24:     goto   16
l_f0_18_if_false:
l_f0_16:
    jmp     l_f0_1_while_cond       #  27:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  29:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #  30:     call   t2 <- dummyBOOLfunc
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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t18      <bool> %ebp-49 ]
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
    #   -128(%ebp)   4  [ $t4       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t5       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t6       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 7 of <array 9 of <array 9 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #   -149(%ebp)   1  [ $v3       <bool> %ebp-149 ]

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
l_f1_1_while_cond:
    movl    $94892, %eax            #   1:     if     94892 <= 64604 goto 2_while_body
    movl    $64604, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $48901, %eax            #   4:     if     48901 > 27344 goto 5_if_true
    movl    $27344, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   5:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $100, %eax              #  10:     if     100 = 97 goto 9_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  11:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  13:     goto   8
l_f1_10_if_false:
l_f1_8:
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  17:     goto   13_while_cond
    movl    $97649, %eax            #  18:     if     97649 <= 3417 goto 16
    movl    $3417, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_16                
    jmp     l_f1_17                 #  19:     goto   17
l_f1_16:
    movl    $1, %eax                #  21:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_18                 #  22:     goto   18
l_f1_17:
    movl    $0, %eax                #  24:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_18:
    movl    $2, %eax                #  26:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $23237, %eax            #  29:     mul    t3 <- 23237, t2
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  30:     add    t4 <- t3, 80832
    movl    $80832, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $3, %eax                #  31:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  32:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  33:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  34:     mul    t6 <- t4, t5
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  35:     add    t7 <- t6, 69006
    movl    $69006, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    $4, %eax                #  36:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  37:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  38:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -144(%ebp)       
    movl    -140(%ebp), %eax        #  39:     mul    t9 <- t7, t8
    movl    -144(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  40:     add    t10 <- t9, 94884
    movl    $94884, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  42:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  43:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  44:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  45:     add    t13 <- t12, 78790
    movl    $78790, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  46:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    12(%ebp), %eax          #  47:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  48:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  49:     add    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  50:     add    t17 <- v1, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movzbl  -13(%ebp), %eax         #  51:     assign @t17 <- t1
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  52:     call   t18 <- dummyBOOLfunc
    movb    %al, -49(%ebp)         
    movl    $2, %eax                #  53:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  54:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  55:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $41374, %eax            #  56:     mul    t20 <- 41374, t19
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  57:     add    t21 <- t20, 46146
    movl    $46146, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  58:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  59:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  60:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  61:     mul    t23 <- t21, t22
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  62:     add    t24 <- t23, 72436
    movl    $72436, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  63:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  64:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  65:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  66:     mul    t26 <- t24, t25
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  67:     add    t27 <- t26, 21603
    movl    $21603, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $5, %eax                #  68:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  69:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  70:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  71:     mul    t29 <- t27, t28
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  72:     add    t30 <- t29, 88584
    movl    $88584, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  73:     mul    t31 <- t30, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    12(%ebp), %eax          #  74:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  75:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  76:     add    t33 <- t31, t32
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    12(%ebp), %eax          #  77:     add    t34 <- v1, t33
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $1, %eax                #  78:     assign @t34 <- 1
    movl    -124(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_1_while_cond       #  79:     goto   1_while_cond
l_f1_0:
l_f1_23_while_cond:
    jmp     l_f1_22                 #  82:     goto   22
    movl    $16322, %eax            #  83:     assign v2 <- 16322
    movl    %eax, 16(%ebp)         
    movl    $96671, %eax            #  84:     assign v2 <- 96671
    movl    %eax, 16(%ebp)         
    jmp     l_f1_23_while_cond      #  85:     goto   23_while_cond
l_f1_22:
    movl    $100, %eax              #  87:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  88:     call   WriteChar
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
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
    movl    $100, %eax              #   0:     assign v1 <- 100
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 <= t1 goto 2
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_2                 
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, 8(%ebp)           
    jmp     l_f2_exit              

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   3:     goto   3_while_body
    jmp     l_test_3_while_body     #   4:     goto   3_while_body
    jmp     l_test_3_while_body     #   5:     goto   3_while_body
    jmp     l_test_3_while_body     #   6:     goto   3_while_body
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
    movl    $99, %eax               #   9:     if     99 <= 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_13_if_true      
    jmp     l_test_14_if_false      #  10:     goto   14_if_false
l_test_13_if_true:
l_test_17_while_cond:
    movl    $17328, %eax            #  13:     if     17328 <= 11714 goto 18_while_body
    movl    $11714, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_18_while_body   
    jmp     l_test_16               #  14:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  16:     goto   17_while_cond
l_test_16:
    movl    $0, %eax                #  18:     assign v1 <- 0
    movb    %al, v1                
    call    WriteLn                 #  19:     call   WriteLn
    jmp     l_test_12               #  20:     goto   12
l_test_14_if_false:
l_test_12:

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
