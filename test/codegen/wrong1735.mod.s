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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t16      <char> %ebp-45 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t32      <int> %ebp-120 ]
    #   -121(%ebp)   1  [ $t33      <char> %ebp-121 ]
    #   -128(%ebp)   4  [ $t4       <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t5       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t6       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t7       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t8       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t9       <int> %ebp-148 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 21 of <array 10 of <array 53 of <array 5 of <array 84 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 70 of <array 72 of <array 39 of <array 33 of <array 19 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 28 of <array 78 of <array 27 of <array 94 of <array 65 of <char>>>>>>> %ebp+16 ]
    #   -149(%ebp)   1  [ $v3       <bool> %ebp-149 ]
    #   -150(%ebp)   1  [ $v4       <char> %ebp-150 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   4:     call   t0 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $37940, %eax            #   5:     mul    t1 <- 37940, t0
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     add    t2 <- t1, 61174
    movl    $61174, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -64(%ebp), %eax         #  10:     mul    t4 <- t2, t3
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  11:     add    t5 <- t4, 14475
    movl    $14475, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  15:     mul    t7 <- t5, t6
    movl    -136(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  16:     add    t8 <- t7, 95062
    movl    $95062, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -144(%ebp), %eax        #  20:     mul    t10 <- t8, t9
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     add    t11 <- t10, 37768
    movl    $37768, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     mul    t12 <- t11, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t13 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  25:     add    t14 <- t12, t13
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t15 <- v1, t14
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $0, %eax                #  27:     assign @t15 <- 0
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_4                  #  28:     goto   4
l_f0_4:
    jmp     l_f0_1_while_cond       #  30:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  32:     call   t16 <- dummyCHARfunc
    movb    %al, -45(%ebp)         
    movl    $2, %eax                #  33:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  35:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $61182, %eax            #  36:     mul    t18 <- 61182, t17
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  37:     add    t19 <- t18, 26702
    movl    $26702, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #  38:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  40:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  41:     mul    t21 <- t19, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  42:     add    t22 <- t21, 32393
    movl    $32393, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  43:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  44:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  45:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  46:     mul    t24 <- t22, t23
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  47:     add    t25 <- t24, 14474
    movl    $14474, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  48:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  49:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  50:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  51:     mul    t27 <- t25, t26
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  52:     add    t28 <- t27, 73668
    movl    $73668, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  53:     mul    t29 <- t28, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    16(%ebp), %eax          #  54:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  55:     call   t30 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -104(%ebp), %eax        #  56:     add    t31 <- t29, t30
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    16(%ebp), %eax          #  57:     add    t32 <- v2, t31
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movzbl  -45(%ebp), %eax         #  58:     assign @t32 <- t16
    movl    -120(%ebp), %edi       
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  59:     call   t33 <- dummyCHARfunc
    movb    %al, -121(%ebp)        
    movzbl  -121(%ebp), %eax        #  60:     return t33
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $140, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 28 of <array 78 of <array 27 of <array 94 of <array 65 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 70 of <array 72 of <array 39 of <array 33 of <array 19 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <ptr(4) to <array 21 of <array 10 of <array 53 of <array 5 of <array 84 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <ptr(4) to <array 21 of <array 10 of <array 53 of <array 5 of <array 84 of <int>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 21 of <array 10 of <array 53 of <array 5 of <array 84 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <ptr(4) to <array 21 of <array 10 of <array 53 of <array 5 of <array 84 of <int>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <ptr(4) to <array 21 of <array 10 of <array 53 of <array 5 of <array 84 of <int>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $t3       <char> %ebp-105 ]
    #   -106(%ebp)   1  [ $t4       <char> %ebp-106 ]
    #   -107(%ebp)   1  [ $t5       <bool> %ebp-107 ]
    #   -112(%ebp)   4  [ $t6       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t7       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t8       <ptr(4) to <array 21 of <array 10 of <array 53 of <array 5 of <array 84 of <int>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t9       <ptr(4) to <array 21 of <array 10 of <array 53 of <array 5 of <array 84 of <int>>>>>>> %ebp-124 ]
    #   -18698548(%ebp)  18698424  [ $v0       <array 21 of <array 10 of <array 53 of <array 5 of <array 84 of <int>>>>>> %ebp-18698548 ]
    #   -141941692(%ebp)  123243144  [ $v1       <array 70 of <array 72 of <array 39 of <array 33 of <array 19 of <bool>>>>>> %ebp-141941692 ]
    #   -502236196(%ebp)  360294504  [ $v2       <array 28 of <array 78 of <array 27 of <array 94 of <array 65 of <char>>>>>> %ebp-502236196 ]
    #   -502236200(%ebp)   4  [ $v3       <int> %ebp-502236200 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $502236188, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $125559047, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-18698548(%ebp)      # local array 'v0': 5 dimensions
    movl    $21,-18698544(%ebp)     #   dimension 1: 21 elements
    movl    $10,-18698540(%ebp)     #   dimension 2: 10 elements
    movl    $53,-18698536(%ebp)     #   dimension 3: 53 elements
    movl    $5,-18698532(%ebp)      #   dimension 4: 5 elements
    movl    $84,-18698528(%ebp)     #   dimension 5: 84 elements
    movl    $5,-141941692(%ebp)     # local array 'v1': 5 dimensions
    movl    $70,-141941688(%ebp)    #   dimension 1: 70 elements
    movl    $72,-141941684(%ebp)    #   dimension 2: 72 elements
    movl    $39,-141941680(%ebp)    #   dimension 3: 39 elements
    movl    $33,-141941676(%ebp)    #   dimension 4: 33 elements
    movl    $19,-141941672(%ebp)    #   dimension 5: 19 elements
    movl    $5,-502236196(%ebp)     # local array 'v2': 5 dimensions
    movl    $28,-502236192(%ebp)    #   dimension 1: 28 elements
    movl    $78,-502236188(%ebp)    #   dimension 2: 78 elements
    movl    $27,-502236184(%ebp)    #   dimension 3: 27 elements
    movl    $94,-502236180(%ebp)    #   dimension 4: 94 elements
    movl    $65,-502236176(%ebp)    #   dimension 5: 65 elements

    # function body
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
l_f1_2_while_body:
l_f1_5_while_cond:
    movl    $97, %eax               #   4:     if     97 < 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    leal    -502236196(%ebp), %eax  #   9:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  2 <- t0
    pushl   %eax                   
    leal    -141941692(%ebp), %eax  #  11:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  1 <- t1
    pushl   %eax                   
    leal    -18698548(%ebp), %eax   #  13:     &()    t2 <- v0
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  14:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  15:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -105(%ebp)        
    call    dummyCHARfunc           #  16:     call   t4 <- dummyCHARfunc
    movb    %al, -106(%ebp)        
    jmp     l_f1_1_while_cond       #  17:     goto   1_while_cond
    call    dummyBOOLfunc           #  18:     call   t5 <- dummyBOOLfunc
    movb    %al, -107(%ebp)        
    movl    $7044, %eax             #  19:     sub    t6 <- 7044, 26713
    movl    $26713, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  20:     sub    t7 <- t6, 28718
    movl    $28718, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    leal    -18698548(%ebp), %eax   #  21:     &()    t8 <- v0
    movl    %eax, -120(%ebp)       
    movl    $2, %eax                #  22:     param  1 <- 2
    pushl   %eax                   
    leal    -18698548(%ebp), %eax   #  23:     &()    t9 <- v0
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  24:     param  0 <- t9
    pushl   %eax                   
    call    DIM                     #  25:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $78087, %eax            #  26:     mul    t11 <- 78087, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t12 <- t11, 16743
    movl    $16743, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    leal    -18698548(%ebp), %eax   #  29:     &()    t13 <- v0
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     param  0 <- t13
    pushl   %eax                   
    call    DIM                     #  31:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  32:     mul    t15 <- t12, t14
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  33:     add    t16 <- t15, 48409
    movl    $48409, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    leal    -18698548(%ebp), %eax   #  35:     &()    t17 <- v0
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  36:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  37:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  38:     mul    t19 <- t16, t18
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  39:     add    t20 <- t19, 61870
    movl    $61870, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    leal    -18698548(%ebp), %eax   #  41:     &()    t21 <- v0
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  42:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  43:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  44:     mul    t23 <- t20, t22
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  45:     add    t24 <- t23, 3267
    movl    $3267, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  46:     mul    t25 <- t24, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    leal    -18698548(%ebp), %eax   #  47:     &()    t26 <- v0
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  48:     param  0 <- t26
    pushl   %eax                   
    call    DOFS                    #  49:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  50:     add    t28 <- t25, t27
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -120(%ebp), %eax        #  51:     add    t29 <- t8, t28
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -116(%ebp), %eax        #  52:     assign @t29 <- t7
    movl    -104(%ebp), %edi       
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $502236188, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 75 of <array 20 of <array 28 of <array 47 of <array 61 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 35 of <array 42 of <array 1 of <array 30 of <array 92 of <bool>>>>>>> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $42504, %eax            #   1:     assign v4 <- 42504
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #   2:     return 99
    jmp     l_f2_exit              
    movl    $99, %eax               #   3:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_8                  #   4:     goto   8
l_f2_8:
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   9:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_13_while_cond:
    jmp     l_f2_12                 #  11:     goto   12
    jmp     l_f2_13_while_cond      #  12:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
