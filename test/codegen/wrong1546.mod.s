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
    #    -73(%ebp)   1  [ $t25      <bool> %ebp-73 ]
    #    -80(%ebp)   4  [ $t3       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t4       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t5       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t6       <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t7       <bool> %ebp-93 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 32 of <array 69 of <array 4 of <array 29 of <array 98 of <bool>>>>>>> %ebp+8 ]
    #   -105(%ebp)   1  [ $v1       <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $v2       <int> %ebp-112 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $100, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $25, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $92117, %eax            #   0:     mul    t3 <- 92117, 25632
    movl    $25632, %ebx           
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   1:     div    t4 <- t3, 55320
    movl    $55320, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   2:     mul    t5 <- t4, 5151
    movl    $5151, %ebx            
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   3:     div    t6 <- t5, 94037
    movl    $94037, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   4:     if     t6 <= 57013 goto 1
    movl    $57013, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_1                 
    jmp     l_f0_2                  #   5:     goto   2
l_f0_1:
    movl    $1, %eax                #   7:     assign t7 <- 1
    movb    %al, -93(%ebp)         
    jmp     l_f0_3                  #   8:     goto   3
l_f0_2:
    movl    $0, %eax                #  10:     assign t7 <- 0
    movb    %al, -93(%ebp)         
l_f0_3:
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    $98639, %eax            #  15:     mul    t9 <- 98639, t8
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  16:     add    t10 <- t9, 52815
    movl    $52815, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  20:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     add    t13 <- t12, 38993
    movl    $38993, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  25:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  26:     add    t16 <- t15, 23669
    movl    $23669, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  29:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  30:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  31:     add    t19 <- t18, 37528
    movl    $37528, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  32:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  33:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  34:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  35:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  36:     add    t23 <- v0, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -93(%ebp), %eax         #  37:     assign @t23 <- t7
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $97114, %eax            #  38:     param  0 <- 97114
    pushl   %eax                   
    call    WriteInt                #  39:     call   WriteInt
    addl    $4, %esp               
    movl    $1, %eax                #  40:     return 1
    jmp     l_f0_exit              
l_f0_11_while_cond:
    movl    $99, %eax               #  42:     if     99 <= 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_12_while_body     
    jmp     l_f0_10                 #  43:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  45:     goto   11_while_cond
l_f0_10:
    movl    $1, %eax                #  47:     return 1
    jmp     l_f0_exit              
    movl    $0, %eax                #  48:     return 0
    jmp     l_f0_exit              
    call    ReadInt                 #  49:     call   t24 <- ReadInt
    movl    %eax, -72(%ebp)        
    movl    $32715, %eax            #  50:     assign v2 <- 32715
    movl    %eax, -112(%ebp)       
    jmp     l_f0_5                  #  51:     goto   5
l_f0_5:
    movl    $99, %eax               #  53:     if     99 = 100 goto 19
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_19                
    jmp     l_f0_20                 #  54:     goto   20
l_f0_19:
    movl    $1, %eax                #  56:     assign t25 <- 1
    movb    %al, -73(%ebp)         
    jmp     l_f0_21                 #  57:     goto   21
l_f0_20:
    movl    $0, %eax                #  59:     assign t25 <- 0
    movb    %al, -73(%ebp)         
l_f0_21:
    movzbl  -73(%ebp), %eax         #  61:     assign v1 <- t25
    movb    %al, -105(%ebp)        

l_f0_exit:
    # epilogue
    addl    $100, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 32 of <array 69 of <array 4 of <array 29 of <array 98 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 52 of <array 43 of <array 95 of <array 69 of <array 99 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 95 of <array 25 of <array 39 of <array 70 of <array 56 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 94 of <array 74 of <array 88 of <array 58 of <array 78 of <int>>>>>>> %ebp+16 ]
    #   -25100588(%ebp)  25100568  [ $v3       <array 32 of <array 69 of <array 4 of <array 29 of <array 98 of <bool>>>>>> %ebp-25100588 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $25100576, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6275144, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-25100588(%ebp)      # local array 'v3': 5 dimensions
    movl    $32,-25100584(%ebp)     #   dimension 1: 32 elements
    movl    $69,-25100580(%ebp)     #   dimension 2: 69 elements
    movl    $4,-25100576(%ebp)      #   dimension 3: 4 elements
    movl    $29,-25100572(%ebp)     #   dimension 4: 29 elements
    movl    $98,-25100568(%ebp)     #   dimension 5: 98 elements

    # function body
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    movl    $97, %eax               #   2:     if     97 >= 100 goto 3_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   3:     goto   4_if_false
l_f1_3_if_true:
    leal    -25100588(%ebp), %eax   #   5:     &()    t3 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   7:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
l_f1_8_while_cond:
    movl    $13116, %eax            #   9:     if     13116 >= 29412 goto 9_while_body
    movl    $29412, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_9_while_body      
    jmp     l_f1_7                  #  10:     goto   7
l_f1_9_while_body:
l_f1_12_while_cond:
    movl    $82469, %eax            #  13:     if     82469 # 728 goto 13_while_body
    movl    $728, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_13_while_body     
    jmp     l_f1_11                 #  14:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  16:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_8_while_cond       #  18:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_2                  #  20:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $25100576, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
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
    #    -57(%ebp)   1  [ $t3       <bool> %ebp-57 ]
    #    -58(%ebp)   1  [ $t4       <bool> %ebp-58 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 47 of <array 33 of <array 67 of <array 24 of <array 88 of <char>>>>>>> %ebp+16 ]
    #    -81(%ebp)   1  [ $v3       <bool> %ebp-81 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #   2:     if     t3 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_4                 
    jmp     l_f2_5                  #   3:     goto   5
l_f2_4:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f2_6                  #   6:     goto   6
l_f2_5:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -58(%ebp)         
l_f2_6:
    movzbl  -58(%ebp), %eax         #  10:     if     t4 = 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
l_f2_10_while_cond:
    movl    $97, %eax               #  16:     if     97 <= 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_11_while_body     
    jmp     l_f2_9                  #  17:     goto   9
l_f2_11_while_body:
    movl    $2, %eax                #  19:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $26521, %eax            #  22:     mul    t6 <- 26521, t5
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  23:     add    t7 <- t6, 53321
    movl    $53321, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  26:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  27:     mul    t9 <- t7, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  28:     add    t10 <- t9, 39246
    movl    $39246, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  30:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  31:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  32:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     add    t13 <- t12, 38428
    movl    $38428, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  35:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  36:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  37:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  38:     add    t16 <- t15, 86838
    movl    $86838, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  39:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  40:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  41:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  42:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  43:     add    t20 <- v2, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $97, %eax               #  44:     assign @t20 <- 97
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $1, %eax                #  45:     assign v3 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_10_while_cond      #  46:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    jmp     l_test_exit            
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   2:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   4:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_exit            
l_test_9_while_cond:
    movl    $44394, %eax            #   7:     if     44394 <= 96504 goto 10_while_body
    movl    $96504, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10_while_body   
    jmp     l_test_8                #   8:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  10:     goto   9_while_cond
l_test_8:
    jmp     l_test_4                #  12:     goto   4
l_test_4:
l_test_13_while_cond:
    jmp     l_test_12               #  15:     goto   12
l_test_16_while_cond:
    movl    $100, %eax              #  17:     if     100 >= 100 goto 17_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_17_while_body   
    jmp     l_test_15               #  18:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  20:     goto   16_while_cond
l_test_15:
    jmp     l_test_13_while_cond    #  22:     goto   13_while_cond
l_test_12:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
