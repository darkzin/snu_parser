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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 2 of <array 1 of <array 1 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 9 of <array 8 of <array 2 of <array 7 of <char>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    jmp     l_f0_3                  #   1:     goto   3
    jmp     l_f0_2_while_body       #   2:     goto   2_while_body
l_f0_3:
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_6_while_cond:
    call    dummyBOOLfunc           #   7:     call   t4 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   8:     if     t4 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #   9:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  11:     goto   6_while_cond
l_f0_5:
    movl    $99713, %eax            #  13:     sub    t5 <- 99713, 47000
    movl    $47000, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     sub    t6 <- t5, 73301
    movl    $73301, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     sub    t7 <- t6, 44107
    movl    $44107, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     sub    t8 <- t7, 69730
    movl    $69730, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    call    ReadInt                 #  17:     call   t9 <- ReadInt
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  18:     add    t10 <- t8, t9
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $37278, %eax            #  19:     if     37278 = t10 goto 10
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_11                 #  20:     goto   11
l_f0_10:
    movl    $1, %eax                #  22:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_12                 #  23:     goto   12
l_f0_11:
    movl    $0, %eax                #  25:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f0_12:
    movzbl  -17(%ebp), %eax         #  27:     return t11
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]

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
    movl    $66874, %eax            #   0:     mul    t4 <- 66874, 99863
    movl    $99863, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t5 <- t4, 354
    movl    $354, %ebx             
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t6 <- t5, 50705
    movl    $50705, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v2 <- t6
    movl    %eax, -32(%ebp)        
    movl    $98, %eax               #   4:     assign v1 <- 98
    movb    %al, 8(%ebp)           
    call    ReadInt                 #   5:     call   t7 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     assign v2 <- t7
    movl    %eax, -32(%ebp)        

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 5 of <array 2 of <array 1 of <array 1 of <array 2 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t13      <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t14      <bool> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <ptr(4) to <array 5 of <array 2 of <array 1 of <array 1 of <array 2 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <ptr(4) to <array 5 of <array 2 of <array 1 of <array 1 of <array 2 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t17      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t18      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t19      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t20      <ptr(4) to <array 5 of <array 2 of <array 1 of <array 1 of <array 2 of <bool>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t21      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t22      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t23      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t24      <ptr(4) to <array 5 of <array 2 of <array 1 of <array 1 of <array 2 of <bool>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t25      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t26      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t27      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t28      <ptr(4) to <array 5 of <array 2 of <array 1 of <array 1 of <array 2 of <bool>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t29      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t30      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t31      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t32      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t33      <ptr(4) to <array 5 of <array 2 of <array 1 of <array 1 of <array 2 of <bool>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t34      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t35      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t36      <int> %ebp-108 ]
    #   -109(%ebp)   1  [ $t4       <bool> %ebp-109 ]
    #   -116(%ebp)   4  [ $t5       <ptr(4) to <array 10 of <array 9 of <array 8 of <array 2 of <array 7 of <char>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 2 of <array 1 of <array 1 of <array 2 of <bool>>>>>>> %ebp-120 ]
    #   -121(%ebp)   1  [ $t7       <bool> %ebp-121 ]
    #   -122(%ebp)   1  [ $t8       <bool> %ebp-122 ]
    #   -128(%ebp)   4  [ $t9       <ptr(4) to <array 10 of <array 9 of <array 8 of <array 2 of <array 7 of <char>>>>>>> %ebp-128 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 4 of <array 10 of <array 2 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 8 of <array 6 of <array 1 of <array 4 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 7 of <array 7 of <array 1 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #   -129(%ebp)   1  [ $v4       <bool> %ebp-129 ]
    #   -176(%ebp)  44  [ $v5       <array 5 of <array 2 of <array 1 of <array 1 of <array 2 of <bool>>>>>> %ebp-176 ]
    #   -10280(%ebp)  10104  [ $v6       <array 10 of <array 9 of <array 8 of <array 2 of <array 7 of <char>>>>>> %ebp-10280 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $10268, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2567, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-176(%ebp)           # local array 'v5': 5 dimensions
    movl    $5,-172(%ebp)           #   dimension 1: 5 elements
    movl    $2,-168(%ebp)           #   dimension 2: 2 elements
    movl    $1,-164(%ebp)           #   dimension 3: 1 elements
    movl    $1,-160(%ebp)           #   dimension 4: 1 elements
    movl    $2,-156(%ebp)           #   dimension 5: 2 elements
    movl    $5,-10280(%ebp)         # local array 'v6': 5 dimensions
    movl    $10,-10276(%ebp)        #   dimension 1: 10 elements
    movl    $9,-10272(%ebp)         #   dimension 2: 9 elements
    movl    $8,-10268(%ebp)         #   dimension 3: 8 elements
    movl    $2,-10264(%ebp)         #   dimension 4: 2 elements
    movl    $7,-10260(%ebp)         #   dimension 5: 7 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -109(%ebp)        
    leal    -10280(%ebp), %eax      #   1:     &()    t5 <- v6
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #   2:     param  2 <- t5
    pushl   %eax                   
    leal    -176(%ebp), %eax        #   3:     &()    t6 <- v5
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #   4:     param  1 <- t6
    pushl   %eax                   
    movl    $98, %eax               #   5:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #   6:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -121(%ebp)        
    movzbl  -121(%ebp), %eax        #   7:     if     t7 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2                 
l_f2_2:
    movl    $1, %eax                #   9:     assign t8 <- 1
    movb    %al, -122(%ebp)        
    jmp     l_f2_4                  #  10:     goto   4
    movl    $0, %eax                #  11:     assign t8 <- 0
    movb    %al, -122(%ebp)        
l_f2_4:
    movzbl  -122(%ebp), %eax        #  13:     assign v4 <- t8
    movb    %al, -129(%ebp)        
    leal    -10280(%ebp), %eax      #  14:     &()    t9 <- v6
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  15:     param  2 <- t9
    pushl   %eax                   
    leal    -176(%ebp), %eax        #  16:     &()    t10 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     param  1 <- t10
    pushl   %eax                   
    call    dummyCHARfunc           #  18:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  19:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  20:     call   t12 <- f0
    addl    $12, %esp              
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  21:     if     t12 = 1 goto 11
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11                
l_f2_11:
    movl    $1, %eax                #  23:     assign t13 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_13                 #  24:     goto   13
    movl    $0, %eax                #  25:     assign t13 <- 0
    movb    %al, -19(%ebp)         
l_f2_13:
    movl    $0, %eax                #  27:     if     0 = t13 goto 7
    movzbl  -19(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_8                  #  28:     goto   8
l_f2_7:
    movl    $1, %eax                #  30:     assign t14 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f2_9                  #  31:     goto   9
l_f2_8:
    movl    $0, %eax                #  33:     assign t14 <- 0
    movb    %al, -20(%ebp)         
l_f2_9:
    leal    -176(%ebp), %eax        #  35:     &()    t15 <- v5
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  36:     param  1 <- 2
    pushl   %eax                   
    leal    -176(%ebp), %eax        #  37:     &()    t16 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  38:     param  0 <- t16
    pushl   %eax                   
    call    DIM                     #  39:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $55037, %eax            #  40:     mul    t18 <- 55037, t17
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  41:     add    t19 <- t18, 28937
    movl    $28937, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  42:     param  1 <- 3
    pushl   %eax                   
    leal    -176(%ebp), %eax        #  43:     &()    t20 <- v5
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  44:     param  0 <- t20
    pushl   %eax                   
    call    DIM                     #  45:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  46:     mul    t22 <- t19, t21
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  47:     add    t23 <- t22, 4250
    movl    $4250, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  48:     param  1 <- 4
    pushl   %eax                   
    leal    -176(%ebp), %eax        #  49:     &()    t24 <- v5
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  50:     param  0 <- t24
    pushl   %eax                   
    call    DIM                     #  51:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  52:     mul    t26 <- t23, t25
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  53:     add    t27 <- t26, 56969
    movl    $56969, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  54:     param  1 <- 5
    pushl   %eax                   
    leal    -176(%ebp), %eax        #  55:     &()    t28 <- v5
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  56:     param  0 <- t28
    pushl   %eax                   
    call    DIM                     #  57:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  58:     mul    t30 <- t27, t29
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  59:     add    t31 <- t30, 23351
    movl    $23351, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  60:     mul    t32 <- t31, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    leal    -176(%ebp), %eax        #  61:     &()    t33 <- v5
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  62:     param  0 <- t33
    pushl   %eax                   
    call    DOFS                    #  63:     call   t34 <- DOFS
    addl    $4, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  64:     add    t35 <- t32, t34
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -24(%ebp), %eax         #  65:     add    t36 <- t15, t35
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movzbl  -20(%ebp), %eax         #  66:     assign @t36 <- t14
    movl    -108(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $10268, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-28 ]

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
    movl    $100, %eax              #   0:     if     100 >= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    movl    $91876, %eax            #   9:     if     91876 >= 30580 goto 6_if_true
    movl    $30580, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_6_if_true       
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_12_while_cond:
    movl    $97, %eax               #  15:     if     97 <= 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_13_while_body   
    jmp     l_test_11               #  16:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  18:     goto   12_while_cond
l_test_11:
    jmp     l_test_exit            
l_test_17_while_cond:
    movl    $82310, %eax            #  22:     if     82310 # 70676 goto 18_while_body
    movl    $70676, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_18_while_body   
    jmp     l_test_16               #  23:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  25:     goto   17_while_cond
l_test_16:
    jmp     l_test_exit            
    jmp     l_test_5                #  28:     goto   5
l_test_7_if_false:
l_test_5:
    leal    _str_1, %eax            #  31:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  32:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  33:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    call    dummyCHARfunc           #  35:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_21               #  36:     goto   21
l_test_21:
    leal    _str_2, %eax            #  38:     &()    t3 <- _str_2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  39:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  40:     call   WriteStr
    addl    $4, %esp               

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
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
