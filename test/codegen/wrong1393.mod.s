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
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t15      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t29      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t30      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t31      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t32      <bool> %ebp-93 ]
    #    -94(%ebp)   1  [ $t33      <char> %ebp-94 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 16 of <array 67 of <array 19 of <array 84 of <array 82 of <bool>>>>>>> %ebp+12 ]
    #    -95(%ebp)   1  [ $v3       <bool> %ebp-95 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t11
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $97, %eax               #   3:     if     97 # 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
l_f0_6_while_cond:
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
l_f0_9_while_cond:
    movl    $84252, %eax            #   9:     if     84252 >= 38842 goto 10_while_body
    movl    $38842, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_10_while_body     
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_while_body:
    movl    $70018, %eax            #  12:     if     70018 < 33530 goto 13
    movl    $33530, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_13                
    jmp     l_f0_14                 #  13:     goto   14
l_f0_13:
    movl    $1, %eax                #  15:     assign t12 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_15                 #  16:     goto   15
l_f0_14:
    movl    $0, %eax                #  18:     assign t12 <- 0
    movb    %al, -14(%ebp)         
l_f0_15:
    movzbl  -14(%ebp), %eax         #  20:     assign v3 <- t12
    movb    %al, -95(%ebp)         
    jmp     l_f0_9_while_cond       #  21:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_2_while_cond       #  23:     goto   2_while_cond
l_f0_1:
l_f0_18_while_cond:
    movl    $39544, %eax            #  26:     mul    t13 <- 39544, 71555
    movl    $71555, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     mul    t14 <- t13, 55121
    movl    $55121, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $78884, %eax            #  28:     if     78884 # t14 goto 19_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_19_while_body     
    jmp     l_f0_17                 #  29:     goto   17
l_f0_19_while_body:
    movl    $28734, %eax            #  31:     if     28734 < 30474 goto 22
    movl    $30474, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_22                
    jmp     l_f0_23                 #  32:     goto   23
l_f0_22:
    movl    $1, %eax                #  34:     assign t15 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_24                 #  35:     goto   24
l_f0_23:
    movl    $0, %eax                #  37:     assign t15 <- 0
    movb    %al, -25(%ebp)         
l_f0_24:
    movl    $2, %eax                #  39:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  40:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  41:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $61188, %eax            #  42:     mul    t17 <- 61188, t16
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  43:     add    t18 <- t17, 5172
    movl    $5172, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  44:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  45:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  46:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  47:     mul    t20 <- t18, t19
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  48:     add    t21 <- t20, 25416
    movl    $25416, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  49:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  50:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  51:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  52:     mul    t23 <- t21, t22
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  53:     add    t24 <- t23, 89904
    movl    $89904, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  54:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  55:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  56:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  57:     mul    t26 <- t24, t25
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  58:     add    t27 <- t26, 53257
    movl    $53257, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  59:     mul    t28 <- t27, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  60:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  61:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  62:     add    t30 <- t28, t29
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    12(%ebp), %eax          #  63:     add    t31 <- v2, t30
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movzbl  -25(%ebp), %eax         #  64:     assign @t31 <- t15
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $99, %eax               #  65:     if     99 >= 98 goto 27
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_27                
    jmp     l_f0_28                 #  66:     goto   28
l_f0_27:
    movl    $1, %eax                #  68:     assign t32 <- 1
    movb    %al, -93(%ebp)         
    jmp     l_f0_29                 #  69:     goto   29
l_f0_28:
    movl    $0, %eax                #  71:     assign t32 <- 0
    movb    %al, -93(%ebp)         
l_f0_29:
    movzbl  -93(%ebp), %eax         #  73:     assign v3 <- t32
    movb    %al, -95(%ebp)         
l_f0_32_while_cond:
    movl    $97, %eax               #  75:     if     97 = 97 goto 33_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_33_while_body     
    jmp     l_f0_31                 #  76:     goto   31
l_f0_33_while_body:
    jmp     l_f0_32_while_cond      #  78:     goto   32_while_cond
l_f0_31:
    call    dummyCHARfunc           #  80:     call   t33 <- dummyCHARfunc
    movb    %al, -94(%ebp)         
    jmp     l_f0_18_while_cond      #  81:     goto   18_while_cond
l_f0_17:

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t13      <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 51 of <array 78 of <array 5 of <array 97 of <array 75 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    call    dummyBOOLfunc           #   1:     call   t11 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $91356, %eax            #   2:     if     91356 < 26514 goto 3_if_true
    movl    $26514, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   3:     goto   4_if_false
l_f1_3_if_true:
    call    dummyCHARfunc           #   5:     call   t12 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #   6:     call   t13 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_2                  #   7:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    movl    $97, %eax               #   0:     if     97 < 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $12127, %eax            #   3:     return 12127
    jmp     l_f2_exit              
l_f2_9_while_cond:
    movl    $54294, %eax            #   5:     if     54294 <= 68342 goto 10_while_body
    movl    $68342, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_10_while_body     
    jmp     l_f2_8                  #   6:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #   8:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_5                  #  10:     goto   5
l_f2_5:
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_13_if_true         #  15:     goto   13_if_true
    jmp     l_f2_13_if_true         #  16:     goto   13_if_true
    jmp     l_f2_14_if_false        #  17:     goto   14_if_false
l_f2_13_if_true:
    movl    $6751, %eax             #  19:     return 6751
    jmp     l_f2_exit              
    jmp     l_f2_12                 #  20:     goto   12
l_f2_14_if_false:
l_f2_12:
    movl    $58623, %eax            #  23:     div    t11 <- 58623, 76470
    movl    $76470, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  24:     mul    t12 <- t11, 6974
    movl    $6974, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     sub    t13 <- t12, 14956
    movl    $14956, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     assign v1 <- t13
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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t10      <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t2       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 16 of <array 67 of <array 19 of <array 84 of <array 82 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t6       <ptr(4) to <array 16 of <array 67 of <array 19 of <array 84 of <array 82 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
l_test_5_while_cond:
    movl    $97, %eax               #   3:     if     97 > 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_6_while_body    
    jmp     l_test_4                #   4:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   6:     goto   5_while_cond
l_test_4:
l_test_9_while_cond:
    jmp     l_test_8                #   9:     goto   8
    jmp     l_test_9_while_cond     #  10:     goto   9_while_cond
l_test_8:
    movl    $21185, %eax            #  12:     if     21185 # 53757 goto 12
    movl    $53757, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_12              
    jmp     l_test_13               #  13:     goto   13
l_test_12:
    movl    $1, %eax                #  15:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_14               #  16:     goto   14
l_test_13:
    movl    $0, %eax                #  18:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_14:
    movzbl  -14(%ebp), %eax         #  20:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_18_if_false      #  21:     goto   18_if_false
    jmp     l_test_16               #  22:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_1                #  25:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyCHARfunc           #  28:     call   t2 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $100, %eax              #  29:     if     100 > t2 goto 20
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_20              
    jmp     l_test_21               #  30:     goto   21
l_test_20:
    movl    $1, %eax                #  32:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_22               #  33:     goto   22
l_test_21:
    movl    $0, %eax                #  35:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_test_22:
    movzbl  -17(%ebp), %eax         #  37:     assign v0 <- t3
    movb    %al, v0                
    leal    v1, %eax                #  38:     &()    t4 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  39:     param  1 <- t4
    pushl   %eax                   
    movl    $67549, %eax            #  40:     param  0 <- 67549
    pushl   %eax                   
    call    f0                      #  41:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movl    $97, %eax               #  42:     if     97 > t5 goto 25_if_true
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_25_if_true      
    jmp     l_test_26_if_false      #  43:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  45:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_exit            
    leal    v1, %eax                #  49:     &()    t6 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  50:     param  1 <- t6
    pushl   %eax                   
    movl    $25197, %eax            #  51:     mul    t7 <- 25197, 5803
    movl    $5803, %ebx            
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  52:     mul    t8 <- t7, 39330
    movl    $39330, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  53:     mul    t9 <- t8, 7304
    movl    $7304, %ebx            
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  54:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  55:     call   t10 <- f0
    addl    $8, %esp               
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  56:     assign v2 <- t10
    movb    %al, v2                

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v1:                                 # <array 16 of <array 67 of <array 19 of <array 84 of <array 82 of <bool>>>>>>
    .long    5
    .long   16
    .long   67
    .long   19
    .long   84
    .long   82
    .skip 140294784
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
