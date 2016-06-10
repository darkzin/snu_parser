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
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t36      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t37      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t38      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t39      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t40      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t41      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t42      <int> %ebp-144 ]
    #   -145(%ebp)   1  [ $t5       <bool> %ebp-145 ]
    #   -146(%ebp)   1  [ $t6       <bool> %ebp-146 ]
    #   -152(%ebp)   4  [ $t7       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t8       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t9       <int> %ebp-160 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 47 of <array 74 of <array 80 of <array 84 of <array 27 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 12 of <array 72 of <array 49 of <array 89 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 86 of <array 69 of <array 37 of <array 75 of <array 2 of <int>>>>>>> %ebp+20 ]
    #   -161(%ebp)   1  [ $v4       <bool> %ebp-161 ]
    #   -168(%ebp)   4  [ $v5       <int> %ebp-168 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $156, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $39, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $1, %eax                #   0:     assign t5 <- 1
    movb    %al, -145(%ebp)        
    jmp     l_f0_7                  #   1:     goto   7
    movl    $0, %eax                #   2:     assign t5 <- 0
    movb    %al, -145(%ebp)        
l_f0_7:
    movl    $1, %eax                #   4:     if     1 # t5 goto 1
    movzbl  -145(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   5:     goto   2
l_f0_1:
    movl    $1, %eax                #   7:     assign t6 <- 1
    movb    %al, -146(%ebp)        
    jmp     l_f0_3                  #   8:     goto   3
l_f0_2:
    movl    $0, %eax                #  10:     assign t6 <- 0
    movb    %al, -146(%ebp)        
l_f0_3:
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    $58375, %eax            #  15:     mul    t8 <- 58375, t7
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    $29303, %eax            #  16:     sub    t9 <- 29303, 44270
    movl    $44270, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    -156(%ebp), %eax        #  17:     add    t10 <- t8, t9
    movl    -160(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  21:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t13 <- t12, 11047
    movl    $11047, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  26:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t16 <- t15, 38416
    movl    $38416, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  31:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t19 <- t18, 37356
    movl    $37356, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  33:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  34:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  35:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  36:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  37:     add    t23 <- v1, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -146(%ebp), %eax        #  38:     assign @t23 <- t6
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_11_while_cond:
    movl    $100, %eax              #  40:     if     100 >= 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_12_while_body     
    jmp     l_f0_10                 #  41:     goto   10
l_f0_12_while_body:
l_f0_15_while_cond:
    jmp     l_f0_14                 #  44:     goto   14
    jmp     l_f0_15_while_cond      #  45:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_11_while_cond      #  47:     goto   11_while_cond
l_f0_10:
    movl    $5707, %eax             #  49:     sub    t24 <- 5707, 50952
    movl    $50952, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  50:     sub    t25 <- t24, 2457
    movl    $2457, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $2, %eax                #  51:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  52:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  53:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $21892, %eax            #  54:     mul    t27 <- 21892, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  55:     add    t28 <- t27, 9270
    movl    $9270, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  56:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  57:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  58:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  59:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    call    dummyINTfunc            #  60:     call   t31 <- dummyINTfunc
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  61:     add    t32 <- t30, t31
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $4, %eax                #  62:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  63:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  64:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  65:     mul    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  66:     add    t35 <- t34, 12961
    movl    $12961, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $5, %eax                #  67:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  68:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  69:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  70:     mul    t37 <- t35, t36
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  71:     add    t38 <- t37, 19272
    movl    $19272, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  72:     mul    t39 <- t38, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    20(%ebp), %eax          #  73:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  74:     call   t40 <- DOFS
    addl    $4, %esp               
    movl    %eax, -136(%ebp)       
    movl    -132(%ebp), %eax        #  75:     add    t41 <- t39, t40
    movl    -136(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    20(%ebp), %eax          #  76:     add    t42 <- v3, t41
    movl    -140(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    -76(%ebp), %eax         #  77:     assign @t42 <- t25
    movl    -144(%ebp), %edi       
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $156, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 100 of <array 80 of <array 97 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 83 of <array 10 of <array 92 of <array 39 of <array 79 of <bool>>>>>>> %ebp+16 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    movl    $40784, %eax            #   0:     if     40784 <= 75408 goto 1_if_true
    movl    $75408, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    ReadInt                 #   8:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     assign v3 <- t6
    movl    %eax, -24(%ebp)        
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 86 of <array 69 of <array 37 of <array 75 of <array 2 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 4 of <array 12 of <array 72 of <array 49 of <array 89 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 47 of <array 74 of <array 80 of <array 84 of <array 27 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 79 of <array 29 of <array 85 of <array 78 of <array 11 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -30(%ebp)   1  [ $v2       <char> %ebp-30 ]
    #   -631048376(%ebp)  631048344  [ $v3       <array 47 of <array 74 of <array 80 of <array 84 of <array 27 of <char>>>>>> %ebp-631048376 ]
    #   -646120016(%ebp)  15071640  [ $v4       <array 4 of <array 12 of <array 72 of <array 49 of <array 89 of <bool>>>>>> %ebp-646120016 ]
    #   -777854840(%ebp)  131734824  [ $v5       <array 86 of <array 69 of <array 37 of <array 75 of <array 2 of <int>>>>>> %ebp-777854840 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $777854828, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $194463707, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-631048376(%ebp)     # local array 'v3': 5 dimensions
    movl    $47,-631048372(%ebp)    #   dimension 1: 47 elements
    movl    $74,-631048368(%ebp)    #   dimension 2: 74 elements
    movl    $80,-631048364(%ebp)    #   dimension 3: 80 elements
    movl    $84,-631048360(%ebp)    #   dimension 4: 84 elements
    movl    $27,-631048356(%ebp)    #   dimension 5: 27 elements
    movl    $5,-646120016(%ebp)     # local array 'v4': 5 dimensions
    movl    $4,-646120012(%ebp)     #   dimension 1: 4 elements
    movl    $12,-646120008(%ebp)    #   dimension 2: 12 elements
    movl    $72,-646120004(%ebp)    #   dimension 3: 72 elements
    movl    $49,-646120000(%ebp)    #   dimension 4: 49 elements
    movl    $89,-646119996(%ebp)    #   dimension 5: 89 elements
    movl    $5,-777854840(%ebp)     # local array 'v5': 5 dimensions
    movl    $86,-777854836(%ebp)    #   dimension 1: 86 elements
    movl    $69,-777854832(%ebp)    #   dimension 2: 69 elements
    movl    $37,-777854828(%ebp)    #   dimension 3: 37 elements
    movl    $75,-777854824(%ebp)    #   dimension 4: 75 elements
    movl    $2,-777854820(%ebp)     #   dimension 5: 2 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   1:     return t5
    jmp     l_f2_exit              
    leal    -777854840(%ebp), %eax  #   2:     &()    t6 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  3 <- t6
    pushl   %eax                   
    movl    $99, %eax               #   4:     param  2 <- 99
    pushl   %eax                   
    leal    -646120016(%ebp), %eax  #   5:     &()    t7 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  1 <- t7
    pushl   %eax                   
    leal    -631048376(%ebp), %eax  #   7:     &()    t8 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #   9:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  10:     assign v2 <- t9
    movb    %al, -30(%ebp)         
    movl    $100, %eax              #  11:     if     100 <= 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #  12:     goto   4_if_false
l_f2_3_if_true:
    movl    $100, %eax              #  14:     return 100
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  15:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_9_while_cond:
    jmp     l_f2_9_while_cond       #  17:     goto   9_while_cond
    jmp     l_f2_2                  #  18:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $777854828, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 83 of <array 10 of <array 92 of <array 39 of <array 79 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 97 of <array 100 of <array 80 of <array 97 of <array 7 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 79 of <array 29 of <array 85 of <array 78 of <array 11 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    call    dummyProcedure          #   2:     call   dummyProcedure
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    movl    $98, %eax               #   6:     if     98 > 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
    call    dummyINTfunc            #   9:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_5                #  10:     goto   5
l_test_7_if_false:
l_test_5:
    leal    v2, %eax                #  13:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  2 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  15:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  1 <- t2
    pushl   %eax                   
    movl    $25635, %eax            #  17:     param  1 <- 25635
    pushl   %eax                   
    leal    v0, %eax                #  18:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  20:     call   t4 <- f2
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  21:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  22:     call   f1
    addl    $12, %esp              
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <array 79 of <array 29 of <array 85 of <array 78 of <array 11 of <int>>>>>>
    .long    5
    .long   79
    .long   29
    .long   85
    .long   78
    .long   11
    .skip 668330520
v1:                                 # <array 97 of <array 100 of <array 80 of <array 97 of <array 7 of <bool>>>>>>
    .long    5
    .long   97
    .long  100
    .long   80
    .long   97
    .long    7
    .skip 526904000
v2:                                 # <array 83 of <array 10 of <array 92 of <array 39 of <array 79 of <bool>>>>>>
    .long    5
    .long   83
    .long   10
    .long   92
    .long   39
    .long   79
    .skip 235265160








    # end of global data section
    #-----------------------------------------

    .end
##################################################
