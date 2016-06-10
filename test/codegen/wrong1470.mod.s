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
    #    -16(%ebp)   4  [ $t17      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t18      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t19      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t20      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t21      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t22      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t23      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t24      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t25      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t26      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t27      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t28      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t29      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t30      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t31      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t32      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t33      <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 65 of <array 75 of <array 74 of <array 45 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 15 of <array 26 of <array 11 of <array 3 of <array 69 of <char>>>>>>> %ebp+12 ]
    #    -84(%ebp)   4  [ $v3       <int> %ebp-84 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
l_f0_4_while_cond:
    jmp     l_f0_3                  #   2:     goto   3
    jmp     l_f0_4_while_cond       #   3:     goto   4_while_cond
l_f0_3:
    movl    $4410, %eax             #   5:     assign v3 <- 4410
    movl    %eax, -84(%ebp)        
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $25848, %eax            #   9:     if     25848 >= 50495 goto 12
    movl    $50495, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_12                
    jmp     l_f0_9_if_false         #  10:     goto   9_if_false
l_f0_12:
    jmp     l_f0_9_if_false         #  12:     goto   9_if_false
    jmp     l_f0_9_if_false         #  13:     goto   9_if_false
    jmp     l_f0_7                  #  14:     goto   7
l_f0_9_if_false:
l_f0_7:
    movl    $41592, %eax            #  17:     div    t17 <- 41592, 3165
    movl    $3165, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $5947, %eax             #  21:     mul    t19 <- 5947, t18
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t20 <- t19, 77024
    movl    $77024, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  26:     mul    t22 <- t20, t21
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t23 <- t22, 65889
    movl    $65889, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  31:     mul    t25 <- t23, t24
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t26 <- t25, 22164
    movl    $22164, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  36:     mul    t28 <- t26, t27
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  37:     add    t29 <- t28, 1977
    movl    $1977, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  38:     mul    t30 <- t29, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  39:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  40:     call   t31 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  41:     add    t32 <- t30, t31
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  42:     add    t33 <- v1, t32
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -16(%ebp), %eax         #  43:     assign @t33 <- t17
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           

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
    #    -13(%ebp)   1  [ $t17      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t18      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
l_f1_1_while_cond:
    movl    $97, %eax               #   1:     if     97 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $28590, %eax            #   4:     if     28590 > 34520 goto 5_if_true
    movl    $34520, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   5:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_9_while_cond:
    jmp     l_f1_8                  #  11:     goto   8
    jmp     l_f1_9_while_cond       #  12:     goto   9_while_cond
l_f1_8:
    call    dummyBOOLfunc           #  14:     call   t17 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_1_while_cond       #  15:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_13                 #  17:     goto   13
    jmp     l_f1_14                 #  18:     goto   14
l_f1_13:
    movl    $1, %eax                #  20:     assign t18 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_15                 #  21:     goto   15
l_f1_14:
    movl    $0, %eax                #  23:     assign t18 <- 0
    movb    %al, -14(%ebp)         
l_f1_15:
    movzbl  -14(%ebp), %eax         #  25:     return t18
    jmp     l_f1_exit              
    movl    $85955, %eax            #  26:     if     85955 # 62852 goto 20_if_true
    movl    $62852, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  27:     goto   21_if_false
l_f1_20_if_true:
    movl    $99, %eax               #  29:     assign v2 <- 99
    movb    %al, -15(%ebp)         
l_f1_25_while_cond:
    jmp     l_f1_25_while_cond      #  31:     goto   25_while_cond
    movl    $86616, %eax            #  32:     if     86616 # 82684 goto 28_if_true
    movl    $82684, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_28_if_true        
    jmp     l_f1_29_if_false        #  33:     goto   29_if_false
l_f1_28_if_true:
    jmp     l_f1_27                 #  35:     goto   27
l_f1_29_if_false:
l_f1_27:
    movl    $99, %eax               #  38:     if     99 > 97 goto 32_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_32_if_true        
    jmp     l_f1_33_if_false        #  39:     goto   33_if_false
l_f1_32_if_true:
    jmp     l_f1_31                 #  41:     goto   31
l_f1_33_if_false:
l_f1_31:
    jmp     l_f1_19                 #  44:     goto   19
l_f1_21_if_false:
l_f1_19:

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
    #    -16(%ebp)   4  [ $t17      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t18      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t19      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t20      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t21      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t22      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t23      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t24      <int> %ebp-44 ]

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
    movl    $75130, %eax            #   0:     mul    t17 <- 75130, 38821
    movl    $38821, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t18 <- t17, 37321
    movl    $37321, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t19 <- t18, 32100
    movl    $32100, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t19
    jmp     l_f2_exit              
    movl    $16151, %eax            #   4:     mul    t20 <- 16151, 75234
    movl    $75234, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     mul    t21 <- t20, 55663
    movl    $55663, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     div    t22 <- t21, 82577
    movl    $82577, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     return t22
    jmp     l_f2_exit              
    movl    $44773, %eax            #   8:     mul    t23 <- 44773, 51848
    movl    $51848, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     div    t24 <- t23, 47518
    movl    $47518, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    $93526, %eax            #  10:     if     93526 <= t24 goto 3_if_true
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #  11:     goto   4_if_false
l_f2_3_if_true:
    call    dummyProcedure          #  13:     call   dummyProcedure
    movl    $98, %eax               #  14:     if     98 <= 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #  15:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #  17:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_2                  #  20:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t2       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    movl    $64964, %eax            #   4:     if     64964 >= 89226 goto 4_if_true
    movl    $89226, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_4_if_true       
    jmp     l_test_5_if_false       #   5:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   7:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_0                #  10:     goto   0
l_test_2_if_false:
l_test_0:
l_test_8_while_cond:
    movl    $99, %eax               #  14:     if     99 # 99 goto 9_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_9_while_body    
    jmp     l_test_7                #  15:     goto   7
l_test_9_while_body:
l_test_12_while_cond:
    movl    $98, %eax               #  18:     if     98 = 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  19:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  21:     goto   12_while_cond
l_test_11:
    jmp     l_test_8_while_cond     #  23:     goto   8_while_cond
l_test_7:
    movl    $51863, %eax            #  25:     mul    t1 <- 51863, 39061
    movl    $39061, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     div    t2 <- t1, 62083
    movl    $62083, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  27:     mul    t3 <- t2, 42517
    movl    $42517, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  28:     div    t4 <- t3, 84822
    movl    $84822, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  29:     div    t5 <- t4, 42160
    movl    $42160, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  30:     assign v0 <- t5
    movl    %eax, v0               
l_test_17_while_cond:
    movl    $89090, %eax            #  32:     sub    t6 <- 89090, 55711
    movl    $55711, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  33:     sub    t7 <- t6, 62617
    movl    $62617, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  34:     add    t8 <- t7, 52118
    movl    $52118, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  35:     sub    t9 <- t8, 67338
    movl    $67338, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  36:     if     t9 > 59835 goto 18_while_body
    movl    $59835, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_18_while_body   
    jmp     l_test_16               #  37:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  39:     goto   17_while_cond
l_test_16:
    movl    $15286, %eax            #  41:     sub    t10 <- 15286, 51510
    movl    $51510, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  42:     add    t11 <- t10, 99271
    movl    $99271, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  43:     sub    t12 <- t11, 62244
    movl    $62244, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  44:     add    t13 <- t12, 89530
    movl    $89530, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  45:     sub    t14 <- t13, 78607
    movl    $78607, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  46:     sub    t15 <- t14, 23914
    movl    $23914, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  47:     add    t16 <- t15, 95907
    movl    $95907, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  48:     assign v0 <- t16
    movl    %eax, v0               
    movl    $100, %eax              #  49:     assign v1 <- 100
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $68, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
