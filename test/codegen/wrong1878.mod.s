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
    #    -73(%ebp)   1  [ $t4       <char> %ebp-73 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 47 of <array 4 of <array 91 of <array 1 of <array 79 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 10 of <array 100 of <array 56 of <array 32 of <int>>>>>>> %ebp+16 ]
    #    -97(%ebp)   1  [ $v4       <char> %ebp-97 ]
    #   -104(%ebp)   4  [ $v5       <int> %ebp-104 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    movzbl  -73(%ebp), %eax         #   1:     return t4
    jmp     l_f0_exit              
    movl    $97, %eax               #   2:     assign v4 <- 97
    movb    %al, -97(%ebp)         
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   4:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   5:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $81671, %eax            #   6:     mul    t6 <- 81671, t5
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    $98133, %eax            #   7:     add    t7 <- 98133, 71002
    movl    $71002, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   8:     add    t8 <- t7, 95628
    movl    $95628, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #   9:     add    t9 <- t6, t8
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  11:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  12:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -96(%ebp), %eax         #  13:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $47819, %eax            #  14:     add    t12 <- 47819, 73074
    movl    $73074, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     sub    t13 <- t12, 24527
    movl    $24527, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t14 <- t11, t13
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  20:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     add    t17 <- t16, 93145
    movl    $93145, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  24:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  25:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  26:     add    t20 <- t19, 3112
    movl    $3112, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  27:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  28:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  29:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  30:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  31:     add    t24 <- v3, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4185, %eax             #  32:     assign @t24 <- 4185
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           

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
    #    -72(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 10 of <array 100 of <array 56 of <array 32 of <int>>>>>>> %ebp-72 ]
    #    -73(%ebp)   1  [ $t5       <bool> %ebp-73 ]
    #    -80(%ebp)   4  [ $t6       <ptr(4) to <array 47 of <array 4 of <array 91 of <array 1 of <array 79 of <bool>>>>>>> %ebp-80 ]
    #    -81(%ebp)   1  [ $t7       <char> %ebp-81 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 95 of <array 79 of <array 74 of <array 51 of <array 13 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 36 of <array 37 of <array 30 of <array 46 of <array 48 of <char>>>>>>> %ebp+12 ]
    #    -96(%ebp)   4  [ $v3       <int> %ebp-96 ]
    #   -1351652(%ebp)  1351556  [ $v4       <array 47 of <array 4 of <array 91 of <array 1 of <array 79 of <bool>>>>>> %ebp-1351652 ]
    #   -30023676(%ebp)  28672024  [ $v5       <array 4 of <array 10 of <array 100 of <array 56 of <array 32 of <int>>>>>> %ebp-30023676 ]
    #   -30023677(%ebp)   1  [ $v6       <char> %ebp-30023677 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $30023668, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7505917, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1351652(%ebp)       # local array 'v4': 5 dimensions
    movl    $47,-1351648(%ebp)      #   dimension 1: 47 elements
    movl    $4,-1351644(%ebp)       #   dimension 2: 4 elements
    movl    $91,-1351640(%ebp)      #   dimension 3: 91 elements
    movl    $1,-1351636(%ebp)       #   dimension 4: 1 elements
    movl    $79,-1351632(%ebp)      #   dimension 5: 79 elements
    movl    $5,-30023676(%ebp)      # local array 'v5': 5 dimensions
    movl    $4,-30023672(%ebp)      #   dimension 1: 4 elements
    movl    $10,-30023668(%ebp)     #   dimension 2: 10 elements
    movl    $100,-30023664(%ebp)    #   dimension 3: 100 elements
    movl    $56,-30023660(%ebp)     #   dimension 4: 56 elements
    movl    $32,-30023656(%ebp)     #   dimension 5: 32 elements

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $60245, %eax            #   1:     if     60245 # 43362 goto 4_if_true
    movl    $43362, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   2:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   4:     goto   3
l_f1_5_if_false:
l_f1_3:
    movl    $0, %eax                #   7:     if     0 = 0 goto 8_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   8:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #  10:     goto   7
l_f1_9_if_false:
l_f1_7:
    movl    $100, %eax              #  13:     return 100
    jmp     l_f1_exit              
    movl    $100, %eax              #  14:     return 100
    jmp     l_f1_exit              
l_f1_14_while_cond:
    jmp     l_f1_13                 #  16:     goto   13
    jmp     l_f1_14_while_cond      #  17:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_16                 #  19:     goto   16
l_f1_16:
    movl    $3608, %eax             #  21:     assign v3 <- 3608
    movl    %eax, -96(%ebp)        
    jmp     l_f1_0                  #  22:     goto   0
l_f1_2_if_false:
l_f1_0:
    leal    -30023676(%ebp), %eax   #  25:     &()    t4 <- v5
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  26:     param  2 <- t4
    pushl   %eax                   
    movl    $86050, %eax            #  27:     if     86050 # 35612 goto 21
    movl    $35612, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_21                
    jmp     l_f1_22                 #  28:     goto   22
l_f1_21:
    movl    $1, %eax                #  30:     assign t5 <- 1
    movb    %al, -73(%ebp)         
    jmp     l_f1_23                 #  31:     goto   23
l_f1_22:
    movl    $0, %eax                #  33:     assign t5 <- 0
    movb    %al, -73(%ebp)         
l_f1_23:
    movzbl  -73(%ebp), %eax         #  35:     param  1 <- t5
    pushl   %eax                   
    leal    -1351652(%ebp), %eax    #  36:     &()    t6 <- v4
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  37:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  38:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -81(%ebp)         
    movzbl  -81(%ebp), %eax         #  39:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_26_if_true         #  40:     goto   26_if_true
    jmp     l_f1_27_if_false        #  41:     goto   27_if_false
l_f1_26_if_true:
l_f1_30_while_cond:
    movl    $41967, %eax            #  44:     if     41967 < 28208 goto 31_while_body
    movl    $28208, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_31_while_body     
    jmp     l_f1_29                 #  45:     goto   29
l_f1_31_while_body:
    jmp     l_f1_30_while_cond      #  47:     goto   30_while_cond
l_f1_29:
    movl    $98, %eax               #  49:     if     98 < 99 goto 34_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_34_if_true        
    jmp     l_f1_35_if_false        #  50:     goto   35_if_false
l_f1_34_if_true:
    jmp     l_f1_33                 #  52:     goto   33
l_f1_35_if_false:
l_f1_33:
    movl    $2, %eax                #  55:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  56:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  57:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $12229, %eax            #  58:     mul    t9 <- 12229, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  59:     add    t10 <- t9, 1265
    movl    $1265, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  60:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  61:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  62:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  63:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  64:     add    t13 <- t12, 41057
    movl    $41057, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  65:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  66:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  67:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  68:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  69:     add    t16 <- t15, 11699
    movl    $11699, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  70:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  71:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  72:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  73:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  74:     add    t19 <- t18, 66079
    movl    $66079, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  75:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  76:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  77:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  78:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  79:     add    t23 <- v2, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $97, %eax               #  80:     assign @t23 <- 97
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_25                 #  81:     goto   25
l_f1_27_if_false:
l_f1_25:

l_f1_exit:
    # epilogue
    addl    $30023668, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
    jmp     l_f2_1                  #   0:     goto   1
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t4 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  10:     assign v2 <- t5
    movb    %al, -21(%ebp)         
    jmp     l_f2_exit              
    movl    $11952, %eax            #  12:     add    t6 <- 11952, 46446
    movl    $46446, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     assign v3 <- t6
    movl    %eax, -28(%ebp)        

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 36 of <array 37 of <array 30 of <array 46 of <array 48 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 95 of <array 79 of <array 74 of <array 51 of <array 13 of <char>>>>>>> %ebp-24 ]
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
    movl    $100, %eax              #   0:     if     100 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $98, %eax               #   3:     assign v0 <- 98
    movb    %al, v0                
l_test_6_while_cond:
    jmp     l_test_5                #   5:     goto   5
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
l_test_5:
    movl    $98, %eax               #   8:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #  12:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    leal    v2, %eax                #  14:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  1 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  16:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  18:     call   t3 <- f1
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  19:     assign v0 <- t3
    movb    %al, v0                

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 95 of <array 79 of <array 74 of <array 51 of <array 13 of <char>>>>>>
    .long    5
    .long   95
    .long   79
    .long   74
    .long   51
    .long   13
    .skip 368210310
    .align   4
v2:                                 # <array 36 of <array 37 of <array 30 of <array 46 of <array 48 of <char>>>>>>
    .long    5
    .long   36
    .long   37
    .long   30
    .long   46
    .long   48
    .skip 88231680








    # end of global data section
    #-----------------------------------------

    .end
##################################################
