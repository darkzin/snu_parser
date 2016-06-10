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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t13      <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 3 of <array 10 of <array 3 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 1 of <array 1 of <array 5 of <array 10 of <int>>>>>>> %ebp+16 ]
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
l_f0_1_while_cond:
    movl    $100, %eax              #   1:     if     100 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $0, %eax                #   4:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_4                  #   5:     goto   4
l_f0_4:
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
l_f0_9_while_cond:
    movl    $97, %eax               #  10:     if     97 < 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_10_while_body     
    jmp     l_f0_8                  #  11:     goto   8
l_f0_10_while_body:
    movl    $100, %eax              #  13:     assign v4 <- 100
    movb    %al, -22(%ebp)         
    movl    $100, %eax              #  14:     if     100 > 98 goto 14
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_14                
    jmp     l_f0_15                 #  15:     goto   15
l_f0_14:
    movl    $1, %eax                #  17:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_16                 #  18:     goto   16
l_f0_15:
    movl    $0, %eax                #  20:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f0_16:
    movzbl  -13(%ebp), %eax         #  22:     return t11
    jmp     l_f0_exit              
    movl    $0, %eax                #  23:     return 0
    jmp     l_f0_exit              
l_f0_20_while_cond:
    movl    $97, %eax               #  25:     if     97 >= 97 goto 21_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_21_while_body     
    jmp     l_f0_19                 #  26:     goto   19
l_f0_21_while_body:
    jmp     l_f0_20_while_cond      #  28:     goto   20_while_cond
l_f0_19:
    call    ReadInt                 #  30:     call   t12 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_9_while_cond       #  31:     goto   9_while_cond
l_f0_8:
    call    dummyCHARfunc           #  33:     call   t13 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

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
    #    -16(%ebp)   4  [ $t11      <ptr(4) to <array 5 of <array 1 of <array 1 of <array 5 of <array 10 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 4 of <array 3 of <array 10 of <array 3 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t13      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t14      <ptr(4) to <array 5 of <array 1 of <array 1 of <array 5 of <array 10 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <ptr(4) to <array 5 of <array 1 of <array 1 of <array 5 of <array 10 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <ptr(4) to <array 5 of <array 1 of <array 1 of <array 5 of <array 10 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <ptr(4) to <array 5 of <array 1 of <array 1 of <array 5 of <array 10 of <int>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t30      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t31      <ptr(4) to <array 5 of <array 1 of <array 1 of <array 5 of <array 10 of <int>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t32      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t33      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t34      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t35      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t36      <ptr(4) to <array 5 of <array 1 of <array 1 of <array 5 of <array 10 of <int>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t37      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t38      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t39      <int> %ebp-128 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 2 of <array 4 of <array 5 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #   -2672(%ebp)  2544  [ $v4       <array 4 of <array 3 of <array 10 of <array 3 of <array 7 of <bool>>>>>> %ebp-2672 ]
    #   -3696(%ebp)  1024  [ $v5       <array 5 of <array 1 of <array 1 of <array 5 of <array 10 of <int>>>>>> %ebp-3696 ]
    #   -3700(%ebp)   4  [ $v6       <int> %ebp-3700 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3688, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $922, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2672(%ebp)          # local array 'v4': 5 dimensions
    movl    $4,-2668(%ebp)          #   dimension 1: 4 elements
    movl    $3,-2664(%ebp)          #   dimension 2: 3 elements
    movl    $10,-2660(%ebp)         #   dimension 3: 10 elements
    movl    $3,-2656(%ebp)          #   dimension 4: 3 elements
    movl    $7,-2652(%ebp)          #   dimension 5: 7 elements
    movl    $5,-3696(%ebp)          # local array 'v5': 5 dimensions
    movl    $5,-3692(%ebp)          #   dimension 1: 5 elements
    movl    $1,-3688(%ebp)          #   dimension 2: 1 elements
    movl    $1,-3684(%ebp)          #   dimension 3: 1 elements
    movl    $5,-3680(%ebp)          #   dimension 4: 5 elements
    movl    $10,-3676(%ebp)         #   dimension 5: 10 elements

    # function body
    leal    -3696(%ebp), %eax       #   0:     &()    t11 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t11
    pushl   %eax                   
    movl    $75592, %eax            #   2:     param  1 <- 75592
    pushl   %eax                   
    leal    -2672(%ebp), %eax       #   3:     &()    t12 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #   5:     call   t13 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    leal    -3696(%ebp), %eax       #   6:     &()    t14 <- v5
    movl    %eax, -28(%ebp)        
    movl    $35954, %eax            #   7:     div    t15 <- 35954, 15471
    movl    $15471, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     mul    t16 <- t15, 12687
    movl    $12687, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     div    t17 <- t16, 36186
    movl    $36186, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    leal    -3696(%ebp), %eax       #  11:     &()    t18 <- v5
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  12:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  13:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  14:     mul    t20 <- t17, t19
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    $62873, %eax            #  15:     sub    t21 <- 62873, 80537
    movl    $80537, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  16:     add    t22 <- t20, t21
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    leal    -3696(%ebp), %eax       #  18:     &()    t23 <- v5
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  19:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  20:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  21:     mul    t25 <- t22, t24
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  22:     add    t26 <- t25, 37566
    movl    $37566, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    leal    -3696(%ebp), %eax       #  24:     &()    t27 <- v5
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  25:     param  0 <- t27
    pushl   %eax                   
    call    DIM                     #  26:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  27:     mul    t29 <- t26, t28
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  28:     add    t30 <- t29, 70246
    movl    $70246, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    leal    -3696(%ebp), %eax       #  30:     &()    t31 <- v5
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  31:     param  0 <- t31
    pushl   %eax                   
    call    DIM                     #  32:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  33:     mul    t33 <- t30, t32
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  34:     add    t34 <- t33, 31267
    movl    $31267, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  35:     mul    t35 <- t34, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    leal    -3696(%ebp), %eax       #  36:     &()    t36 <- v5
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  37:     param  0 <- t36
    pushl   %eax                   
    call    DOFS                    #  38:     call   t37 <- DOFS
    addl    $4, %esp               
    movl    %eax, -120(%ebp)       
    movl    -112(%ebp), %eax        #  39:     add    t38 <- t35, t37
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -28(%ebp), %eax         #  40:     add    t39 <- t14, t38
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $80578, %eax            #  41:     assign @t39 <- 80578
    movl    -128(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $100, %eax              #  42:     if     100 < 100 goto 3_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #  43:     goto   4_if_false
l_f1_3_if_true:
    movl    $44519, %eax            #  45:     param  0 <- 44519
    pushl   %eax                   
    call    WriteInt                #  46:     call   WriteInt
    addl    $4, %esp               
    movl    $98, %eax               #  47:     if     98 <= 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_8_if_true         
    jmp     l_f1_9_if_false         #  48:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #  50:     goto   7
l_f1_9_if_false:
l_f1_7:
    jmp     l_f1_2                  #  53:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $3688, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t13      <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t14      <char> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    movl    $100, %eax              #   0:     if     100 <= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $35727, %eax            #   4:     if     35727 > 85937 goto 6_while_body
    movl    $85937, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    call    dummyCHARfunc           #   9:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  10:     if     98 > t11 goto 9
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_9                 
    jmp     l_f2_10                 #  11:     goto   10
l_f2_9:
    movl    $1, %eax                #  13:     assign t12 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_11                 #  14:     goto   11
l_f2_10:
    movl    $0, %eax                #  16:     assign t12 <- 0
    movb    %al, -14(%ebp)         
l_f2_11:
    movzbl  -14(%ebp), %eax         #  18:     return t12
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  19:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_14_while_cond:
    movl    $97, %eax               #  23:     if     97 <= 99 goto 15_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_15_while_body     
    jmp     l_f2_13                 #  24:     goto   13
l_f2_15_while_body:
    movl    $1, %eax                #  26:     return 1
    jmp     l_f2_exit              
    jmp     l_f2_14_while_cond      #  27:     goto   14_while_cond
l_f2_13:
l_f2_19_while_cond:
    call    dummyCHARfunc           #  30:     call   t13 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  31:     call   t14 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -15(%ebp), %eax         #  32:     if     t13 <= t14 goto 20_while_body
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_20_while_body     
    jmp     l_f2_18                 #  33:     goto   18
l_f2_20_while_body:
    jmp     l_f2_19_while_cond      #  35:     goto   19_while_cond
l_f2_18:

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
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t4       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $9042, %eax             #   0:     sub    t0 <- 9042, 18307
    movl    $18307, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 78753
    movl    $78753, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 56645
    movl    $56645, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     add    t3 <- t2, 43524
    movl    $43524, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     if     t3 = 61250 goto 1_if_true
    movl    $61250, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   5:     goto   2_if_false
l_test_1_if_true:
    movl    $15751, %eax            #   7:     assign v0 <- 15751
    movl    %eax, v0               
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_7_if_false       #  11:     goto   7_if_false
    jmp     l_test_7_if_false       #  12:     goto   7_if_false
    jmp     l_test_7_if_false       #  13:     goto   7_if_false
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  15:     goto   11_while_cond
l_test_14_while_cond:
    jmp     l_test_13               #  17:     goto   13
    jmp     l_test_14_while_cond    #  18:     goto   14_while_cond
l_test_13:
    jmp     l_test_5                #  20:     goto   5
l_test_7_if_false:
l_test_5:
l_test_17_while_cond:
    movl    $100, %eax              #  24:     if     100 # 97 goto 18_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_18_while_body   
    jmp     l_test_16               #  25:     goto   16
l_test_18_while_body:
    movl    $99, %eax               #  27:     if     99 <= 98 goto 21_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_21_if_true      
    jmp     l_test_22_if_false      #  28:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  30:     goto   20
l_test_22_if_false:
l_test_20:
    movl    $29728, %eax            #  33:     param  0 <- 29728
    pushl   %eax                   
    call    WriteInt                #  34:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #  35:     call   t4 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    jmp     l_test_17_while_cond    #  36:     goto   17_while_cond
l_test_16:
    movl    $100, %eax              #  38:     if     100 > 100 goto 27_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_27_if_true      
    jmp     l_test_28_if_false      #  39:     goto   28_if_false
l_test_27_if_true:
l_test_31_while_cond:
    movl    $99, %eax               #  42:     if     99 = 97 goto 32_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_32_while_body   
    jmp     l_test_30               #  43:     goto   30
l_test_32_while_body:
    jmp     l_test_31_while_cond    #  45:     goto   31_while_cond
l_test_30:
    movl    $40705, %eax            #  47:     if     40705 > 87789 goto 35_if_true
    movl    $87789, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_35_if_true      
    jmp     l_test_36_if_false      #  48:     goto   36_if_false
l_test_35_if_true:
    jmp     l_test_34               #  50:     goto   34
l_test_36_if_false:
l_test_34:
l_test_39_while_cond:
    movl    $99, %eax               #  54:     if     99 <= 99 goto 40_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_40_while_body   
    jmp     l_test_38               #  55:     goto   38
l_test_40_while_body:
    jmp     l_test_39_while_cond    #  57:     goto   39_while_cond
l_test_38:
    movl    $18419, %eax            #  59:     assign v0 <- 18419
    movl    %eax, v0               
l_test_44_while_cond:
    movl    $100, %eax              #  61:     if     100 <= 97 goto 45_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_45_while_body   
    jmp     l_test_43               #  62:     goto   43
l_test_45_while_body:
    jmp     l_test_44_while_cond    #  64:     goto   44_while_cond
l_test_43:
    jmp     l_test_exit            
    movl    $97, %eax               #  67:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  68:     call   WriteChar
    addl    $4, %esp               
    leal    _str_1, %eax            #  69:     &()    t5 <- _str_1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  70:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #  71:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_26               #  72:     goto   26
l_test_28_if_false:
l_test_26:
    movl    $59069, %eax            #  75:     add    t6 <- 59069, 37254
    movl    $37254, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  76:     sub    t7 <- t6, 24219
    movl    $24219, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  77:     assign v0 <- t7
    movl    %eax, v0               
    movl    $68471, %eax            #  78:     add    t8 <- 68471, 74786
    movl    $74786, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  79:     add    t9 <- t8, 65825
    movl    $65825, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  80:     add    t10 <- t9, 78754
    movl    $78754, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  81:     assign v0 <- t10
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
