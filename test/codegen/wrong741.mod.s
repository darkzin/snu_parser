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
    #    -13(%ebp)   1  [ $t32      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t33      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t34      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t35      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t36      <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 5 of <array 9 of <array 4 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -23(%ebp)   1  [ $v4       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $v5       <bool> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t32 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t32 # 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t33 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t33 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     return t33
    jmp     l_f0_exit              
    movl    $87922, %eax            #  10:     if     87922 <= 56517 goto 6_if_true
    movl    $56517, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  11:     goto   7_if_false
l_f0_6_if_true:
    movl    $99, %eax               #  13:     assign v4 <- 99
    movb    %al, -23(%ebp)         
    jmp     l_f0_10                 #  14:     goto   10
l_f0_10:
    movl    $98, %eax               #  16:     if     98 = 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  17:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  19:     goto   13
l_f0_15_if_false:
l_f0_13:
    call    ReadInt                 #  22:     call   t34 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  23:     if     97 >= 98 goto 19_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  24:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  26:     goto   18
l_f0_20_if_false:
l_f0_18:
l_f0_23_while_cond:
    movl    $98, %eax               #  30:     if     98 < 97 goto 24_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_24_while_body     
    jmp     l_f0_22                 #  31:     goto   22
l_f0_24_while_body:
    jmp     l_f0_23_while_cond      #  33:     goto   23_while_cond
l_f0_22:
    movl    $1, %eax                #  35:     if     1 # 1 goto 27
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_27                
    jmp     l_f0_28                 #  36:     goto   28
l_f0_27:
    movl    $1, %eax                #  38:     assign t35 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_29                 #  39:     goto   29
l_f0_28:
    movl    $0, %eax                #  41:     assign t35 <- 0
    movb    %al, -21(%ebp)         
l_f0_29:
    movzbl  -21(%ebp), %eax         #  43:     assign v5 <- t35
    movb    %al, -24(%ebp)         
    jmp     l_f0_5                  #  44:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_32                 #  47:     goto   32
    jmp     l_f0_32                 #  48:     goto   32
    jmp     l_f0_33                 #  49:     goto   33
l_f0_32:
    movl    $1, %eax                #  51:     assign t36 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_34                 #  52:     goto   34
l_f0_33:
    movl    $0, %eax                #  54:     assign t36 <- 0
    movb    %al, -22(%ebp)         
l_f0_34:
    movzbl  -22(%ebp), %eax         #  56:     return t36
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t32      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t33      <ptr(4) to <array 4 of <array 5 of <array 9 of <array 4 of <array 5 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t34      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t35      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t36      <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -3656(%ebp)  3624  [ $v5       <array 4 of <array 5 of <array 9 of <array 4 of <array 5 of <bool>>>>>> %ebp-3656 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3644, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $911, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3656(%ebp)          # local array 'v5': 5 dimensions
    movl    $4,-3652(%ebp)          #   dimension 1: 4 elements
    movl    $5,-3648(%ebp)          #   dimension 2: 5 elements
    movl    $9,-3644(%ebp)          #   dimension 3: 9 elements
    movl    $4,-3640(%ebp)          #   dimension 4: 4 elements
    movl    $5,-3636(%ebp)          #   dimension 5: 5 elements

    # function body
    call    dummyINTfunc            #   0:     call   t32 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $45204, %eax            #   1:     param  2 <- 45204
    pushl   %eax                   
    leal    -3656(%ebp), %eax       #   2:     &()    t33 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t33
    pushl   %eax                   
    movl    $27222, %eax            #   4:     param  0 <- 27222
    pushl   %eax                   
    call    f0                      #   5:     call   t34 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    jmp     l_f1_1                  #   6:     goto   1
l_f1_1:
    movl    $80580, %eax            #   8:     mul    t35 <- 80580, 13979
    movl    $13979, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $23119, %eax            #   9:     sub    t36 <- 23119, t35
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     if     t36 <= 74286 goto 6_if_true
    movl    $74286, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  11:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #  13:     goto   5
l_f1_7_if_false:
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $3644, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t32      <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 9 of <array 8 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 3 of <array 1 of <array 2 of <array 10 of <char>>>>>>> %ebp+12 ]

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
l_f2_1_while_cond:
    movl    $31144, %eax            #   1:     if     31144 >= 97466 goto 2_while_body
    movl    $97466, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
    call    dummyINTfunc            #   4:     call   t32 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_7_while_cond:
    jmp     l_f2_8_while_body       #   6:     goto   8_while_body
    jmp     l_f2_8_while_body       #   7:     goto   8_while_body
    jmp     l_f2_6                  #   8:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  10:     goto   7_while_cond
l_f2_6:

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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <ptr(4) to <array 10 of <array 3 of <array 1 of <array 2 of <array 10 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 10 of <array 3 of <array 1 of <array 2 of <array 10 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 10 of <array 3 of <array 1 of <array 2 of <array 10 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <ptr(4) to <array 10 of <array 3 of <array 1 of <array 2 of <array 10 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t4       <ptr(4) to <array 10 of <array 3 of <array 1 of <array 2 of <array 10 of <char>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t5       <ptr(4) to <array 4 of <array 5 of <array 9 of <array 8 of <array 9 of <bool>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t6       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t7       <ptr(4) to <array 10 of <array 3 of <array 1 of <array 2 of <array 10 of <char>>>>>>> %ebp-132 ]
    #   -136(%ebp)   4  [ $t8       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t9       <ptr(4) to <array 10 of <array 3 of <array 1 of <array 2 of <array 10 of <char>>>>>>> %ebp-140 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $128, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $32, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $91235, %eax            #   0:     add    t0 <- 91235, 94931
    movl    $94931, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 14980
    movl    $14980, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 48105
    movl    $48105, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   3:     sub    t3 <- t2, 41718
    movl    $41718, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   4:     assign v0 <- t3
    movl    %eax, v0               
l_test_2_while_cond:
    movl    $90648, %eax            #   6:     assign v0 <- 90648
    movl    %eax, v0               
    leal    v2, %eax                #   7:     &()    t4 <- v2
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #   8:     param  1 <- t4
    pushl   %eax                   
    leal    v1, %eax                #   9:     &()    t5 <- v1
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  10:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  11:     call   t6 <- f2
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    $11176, %eax            #  12:     if     11176 < t6 goto 6_if_true
    movl    -128(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #  13:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #  15:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_2_while_cond     #  18:     goto   2_while_cond
    leal    v2, %eax                #  19:     &()    t7 <- v2
    movl    %eax, -132(%ebp)       
    movl    $52809, %eax            #  20:     div    t8 <- 52809, 77467
    movl    $77467, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    leal    v2, %eax                #  22:     &()    t9 <- v2
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  23:     param  0 <- t9
    pushl   %eax                   
    call    DIM                     #  24:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -136(%ebp), %eax        #  25:     mul    t11 <- t8, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $63218, %eax            #  26:     div    t12 <- 63218, 66009
    movl    $66009, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     mul    t13 <- t12, 69771
    movl    $69771, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  28:     add    t14 <- t11, t13
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    leal    v2, %eax                #  30:     &()    t15 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  32:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  33:     mul    t17 <- t14, t16
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  34:     add    t18 <- t17, 46552
    movl    $46552, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    leal    v2, %eax                #  36:     &()    t19 <- v2
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  37:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  38:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  39:     mul    t21 <- t18, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  40:     add    t22 <- t21, 28912
    movl    $28912, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    leal    v2, %eax                #  42:     &()    t23 <- v2
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  43:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  44:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  45:     mul    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  46:     add    t26 <- t25, 91173
    movl    $91173, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  47:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    leal    v2, %eax                #  48:     &()    t28 <- v2
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  49:     param  0 <- t28
    pushl   %eax                   
    call    DOFS                    #  50:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    -96(%ebp), %eax         #  51:     add    t30 <- t27, t29
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -132(%ebp), %eax        #  52:     add    t31 <- t7, t30
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $97, %eax               #  53:     assign @t31 <- 97
    movl    -116(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $1, %eax                #  54:     assign v4 <- 1
    movb    %al, v4                

l_test_exit:
    # epilogue
    addl    $128, %esp              # remove locals
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
v1:                                 # <array 4 of <array 5 of <array 9 of <array 8 of <array 9 of <bool>>>>>>
    .long    5
    .long    4
    .long    5
    .long    9
    .long    8
    .long    9
    .skip 12960
v2:                                 # <array 10 of <array 3 of <array 1 of <array 2 of <array 10 of <char>>>>>>
    .long    5
    .long   10
    .long    3
    .long    1
    .long    2
    .long   10
    .skip  600
v3:                                 # <char>
    .skip    1
v4:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
