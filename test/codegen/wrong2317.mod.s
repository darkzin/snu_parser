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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 99 of <array 1 of <array 53 of <array 73 of <array 16 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 20 of <array 86 of <array 56 of <array 44 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
l_f0_1_while_cond:
    movl    $90788, %eax            #   1:     if     90788 # 98052 goto 2_while_body
    movl    $98052, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
    call    dummyINTfunc            #   5:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #  11:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $99682, %eax            #  12:     add    t4 <- 99682, 17505
    movl    $17505, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     sub    t5 <- t4, 61809
    movl    $61809, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     sub    t6 <- t5, 76064
    movl    $76064, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $2361, %eax             #  15:     if     2361 < t6 goto 10_if_true
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  16:     goto   11_if_false
l_f0_10_if_true:
    movl    $0, %eax                #  18:     assign v4 <- 0
    movb    %al, 20(%ebp)          
l_f0_15_while_cond:
    movl    $48218, %eax            #  20:     if     48218 = 69913 goto 16_while_body
    movl    $69913, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_16_while_body     
    jmp     l_f0_14                 #  21:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  23:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_18                 #  25:     goto   18
l_f0_18:
l_f0_22_while_cond:
    movl    $53137, %eax            #  28:     if     53137 <= 56085 goto 23_while_body
    movl    $56085, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_23_while_body     
    jmp     l_f0_21                 #  29:     goto   21
l_f0_23_while_body:
    jmp     l_f0_22_while_cond      #  31:     goto   22_while_cond
l_f0_21:
    jmp     l_f0_9                  #  33:     goto   9
l_f0_11_if_false:
l_f0_9:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 34 of <array 76 of <array 39 of <array 61 of <array 59 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    movl    $77637, %eax            #   0:     sub    t2 <- 77637, 4677
    movl    $4677, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t3 <- t2, 24379
    movl    $24379, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v2 <- t3
    movl    %eax, 12(%ebp)         
    jmp     l_f1_5                  #   3:     goto   5
    jmp     l_f1_2_if_true          #   4:     goto   2_if_true
l_f1_5:
l_f1_2_if_true:
    jmp     l_f1_1                  #   7:     goto   1
l_f1_1:
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 7 of <array 20 of <array 86 of <array 56 of <array 44 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <ptr(4) to <array 7 of <array 20 of <array 86 of <array 56 of <array 44 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <ptr(4) to <array 7 of <array 20 of <array 86 of <array 56 of <array 44 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <ptr(4) to <array 7 of <array 20 of <array 86 of <array 56 of <array 44 of <int>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t3       <char> %ebp-97 ]
    #    -98(%ebp)   1  [ $t4       <bool> %ebp-98 ]
    #   -104(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <array 20 of <array 86 of <array 56 of <array 44 of <int>>>>>>> %ebp-104 ]
    #   -105(%ebp)   1  [ $t6       <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t7       <ptr(4) to <array 99 of <array 1 of <array 53 of <array 73 of <array 16 of <int>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <array 20 of <array 86 of <array 56 of <array 44 of <int>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <ptr(4) to <array 7 of <array 20 of <array 86 of <array 56 of <array 44 of <int>>>>>>> %ebp-120 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #   -24514128(%ebp)  24514008  [ $v4       <array 99 of <array 1 of <array 53 of <array 73 of <array 16 of <int>>>>>> %ebp-24514128 ]
    #   -143180392(%ebp)  118666264  [ $v5       <array 7 of <array 20 of <array 86 of <array 56 of <array 44 of <int>>>>>> %ebp-143180392 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $143180380, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $35795095, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-24514128(%ebp)      # local array 'v4': 5 dimensions
    movl    $99,-24514124(%ebp)     #   dimension 1: 99 elements
    movl    $1,-24514120(%ebp)      #   dimension 2: 1 elements
    movl    $53,-24514116(%ebp)     #   dimension 3: 53 elements
    movl    $73,-24514112(%ebp)     #   dimension 4: 73 elements
    movl    $16,-24514108(%ebp)     #   dimension 5: 16 elements
    movl    $5,-143180392(%ebp)     # local array 'v5': 5 dimensions
    movl    $7,-143180388(%ebp)     #   dimension 1: 7 elements
    movl    $20,-143180384(%ebp)    #   dimension 2: 20 elements
    movl    $86,-143180380(%ebp)    #   dimension 3: 86 elements
    movl    $56,-143180376(%ebp)    #   dimension 4: 56 elements
    movl    $44,-143180372(%ebp)    #   dimension 5: 44 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
l_f2_7_while_cond:
    jmp     l_f2_6                  #   8:     goto   6
l_f2_10_while_cond:
    movl    $65553, %eax            #  10:     if     65553 = 86949 goto 11_while_body
    movl    $86949, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_11_while_body     
    jmp     l_f2_9                  #  11:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  13:     goto   10_while_cond
l_f2_9:
l_f2_14_while_cond:
    jmp     l_f2_14_while_cond      #  16:     goto   14_while_cond
    movl    $97, %eax               #  17:     if     97 > 97 goto 17
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_17                
    jmp     l_f2_18                 #  18:     goto   18
l_f2_17:
    movl    $1, %eax                #  20:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f2_19                 #  21:     goto   19
l_f2_18:
    movl    $0, %eax                #  23:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f2_19:
    movzbl  -53(%ebp), %eax         #  25:     assign v2 <- t2
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #  26:     call   t3 <- dummyCHARfunc
    movb    %al, -97(%ebp)         
    jmp     l_f2_7_while_cond       #  27:     goto   7_while_cond
l_f2_6:
    movl    $99, %eax               #  29:     if     99 # 98 goto 23_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_23_if_true        
    jmp     l_f2_24_if_false        #  30:     goto   24_if_false
l_f2_23_if_true:
    movl    $98, %eax               #  32:     assign v3 <- 98
    movb    %al, 16(%ebp)          
    movl    $1, %eax                #  33:     if     1 # 1 goto 28
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_28                
    jmp     l_f2_29                 #  34:     goto   29
l_f2_28:
    movl    $1, %eax                #  36:     assign t4 <- 1
    movb    %al, -98(%ebp)         
    jmp     l_f2_30                 #  37:     goto   30
l_f2_29:
    movl    $0, %eax                #  39:     assign t4 <- 0
    movb    %al, -98(%ebp)         
l_f2_30:
    movzbl  -98(%ebp), %eax         #  41:     assign v2 <- t4
    movb    %al, 12(%ebp)          
    movl    $1, %eax                #  42:     param  3 <- 1
    pushl   %eax                   
    leal    -143180392(%ebp), %eax  #  43:     &()    t5 <- v5
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  44:     param  2 <- t5
    pushl   %eax                   
    movl    $4566, %eax             #  45:     if     4566 < 8002 goto 33
    movl    $8002, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_33                
    jmp     l_f2_34                 #  46:     goto   34
l_f2_33:
    movl    $1, %eax                #  48:     assign t6 <- 1
    movb    %al, -105(%ebp)        
    jmp     l_f2_35                 #  49:     goto   35
l_f2_34:
    movl    $0, %eax                #  51:     assign t6 <- 0
    movb    %al, -105(%ebp)        
l_f2_35:
    movzbl  -105(%ebp), %eax        #  53:     param  1 <- t6
    pushl   %eax                   
    leal    -24514128(%ebp), %eax   #  54:     &()    t7 <- v4
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  55:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  56:     call   f0
    addl    $16, %esp              
    jmp     l_f2_37                 #  57:     goto   37
l_f2_37:
    leal    -143180392(%ebp), %eax  #  59:     &()    t8 <- v5
    movl    %eax, -116(%ebp)       
    movl    $2, %eax                #  60:     param  1 <- 2
    pushl   %eax                   
    leal    -143180392(%ebp), %eax  #  61:     &()    t9 <- v5
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  62:     param  0 <- t9
    pushl   %eax                   
    call    DIM                     #  63:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $80636, %eax            #  64:     mul    t11 <- 80636, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  65:     add    t12 <- t11, 54348
    movl    $54348, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  66:     param  1 <- 3
    pushl   %eax                   
    leal    -143180392(%ebp), %eax  #  67:     &()    t13 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  68:     param  0 <- t13
    pushl   %eax                   
    call    DIM                     #  69:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  70:     mul    t15 <- t12, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  71:     add    t16 <- t15, 29054
    movl    $29054, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  72:     param  1 <- 4
    pushl   %eax                   
    leal    -143180392(%ebp), %eax  #  73:     &()    t17 <- v5
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  74:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  75:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  76:     mul    t19 <- t16, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  77:     add    t20 <- t19, 99513
    movl    $99513, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  78:     param  1 <- 5
    pushl   %eax                   
    leal    -143180392(%ebp), %eax  #  79:     &()    t21 <- v5
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  80:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  81:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  82:     mul    t23 <- t20, t22
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  83:     add    t24 <- t23, 94293
    movl    $94293, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  84:     mul    t25 <- t24, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    -143180392(%ebp), %eax  #  85:     &()    t26 <- v5
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  86:     param  0 <- t26
    pushl   %eax                   
    call    DOFS                    #  87:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  88:     add    t28 <- t25, t27
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -116(%ebp), %eax        #  89:     add    t29 <- t8, t28
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $5378, %eax             #  90:     assign @t29 <- 5378
    movl    -96(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_22                 #  93:     goto   22
l_f2_24_if_false:
l_f2_22:

l_f2_exit:
    # epilogue
    addl    $143180380, %esp        # remove locals
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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $79638, %eax            #   1:     if     79638 >= 53215 goto 2_if_true
    movl    $53215, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #   7:     goto   8_while_cond
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #   9:     goto   11_while_cond
    movl    $99, %eax               #  10:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_18_if_false      #  13:     goto   18_if_false
    jmp     l_test_16               #  14:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $100, %eax              #  17:     assign v0 <- 100
    movb    %al, v0                
    movl    $98, %eax               #  18:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_1                #  19:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    movl    $100, %eax              #  23:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
