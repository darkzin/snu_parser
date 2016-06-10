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
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 5 of <array 2 of <array 1 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 5 of <array 7 of <array 2 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 2 of <array 10 of <array 4 of <array 4 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -92(%ebp)   4  [ $v4       <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $v5       <char> %ebp-93 ]

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
l_f0_1_while_cond:
    movl    $100, %eax              #   1:     if     100 > 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $13748, %eax            #   4:     if     13748 >= 93808 goto 5_if_true
    movl    $93808, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $1336, %eax             #  10:     assign v4 <- 1336
    movl    %eax, -92(%ebp)        
    movl    $98, %eax               #  11:     assign v5 <- 98
    movb    %al, -93(%ebp)         
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
l_f0_0:
    call    dummyINTfunc            #  14:     call   t3 <- dummyINTfunc
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  15:     assign v4 <- t3
    movl    %eax, -92(%ebp)        
    call    dummyINTfunc            #  16:     call   t4 <- dummyINTfunc
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  17:     add    t5 <- t4, 28279
    movl    $28279, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  21:     mul    t7 <- t5, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  22:     add    t8 <- t7, 59873
    movl    $59873, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  26:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  27:     add    t11 <- t10, 15207
    movl    $15207, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  31:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     add    t14 <- t13, 3822
    movl    $3822, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  35:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  36:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  37:     add    t17 <- t16, 30366
    movl    $30366, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  38:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  39:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  40:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  41:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  42:     add    t21 <- v2, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $97, %eax               #  43:     assign @t21 <- 97
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t7       <char> %ebp-45 ]
    #    -46(%ebp)   1  [ $t8       <bool> %ebp-46 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 6 of <array 5 of <array 6 of <array 10 of <char>>>>>>> %ebp+16 ]
    #    -53(%ebp)   1  [ $v3       <bool> %ebp-53 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $34850, %eax            #   0:     add    t3 <- 34850, 34161
    movl    $34161, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     add    t4 <- t3, 13102
    movl    $13102, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     add    t5 <- t4, 33804
    movl    $33804, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     sub    t6 <- t5, 94978
    movl    $94978, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     return t6
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   5:     call   t7 <- dummyCHARfunc
    movb    %al, -45(%ebp)         
    movl    $100, %eax              #   6:     if     100 >= t7 goto 2
    movzbl  -45(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2                 
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $1, %eax                #   9:     assign t8 <- 1
    movb    %al, -46(%ebp)         
    jmp     l_f1_4                  #  10:     goto   4
l_f1_3:
    movl    $0, %eax                #  12:     assign t8 <- 0
    movb    %al, -46(%ebp)         
l_f1_4:
    movzbl  -46(%ebp), %eax         #  14:     assign v3 <- t8
    movb    %al, -53(%ebp)         
    movl    $25524, %eax            #  15:     mul    t9 <- 25524, 48999
    movl    $48999, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  16:     div    t10 <- t9, 66666
    movl    $66666, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     add    t11 <- t10, 26711
    movl    $26711, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     sub    t12 <- t11, 31945
    movl    $31945, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t13 <- t12, 89934
    movl    $89934, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     return t13
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $44, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <char> %ebp-16 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $0, %eax                #   4:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v0 <- t3
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   7:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     assign v1 <- t4
    movb    %al, -16(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    movl    $98, %eax               #   1:     if     98 # t0 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
    movl    $98965, %eax            #  11:     if     98965 = 56478 goto 9
    movl    $56478, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_9               
    jmp     l_test_10               #  12:     goto   10
l_test_9:
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_11               #  15:     goto   11
l_test_10:
    movl    $0, %eax                #  17:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_11:
    movzbl  -15(%ebp), %eax         #  19:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $97, %eax               #  21:     assign v1 <- 97
    movb    %al, v1                
l_test_16_while_cond:
    jmp     l_test_15               #  23:     goto   15
    jmp     l_test_16_while_cond    #  24:     goto   16_while_cond
l_test_15:
    movl    $99, %eax               #  26:     if     99 < 99 goto 19_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_19_if_true      
    jmp     l_test_20_if_false      #  27:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  29:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_5                #  32:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
