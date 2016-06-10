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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 73 of <array 40 of <array 97 of <array 89 of <array 53 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    movl    $97, %eax               #   0:     if     97 >= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    ReadInt                 #   3:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyBOOLfunc           #   7:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_f0_7_while_cond:
    movl    $75558, %eax            #   9:     if     75558 > 2096 goto 8_while_body
    movl    $2096, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f0_8_while_body      
    jmp     l_f0_6                  #  10:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  12:     goto   7_while_cond
l_f0_6:

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
    #   -100(%ebp)   4  [ $t4       <ptr(4) to <array 73 of <array 40 of <array 97 of <array 89 of <array 53 of <bool>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t5       <ptr(4) to <array 73 of <array 40 of <array 97 of <array 89 of <array 53 of <bool>>>>>>> %ebp-104 ]
    #   -105(%ebp)   1  [ $t6       <char> %ebp-105 ]
    #   -106(%ebp)   1  [ $t7       <char> %ebp-106 ]
    #   -107(%ebp)   1  [ $t8       <char> %ebp-107 ]
    #   -112(%ebp)   4  [ $t9       <int> %ebp-112 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 91 of <array 32 of <array 34 of <array 53 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 61 of <array 47 of <array 26 of <array 88 of <array 81 of <int>>>>>>> %ebp+12 ]
    #   -113(%ebp)   1  [ $v3       <char> %ebp-113 ]
    #   -1336043220(%ebp)  1336043104  [ $v4       <array 73 of <array 40 of <array 97 of <array 89 of <array 53 of <bool>>>>>> %ebp-1336043220 ]
    #   -1336043224(%ebp)   4  [ $v5       <int> %ebp-1336043224 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1336043212, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $334010803, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1336043220(%ebp)    # local array 'v4': 5 dimensions
    movl    $73,-1336043216(%ebp)   #   dimension 1: 73 elements
    movl    $40,-1336043212(%ebp)   #   dimension 2: 40 elements
    movl    $97,-1336043208(%ebp)   #   dimension 3: 97 elements
    movl    $89,-1336043204(%ebp)   #   dimension 4: 89 elements
    movl    $53,-1336043200(%ebp)   #   dimension 5: 53 elements

    # function body
    movl    $98, %eax               #   0:     param  3 <- 98
    pushl   %eax                   
    leal    -1336043220(%ebp), %eax #   1:     &()    t4 <- v4
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   2:     param  2 <- t4
    pushl   %eax                   
    movl    $97, %eax               #   3:     param  1 <- 97
    pushl   %eax                   
    movl    $98, %eax               #   4:     param  3 <- 98
    pushl   %eax                   
    leal    -1336043220(%ebp), %eax #   5:     &()    t5 <- v4
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   6:     param  2 <- t5
    pushl   %eax                   
    movl    $99, %eax               #   7:     param  1 <- 99
    pushl   %eax                   
    call    dummyCHARfunc           #   8:     call   t6 <- dummyCHARfunc
    movb    %al, -105(%ebp)        
    movzbl  -105(%ebp), %eax        #   9:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  10:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -106(%ebp)        
    movzbl  -106(%ebp), %eax        #  11:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  12:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -107(%ebp)        
    movzbl  -107(%ebp), %eax        #  13:     assign v3 <- t8
    movb    %al, -113(%ebp)        
    movl    $2734, %eax             #  14:     mul    t9 <- 2734, 49842
    movl    $49842, %ebx           
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  15:     div    t10 <- t9, 8680
    movl    $8680, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     div    t11 <- t10, 4529
    movl    $4529, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     div    t12 <- t11, 6979
    movl    $6979, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     mul    t13 <- t12, 76884
    movl    $76884, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $2, %eax                #  19:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $53378, %eax            #  22:     mul    t15 <- 53378, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     add    t16 <- t15, 14961
    movl    $14961, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  26:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  27:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  28:     add    t19 <- t18, 6236
    movl    $6236, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  30:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  31:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  32:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  33:     add    t22 <- t21, 43689
    movl    $43689, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  35:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  36:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  37:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  38:     add    t25 <- t24, 6455
    movl    $6455, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  39:     mul    t26 <- t25, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  40:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  41:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  42:     add    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    12(%ebp), %eax          #  43:     add    t29 <- v2, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -28(%ebp), %eax         #  44:     assign @t29 <- t13
    movl    -92(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyINTfunc            #  45:     call   t30 <- dummyINTfunc
    movl    %eax, -96(%ebp)        

l_f1_exit:
    # epilogue
    addl    $1336043212, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <ptr(4) to <array 73 of <array 40 of <array 97 of <array 89 of <array 53 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $v1       <int> %ebp-40 ]
    #   -1336043144(%ebp)  1336043104  [ $v2       <array 73 of <array 40 of <array 97 of <array 89 of <array 53 of <bool>>>>>> %ebp-1336043144 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1336043132, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $334010783, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1336043144(%ebp)    # local array 'v2': 5 dimensions
    movl    $73,-1336043140(%ebp)   #   dimension 1: 73 elements
    movl    $40,-1336043136(%ebp)   #   dimension 2: 40 elements
    movl    $97,-1336043132(%ebp)   #   dimension 3: 97 elements
    movl    $89,-1336043128(%ebp)   #   dimension 4: 89 elements
    movl    $53,-1336043124(%ebp)   #   dimension 5: 53 elements

    # function body
    movl    $36697, %eax            #   0:     sub    t4 <- 36697, 83276
    movl    $83276, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 27343
    movl    $27343, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 43499
    movl    $43499, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v1 <- t6
    movl    %eax, -40(%ebp)        
    call    WriteLn                 #   4:     call   WriteLn
l_f2_3_while_cond:
    jmp     l_f2_2                  #   6:     goto   2
    movl    $0, %eax                #   7:     return 0
    jmp     l_f2_exit              
    movl    $1, %eax                #   8:     return 1
    jmp     l_f2_exit              
l_f2_8_while_cond:
    movl    $80797, %eax            #  10:     if     80797 <= 34156 goto 9_while_body
    movl    $34156, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_9_while_body      
    jmp     l_f2_7                  #  11:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  13:     goto   8_while_cond
l_f2_7:
    call    dummyCHARfunc           #  15:     call   t7 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $97, %eax               #  16:     param  3 <- 97
    pushl   %eax                   
    leal    -1336043144(%ebp), %eax #  17:     &()    t8 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     param  2 <- t8
    pushl   %eax                   
    movl    $97, %eax               #  19:     param  1 <- 97
    pushl   %eax                   
    movl    $99, %eax               #  20:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  21:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    jmp     l_f2_3_while_cond       #  22:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $1336043132, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 73 of <array 40 of <array 97 of <array 89 of <array 53 of <bool>>>>>>> %ebp-24 ]
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
    jmp     l_test_exit            
    movl    $38062, %eax            #   1:     if     38062 > 37797 goto 2_if_true
    movl    $37797, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
    movl    $99, %eax               #   6:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   7:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_1                #   8:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $98, %eax               #  11:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyINTfunc            #  13:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_15               #  14:     goto   15
l_test_15:
    call    dummyProcedure          #  16:     call   dummyProcedure
l_test_20_while_cond:
    jmp     l_test_20_while_cond    #  18:     goto   20_while_cond
l_test_23_while_cond:
    jmp     l_test_22               #  20:     goto   22
    jmp     l_test_23_while_cond    #  21:     goto   23_while_cond
l_test_22:
    jmp     l_test_10               #  23:     goto   10
l_test_10:
    movl    $14151, %eax            #  25:     sub    t1 <- 14151, 95293
    movl    $95293, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     assign v1 <- t1
    movl    %eax, v1               
    movl    $98, %eax               #  27:     if     98 > 98 goto 27_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_27_if_true      
    jmp     l_test_28_if_false      #  28:     goto   28_if_false
l_test_27_if_true:
    movl    $100, %eax              #  30:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $97, %eax               #  32:     param  3 <- 97
    pushl   %eax                   
    leal    v2, %eax                #  33:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     param  2 <- t2
    pushl   %eax                   
    movl    $99, %eax               #  35:     param  1 <- 99
    pushl   %eax                   
    movl    $98, %eax               #  36:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #  37:     call   t3 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_test_26               #  38:     goto   26
l_test_28_if_false:
l_test_26:

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
v1:                                 # <int>
    .skip    4
v2:                                 # <array 73 of <array 40 of <array 97 of <array 89 of <array 53 of <bool>>>>>>
    .long    5
    .long   73
    .long   40
    .long   97
    .long   89
    .long   53
    .skip 1336043080








    # end of global data section
    #-----------------------------------------

    .end
##################################################
