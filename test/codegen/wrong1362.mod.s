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
    #    -73(%ebp)   1  [ $t25      <char> %ebp-73 ]
    #    -74(%ebp)   1  [ $t8       <char> %ebp-74 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 79 of <array 88 of <array 21 of <array 56 of <array 49 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 100 of <array 7 of <array 8 of <array 74 of <array 45 of <char>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -74(%ebp)         
    movzbl  -74(%ebp), %eax         #   1:     return t8
    jmp     l_f0_exit              
    call    dummyProcedure          #   2:     call   dummyProcedure
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   4:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   5:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $23982, %eax            #   6:     mul    t10 <- 23982, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     add    t11 <- t10, 45718
    movl    $45718, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  11:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     add    t14 <- t13, 8102
    movl    $8102, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  16:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  17:     add    t17 <- t16, 72775
    movl    $72775, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  21:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t20 <- t19, 33071
    movl    $33071, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  25:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  26:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  27:     add    t24 <- v3, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $62595, %eax            #  28:     assign @t24 <- 62595
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_1                  #  29:     goto   1
l_f0_1:
l_f0_7_while_cond:
    call    dummyCHARfunc           #  32:     call   t25 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    movl    $97, %eax               #  33:     if     97 # t25 goto 8_while_body
    movzbl  -73(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_8_while_body      
    jmp     l_f0_6                  #  34:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  36:     goto   7_while_cond
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $68, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 24 of <array 38 of <array 93 of <array 3 of <array 12 of <char>>>>>>> %ebp+8 ]

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
    movl    $97, %eax               #   1:     if     97 < 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_7_if_false         #   4:     goto   7_if_false
    jmp     l_f1_5                  #   5:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_10_if_false        #   8:     goto   10_if_false
    jmp     l_f1_8                  #   9:     goto   8
l_f1_10_if_false:
l_f1_8:
    call    dummyINTfunc            #  12:     call   t9 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_1                  #  13:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $97, %eax               #  16:     return 97
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

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
    movl    $30802, %eax            #   0:     if     30802 <= 7940 goto 1
    movl    $7940, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   8:     assign v1 <- t8
    movb    %al, -21(%ebp)         
    call    dummyINTfunc            #   9:     call   t9 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f2_7_while_cond:
    call    dummyBOOLfunc           #  11:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #  12:     if     1 # t10 goto 8_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #  13:     goto   6
l_f2_8_while_body:
    movl    $0, %eax                #  15:     assign v1 <- 0
    movb    %al, -21(%ebp)         
    movl    $0, %eax                #  16:     if     0 # 0 goto 12_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  17:     goto   13_if_false
l_f2_12_if_true:
    jmp     l_f2_11                 #  19:     goto   11
l_f2_13_if_false:
l_f2_11:
    jmp     l_f2_7_while_cond       #  22:     goto   7_while_cond
l_f2_6:

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 100 of <array 7 of <array 8 of <array 74 of <array 45 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 79 of <array 88 of <array 21 of <array 56 of <array 49 of <int>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <char> %ebp-38 ]

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
    movl    $74366, %eax            #   1:     if     74366 > 56933 goto 2_while_body
    movl    $56933, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
l_test_6_while_cond:
    jmp     l_test_5                #   6:     goto   5
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
l_test_9_while_cond:
    jmp     l_test_8                #  10:     goto   8
    jmp     l_test_9_while_cond     #  11:     goto   9_while_cond
l_test_8:
    movl    $99, %eax               #  13:     if     99 # 98 goto 12_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_12_if_true      
    jmp     l_test_13_if_false      #  14:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  16:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_1_while_cond     #  19:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #  21:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  22:     assign v0 <- t0
    movb    %al, v0                
    movl    $32768, %eax            #  23:     sub    t1 <- 32768, 15913
    movl    $15913, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     if     t1 <= 63812 goto 17_if_true
    movl    $63812, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_17_if_true      
    jmp     l_test_18_if_false      #  25:     goto   18_if_false
l_test_17_if_true:
l_test_21_while_cond:
    jmp     l_test_21_while_cond    #  28:     goto   21_while_cond
l_test_24_while_cond:
    jmp     l_test_23               #  30:     goto   23
    jmp     l_test_24_while_cond    #  31:     goto   24_while_cond
l_test_23:
    jmp     l_test_exit            
    movl    $71528, %eax            #  34:     if     71528 # 11596 goto 28
    movl    $11596, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_28              
    jmp     l_test_29               #  35:     goto   29
l_test_28:
    movl    $1, %eax                #  37:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_30               #  38:     goto   30
l_test_29:
    movl    $0, %eax                #  40:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_30:
    movzbl  -21(%ebp), %eax         #  42:     assign v1 <- t2
    movb    %al, v1                
    call    dummyINTfunc            #  43:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
l_test_34_while_cond:
    jmp     l_test_34_while_cond    #  45:     goto   34_while_cond
    jmp     l_test_16               #  46:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_exit            
    leal    v3, %eax                #  50:     &()    t4 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  51:     param  3 <- t4
    pushl   %eax                   
    leal    v2, %eax                #  52:     &()    t5 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  53:     param  2 <- t5
    pushl   %eax                   
    jmp     l_test_38               #  54:     goto   38
    jmp     l_test_38               #  55:     goto   38
l_test_38:
    movl    $1, %eax                #  57:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_40               #  58:     goto   40
    movl    $0, %eax                #  59:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_test_40:
    movzbl  -37(%ebp), %eax         #  61:     param  1 <- t6
    pushl   %eax                   
    movl    $61721, %eax            #  62:     param  0 <- 61721
    pushl   %eax                   
    call    f0                      #  63:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -38(%ebp)         
    movzbl  -38(%ebp), %eax         #  64:     assign v0 <- t7
    movb    %al, v0                

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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 79 of <array 88 of <array 21 of <array 56 of <array 49 of <int>>>>>>
    .long    5
    .long   79
    .long   88
    .long   21
    .long   56
    .long   49
    .skip 1602408192
v3:                                 # <array 100 of <array 7 of <array 8 of <array 74 of <array 45 of <char>>>>>>
    .long    5
    .long  100
    .long    7
    .long    8
    .long   74
    .long   45
    .skip 18648000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
