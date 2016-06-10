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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 100 of <array 62 of <array 81 of <array 28 of <array 76 of <int>>>>>>> %ebp+8 ]

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
    movl    $67022, %eax            #   1:     div    t3 <- 67022, 7101
    movl    $7101, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t4 <- t3, 77821
    movl    $77821, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t4 < 3585 goto 2_while_body
    movl    $3585, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #   8:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f0_6_if_true          #   9:     goto   6_if_true
    jmp     l_f0_7_if_false         #  10:     goto   7_if_false
l_f0_6_if_true:
    movl    $98, %eax               #  12:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_5                  #  13:     goto   5
l_f0_7_if_false:
l_f0_5:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t4       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t5       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t6       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t7       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t8       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t9       <int> %ebp-140 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 76 of <array 91 of <array 21 of <array 20 of <array 35 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 16 of <array 6 of <array 34 of <array 63 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 90 of <array 68 of <array 70 of <array 46 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 25 of <array 75 of <array 60 of <array 22 of <array 19 of <bool>>>>>>> %ebp+20 ]
    #   -144(%ebp)   4  [ $v4       <int> %ebp-144 ]
    #   -145(%ebp)   1  [ $v5       <char> %ebp-145 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $136, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $34, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    movl    $1, %eax                #   1:     if     1 # 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    movl    $76426, %eax            #   4:     assign v4 <- 76426
    movl    %eax, -144(%ebp)       
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #   6:     goto   7_while_cond
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   8:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   9:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $88548, %eax            #  10:     mul    t4 <- 88548, t3
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  11:     add    t5 <- t4, 88917
    movl    $88917, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  15:     mul    t7 <- t5, t6
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  16:     add    t8 <- t7, 54041
    movl    $54041, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  20:     mul    t10 <- t8, t9
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     add    t11 <- t10, 84139
    movl    $84139, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  24:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  25:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t14 <- t13, 98410
    movl    $98410, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    16(%ebp), %eax          #  28:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  29:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  30:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  31:     add    t18 <- v2, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $99, %eax               #  32:     assign @t18 <- 99
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $2, %eax                #  33:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  35:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $31640, %eax            #  36:     mul    t20 <- 31640, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  37:     add    t21 <- t20, 10333
    movl    $10333, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #  38:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  40:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  41:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  42:     add    t24 <- t23, 97498
    movl    $97498, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4, %eax                #  43:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  44:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  45:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  46:     mul    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  47:     add    t27 <- t26, 92891
    movl    $92891, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $5, %eax                #  48:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  49:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  50:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  51:     mul    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  52:     add    t30 <- t29, 74547
    movl    $74547, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  53:     mul    t31 <- t30, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    16(%ebp), %eax          #  54:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  55:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  56:     add    t33 <- t31, t32
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    16(%ebp), %eax          #  57:     add    t34 <- v2, t33
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $100, %eax              #  58:     assign @t34 <- 100
    movl    -116(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $75102, %eax            #  59:     if     75102 # 51585 goto 12_if_true
    movl    $51585, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  60:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  62:     goto   11
l_f1_13_if_false:
l_f1_11:
    jmp     l_f1_15                 #  65:     goto   15
l_f1_15:
l_f1_19_while_cond:
    movl    $98, %eax               #  68:     if     98 # 100 goto 20_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_20_while_body     
    jmp     l_f1_18                 #  69:     goto   18
l_f1_20_while_body:
    jmp     l_f1_19_while_cond      #  71:     goto   19_while_cond
l_f1_18:
    movl    $100, %eax              #  73:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_1                  #  74:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $100, %eax              #  77:     return 100
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $136, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 25 of <array 75 of <array 60 of <array 22 of <array 19 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 90 of <array 68 of <array 70 of <array 46 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 96 of <array 16 of <array 6 of <array 34 of <array 63 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <ptr(4) to <array 76 of <array 91 of <array 21 of <array 20 of <array 35 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 100 of <array 62 of <array 81 of <array 28 of <array 76 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <char> %ebp-41 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 61 of <array 97 of <array 85 of <array 10 of <array 62 of <int>>>>>>> %ebp+8 ]
    #    -42(%ebp)   1  [ $v1       <char> %ebp-42 ]
    #   -101665268(%ebp)  101665224  [ $v2       <array 76 of <array 91 of <array 21 of <array 20 of <array 35 of <bool>>>>>> %ebp-101665268 ]
    #   -121405964(%ebp)  19740696  [ $v3       <array 96 of <array 16 of <array 6 of <array 34 of <array 63 of <bool>>>>>> %ebp-121405964 ]
    #   -239644388(%ebp)  118238424  [ $v4       <array 6 of <array 90 of <array 68 of <array 70 of <array 46 of <char>>>>>> %ebp-239644388 ]
    #   -286669412(%ebp)  47025024  [ $v5       <array 25 of <array 75 of <array 60 of <array 22 of <array 19 of <bool>>>>>> %ebp-286669412 ]
    #   -266428540(%ebp)  -20240872  [ $v6       <array 100 of <array 62 of <array 81 of <array 28 of <array 76 of <int>>>>>> %ebp-266428540 ]
    #   -266428544(%ebp)   4  [ $v7       <int> %ebp-266428544 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $266428532, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $66607133, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-101665268(%ebp)     # local array 'v2': 5 dimensions
    movl    $76,-101665264(%ebp)    #   dimension 1: 76 elements
    movl    $91,-101665260(%ebp)    #   dimension 2: 91 elements
    movl    $21,-101665256(%ebp)    #   dimension 3: 21 elements
    movl    $20,-101665252(%ebp)    #   dimension 4: 20 elements
    movl    $35,-101665248(%ebp)    #   dimension 5: 35 elements
    movl    $5,-121405964(%ebp)     # local array 'v3': 5 dimensions
    movl    $96,-121405960(%ebp)    #   dimension 1: 96 elements
    movl    $16,-121405956(%ebp)    #   dimension 2: 16 elements
    movl    $6,-121405952(%ebp)     #   dimension 3: 6 elements
    movl    $34,-121405948(%ebp)    #   dimension 4: 34 elements
    movl    $63,-121405944(%ebp)    #   dimension 5: 63 elements
    movl    $5,-239644388(%ebp)     # local array 'v4': 5 dimensions
    movl    $6,-239644384(%ebp)     #   dimension 1: 6 elements
    movl    $90,-239644380(%ebp)    #   dimension 2: 90 elements
    movl    $68,-239644376(%ebp)    #   dimension 3: 68 elements
    movl    $70,-239644372(%ebp)    #   dimension 4: 70 elements
    movl    $46,-239644368(%ebp)    #   dimension 5: 46 elements
    movl    $5,-286669412(%ebp)     # local array 'v5': 5 dimensions
    movl    $25,-286669408(%ebp)    #   dimension 1: 25 elements
    movl    $75,-286669404(%ebp)    #   dimension 2: 75 elements
    movl    $60,-286669400(%ebp)    #   dimension 3: 60 elements
    movl    $22,-286669396(%ebp)    #   dimension 4: 22 elements
    movl    $19,-286669392(%ebp)    #   dimension 5: 19 elements
    movl    $5,-266428540(%ebp)     # local array 'v6': 5 dimensions
    movl    $100,-266428536(%ebp)   #   dimension 1: 100 elements
    movl    $62,-266428532(%ebp)    #   dimension 2: 62 elements
    movl    $81,-266428528(%ebp)    #   dimension 3: 81 elements
    movl    $28,-266428524(%ebp)    #   dimension 4: 28 elements
    movl    $76,-266428520(%ebp)    #   dimension 5: 76 elements

    # function body
    leal    -286669412(%ebp), %eax  #   0:     &()    t3 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     param  3 <- t3
    pushl   %eax                   
    leal    -239644388(%ebp), %eax  #   2:     &()    t4 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  2 <- t4
    pushl   %eax                   
    leal    -121405964(%ebp), %eax  #   4:     &()    t5 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     param  1 <- t5
    pushl   %eax                   
    leal    -101665268(%ebp), %eax  #   6:     &()    t6 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #   8:     call   t7 <- f1
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #   9:     assign v1 <- t7
    movb    %al, -42(%ebp)         
    leal    -266428540(%ebp), %eax  #  10:     &()    t8 <- v6
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  12:     call   t9 <- f0
    addl    $4, %esp               
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  13:     return t9
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  14:     goto   1
l_f2_1:
    leal    _str_1, %eax            #  16:     &()    t10 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     param  0 <- t10
    pushl   %eax                   
    call    WriteStr                #  18:     call   WriteStr
    addl    $4, %esp               
l_f2_10_while_cond:
    jmp     l_f2_9                  #  20:     goto   9
    jmp     l_f2_10_while_cond      #  21:     goto   10_while_cond
l_f2_9:
    movl    $13807, %eax            #  23:     assign v7 <- 13807
    movl    %eax, -266428544(%ebp) 
    jmp     l_f2_13                 #  24:     goto   13
l_f2_13:
l_f2_17_while_cond:
    jmp     l_f2_17_while_cond      #  27:     goto   17_while_cond
    movl    $97, %eax               #  28:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_5                  #  29:     goto   5
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $266428532, %esp        # remove locals
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
    movl    $98, %eax               #   0:     if     98 > 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    call    ReadInt                 #   8:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $95316, %eax            #   9:     div    t2 <- 95316, t1
    movl    -20(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     assign v0 <- t2
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
