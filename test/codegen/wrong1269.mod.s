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
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 73 of <array 70 of <array 47 of <array 74 of <array 54 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #    -14(%ebp)   1  [ $v5       <bool> %ebp-14 ]

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
    jmp     l_f0_exit              
    movl    $97, %eax               #   1:     if     97 < 100 goto 2
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_2                 
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -13(%ebp)         
l_f0_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v5 <- t8
    movb    %al, -14(%ebp)         
    jmp     l_f0_8_if_false         #  10:     goto   8_if_false
    jmp     l_f0_8_if_false         #  11:     goto   8_if_false
    jmp     l_f0_6                  #  12:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -69(%ebp)   1  [ $t24      <bool> %ebp-69 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 84 of <array 44 of <array 60 of <array 90 of <array 11 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 43 of <array 50 of <array 48 of <array 74 of <array 25 of <bool>>>>>>> %ebp+16 ]
    #    -84(%ebp)   4  [ $v4       <int> %ebp-84 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   4:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $54702, %eax            #   5:     mul    t9 <- 54702, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   6:     add    t10 <- t9, 29653
    movl    $29653, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   9:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  10:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     add    t13 <- t12, 13821
    movl    $13821, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  14:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  15:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     add    t16 <- t15, 53361
    movl    $53361, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  19:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  20:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     add    t19 <- t18, 91234
    movl    $91234, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     mul    t20 <- t19, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  24:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  25:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t23 <- v2, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $40420, %eax            #  27:     assign @t23 <- 40420
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $58530, %eax            #  28:     if     58530 > 49602 goto 5_if_true
    movl    $49602, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #  29:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #  31:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_9_while_cond:
    movl    $100, %eax              #  35:     if     100 > 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_10_while_body     
    jmp     l_f1_8                  #  36:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  38:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_1_while_cond       #  40:     goto   1_while_cond
l_f1_0:
l_f1_13_while_cond:
    jmp     l_f1_12                 #  43:     goto   12
l_f1_16_while_cond:
    jmp     l_f1_16_while_cond      #  45:     goto   16_while_cond
l_f1_19_while_cond:
    jmp     l_f1_18                 #  47:     goto   18
    jmp     l_f1_19_while_cond      #  48:     goto   19_while_cond
l_f1_18:
    call    dummyBOOLfunc           #  50:     call   t24 <- dummyBOOLfunc
    movb    %al, -69(%ebp)         
    jmp     l_f1_13_while_cond      #  51:     goto   13_while_cond
l_f1_12:
    movl    $43009, %eax            #  53:     if     43009 = 25607 goto 23_if_true
    movl    $25607, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  54:     goto   24_if_false
l_f1_23_if_true:
    jmp     l_f1_exit              
    jmp     l_f1_22                 #  57:     goto   22
l_f1_24_if_false:
l_f1_22:

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 95 of <array 35 of <array 21 of <array 49 of <array 40 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 15 of <array 30 of <array 27 of <array 24 of <array 35 of <bool>>>>>>> %ebp+16 ]
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
    call    dummyINTfunc            #   0:     call   t8 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_2_while_cond:
    movl    $99, %eax               #   2:     if     99 <= 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    jmp     l_f2_5                  #   6:     goto   5
    jmp     l_f2_6_while_cond       #   7:     goto   6_while_cond
l_f2_5:
    movl    $14938, %eax            #   9:     if     14938 = 43030 goto 9_if_true
    movl    $43030, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  10:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  12:     goto   8
l_f2_10_if_false:
l_f2_8:
    call    dummyProcedure          #  15:     call   dummyProcedure
    jmp     l_f2_2_while_cond       #  16:     goto   2_while_cond
l_f2_1:
    call    dummyBOOLfunc           #  18:     call   t9 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t6       <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $t7       <bool> %ebp-28 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_6_if_false       #   1:     goto   6_if_false
    jmp     l_test_4                #   2:     goto   4
l_test_6_if_false:
l_test_4:
    call    WriteLn                 #   5:     call   WriteLn
    jmp     l_test_exit            
l_test_10_while_cond:
    movl    $99, %eax               #   8:     if     99 > 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #   9:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  11:     goto   10_while_cond
l_test_9:
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  14:     goto   14_while_cond
    call    dummyCHARfunc           #  15:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $81711, %eax            #  16:     if     81711 < 80677 goto 18
    movl    $80677, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_18              
    jmp     l_test_19               #  17:     goto   19
l_test_18:
    movl    $1, %eax                #  19:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_20               #  20:     goto   20
l_test_19:
    movl    $0, %eax                #  22:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_20:
    movzbl  -18(%ebp), %eax         #  24:     assign v0 <- t2
    movb    %al, v0                
l_test_23_while_cond:
    jmp     l_test_22               #  26:     goto   22
    jmp     l_test_23_while_cond    #  27:     goto   23_while_cond
l_test_22:
    call    ReadInt                 #  29:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_test_0                #  30:     goto   0
l_test_0:
    call    dummyProcedure          #  32:     call   dummyProcedure
    call    dummyBOOLfunc           #  33:     call   t4 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  34:     if     t4 = 1 goto 28
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_28              
l_test_28:
    movl    $1, %eax                #  36:     assign t5 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_30               #  37:     goto   30
    movl    $0, %eax                #  38:     assign t5 <- 0
    movb    %al, -26(%ebp)         
l_test_30:
    movzbl  -26(%ebp), %eax         #  40:     assign v0 <- t5
    movb    %al, v0                
    jmp     l_test_39               #  41:     goto   39
    jmp     l_test_40               #  42:     goto   40
l_test_39:
    movl    $1, %eax                #  44:     assign t6 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_test_41               #  45:     goto   41
l_test_40:
    movl    $0, %eax                #  47:     assign t6 <- 0
    movb    %al, -27(%ebp)         
l_test_41:
    movl    $0, %eax                #  49:     if     0 = t6 goto 35
    movzbl  -27(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_35              
    jmp     l_test_36               #  50:     goto   36
l_test_35:
    movl    $1, %eax                #  52:     assign t7 <- 1
    movb    %al, -28(%ebp)         
    jmp     l_test_37               #  53:     goto   37
l_test_36:
    movl    $0, %eax                #  55:     assign t7 <- 0
    movb    %al, -28(%ebp)         
l_test_37:
    movzbl  -28(%ebp), %eax         #  57:     assign v0 <- t7
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
