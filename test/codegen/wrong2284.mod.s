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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 86 of <array 97 of <array 76 of <array 81 of <array 79 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 32 of <array 27 of <array 24 of <array 29 of <array 70 of <char>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <bool> %ebp-14 ]

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
l_f0_1_while_cond:
    movl    $100, %eax              #   1:     if     100 # 98 goto 4_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   2:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   4:     goto   3
l_f0_5_if_false:
l_f0_3:
    movl    $1, %eax                #   7:     if     1 # 0 goto 8
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_8                 
    jmp     l_f0_9                  #   8:     goto   9
l_f0_8:
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_10                 #  11:     goto   10
l_f0_9:
    movl    $0, %eax                #  13:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f0_10:
    movzbl  -13(%ebp), %eax         #  15:     assign v3 <- t6
    movb    %al, -14(%ebp)         
    movl    $64112, %eax            #  16:     if     64112 # 99927 goto 13_if_true
    movl    $99927, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  17:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  19:     goto   12
l_f0_14_if_false:
l_f0_12:
    movl    $12337, %eax            #  22:     if     12337 <= 37354 goto 17_if_true
    movl    $37354, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  23:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  25:     goto   16
l_f0_18_if_false:
l_f0_16:
    jmp     l_f0_1_while_cond       #  28:     goto   1_while_cond
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_21                 #  31:     goto   21
l_f0_21:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 35 of <array 40 of <array 49 of <array 24 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 52 of <array 35 of <array 82 of <array 28 of <array 55 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 47 of <array 30 of <array 16 of <array 66 of <array 25 of <char>>>>>>> %ebp+20 ]

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
    movl    $25228, %eax            #   1:     div    t6 <- 25228, 67056
    movl    $67056, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $32704, %eax            #   2:     if     32704 > t6 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $79348, %eax            #   5:     return 79348
    jmp     l_f1_exit              
    movl    $100, %eax              #   6:     assign v2 <- 100
    movb    %al, 16(%ebp)          
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
l_f1_7_while_cond:
    movl    $100, %eax              #  10:     if     100 >= 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #  11:     goto   6
l_f1_8_while_body:
    movl    $62459, %eax            #  13:     param  0 <- 62459
    pushl   %eax                   
    call    WriteInt                #  14:     call   WriteInt
    addl    $4, %esp               
    movl    $91304, %eax            #  15:     return 91304
    jmp     l_f1_exit              
l_f1_13_while_cond:
    movl    $52322, %eax            #  17:     if     52322 > 94771 goto 14_while_body
    movl    $94771, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_14_while_body     
    jmp     l_f1_12                 #  18:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  20:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_7_while_cond       #  22:     goto   7_while_cond
l_f1_6:
    movl    $99, %eax               #  24:     if     99 = 99 goto 17_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  25:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  27:     goto   16
l_f1_18_if_false:
l_f1_16:

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
    #    -65(%ebp)   1  [ $t23      <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t24      <char> %ebp-66 ]
    #    -67(%ebp)   1  [ $t6       <char> %ebp-67 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 100 of <array 50 of <array 83 of <array 78 of <array 59 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 66 of <array 63 of <array 64 of <array 11 of <array 96 of <bool>>>>>>> %ebp+20 ]
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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -67(%ebp)         
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   2:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   3:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $29267, %eax            #   4:     mul    t8 <- 29267, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   5:     add    t9 <- t8, 97273
    movl    $97273, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   7:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   8:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #   9:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t12 <- t11, 15944
    movl    $15944, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  14:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     add    t15 <- t14, 86894
    movl    $86894, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  19:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     add    t18 <- t17, 76050
    movl    $76050, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  23:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  24:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  25:     add    t22 <- v2, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -67(%ebp), %eax         #  26:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  27:     call   t23 <- dummyBOOLfunc
    movb    %al, -65(%ebp)         
    call    dummyCHARfunc           #  28:     call   t24 <- dummyCHARfunc
    movb    %al, -66(%ebp)         
    movzbl  -66(%ebp), %eax         #  29:     return t24
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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    movl    $68742, %eax            #   2:     if     68742 > 67016 goto 2_while_body
    movl    $67016, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_7_while_cond:
    movl    $97870, %eax            #   9:     mul    t0 <- 97870, 77926
    movl    $77926, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     div    t1 <- t0, 87083
    movl    $87083, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     div    t2 <- t1, 40957
    movl    $40957, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     div    t3 <- t2, 57030
    movl    $57030, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     div    t4 <- t3, 62053
    movl    $62053, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     mul    t5 <- t4, 2593
    movl    $2593, %ebx            
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $8657, %eax             #  15:     if     8657 < t5 goto 8_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_8_while_body    
    jmp     l_test_6                #  16:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  18:     goto   7_while_cond
l_test_6:
l_test_11_while_cond:
l_test_15_while_cond:
    movl    $100, %eax              #  22:     if     100 < 97 goto 16_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_16_while_body   
    jmp     l_test_14               #  23:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  25:     goto   15_while_cond
l_test_14:
    jmp     l_test_11_while_cond    #  27:     goto   11_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
