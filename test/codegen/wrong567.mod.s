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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t3       <char> %ebp-73 ]
    #    -74(%ebp)   1  [ $t4       <bool> %ebp-74 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 4 of <array 6 of <array 7 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 1 of <array 5 of <array 10 of <array 4 of <char>>>>>>> %ebp+12 ]
    #   -100(%ebp)   4  [ $v2       <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $v3       <bool> %ebp-101 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $81159, %eax            #   0:     sub    t1 <- 81159, 95148
    movl    $95148, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t1
    movl    %eax, -100(%ebp)       
    call    ReadInt                 #   2:     call   t2 <- ReadInt
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   3:     if     t2 < 63984 goto 2_if_true
    movl    $63984, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   4:     goto   3_if_false
l_f0_2_if_true:
    movl    $0, %eax                #   6:     if     0 # 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   7:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   9:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_10_while_cond:
    movl    $22540, %eax            #  13:     if     22540 >= 95367 goto 11_while_body
    movl    $95367, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_11_while_body     
    jmp     l_f0_9                  #  14:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  16:     goto   10_while_cond
l_f0_9:
    call    dummyCHARfunc           #  18:     call   t3 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    jmp     l_f0_14                 #  19:     goto   14
l_f0_14:
    jmp     l_f0_1                  #  21:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_18                 #  24:     goto   18
    jmp     l_f0_19                 #  25:     goto   19
l_f0_18:
    movl    $1, %eax                #  27:     assign t4 <- 1
    movb    %al, -74(%ebp)         
    jmp     l_f0_20                 #  28:     goto   20
l_f0_19:
    movl    $0, %eax                #  30:     assign t4 <- 0
    movb    %al, -74(%ebp)         
l_f0_20:
    movl    $76780, %eax            #  32:     add    t5 <- 76780, 4733
    movl    $4733, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  33:     sub    t6 <- t5, 12619
    movl    $12619, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #  34:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  36:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  37:     mul    t8 <- t6, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  38:     add    t9 <- t8, 67851
    movl    $67851, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  39:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  40:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  41:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -96(%ebp), %eax         #  42:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  43:     add    t12 <- t11, 82964
    movl    $82964, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  44:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  45:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  46:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  47:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  48:     add    t15 <- t14, 47609
    movl    $47609, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  49:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  50:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  51:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  52:     mul    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  53:     add    t18 <- t17, 12518
    movl    $12518, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  54:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  55:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  56:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  57:     add    t21 <- t19, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  58:     add    t22 <- v0, t21
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -74(%ebp), %eax         #  59:     assign @t22 <- t4
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     if     100 < t1 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   9:     return t2
    jmp     l_f1_exit              
l_f1_6_while_cond:
    movl    $67884, %eax            #  11:     if     67884 <= 52775 goto 7_while_body
    movl    $52775, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #  12:     goto   5
l_f1_7_while_body:
    movl    $0, %eax                #  14:     return 0
    jmp     l_f1_exit              
l_f1_11_while_cond:
    movl    $98, %eax               #  16:     if     98 # 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_12_while_body     
    jmp     l_f1_10                 #  17:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  19:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_6_while_cond       #  21:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_15                 #  23:     goto   15
    call    dummyBOOLfunc           #  24:     call   t3 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  25:     if     t3 = 1 goto 15
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_15                
    jmp     l_f1_16                 #  26:     goto   16
l_f1_15:
    movl    $1, %eax                #  28:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_17                 #  29:     goto   17
l_f1_16:
    movl    $0, %eax                #  31:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f1_17:
    movzbl  -16(%ebp), %eax         #  33:     return t4
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t4       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t5       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t6       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t7       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <int> %ebp-120 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 5 of <array 8 of <array 7 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 4 of <array 1 of <array 8 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $108, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $27, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $42193, %eax            #   0:     add    t1 <- 42193, 76148
    movl    $76148, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 96062
    movl    $96062, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   2:     add    t3 <- t2, 92921
    movl    $92921, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   3:     return t3
    jmp     l_f2_exit              
    movl    $43380, %eax            #   4:     div    t4 <- 43380, 78805
    movl    $78805, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   5:     sub    t5 <- t4, 38749
    movl    $38749, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   6:     add    t6 <- t5, 79549
    movl    $79549, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   7:     add    t7 <- t6, 44766
    movl    $44766, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   8:     return t7
    jmp     l_f2_exit              
    movl    $4726, %eax             #   9:     div    t8 <- 4726, 6165
    movl    $6165, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  10:     div    t9 <- t8, 46304
    movl    $46304, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  11:     div    t10 <- t9, 20383
    movl    $20383, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $21474, %eax            #  15:     mul    t12 <- 21474, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     add    t13 <- t12, 84195
    movl    $84195, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  20:     mul    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $55532, %eax            #  21:     div    t16 <- 55532, 56966
    movl    $56966, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  22:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  26:     mul    t19 <- t17, t18
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  27:     add    t20 <- t19, 45565
    movl    $45565, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  31:     mul    t22 <- t20, t21
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  32:     add    t23 <- t22, 18190
    movl    $18190, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  33:     mul    t24 <- t23, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  34:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  35:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  36:     add    t26 <- t24, t25
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    12(%ebp), %eax          #  37:     add    t27 <- v1, t26
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -20(%ebp), %eax         #  38:     assign @t27 <- t10
    movl    -92(%ebp), %edi        
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $108, %esp              # remove locals
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
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_5_while_cond:
    jmp     l_test_4                #   5:     goto   4
    movl    $1, %eax                #   6:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    movl    $17121, %eax            #   9:     assign v1 <- 17121
    movl    %eax, v1               

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

    # scope: test
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
