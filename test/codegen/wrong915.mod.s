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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 8 of <array 10 of <array 8 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $14300, %eax            #   0:     sub    t4 <- 14300, 39688
    movl    $39688, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 68879
    movl    $68879, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t5 < 82067 goto 1_if_true
    movl    $82067, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   3:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_7                  #   9:     goto   7
    movl    $0, %eax                #  10:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f0_7:
    movzbl  -21(%ebp), %eax         #  12:     assign v3 <- t6
    movb    %al, 20(%ebp)          
    movl    $97, %eax               #  13:     if     97 # 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  14:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  16:     goto   9
l_f0_11_if_false:
l_f0_9:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <ptr(4) to <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <ptr(4) to <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <ptr(4) to <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <ptr(4) to <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -109(%ebp)   1  [ $t4       <char> %ebp-109 ]
    #   -116(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t6       <ptr(4) to <array 9 of <array 8 of <array 10 of <array 8 of <array 5 of <int>>>>>>> %ebp-120 ]
    #   -121(%ebp)   1  [ $t7       <char> %ebp-121 ]
    #   -128(%ebp)   4  [ $t8       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t9       <ptr(4) to <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp-132 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #   -115356(%ebp)  115224  [ $v1       <array 9 of <array 8 of <array 10 of <array 8 of <array 5 of <int>>>>>> %ebp-115356 ]
    #   -207540(%ebp)  92184  [ $v2       <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>> %ebp-207540 ]
    #   -207544(%ebp)   4  [ $v3       <int> %ebp-207544 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $207532, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $51883, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-115356(%ebp)        # local array 'v1': 5 dimensions
    movl    $9,-115352(%ebp)        #   dimension 1: 9 elements
    movl    $8,-115348(%ebp)        #   dimension 2: 8 elements
    movl    $10,-115344(%ebp)       #   dimension 3: 10 elements
    movl    $8,-115340(%ebp)        #   dimension 4: 8 elements
    movl    $5,-115336(%ebp)        #   dimension 5: 5 elements
    movl    $5,-207540(%ebp)        # local array 'v2': 5 dimensions
    movl    $8,-207536(%ebp)        #   dimension 1: 8 elements
    movl    $8,-207532(%ebp)        #   dimension 2: 8 elements
    movl    $4,-207528(%ebp)        #   dimension 3: 4 elements
    movl    $9,-207524(%ebp)        #   dimension 4: 9 elements
    movl    $10,-207520(%ebp)       #   dimension 5: 10 elements

    # function body
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -109(%ebp)        
    movl    $97, %eax               #   2:     if     97 = t4 goto 2_while_body
    movzbl  -109(%ebp), %ebx       
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $0, %eax                #   7:     param  3 <- 0
    pushl   %eax                   
    movl    $99, %eax               #   8:     param  2 <- 99
    pushl   %eax                   
    leal    -207540(%ebp), %eax     #   9:     &()    t5 <- v2
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  10:     param  1 <- t5
    pushl   %eax                   
    leal    -115356(%ebp), %eax     #  11:     &()    t6 <- v1
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  12:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  13:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -121(%ebp)        
    movl    $88587, %eax            #  14:     div    t8 <- 88587, 68955
    movl    $68955, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -128(%ebp)       
    leal    -207540(%ebp), %eax     #  15:     &()    t9 <- v2
    movl    %eax, -132(%ebp)       
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    leal    -207540(%ebp), %eax     #  17:     &()    t10 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  19:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $68511, %eax            #  20:     mul    t12 <- 68511, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $32146, %eax            #  21:     div    t13 <- 32146, 92877
    movl    $92877, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     mul    t14 <- t13, 90091
    movl    $90091, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     div    t15 <- t14, 84123
    movl    $84123, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t16 <- t12, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    leal    -207540(%ebp), %eax     #  26:     &()    t17 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  27:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  28:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  29:     mul    t19 <- t16, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  30:     add    t20 <- t19, 60763
    movl    $60763, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    leal    -207540(%ebp), %eax     #  32:     &()    t21 <- v2
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  33:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  34:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  35:     mul    t23 <- t20, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  36:     add    t24 <- t23, 82345
    movl    $82345, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  37:     param  1 <- 5
    pushl   %eax                   
    leal    -207540(%ebp), %eax     #  38:     &()    t25 <- v2
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  39:     param  0 <- t25
    pushl   %eax                   
    call    DIM                     #  40:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  41:     mul    t27 <- t24, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  42:     add    t28 <- t27, 3267
    movl    $3267, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  43:     mul    t29 <- t28, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    leal    -207540(%ebp), %eax     #  44:     &()    t30 <- v2
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  45:     param  0 <- t30
    pushl   %eax                   
    call    DOFS                    #  46:     call   t31 <- DOFS
    addl    $4, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  47:     add    t32 <- t29, t31
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -132(%ebp), %eax        #  48:     add    t33 <- t9, t32
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -128(%ebp), %eax        #  49:     assign @t33 <- t8
    movl    -108(%ebp), %edi       
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $207532, %esp           # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 9 of <array 8 of <array 10 of <array 8 of <array 5 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 9 of <array 8 of <array 10 of <array 8 of <array 5 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <char> %ebp-41 ]
    #    -42(%ebp)   1  [ $t9       <bool> %ebp-42 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 2 of <array 10 of <array 7 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 5 of <array 5 of <array 10 of <array 4 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -115268(%ebp)  115224  [ $v3       <array 9 of <array 8 of <array 10 of <array 8 of <array 5 of <int>>>>>> %ebp-115268 ]
    #   -207452(%ebp)  92184  [ $v4       <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>> %ebp-207452 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $207440, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $51860, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-115268(%ebp)        # local array 'v3': 5 dimensions
    movl    $9,-115264(%ebp)        #   dimension 1: 9 elements
    movl    $8,-115260(%ebp)        #   dimension 2: 8 elements
    movl    $10,-115256(%ebp)       #   dimension 3: 10 elements
    movl    $8,-115252(%ebp)        #   dimension 4: 8 elements
    movl    $5,-115248(%ebp)        #   dimension 5: 5 elements
    movl    $5,-207452(%ebp)        # local array 'v4': 5 dimensions
    movl    $8,-207448(%ebp)        #   dimension 1: 8 elements
    movl    $8,-207444(%ebp)        #   dimension 2: 8 elements
    movl    $4,-207440(%ebp)        #   dimension 3: 4 elements
    movl    $9,-207436(%ebp)        #   dimension 4: 9 elements
    movl    $10,-207432(%ebp)       #   dimension 5: 10 elements

    # function body
    leal    _str_1, %eax            #   0:     &()    t4 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_f2_2_while_cond:
    jmp     l_f2_1                  #   4:     goto   1
l_f2_5_while_cond:
    movl    $9043, %eax             #   6:     if     9043 > 85181 goto 6_while_body
    movl    $85181, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_while_body:
    movl    $73382, %eax            #   9:     if     73382 < 32354 goto 9
    movl    $32354, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_9                 
    jmp     l_f2_10                 #  10:     goto   10
l_f2_9:
    movl    $1, %eax                #  12:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_11                 #  13:     goto   11
l_f2_10:
    movl    $0, %eax                #  15:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_f2_11:
    movzbl  -29(%ebp), %eax         #  17:     param  3 <- t5
    pushl   %eax                   
    movl    $98, %eax               #  18:     param  2 <- 98
    pushl   %eax                   
    leal    -207452(%ebp), %eax     #  19:     &()    t6 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     param  1 <- t6
    pushl   %eax                   
    leal    -115268(%ebp), %eax     #  21:     &()    t7 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  23:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -41(%ebp)         
    jmp     l_f2_13                 #  24:     goto   13
l_f2_13:
    jmp     l_f2_5_while_cond       #  26:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_2_while_cond       #  28:     goto   2_while_cond
l_f2_1:
    movl    $73996, %eax            #  30:     if     73996 = 31583 goto 21
    movl    $31583, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_21                
    jmp     l_f2_22                 #  31:     goto   22
l_f2_21:
    movl    $1, %eax                #  33:     assign t9 <- 1
    movb    %al, -42(%ebp)         
    jmp     l_f2_23                 #  34:     goto   23
l_f2_22:
    movl    $0, %eax                #  36:     assign t9 <- 0
    movb    %al, -42(%ebp)         
l_f2_23:
    movzbl  -42(%ebp), %eax         #  38:     param  3 <- t9
    pushl   %eax                   
    movl    $97, %eax               #  39:     param  2 <- 97
    pushl   %eax                   
    leal    -207452(%ebp), %eax     #  40:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  41:     param  1 <- t10
    pushl   %eax                   
    leal    -115268(%ebp), %eax     #  42:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  43:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  44:     call   t12 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #  45:     if     100 > t12 goto 17
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_17                
    jmp     l_f2_18                 #  46:     goto   18
l_f2_17:
    movl    $1, %eax                #  48:     assign t13 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_19                 #  49:     goto   19
l_f2_18:
    movl    $0, %eax                #  51:     assign t13 <- 0
    movb    %al, -22(%ebp)         
l_f2_19:
    movzbl  -22(%ebp), %eax         #  53:     return t13
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $207440, %esp           # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 8 of <array 10 of <array 8 of <array 5 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    call    WriteLn                 #   0:     call   WriteLn
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
l_test_6_while_cond:
    movl    $97, %eax               #   4:     if     97 > 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   5:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
    movl    $9342, %eax             #  11:     if     9342 > 14094 goto 10
    movl    $14094, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_10              
    jmp     l_test_11               #  12:     goto   11
l_test_10:
    movl    $1, %eax                #  14:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_12               #  15:     goto   12
l_test_11:
    movl    $0, %eax                #  17:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_12:
    movzbl  -13(%ebp), %eax         #  19:     param  3 <- t0
    pushl   %eax                   
    movl    $97, %eax               #  20:     param  2 <- 97
    pushl   %eax                   
    leal    v1, %eax                #  21:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  1 <- t1
    pushl   %eax                   
    leal    v0, %eax                #  23:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  25:     call   t3 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    call    dummyProcedure          #  26:     call   dummyProcedure

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <array 9 of <array 8 of <array 10 of <array 8 of <array 5 of <int>>>>>>
    .long    5
    .long    9
    .long    8
    .long   10
    .long    8
    .long    5
    .skip 115200
v1:                                 # <array 8 of <array 8 of <array 4 of <array 9 of <array 10 of <int>>>>>>
    .long    5
    .long    8
    .long    8
    .long    4
    .long    9
    .long   10
    .skip 92160








    # end of global data section
    #-----------------------------------------

    .end
##################################################
