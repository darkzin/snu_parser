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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 11 of <array 89 of <array 14 of <array 13 of <array 48 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -21(%ebp)   1  [ $v4       <char> %ebp-21 ]

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
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v4 <- t3
    movb    %al, -21(%ebp)         
    call    dummyINTfunc            #   3:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 74 of <array 61 of <array 35 of <array 65 of <array 69 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 65 of <array 71 of <array 10 of <array 37 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 65 of <array 57 of <array 5 of <array 97 of <array 37 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #    -23(%ebp)   1  [ $v5       <bool> %ebp-23 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   1:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #   2:     if     97 >= 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   3:     goto   4_if_false
l_f1_3_if_true:
    movl    $41359, %eax            #   5:     if     41359 = 69541 goto 7
    movl    $69541, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_7                 
    jmp     l_f1_8                  #   6:     goto   8
l_f1_7:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_9                  #   9:     goto   9
l_f1_8:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f1_9:
    movzbl  -21(%ebp), %eax         #  13:     assign v5 <- t5
    movb    %al, -23(%ebp)         
    movl    $0, %eax                #  14:     if     0 # 0 goto 12
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_12                
    jmp     l_f1_13                 #  15:     goto   13
l_f1_12:
    movl    $1, %eax                #  17:     assign t6 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_14                 #  18:     goto   14
l_f1_13:
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -22(%ebp)         
l_f1_14:
    movzbl  -22(%ebp), %eax         #  22:     assign v5 <- t6
    movb    %al, -23(%ebp)         
    jmp     l_f1_2                  #  23:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -53(%ebp)   1  [ $t20      <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t21      <ptr(4) to <array 11 of <array 89 of <array 14 of <array 13 of <array 48 of <bool>>>>>>> %ebp-60 ]
    #    -61(%ebp)   1  [ $t22      <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t3       <bool> %ebp-62 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 38 of <array 68 of <array 87 of <array 1 of <array 14 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 49 of <array 48 of <array 9 of <array 9 of <array 41 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 61 of <array 20 of <array 53 of <array 16 of <array 72 of <bool>>>>>>> %ebp+20 ]
    #    -89(%ebp)   1  [ $v5       <bool> %ebp-89 ]
    #   -8552660(%ebp)  8552568  [ $v6       <array 11 of <array 89 of <array 14 of <array 13 of <array 48 of <bool>>>>>> %ebp-8552660 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8552648, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2138162, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-8552660(%ebp)       # local array 'v6': 5 dimensions
    movl    $11,-8552656(%ebp)      #   dimension 1: 11 elements
    movl    $89,-8552652(%ebp)      #   dimension 2: 89 elements
    movl    $14,-8552648(%ebp)      #   dimension 3: 14 elements
    movl    $13,-8552644(%ebp)      #   dimension 4: 13 elements
    movl    $48,-8552640(%ebp)      #   dimension 5: 48 elements

    # function body
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $98, %eax               #   4:     if     98 <= 99 goto 5
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_5                 
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $1, %eax                #   7:     assign t3 <- 1
    movb    %al, -62(%ebp)         
    jmp     l_f2_7                  #   8:     goto   7
l_f2_6:
    movl    $0, %eax                #  10:     assign t3 <- 0
    movb    %al, -62(%ebp)         
l_f2_7:
    movzbl  -62(%ebp), %eax         #  12:     return t3
    jmp     l_f2_exit              
    movl    $0, %eax                #  13:     return 0
    jmp     l_f2_exit              
    movl    $97, %eax               #  14:     if     97 # 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  15:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  17:     goto   10
l_f2_12_if_false:
l_f2_10:
    movl    $99, %eax               #  20:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  21:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_1_while_cond       #  22:     goto   1_while_cond
l_f2_0:
    movl    $100, %eax              #  24:     if     100 < 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  25:     goto   17_if_false
l_f2_16_if_true:
    movl    $80855, %eax            #  27:     if     80855 < 85202 goto 20_if_true
    movl    $85202, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  28:     goto   21_if_false
l_f2_20_if_true:
    movl    $100, %eax              #  30:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  31:     call   WriteChar
    addl    $4, %esp               
    movl    $2, %eax                #  32:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  33:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  34:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $79107, %eax            #  35:     mul    t5 <- 79107, t4
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  36:     add    t6 <- t5, 57590
    movl    $57590, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  37:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  38:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  39:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  40:     mul    t8 <- t6, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  41:     add    t9 <- t8, 40356
    movl    $40356, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  42:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  43:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  44:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  45:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  46:     add    t12 <- t11, 70276
    movl    $70276, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  47:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  48:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  49:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  50:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  51:     add    t15 <- t14, 84132
    movl    $84132, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  52:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  53:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  54:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  55:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  56:     add    t19 <- v4, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $0, %eax                #  57:     assign @t19 <- 0
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $59757, %eax            #  58:     if     59757 <= 15559 goto 26
    movl    $15559, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_26                
    jmp     l_f2_27                 #  59:     goto   27
l_f2_26:
    movl    $1, %eax                #  61:     assign t20 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f2_28                 #  62:     goto   28
l_f2_27:
    movl    $0, %eax                #  64:     assign t20 <- 0
    movb    %al, -53(%ebp)         
l_f2_28:
    movzbl  -53(%ebp), %eax         #  66:     param  2 <- t20
    pushl   %eax                   
    movl    $1, %eax                #  67:     param  1 <- 1
    pushl   %eax                   
    leal    -8552660(%ebp), %eax    #  68:     &()    t21 <- v6
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  69:     param  0 <- t21
    pushl   %eax                   
    call    f0                      #  70:     call   f0
    addl    $12, %esp              
    jmp     l_f2_19                 #  71:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_15                 #  74:     goto   15
l_f2_17_if_false:
l_f2_15:
    call    dummyCHARfunc           #  77:     call   t22 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movl    $97, %eax               #  78:     if     97 # t22 goto 31_if_true
    movzbl  -61(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_31_if_true        
    jmp     l_f2_32_if_false        #  79:     goto   32_if_false
l_f2_31_if_true:
    jmp     l_f2_36_if_false        #  81:     goto   36_if_false
    jmp     l_f2_34                 #  82:     goto   34
l_f2_36_if_false:
l_f2_34:
    movl    $25294, %eax            #  85:     if     25294 >= 55365 goto 38_if_true
    movl    $55365, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_38_if_true        
    jmp     l_f2_39_if_false        #  86:     goto   39_if_false
l_f2_38_if_true:
    jmp     l_f2_37                 #  88:     goto   37
l_f2_39_if_false:
l_f2_37:
    jmp     l_f2_30                 #  91:     goto   30
l_f2_32_if_false:
l_f2_30:

l_f2_exit:
    # epilogue
    addl    $8552648, %esp          # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    movl    $98, %eax               #   2:     assign v0 <- 98
    movb    %al, v0                
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   4:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     if     t1 < t2 goto 3_if_true
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_3_if_true       
    jmp     l_test_4_if_false       #   6:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_2                #   8:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $93894, %eax            #  11:     if     93894 > 36650 goto 7_if_true
    movl    $36650, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_7_if_true       
    jmp     l_test_8_if_false       #  12:     goto   8_if_false
l_test_7_if_true:
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  15:     goto   11_while_cond
    movl    $99, %eax               #  16:     if     99 = 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_14_if_true      
    jmp     l_test_15_if_false      #  17:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  19:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_exit            
    movl    $0, %eax                #  23:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_6                #  24:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $98558, %eax            #  27:     assign v2 <- 98558
    movl    %eax, v2               

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
