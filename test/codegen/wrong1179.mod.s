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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

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
    call    ReadInt                 #   0:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $70030, %eax            #   1:     assign v0 <- 70030
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #   2:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     return t7
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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 88 of <array 43 of <array 98 of <array 89 of <array 4 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_1                  #   3:     goto   1
l_f1_5_while_cond:
    movl    $87466, %eax            #   5:     if     87466 >= 55258 goto 6_while_body
    movl    $55258, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
    call    dummyBOOLfunc           #  10:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_2_while_cond       #  11:     goto   2_while_cond
l_f1_1:
    movl    $98, %eax               #  13:     return 98
    jmp     l_f1_exit              
    movl    $48665, %eax            #  14:     assign v0 <- 48665
    movl    %eax, 8(%ebp)          
l_f1_15_while_cond:
    movl    $97, %eax               #  16:     if     97 # 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_16_while_body     
    jmp     l_f1_14                 #  17:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  19:     goto   15_while_cond
l_f1_14:
    call    dummyBOOLfunc           #  21:     call   t8 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
l_f1_20_while_cond:
    movl    $89808, %eax            #  23:     if     89808 < 70853 goto 21_while_body
    movl    $70853, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_21_while_body     
    jmp     l_f1_19                 #  24:     goto   19
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  26:     goto   20_while_cond
l_f1_19:
    jmp     l_f1_9                  #  28:     goto   9
l_f1_9:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 88 of <array 43 of <array 98 of <array 89 of <array 4 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t14      <ptr(4) to <array 88 of <array 43 of <array 98 of <array 89 of <array 4 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <ptr(4) to <array 88 of <array 43 of <array 98 of <array 89 of <array 4 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <ptr(4) to <array 88 of <array 43 of <array 98 of <array 89 of <array 4 of <char>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <ptr(4) to <array 88 of <array 43 of <array 98 of <array 89 of <array 4 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <ptr(4) to <array 88 of <array 43 of <array 98 of <array 89 of <array 4 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t30      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t31      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t32      <ptr(4) to <array 88 of <array 43 of <array 98 of <array 89 of <array 4 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t33      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t34      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t35      <int> %ebp-112 ]
    #   -113(%ebp)   1  [ $t6       <bool> %ebp-113 ]
    #   -120(%ebp)   4  [ $t7       <ptr(4) to <array 88 of <array 43 of <array 98 of <array 89 of <array 4 of <char>>>>>>> %ebp-120 ]
    #   -121(%ebp)   1  [ $t8       <char> %ebp-121 ]
    #   -122(%ebp)   1  [ $t9       <char> %ebp-122 ]
    #   -123(%ebp)   1  [ $v0       <char> %ebp-123 ]
    #   -132016340(%ebp)  132016216  [ $v1       <array 88 of <array 43 of <array 98 of <array 89 of <array 4 of <char>>>>>> %ebp-132016340 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $132016328, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $33004082, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-132016340(%ebp)     # local array 'v1': 5 dimensions
    movl    $88,-132016336(%ebp)    #   dimension 1: 88 elements
    movl    $43,-132016332(%ebp)    #   dimension 2: 43 elements
    movl    $98,-132016328(%ebp)    #   dimension 3: 98 elements
    movl    $89,-132016324(%ebp)    #   dimension 4: 89 elements
    movl    $4,-132016320(%ebp)     #   dimension 5: 4 elements

    # function body
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, -123(%ebp)        
    movl    $99, %eax               #   1:     if     99 > 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2                 
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $1, %eax                #   4:     assign t6 <- 1
    movb    %al, -113(%ebp)        
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $0, %eax                #   7:     assign t6 <- 0
    movb    %al, -113(%ebp)        
l_f2_4:
    movzbl  -113(%ebp), %eax        #   9:     param  3 <- t6
    pushl   %eax                   
    leal    -132016340(%ebp), %eax  #  10:     &()    t7 <- v1
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  11:     param  2 <- t7
    pushl   %eax                   
    call    dummyCHARfunc           #  12:     call   t8 <- dummyCHARfunc
    movb    %al, -121(%ebp)        
    movzbl  -121(%ebp), %eax        #  13:     param  1 <- t8
    pushl   %eax                   
    movl    $87078, %eax            #  14:     param  0 <- 87078
    pushl   %eax                   
    call    f1                      #  15:     call   t9 <- f1
    addl    $16, %esp              
    movb    %al, -122(%ebp)        
    movl    $97, %eax               #  16:     if     97 > 99 goto 7
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_7                 
    jmp     l_f2_8                  #  17:     goto   8
l_f2_7:
    movl    $1, %eax                #  19:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_9                  #  20:     goto   9
l_f2_8:
    movl    $0, %eax                #  22:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_9:
    movzbl  -13(%ebp), %eax         #  24:     param  3 <- t10
    pushl   %eax                   
    leal    -132016340(%ebp), %eax  #  25:     &()    t11 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     param  2 <- t11
    pushl   %eax                   
    call    dummyCHARfunc           #  27:     call   t12 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  28:     param  1 <- t12
    pushl   %eax                   
    movl    $4565, %eax             #  29:     param  0 <- 4565
    pushl   %eax                   
    call    f1                      #  30:     call   t13 <- f1
    addl    $16, %esp              
    movb    %al, -22(%ebp)         
    leal    -132016340(%ebp), %eax  #  31:     &()    t14 <- v1
    movl    %eax, -28(%ebp)        
    movl    $2, %eax                #  32:     param  1 <- 2
    pushl   %eax                   
    leal    -132016340(%ebp), %eax  #  33:     &()    t15 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  35:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    $10071, %eax            #  36:     mul    t17 <- 10071, t16
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  37:     add    t18 <- t17, 89349
    movl    $89349, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  38:     param  1 <- 3
    pushl   %eax                   
    leal    -132016340(%ebp), %eax  #  39:     &()    t19 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  40:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  41:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  42:     mul    t21 <- t18, t20
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  43:     add    t22 <- t21, 94703
    movl    $94703, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4, %eax                #  44:     param  1 <- 4
    pushl   %eax                   
    leal    -132016340(%ebp), %eax  #  45:     &()    t23 <- v1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  46:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  47:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  48:     mul    t25 <- t22, t24
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  49:     add    t26 <- t25, 65715
    movl    $65715, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  50:     param  1 <- 5
    pushl   %eax                   
    leal    -132016340(%ebp), %eax  #  51:     &()    t27 <- v1
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  52:     param  0 <- t27
    pushl   %eax                   
    call    DIM                     #  53:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  54:     mul    t29 <- t26, t28
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  55:     add    t30 <- t29, 90128
    movl    $90128, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  56:     mul    t31 <- t30, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    leal    -132016340(%ebp), %eax  #  57:     &()    t32 <- v1
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  58:     param  0 <- t32
    pushl   %eax                   
    call    DOFS                    #  59:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    -96(%ebp), %eax         #  60:     add    t34 <- t31, t33
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -28(%ebp), %eax         #  61:     add    t35 <- t14, t34
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movzbl  -22(%ebp), %eax         #  62:     assign @t35 <- t13
    movl    -112(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $132016328, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]

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
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_3_while_cond:
    movl    $24300, %eax            #   3:     add    t1 <- 24300, 48001
    movl    $48001, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $96650, %eax            #   4:     div    t2 <- 96650, 65012
    movl    $65012, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     div    t3 <- t2, 69096
    movl    $69096, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #   6:     sub    t4 <- t1, t3
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $8214, %eax             #   7:     if     8214 <= t4 goto 4_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_4_while_body    
    jmp     l_test_2                #   8:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #  10:     goto   3_while_cond
l_test_2:
    call    f0                      #  12:     call   t5 <- f0
    movb    %al, -33(%ebp)         

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
