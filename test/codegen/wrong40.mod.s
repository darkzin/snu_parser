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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
    call    ReadInt                 #   2:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
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
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t8       <bool> %ebp-89 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 7 of <array 4 of <array 2 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 8 of <array 4 of <array 3 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    call    ReadInt                 #   2:     call   t7 <- ReadInt
    movl    %eax, -88(%ebp)        
    call    dummyBOOLfunc           #   3:     call   t8 <- dummyBOOLfunc
    movb    %al, -89(%ebp)         
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
    movl    $34188, %eax            #   6:     add    t9 <- 34188, 64980
    movl    $64980, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $7464, %eax             #   7:     if     7464 # t9 goto 6_if_true
    movl    -96(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   8:     goto   7_if_false
l_f1_6_if_true:
    movl    $0, %eax                #  10:     return 0
    jmp     l_f1_exit              
    movl    $85737, %eax            #  11:     if     85737 < 66083 goto 11_if_true
    movl    $66083, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  12:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  14:     goto   10
l_f1_12_if_false:
l_f1_10:
    jmp     l_f1_5                  #  17:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_15_while_cond:
    movl    $90679, %eax            #  21:     sub    t10 <- 90679, 75052
    movl    $75052, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $54176, %eax            #  22:     if     54176 > t10 goto 16_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_16_while_body     
    jmp     l_f1_14                 #  23:     goto   14
l_f1_16_while_body:
    movl    $100, %eax              #  25:     if     100 = 97 goto 19
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_19                
    jmp     l_f1_20                 #  26:     goto   20
l_f1_19:
    movl    $1, %eax                #  28:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_21                 #  29:     goto   21
l_f1_20:
    movl    $0, %eax                #  31:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f1_21:
    movl    $2, %eax                #  33:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  35:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $93194, %eax            #  36:     mul    t13 <- 93194, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  37:     add    t14 <- t13, 53376
    movl    $53376, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  38:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  40:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  41:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  42:     add    t17 <- t16, 29571
    movl    $29571, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  43:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  44:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  45:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  46:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  47:     add    t20 <- t19, 27356
    movl    $27356, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  48:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  49:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  50:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  51:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  52:     add    t23 <- t22, 48460
    movl    $48460, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  53:     mul    t24 <- t23, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  54:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  55:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  56:     add    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    16(%ebp), %eax          #  57:     add    t27 <- v2, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movzbl  -17(%ebp), %eax         #  58:     assign @t27 <- t11
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_24_while_cond:
    jmp     l_f1_23                 #  60:     goto   23
    jmp     l_f1_24_while_cond      #  61:     goto   24_while_cond
l_f1_23:
    jmp     l_f1_15_while_cond      #  63:     goto   15_while_cond
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 4 of <array 10 of <array 6 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 2 of <array 10 of <array 7 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 5 of <array 2 of <array 7 of <array 7 of <char>>>>>>> %ebp+20 ]
    #    -36(%ebp)   4  [ $v4       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
l_f2_2_while_body:
l_f2_7_while_cond:
    movl    $58264, %eax            #   5:     if     58264 # 34766 goto 8_while_body
    movl    $34766, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #   6:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   8:     goto   7_while_cond
l_f2_6:
l_f2_11_while_cond:
    jmp     l_f2_10                 #  11:     goto   10
    jmp     l_f2_11_while_cond      #  12:     goto   11_while_cond
l_f2_10:
    call    ReadInt                 #  14:     call   t7 <- ReadInt
    movl    %eax, -24(%ebp)        
l_f2_15_while_cond:
    movl    $47902, %eax            #  16:     if     47902 # 66973 goto 16_while_body
    movl    $66973, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_16_while_body     
    jmp     l_f2_14                 #  17:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  19:     goto   15_while_cond
l_f2_14:
l_f2_19_while_cond:
    movl    $1, %eax                #  22:     if     1 = 1 goto 20_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_20_while_body     
    jmp     l_f2_18                 #  23:     goto   18
l_f2_20_while_body:
    jmp     l_f2_19_while_cond      #  25:     goto   19_while_cond
l_f2_18:
    jmp     l_f2_1_while_cond       #  27:     goto   1_while_cond
l_f2_23_while_cond:
    jmp     l_f2_26                 #  29:     goto   26
l_f2_26:
    movl    $1, %eax                #  31:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_28                 #  32:     goto   28
    movl    $0, %eax                #  33:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f2_28:
    movl    $1, %eax                #  35:     if     1 = t8 goto 24_while_body
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_24_while_body     
    jmp     l_f2_22                 #  36:     goto   22
l_f2_24_while_body:
l_f2_33_while_cond:
    movl    $61728, %eax            #  39:     if     61728 > 51223 goto 34_while_body
    movl    $51223, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_34_while_body     
    jmp     l_f2_32                 #  40:     goto   32
l_f2_34_while_body:
    jmp     l_f2_33_while_cond      #  42:     goto   33_while_cond
l_f2_32:
    movl    $39887, %eax            #  44:     return 39887
    jmp     l_f2_exit              
    movl    $93220, %eax            #  45:     assign v4 <- 93220
    movl    %eax, -36(%ebp)        
    movl    $21720, %eax            #  46:     return 21720
    jmp     l_f2_exit              
    jmp     l_f2_23_while_cond      #  47:     goto   23_while_cond
l_f2_22:
    movl    $69012, %eax            #  49:     add    t9 <- 69012, 25743
    movl    $25743, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $45840, %eax            #  50:     div    t10 <- 45840, 88228
    movl    $88228, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -32(%ebp), %eax         #  51:     sub    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  52:     return t11
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
l_test_4_while_cond:
    jmp     l_test_4_while_cond     #   6:     goto   4_while_cond
    movl    $97, %eax               #   7:     if     97 = 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_7_if_true       
    jmp     l_test_8_if_false       #   8:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #  10:     goto   6
l_test_8_if_false:
l_test_6:
    call    ReadInt                 #  13:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_1_while_cond     #  14:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_13_while_cond:
    movl    $88311, %eax            #  18:     add    t2 <- 88311, 56653
    movl    $56653, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    call    ReadInt                 #  19:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  20:     if     t2 # t3 goto 14_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_14_while_body   
    jmp     l_test_12               #  21:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  23:     goto   13_while_cond
l_test_12:
    jmp     l_test_exit            
    movl    $99, %eax               #  26:     if     99 # 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_18_if_true      
    jmp     l_test_19_if_false      #  27:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_exit            
    movl    $97, %eax               #  30:     assign v0 <- 97
    movb    %al, v0                
l_test_24_while_cond:
    movl    $98, %eax               #  32:     if     98 <= 97 goto 25_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_25_while_body   
    jmp     l_test_23               #  33:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  35:     goto   24_while_cond
l_test_23:
l_test_28_while_cond:
    jmp     l_test_27               #  38:     goto   27
    jmp     l_test_28_while_cond    #  39:     goto   28_while_cond
l_test_27:
    jmp     l_test_32_if_false      #  41:     goto   32_if_false
    jmp     l_test_30               #  42:     goto   30
l_test_32_if_false:
l_test_30:
    jmp     l_test_17               #  45:     goto   17
l_test_19_if_false:
l_test_17:
l_test_34_while_cond:
    movl    $37121, %eax            #  49:     sub    t4 <- 37121, 75259
    movl    $75259, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  50:     sub    t5 <- t4, 5012
    movl    $5012, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $6993, %eax             #  51:     sub    t6 <- 6993, 3066
    movl    $3066, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  52:     if     t5 >= t6 goto 35_while_body
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_35_while_body   
    jmp     l_test_33               #  53:     goto   33
l_test_35_while_body:
    jmp     l_test_34_while_cond    #  55:     goto   34_while_cond
l_test_33:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
