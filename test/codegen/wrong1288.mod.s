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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    jmp     l_f0_exit              
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    jmp     l_f0_exit              
l_f0_8_while_cond:
    movl    $81759, %eax            #   4:     if     81759 # 29881 goto 9_while_body
    movl    $29881, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_9_while_body      
    jmp     l_f0_7                  #   5:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #   7:     goto   8_while_cond
l_f0_7:
    leal    _str_1, %eax            #   9:     &()    t5 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #  11:     call   WriteStr
    addl    $4, %esp               
    movl    $65086, %eax            #  12:     assign v1 <- 65086
    movl    %eax, -20(%ebp)        
    jmp     l_f0_1                  #  13:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_exit              

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
    #    -65(%ebp)   1  [ $t23      <char> %ebp-65 ]
    #    -66(%ebp)   1  [ $t5       <char> %ebp-66 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 41 of <array 100 of <array 42 of <array 14 of <array 81 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 99 of <array 4 of <array 41 of <array 54 of <array 89 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #    -85(%ebp)   1  [ $v5       <char> %ebp-85 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
l_f1_5_while_cond:
    movl    $97, %eax               #   2:     if     97 >= 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_6_while_body      
    jmp     l_f1_4                  #   3:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_0                  #   7:     goto   0
l_f1_0:
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -66(%ebp)         
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $27098, %eax            #  13:     mul    t7 <- 27098, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    $12203, %eax            #  14:     div    t8 <- 12203, 6014
    movl    $6014, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  15:     add    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  19:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     add    t12 <- t11, 70060
    movl    $70060, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  24:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  25:     add    t15 <- t14, 70867
    movl    $70867, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  29:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  30:     add    t18 <- t17, 34456
    movl    $34456, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  31:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  33:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  34:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  35:     add    t22 <- v2, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -66(%ebp), %eax         #  36:     assign @t22 <- t5
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  37:     call   t23 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    movzbl  -65(%ebp), %eax         #  38:     assign v5 <- t23
    movb    %al, -85(%ebp)         

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v1       <char> %ebp-22 ]

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
    movl    $53454, %eax            #   0:     add    t5 <- 53454, 61736
    movl    $61736, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t6 <- t5, 21094
    movl    $21094, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t6
    jmp     l_f2_exit              
    movl    $98, %eax               #   3:     assign v1 <- 98
    movb    %al, -22(%ebp)         
    call    dummyBOOLfunc           #   4:     call   t7 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 99 of <array 4 of <array 41 of <array 54 of <array 89 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 41 of <array 100 of <array 42 of <array 14 of <array 81 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
    jmp     l_test_2                #   0:     goto   2
    movl    $1, %eax                #   1:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   2:     goto   3
l_test_2:
    movl    $0, %eax                #   4:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v0 <- t0
    movb    %al, v0                
l_test_6_while_cond:
    jmp     l_test_5                #   8:     goto   5
    jmp     l_test_5                #   9:     goto   5
    movl    $99, %eax               #  10:     if     99 >= 100 goto 11
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_11              
    jmp     l_test_12               #  11:     goto   12
l_test_11:
    movl    $1, %eax                #  13:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_13               #  14:     goto   13
l_test_12:
    movl    $0, %eax                #  16:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_13:
    movzbl  -14(%ebp), %eax         #  18:     assign v0 <- t1
    movb    %al, v0                
    movl    $50942, %eax            #  19:     if     50942 > 114 goto 16_if_true
    movl    $114, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_16_if_true      
    jmp     l_test_17_if_false      #  20:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  22:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_6_while_cond     #  25:     goto   6_while_cond
l_test_5:
l_test_20_while_cond:
    movl    $15497, %eax            #  28:     if     15497 < 57384 goto 21_while_body
    movl    $57384, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_21_while_body   
    jmp     l_test_19               #  29:     goto   19
l_test_21_while_body:
    jmp     l_test_25_if_false      #  31:     goto   25_if_false
    jmp     l_test_23               #  32:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_exit            
    jmp     l_test_20_while_cond    #  36:     goto   20_while_cond
l_test_19:
    movl    $58074, %eax            #  38:     param  3 <- 58074
    pushl   %eax                   
    leal    v2, %eax                #  39:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  40:     param  2 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  41:     &()    t3 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  42:     param  1 <- t3
    pushl   %eax                   
    movl    $80746, %eax            #  43:     param  0 <- 80746
    pushl   %eax                   
    call    f1                      #  44:     call   t4 <- f1
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    jmp     l_test_exit            

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <array 41 of <array 100 of <array 42 of <array 14 of <array 81 of <char>>>>>>
    .long    5
    .long   41
    .long  100
    .long   42
    .long   14
    .long   81
    .skip 195274800
v2:                                 # <array 99 of <array 4 of <array 41 of <array 54 of <array 89 of <char>>>>>>
    .long    5
    .long   99
    .long    4
    .long   41
    .long   54
    .long   89
    .skip 78030216








    # end of global data section
    #-----------------------------------------

    .end
##################################################
