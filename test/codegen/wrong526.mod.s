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
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   1:     return t8
    jmp     l_f0_exit              
    movl    $98, %eax               #   2:     if     98 >= 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2                 
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $1, %eax                #   5:     assign t9 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t9 <- 0
    movb    %al, -22(%ebp)         
l_f0_4:
    movzbl  -22(%ebp), %eax         #  10:     assign v0 <- t9
    movb    %al, 8(%ebp)           
    call    ReadInt                 #  11:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     mul    t11 <- t10, 13426
    movl    $13426, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     assign v1 <- t11
    movl    %eax, -28(%ebp)        

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 2 of <array 7 of <array 7 of <array 6 of <char>>>>>>> %ebp+16 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_1_if_true          #   1:     goto   1_if_true
l_f1_1_if_true:
    jmp     l_f1_0                  #   3:     goto   0
l_f1_0:
    call    dummyCHARfunc           #   5:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $72310, %eax            #   6:     assign v0 <- 72310
    movl    %eax, 8(%ebp)          

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
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 4 of <array 6 of <array 6 of <array 5 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 4 of <array 7 of <array 5 of <array 7 of <bool>>>>>>> %ebp+20 ]
    #    -85(%ebp)   1  [ $v4       <bool> %ebp-85 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   2:     goto   5_while_cond
    jmp     l_f2_9_if_false         #   3:     goto   9_if_false
    jmp     l_f2_7                  #   4:     goto   7
l_f2_9_if_false:
l_f2_7:
    movl    $1, %eax                #   7:     assign v4 <- 1
    movb    %al, -85(%ebp)         
l_f2_12_while_cond:
    jmp     l_f2_12_while_cond      #   9:     goto   12_while_cond
    movl    $1, %eax                #  10:     return 1
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $75383, %eax            #  14:     assign v0 <- 75383
    movl    %eax, 8(%ebp)          
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $22941, %eax            #  18:     mul    t9 <- 22941, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  19:     add    t10 <- t9, 32029
    movl    $32029, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  23:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t13 <- t12, 54098
    movl    $54098, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $56824, %eax            #  29:     div    t16 <- 56824, 95776
    movl    $95776, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     div    t17 <- t16, 99360
    movl    $99360, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t18 <- t15, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  33:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  34:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  35:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  36:     add    t21 <- t20, 61645
    movl    $61645, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  37:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  38:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  39:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  40:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  41:     add    t25 <- v2, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $98, %eax               #  42:     assign @t25 <- 98
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 4 of <array 7 of <array 5 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 4 of <array 6 of <array 6 of <array 5 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
l_test_3_while_cond:
    movl    $65397, %eax            #   3:     if     65397 <= 85426 goto 6_if_true
    movl    $85426, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_6_if_true       
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   6:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $97, %eax               #   9:     if     97 <= 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_10_if_true      
    jmp     l_test_11_if_false      #  10:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  12:     goto   9
l_test_11_if_false:
l_test_9:
    leal    v1, %eax                #  15:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  3 <- t1
    pushl   %eax                   
    leal    v0, %eax                #  17:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  2 <- t2
    pushl   %eax                   
    movl    $98, %eax               #  19:     param  1 <- 98
    pushl   %eax                   
    movl    $87070, %eax            #  20:     div    t3 <- 87070, 23900
    movl    $23900, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  22:     call   t4 <- f2
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    jmp     l_test_3_while_cond     #  23:     goto   3_while_cond
    jmp     l_test_16_if_false      #  24:     goto   16_if_false
    movl    $99, %eax               #  25:     assign v2 <- 99
    movb    %al, v2                
l_test_19_while_cond:
    movl    $61661, %eax            #  27:     if     61661 < 56439 goto 20_while_body
    movl    $56439, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_20_while_body   
    jmp     l_test_18               #  28:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  30:     goto   19_while_cond
l_test_18:
    movl    $88426, %eax            #  32:     assign v3 <- 88426
    movl    %eax, v3               
    movl    $100, %eax              #  33:     if     100 <= 97 goto 24_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_24_if_true      
    jmp     l_test_25_if_false      #  34:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  36:     goto   23
l_test_25_if_false:
l_test_23:
    movl    $56197, %eax            #  39:     if     56197 < 22449 goto 28_if_true
    movl    $22449, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_28_if_true      
    jmp     l_test_29_if_false      #  40:     goto   29_if_false
l_test_28_if_true:
    jmp     l_test_27               #  42:     goto   27
l_test_29_if_false:
l_test_27:
    jmp     l_test_14               #  45:     goto   14
l_test_16_if_false:
l_test_14:
l_test_32_while_cond:
    movl    $53941, %eax            #  49:     if     53941 <= 30304 goto 33_while_body
    movl    $30304, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_33_while_body   
    jmp     l_test_31               #  50:     goto   31
l_test_33_while_body:
l_test_36_while_cond:
    movl    $16006, %eax            #  53:     if     16006 # 15405 goto 37_while_body
    movl    $15405, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_37_while_body   
    jmp     l_test_35               #  54:     goto   35
l_test_37_while_body:
    jmp     l_test_36_while_cond    #  56:     goto   36_while_cond
l_test_35:
l_test_40_while_cond:
    movl    $23909, %eax            #  59:     add    t5 <- 23909, 82222
    movl    $82222, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  60:     add    t6 <- t5, 4333
    movl    $4333, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  61:     sub    t7 <- t6, 9347
    movl    $9347, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $98681, %eax            #  62:     if     98681 >= t7 goto 41_while_body
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_41_while_body   
    jmp     l_test_39               #  63:     goto   39
l_test_41_while_body:
    jmp     l_test_40_while_cond    #  65:     goto   40_while_cond
l_test_39:
    jmp     l_test_32_while_cond    #  67:     goto   32_while_cond
l_test_31:

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v0:                                 # <array 9 of <array 4 of <array 6 of <array 6 of <array 5 of <char>>>>>>
    .long    5
    .long    9
    .long    4
    .long    6
    .long    6
    .long    5
    .skip 6480
v1:                                 # <array 10 of <array 4 of <array 7 of <array 5 of <array 7 of <bool>>>>>>
    .long    5
    .long   10
    .long    4
    .long    7
    .long    5
    .long    7
    .skip 9800
v2:                                 # <char>
    .skip    1
    .align   4
v3:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
