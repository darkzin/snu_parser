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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t6       <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $t7       <bool> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #    -22(%ebp)   1  [ $v4       <char> %ebp-22 ]

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
    movl    $99, %eax               #   0:     if     99 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyINTfunc            #   3:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   4:     assign v4 <- 97
    movb    %al, -22(%ebp)         
    movl    $28255, %eax            #   5:     if     28255 > 67506 goto 7
    movl    $67506, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_7                 
    jmp     l_f0_8                  #   6:     goto   8
l_f0_7:
    movl    $1, %eax                #   8:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_9                  #   9:     goto   9
l_f0_8:
    movl    $0, %eax                #  11:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f0_9:
    movzbl  -17(%ebp), %eax         #  13:     assign v2 <- t4
    movb    %al, 8(%ebp)           
    jmp     l_f0_13_if_false        #  14:     goto   13_if_false
    jmp     l_f0_11                 #  15:     goto   11
l_f0_13_if_false:
l_f0_11:
    call    dummyBOOLfunc           #  18:     call   t5 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_f0_17_if_false        #  19:     goto   17_if_false
    jmp     l_f0_15                 #  20:     goto   15
l_f0_17_if_false:
l_f0_15:
    call    dummyCHARfunc           #  23:     call   t6 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    call    dummyBOOLfunc           #  24:     call   t7 <- dummyBOOLfunc
    movb    %al, -20(%ebp)         
    jmp     l_f0_22_if_false        #  25:     goto   22_if_false
    jmp     l_f0_20                 #  26:     goto   20
l_f0_22_if_false:
l_f0_20:
    jmp     l_f0_0                  #  29:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $100, %eax              #  32:     assign v4 <- 100
    movb    %al, -22(%ebp)         
l_f0_25_while_cond:
    jmp     l_f0_24                 #  34:     goto   24
    jmp     l_f0_24                 #  35:     goto   24
    movl    $0, %eax                #  36:     if     0 = 0 goto 30
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_30                
    jmp     l_f0_31                 #  37:     goto   31
l_f0_30:
    movl    $1, %eax                #  39:     assign t8 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_32                 #  40:     goto   32
l_f0_31:
    movl    $0, %eax                #  42:     assign t8 <- 0
    movb    %al, -21(%ebp)         
l_f0_32:
    movzbl  -21(%ebp), %eax         #  44:     return t8
    jmp     l_f0_exit              
    jmp     l_f0_25_while_cond      #  45:     goto   25_while_cond
l_f0_24:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t3       <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t36      <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t37      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t38      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t39      <int> %ebp-136 ]
    #   -137(%ebp)   1  [ $t4       <bool> %ebp-137 ]
    #   -144(%ebp)   4  [ $t40      <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp-144 ]
    #   -148(%ebp)   4  [ $t41      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t42      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t43      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t44      <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp-160 ]
    #   -164(%ebp)   4  [ $t45      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t46      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t47      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t48      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t49      <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp-180 ]
    #   -184(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-184 ]
    #   -188(%ebp)   4  [ $t50      <int> %ebp-188 ]
    #   -192(%ebp)   4  [ $t51      <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t52      <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp-200 ]
    #   -201(%ebp)   1  [ $t7       <bool> %ebp-201 ]
    #   -202(%ebp)   1  [ $t8       <bool> %ebp-202 ]
    #   -208(%ebp)   4  [ $t9       <ptr(4) to <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>>> %ebp-208 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #   -209(%ebp)   1  [ $v3       <bool> %ebp-209 ]
    #   -15356(%ebp)  15144  [ $v4       <array 7 of <array 6 of <array 5 of <array 8 of <array 9 of <bool>>>>>> %ebp-15356 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $15344, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3836, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-15356(%ebp)         # local array 'v4': 5 dimensions
    movl    $7,-15352(%ebp)         #   dimension 1: 7 elements
    movl    $6,-15348(%ebp)         #   dimension 2: 6 elements
    movl    $5,-15344(%ebp)         #   dimension 3: 5 elements
    movl    $8,-15340(%ebp)         #   dimension 4: 8 elements
    movl    $9,-15336(%ebp)         #   dimension 5: 9 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -93(%ebp)         
    movzbl  -93(%ebp), %eax         #   1:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
    movl    $36773, %eax            #   4:     if     36773 >= 63666 goto 5_if_true
    movl    $63666, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   5:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $1, %eax                #  10:     assign v3 <- 1
    movb    %al, -209(%ebp)        
    jmp     l_f1_exit              
l_f1_11_while_cond:
    movl    $100, %eax              #  13:     if     100 <= 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_12_while_body     
    jmp     l_f1_10                 #  14:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  16:     goto   11_while_cond
l_f1_10:
    call    dummyBOOLfunc           #  18:     call   t4 <- dummyBOOLfunc
    movb    %al, -137(%ebp)        
    leal    _str_1, %eax            #  19:     &()    t5 <- _str_1
    movl    %eax, -184(%ebp)       
    movl    -184(%ebp), %eax        #  20:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #  21:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_exit              
    movl    $59817, %eax            #  23:     if     59817 >= 58089 goto 18_if_true
    movl    $58089, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  24:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  26:     goto   17
l_f1_19_if_false:
l_f1_17:
    leal    -15356(%ebp), %eax      #  29:     &()    t6 <- v4
    movl    %eax, -200(%ebp)       
    movl    -200(%ebp), %eax        #  30:     param  1 <- t6
    pushl   %eax                   
    movl    $1, %eax                #  31:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #  32:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -201(%ebp)        
    movl    $5536, %eax             #  33:     if     5536 = 45798 goto 23
    movl    $45798, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_23                
    jmp     l_f1_24                 #  34:     goto   24
l_f1_23:
    movl    $1, %eax                #  36:     assign t8 <- 1
    movb    %al, -202(%ebp)        
    jmp     l_f1_25                 #  37:     goto   25
l_f1_24:
    movl    $0, %eax                #  39:     assign t8 <- 0
    movb    %al, -202(%ebp)        
l_f1_25:
    leal    -15356(%ebp), %eax      #  41:     &()    t9 <- v4
    movl    %eax, -208(%ebp)       
    movl    $2, %eax                #  42:     param  1 <- 2
    pushl   %eax                   
    leal    -15356(%ebp), %eax      #  43:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  44:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  45:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $77975, %eax            #  46:     mul    t12 <- 77975, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  47:     add    t13 <- t12, 10472
    movl    $10472, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  48:     param  1 <- 3
    pushl   %eax                   
    leal    -15356(%ebp), %eax      #  49:     &()    t14 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  50:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  51:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  52:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  53:     add    t17 <- t16, 27758
    movl    $27758, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  54:     param  1 <- 4
    pushl   %eax                   
    leal    -15356(%ebp), %eax      #  55:     &()    t18 <- v4
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  56:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  57:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  58:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  59:     add    t21 <- t20, 11328
    movl    $11328, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  60:     param  1 <- 5
    pushl   %eax                   
    leal    -15356(%ebp), %eax      #  61:     &()    t22 <- v4
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  62:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  63:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  64:     mul    t24 <- t21, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  65:     add    t25 <- t24, 75758
    movl    $75758, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  66:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    -15356(%ebp), %eax      #  67:     &()    t27 <- v4
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  68:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  69:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  70:     add    t29 <- t26, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -208(%ebp), %eax        #  71:     add    t30 <- t9, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movzbl  -202(%ebp), %eax        #  72:     assign @t30 <- t8
    movl    -100(%ebp), %edi       
    movb    %al, (%edi)            
    leal    -15356(%ebp), %eax      #  73:     &()    t31 <- v4
    movl    %eax, -104(%ebp)       
    movl    $2, %eax                #  74:     param  1 <- 2
    pushl   %eax                   
    leal    -15356(%ebp), %eax      #  75:     &()    t32 <- v4
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  76:     param  0 <- t32
    pushl   %eax                   
    call    DIM                     #  77:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    $65714, %eax            #  78:     mul    t34 <- 65714, t33
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  79:     add    t35 <- t34, 15909
    movl    $15909, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $3, %eax                #  80:     param  1 <- 3
    pushl   %eax                   
    leal    -15356(%ebp), %eax      #  81:     &()    t36 <- v4
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  82:     param  0 <- t36
    pushl   %eax                   
    call    DIM                     #  83:     call   t37 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -120(%ebp), %eax        #  84:     mul    t38 <- t35, t37
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  85:     add    t39 <- t38, 15418
    movl    $15418, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $4, %eax                #  86:     param  1 <- 4
    pushl   %eax                   
    leal    -15356(%ebp), %eax      #  87:     &()    t40 <- v4
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  88:     param  0 <- t40
    pushl   %eax                   
    call    DIM                     #  89:     call   t41 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -136(%ebp), %eax        #  90:     mul    t42 <- t39, t41
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  91:     add    t43 <- t42, 82050
    movl    $82050, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $5, %eax                #  92:     param  1 <- 5
    pushl   %eax                   
    leal    -15356(%ebp), %eax      #  93:     &()    t44 <- v4
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  94:     param  0 <- t44
    pushl   %eax                   
    call    DIM                     #  95:     call   t45 <- DIM
    addl    $8, %esp               
    movl    %eax, -164(%ebp)       
    movl    -156(%ebp), %eax        #  96:     mul    t46 <- t43, t45
    movl    -164(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #  97:     add    t47 <- t46, 20756
    movl    $20756, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #  98:     mul    t48 <- t47, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -176(%ebp)       
    leal    -15356(%ebp), %eax      #  99:     &()    t49 <- v4
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        # 100:     param  0 <- t49
    pushl   %eax                   
    call    DOFS                    # 101:     call   t50 <- DOFS
    addl    $4, %esp               
    movl    %eax, -188(%ebp)       
    movl    -176(%ebp), %eax        # 102:     add    t51 <- t48, t50
    movl    -188(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -192(%ebp)       
    movl    -104(%ebp), %eax        # 103:     add    t52 <- t31, t51
    movl    -192(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -196(%ebp)       
    movl    $1, %eax                # 104:     assign @t52 <- 1
    movl    -196(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f1_1                  # 105:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $15344, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]

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
    movl    $68027, %eax            #   0:     if     68027 > 79204 goto 1
    movl    $79204, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     return t3
    jmp     l_f2_exit              
l_f2_6_while_cond:
    movl    $38835, %eax            #  10:     add    t4 <- 38835, 82182
    movl    $82182, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     sub    t5 <- t4, 9006
    movl    $9006, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $15098, %eax            #  12:     div    t6 <- 15098, 43514
    movl    $43514, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  13:     if     t5 = t6 goto 7_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  14:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  16:     goto   6_while_cond
l_f2_5:
    movl    $1, %eax                #  18:     assign v2 <- 1
    movb    %al, 8(%ebp)           

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    movl    $97, %eax               #   0:     if     97 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $61754, %eax            #   3:     assign v0 <- 61754
    movl    %eax, v0               
    movl    $0, %eax                #   4:     if     0 # 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   7:     goto   5
l_test_7_if_false:
l_test_5:
l_test_10_while_cond:
    jmp     l_test_10_while_cond    #  11:     goto   10_while_cond
    movl    $99, %eax               #  12:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_0                #  13:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_15_if_false      #  16:     goto   15_if_false
    jmp     l_test_15_if_false      #  17:     goto   15_if_false
    jmp     l_test_13               #  18:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $27976, %eax            #  21:     add    t0 <- 27976, 17227
    movl    $17227, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     if     t0 > 28448 goto 18
    movl    $28448, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_18              
    jmp     l_test_19               #  23:     goto   19
l_test_18:
    movl    $1, %eax                #  25:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_20               #  26:     goto   20
l_test_19:
    movl    $0, %eax                #  28:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_20:
    movzbl  -17(%ebp), %eax         #  30:     assign v2 <- t1
    movb    %al, v2                
    jmp     l_test_exit            
    call    dummyCHARfunc           #  32:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  33:     assign v1 <- t2
    movb    %al, v1                

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
