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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 93 of <array 96 of <array 71 of <array 89 of <array 62 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 89 of <array 93 of <array 88 of <array 60 of <array 43 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 40 of <array 33 of <array 39 of <array 73 of <array 19 of <char>>>>>>> %ebp+20 ]

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
l_f0_4_while_cond:
    movl    $98, %eax               #   1:     if     98 > 99 goto 5_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_5_while_body      
    jmp     l_f0_3                  #   2:     goto   3
l_f0_5_while_body:
    movl    $59567, %eax            #   4:     if     59567 >= 23492 goto 8
    movl    $23492, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_8                 
    jmp     l_f0_9                  #   5:     goto   9
l_f0_8:
    movl    $1, %eax                #   7:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_10                 #   8:     goto   10
l_f0_9:
    movl    $0, %eax                #  10:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_10:
    movzbl  -13(%ebp), %eax         #  12:     assign v2 <- t1
    movb    %al, 16(%ebp)          
l_f0_13_while_cond:
    movl    $98, %eax               #  14:     if     98 > 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_14_while_body     
    jmp     l_f0_12                 #  15:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  17:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_4_while_cond       #  19:     goto   4_while_cond
l_f0_3:
    jmp     l_f0_0                  #  21:     goto   0
l_f0_0:
    jmp     l_f0_19                 #  23:     goto   19
l_f0_19:
l_f0_23_while_cond:
    jmp     l_f0_22                 #  26:     goto   22
    jmp     l_f0_23_while_cond      #  27:     goto   23_while_cond
l_f0_22:
    jmp     l_f0_25                 #  29:     goto   25
l_f0_25:
    jmp     l_f0_16                 #  31:     goto   16
l_f0_16:
    call    dummyCHARfunc           #  33:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  34:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #  35:     call   WriteChar
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 30 of <array 75 of <array 3 of <array 26 of <array 23 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 18 of <array 59 of <array 71 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 65 of <array 4 of <array 61 of <array 48 of <array 12 of <int>>>>>>> %ebp+16 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    movl    $16847, %eax            #   0:     assign v3 <- 16847
    movl    %eax, -20(%ebp)        
    jmp     l_f1_2_if_true          #   1:     goto   2_if_true
    jmp     l_f1_2_if_true          #   2:     goto   2_if_true
l_f1_2_if_true:
    jmp     l_f1_1                  #   4:     goto   1
l_f1_1:
    call    dummyINTfunc            #   6:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 40 of <array 33 of <array 39 of <array 73 of <array 19 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <ptr(4) to <array 93 of <array 96 of <array 71 of <array 89 of <array 62 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t11      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t12      <ptr(4) to <array 40 of <array 33 of <array 39 of <array 73 of <array 19 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t13      <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t14      <ptr(4) to <array 89 of <array 93 of <array 88 of <array 60 of <array 43 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <ptr(4) to <array 93 of <array 96 of <array 71 of <array 89 of <array 62 of <char>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t16      <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t17      <ptr(4) to <array 40 of <array 33 of <array 39 of <array 73 of <array 19 of <char>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <ptr(4) to <array 40 of <array 33 of <array 39 of <array 73 of <array 19 of <char>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t2       <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <ptr(4) to <array 40 of <array 33 of <array 39 of <array 73 of <array 19 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <ptr(4) to <array 40 of <array 33 of <array 39 of <array 73 of <array 19 of <char>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <ptr(4) to <array 89 of <array 93 of <array 88 of <array 60 of <array 43 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t31      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t32      <ptr(4) to <array 40 of <array 33 of <array 39 of <array 73 of <array 19 of <char>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t33      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t34      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t35      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t36      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t37      <ptr(4) to <array 40 of <array 33 of <array 39 of <array 73 of <array 19 of <char>>>>>>> %ebp-136 ]
    #   -140(%ebp)   4  [ $t38      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t39      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t4       <ptr(4) to <array 93 of <array 96 of <array 71 of <array 89 of <array 62 of <char>>>>>>> %ebp-148 ]
    #   -152(%ebp)   4  [ $t40      <int> %ebp-152 ]
    #   -153(%ebp)   1  [ $t5       <bool> %ebp-153 ]
    #   -154(%ebp)   1  [ $t6       <bool> %ebp-154 ]
    #   -160(%ebp)   4  [ $t7       <ptr(4) to <array 40 of <array 33 of <array 39 of <array 73 of <array 19 of <char>>>>>>> %ebp-160 ]
    #   -161(%ebp)   1  [ $t8       <bool> %ebp-161 ]
    #   -168(%ebp)   4  [ $t9       <ptr(4) to <array 89 of <array 93 of <array 88 of <array 60 of <array 43 of <char>>>>>>> %ebp-168 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 64 of <array 21 of <array 38 of <array 32 of <array 7 of <int>>>>>>> %ebp+8 ]
    #   797173120(%ebp)  -797173288  [ $v1       <array 93 of <array 96 of <array 71 of <array 89 of <array 62 of <char>>>>>> %ebp+797173120 ]
    #   -1082036984(%ebp)  1879210104  [ $v2       <array 89 of <array 93 of <array 88 of <array 60 of <array 43 of <char>>>>>> %ebp-1082036984 ]
    #   -1153439768(%ebp)  71402784  [ $v3       <array 40 of <array 33 of <array 39 of <array 73 of <array 19 of <char>>>>>> %ebp-1153439768 ]
    #   -1153439769(%ebp)   1  [ $v4       <char> %ebp-1153439769 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1153439760, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $288359940, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,797173120(%ebp)      # local array 'v1': 5 dimensions
    movl    $93,797173124(%ebp)     #   dimension 1: 93 elements
    movl    $96,797173128(%ebp)     #   dimension 2: 96 elements
    movl    $71,797173132(%ebp)     #   dimension 3: 71 elements
    movl    $89,797173136(%ebp)     #   dimension 4: 89 elements
    movl    $62,797173140(%ebp)     #   dimension 5: 62 elements
    movl    $5,-1082036984(%ebp)    # local array 'v2': 5 dimensions
    movl    $89,-1082036980(%ebp)   #   dimension 1: 89 elements
    movl    $93,-1082036976(%ebp)   #   dimension 2: 93 elements
    movl    $88,-1082036972(%ebp)   #   dimension 3: 88 elements
    movl    $60,-1082036968(%ebp)   #   dimension 4: 60 elements
    movl    $43,-1082036964(%ebp)   #   dimension 5: 43 elements
    movl    $5,-1153439768(%ebp)    # local array 'v3': 5 dimensions
    movl    $40,-1153439764(%ebp)   #   dimension 1: 40 elements
    movl    $33,-1153439760(%ebp)   #   dimension 2: 33 elements
    movl    $39,-1153439756(%ebp)   #   dimension 3: 39 elements
    movl    $73,-1153439752(%ebp)   #   dimension 4: 73 elements
    movl    $19,-1153439748(%ebp)   #   dimension 5: 19 elements

    # function body
l_f2_1_while_cond:
    leal    -1153439768(%ebp), %eax #   1:     &()    t1 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  3 <- t1
    pushl   %eax                   
    movl    $1, %eax                #   3:     if     1 # 0 goto 9
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_9                 
    jmp     l_f2_10                 #   4:     goto   10
l_f2_9:
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f2_11                 #   7:     goto   11
l_f2_10:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -57(%ebp)         
l_f2_11:
    movzbl  -57(%ebp), %eax         #  11:     param  2 <- t2
    pushl   %eax                   
    leal    -1082036984(%ebp), %eax #  12:     &()    t3 <- v2
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  13:     param  1 <- t3
    pushl   %eax                   
    leal    797173120(%ebp), %eax   #  14:     &()    t4 <- v1
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  15:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  16:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -153(%ebp)        
    movzbl  -153(%ebp), %eax        #  17:     if     t5 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8                 
    jmp     l_f2_5                  #  18:     goto   5
l_f2_8:
    jmp     l_f2_5                  #  20:     goto   5
    movl    $1, %eax                #  21:     assign t6 <- 1
    movb    %al, -154(%ebp)        
    jmp     l_f2_6                  #  22:     goto   6
l_f2_5:
    movl    $0, %eax                #  24:     assign t6 <- 0
    movb    %al, -154(%ebp)        
l_f2_6:
    movzbl  -154(%ebp), %eax        #  26:     if     t6 # 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #  27:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  29:     goto   1_while_cond
l_f2_0:
l_f2_14_while_cond:
    leal    -1153439768(%ebp), %eax #  32:     &()    t7 <- v3
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  33:     param  3 <- t7
    pushl   %eax                   
    movl    $54336, %eax            #  34:     if     54336 >= 13340 goto 16
    movl    $13340, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_16                
    jmp     l_f2_17                 #  35:     goto   17
l_f2_16:
    movl    $1, %eax                #  37:     assign t8 <- 1
    movb    %al, -161(%ebp)        
    jmp     l_f2_18                 #  38:     goto   18
l_f2_17:
    movl    $0, %eax                #  40:     assign t8 <- 0
    movb    %al, -161(%ebp)        
l_f2_18:
    movzbl  -161(%ebp), %eax        #  42:     param  2 <- t8
    pushl   %eax                   
    leal    -1082036984(%ebp), %eax #  43:     &()    t9 <- v2
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #  44:     param  1 <- t9
    pushl   %eax                   
    leal    797173120(%ebp), %eax   #  45:     &()    t10 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  46:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  47:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  48:     if     t11 = 1 goto 15_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_15_while_body     
    jmp     l_f2_13                 #  49:     goto   13
l_f2_15_while_body:
    leal    -1153439768(%ebp), %eax #  51:     &()    t12 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  52:     param  3 <- t12
    pushl   %eax                   
    movl    $99, %eax               #  53:     if     99 <= 98 goto 21
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_21                
    jmp     l_f2_22                 #  54:     goto   22
l_f2_21:
    movl    $1, %eax                #  56:     assign t13 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_23                 #  57:     goto   23
l_f2_22:
    movl    $0, %eax                #  59:     assign t13 <- 0
    movb    %al, -29(%ebp)         
l_f2_23:
    movzbl  -29(%ebp), %eax         #  61:     param  2 <- t13
    pushl   %eax                   
    leal    -1082036984(%ebp), %eax #  62:     &()    t14 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  63:     param  1 <- t14
    pushl   %eax                   
    leal    797173120(%ebp), %eax   #  64:     &()    t15 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  65:     param  0 <- t15
    pushl   %eax                   
    call    f0                      #  66:     call   t16 <- f0
    addl    $16, %esp              
    movb    %al, -41(%ebp)         
l_f2_26_while_cond:
    movl    $100, %eax              #  68:     if     100 >= 99 goto 27_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_27_while_body     
    jmp     l_f2_25                 #  69:     goto   25
l_f2_27_while_body:
    jmp     l_f2_26_while_cond      #  71:     goto   26_while_cond
l_f2_25:
    jmp     l_f2_14_while_cond      #  73:     goto   14_while_cond
l_f2_13:
    leal    -1153439768(%ebp), %eax #  75:     &()    t17 <- v3
    movl    %eax, -48(%ebp)        
    movl    $2, %eax                #  76:     param  1 <- 2
    pushl   %eax                   
    leal    -1153439768(%ebp), %eax #  77:     &()    t18 <- v3
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  78:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  79:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $8996, %eax             #  80:     mul    t20 <- 8996, t19
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    call    dummyINTfunc            #  81:     call   t21 <- dummyINTfunc
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  82:     add    t22 <- t21, 86990
    movl    $86990, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -64(%ebp), %eax         #  83:     add    t23 <- t20, t22
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  84:     param  1 <- 3
    pushl   %eax                   
    leal    -1153439768(%ebp), %eax #  85:     &()    t24 <- v3
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  86:     param  0 <- t24
    pushl   %eax                   
    call    DIM                     #  87:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  88:     mul    t26 <- t23, t25
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  89:     add    t27 <- t26, 12595
    movl    $12595, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  90:     param  1 <- 4
    pushl   %eax                   
    leal    -1153439768(%ebp), %eax #  91:     &()    t28 <- v3
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  92:     param  0 <- t28
    pushl   %eax                   
    call    DIM                     #  93:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  94:     mul    t30 <- t27, t29
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  95:     add    t31 <- t30, 33205
    movl    $33205, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $5, %eax                #  96:     param  1 <- 5
    pushl   %eax                   
    leal    -1153439768(%ebp), %eax #  97:     &()    t32 <- v3
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  98:     param  0 <- t32
    pushl   %eax                   
    call    DIM                     #  99:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -112(%ebp), %eax        # 100:     mul    t34 <- t31, t33
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        # 101:     add    t35 <- t34, 41539
    movl    $41539, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        # 102:     mul    t36 <- t35, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    leal    -1153439768(%ebp), %eax # 103:     &()    t37 <- v3
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        # 104:     param  0 <- t37
    pushl   %eax                   
    call    DOFS                    # 105:     call   t38 <- DOFS
    addl    $4, %esp               
    movl    %eax, -140(%ebp)       
    movl    -132(%ebp), %eax        # 106:     add    t39 <- t36, t38
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    -48(%ebp), %eax         # 107:     add    t40 <- t17, t39
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    $99, %eax               # 108:     assign @t40 <- 99
    movl    -152(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $1153439760, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    movl    $54377, %eax            #   2:     param  0 <- 54377
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
