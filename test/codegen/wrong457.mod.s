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
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t23      <bool> %ebp-62 ]
    #    -63(%ebp)   1  [ $t5       <bool> %ebp-63 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 9 of <array 3 of <array 2 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 8 of <array 3 of <array 4 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 2 of <array 4 of <array 7 of <array 5 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -81(%ebp)   1  [ $v4       <char> %ebp-81 ]

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
l_f0_1_while_cond:
    jmp     l_f0_exit              
l_f0_5_while_cond:
    movl    $97, %eax               #   3:     if     97 >= 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_6_while_body      
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
l_f0_4:
    call    dummyBOOLfunc           #   8:     call   t5 <- dummyBOOLfunc
    movb    %al, -63(%ebp)         
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
    movl    $47991, %eax            #  10:     if     47991 = 95438 goto 10_if_true
    movl    $95438, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  11:     goto   11_if_false
l_f0_10_if_true:
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $72863, %eax            #  16:     mul    t7 <- 72863, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  17:     add    t8 <- t7, 30593
    movl    $30593, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  21:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     add    t11 <- t10, 68811
    movl    $68811, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  26:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t14 <- t13, 89096
    movl    $89096, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  31:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     add    t17 <- t16, 58390
    movl    $58390, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  33:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  35:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  36:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  37:     add    t21 <- v2, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $97, %eax               #  38:     assign @t21 <- 97
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $22264, %eax            #  39:     if     22264 # 59526 goto 15_if_true
    movl    $59526, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  40:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  42:     goto   14
l_f0_16_if_false:
l_f0_14:
    movl    $16767, %eax            #  45:     if     16767 >= 51965 goto 19
    movl    $51965, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_19                
    jmp     l_f0_20                 #  46:     goto   20
l_f0_19:
    movl    $1, %eax                #  48:     assign t22 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_f0_21                 #  49:     goto   21
l_f0_20:
    movl    $0, %eax                #  51:     assign t22 <- 0
    movb    %al, -61(%ebp)         
l_f0_21:
    movzbl  -61(%ebp), %eax         #  53:     assign v3 <- t22
    movb    %al, 20(%ebp)          
    movl    $97, %eax               #  54:     if     97 >= 99 goto 24
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_24                
    jmp     l_f0_25                 #  55:     goto   25
l_f0_24:
    movl    $1, %eax                #  57:     assign t23 <- 1
    movb    %al, -62(%ebp)         
    jmp     l_f0_26                 #  58:     goto   26
l_f0_25:
    movl    $0, %eax                #  60:     assign t23 <- 0
    movb    %al, -62(%ebp)         
l_f0_26:
    movzbl  -62(%ebp), %eax         #  62:     assign v3 <- t23
    movb    %al, 20(%ebp)          
    jmp     l_f0_9                  #  63:     goto   9
l_f0_11_if_false:
l_f0_9:
l_f0_29_while_cond:
    jmp     l_f0_30_while_body      #  67:     goto   30_while_body
    jmp     l_f0_28                 #  68:     goto   28
l_f0_30_while_body:
    jmp     l_f0_29_while_cond      #  70:     goto   29_while_cond
l_f0_28:

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 4 of <array 10 of <array 1 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 8 of <array 9 of <array 3 of <array 7 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -33(%ebp)   1  [ $v4       <bool> %ebp-33 ]

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
    movl    $99, %eax               #   0:     assign v3 <- 99
    movb    %al, 20(%ebp)          
    movl    $1, %eax                #   1:     assign v4 <- 1
    movb    %al, -33(%ebp)         
    movl    $29646, %eax            #   2:     mul    t5 <- 29646, 58962
    movl    $58962, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     div    t6 <- t5, 10156
    movl    $10156, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     mul    t7 <- t6, 83542
    movl    $83542, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     div    t8 <- t7, 1116
    movl    $1116, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t9 <- t8, 72618
    movl    $72618, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     if     t9 >= 76896 goto 3_if_true
    movl    $76896, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   8:     goto   4_if_false
l_f1_3_if_true:
    jmp     l_f1_2                  #  10:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 7 of <array 1 of <array 7 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    jmp     l_f2_5_if_false         #   0:     goto   5_if_false
    call    dummyINTfunc            #   1:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_8_while_cond:
    jmp     l_f2_7                  #   3:     goto   7
    jmp     l_f2_8_while_cond       #   4:     goto   8_while_cond
l_f2_7:
    movl    $1, %eax                #   6:     assign v2 <- 1
    movb    %al, 16(%ebp)          
    jmp     l_f2_13_if_false        #   7:     goto   13_if_false
    jmp     l_f2_11                 #   8:     goto   11
l_f2_13_if_false:
l_f2_11:
    jmp     l_f2_3                  #  11:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_0                  #  14:     goto   0
l_f2_0:
l_f2_15_while_cond:
    jmp     l_f2_18                 #  17:     goto   18
l_f2_18:
    movl    $1, %eax                #  19:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_20                 #  20:     goto   20
    movl    $0, %eax                #  21:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f2_20:
    movzbl  -17(%ebp), %eax         #  23:     if     t6 # 1 goto 16_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_16_while_body     
    jmp     l_f2_14                 #  24:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  26:     goto   15_while_cond
l_f2_14:
    movl    $100, %eax              #  28:     if     100 <= 97 goto 25_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_25_if_true        
    jmp     l_f2_26_if_false        #  29:     goto   26_if_false
l_f2_25_if_true:
l_f2_29_while_cond:
    jmp     l_f2_33_if_false        #  32:     goto   33_if_false
    jmp     l_f2_31                 #  33:     goto   31
l_f2_33_if_false:
l_f2_31:
    call    dummyINTfunc            #  36:     call   t7 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f2_29_while_cond      #  37:     goto   29_while_cond
    jmp     l_f2_24                 #  38:     goto   24
l_f2_26_if_false:
l_f2_24:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 # t0 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $0, %eax                #   7:     if     0 = 0 goto 5_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #   8:     goto   6_if_false
l_test_5_if_true:
    movl    $47931, %eax            #  10:     if     47931 >= 64702 goto 9
    movl    $64702, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_9               
    jmp     l_test_10               #  11:     goto   10
l_test_9:
    movl    $1, %eax                #  13:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_11               #  14:     goto   11
l_test_10:
    movl    $0, %eax                #  16:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_11:
    movzbl  -14(%ebp), %eax         #  18:     assign v0 <- t1
    movb    %al, v0                
    call    dummyCHARfunc           #  19:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_4                #  20:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $99, %eax               #  23:     if     99 < 100 goto 15_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_15_if_true      
    jmp     l_test_16_if_false      #  24:     goto   16_if_false
l_test_15_if_true:
l_test_19_while_cond:
    movl    $97, %eax               #  27:     if     97 > 100 goto 20_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_20_while_body   
    jmp     l_test_18               #  28:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  30:     goto   19_while_cond
l_test_18:
    leal    _str_1, %eax            #  32:     &()    t3 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  34:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_14               #  35:     goto   14
l_test_16_if_false:
l_test_14:
    movl    $100, %eax              #  38:     if     100 = 99 goto 24_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_24_if_true      
    jmp     l_test_25_if_false      #  39:     goto   25_if_false
l_test_24_if_true:
    call    dummyINTfunc            #  41:     call   t4 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  42:     if     t4 # 14127 goto 28_if_true
    movl    $14127, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_28_if_true      
    jmp     l_test_29_if_false      #  43:     goto   29_if_false
l_test_28_if_true:
    jmp     l_test_27               #  45:     goto   27
l_test_29_if_false:
l_test_27:
    jmp     l_test_23               #  48:     goto   23
l_test_25_if_false:
l_test_23:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
