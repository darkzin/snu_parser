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
    #    -73(%ebp)   1  [ $t6       <char> %ebp-73 ]
    #    -74(%ebp)   1  [ $t7       <bool> %ebp-74 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 54 of <array 15 of <array 51 of <array 20 of <array 24 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 36 of <array 34 of <array 79 of <array 25 of <array 35 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 78 of <array 56 of <array 88 of <array 53 of <array 42 of <int>>>>>>> %ebp+20 ]
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
    movl    $69896, %eax            #   0:     assign v1 <- 69896
    movl    %eax, 12(%ebp)         
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    movzbl  -73(%ebp), %eax         #   2:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_4                  #   3:     goto   4
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -74(%ebp)         
    jmp     l_f0_5                  #   5:     goto   5
l_f0_4:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -74(%ebp)         
l_f0_5:
    call    ReadInt                 #   9:     call   t8 <- ReadInt
    movl    %eax, -80(%ebp)        
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  13:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     add    t11 <- t10, 43520
    movl    $43520, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  18:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     add    t14 <- t13, 97247
    movl    $97247, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  23:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     add    t17 <- t16, 64058
    movl    $64058, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  28:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  29:     add    t20 <- t19, 96351
    movl    $96351, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  30:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  31:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  32:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  33:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  34:     add    t24 <- v2, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -74(%ebp), %eax         #  35:     assign @t24 <- t7
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 34 of <array 30 of <array 69 of <array 25 of <array 47 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 55 of <array 31 of <array 67 of <array 4 of <array 60 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 59 of <array 97 of <array 23 of <array 11 of <array 67 of <bool>>>>>>> %ebp+20 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    call    dummyINTfunc            #   0:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $14065, %eax            #   1:     if     14065 > 82323 goto 2_if_true
    movl    $82323, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    movl    $84487, %eax            #   5:     sub    t7 <- 84487, 93734
    movl    $93734, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $46444, %eax            #   6:     if     46444 > t7 goto 7_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   9:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_1                  #  11:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_10_while_cond:
    call    dummyBOOLfunc           #  15:     call   t8 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  16:     if     t8 = 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_11_while_body     
    jmp     l_f1_9                  #  17:     goto   9
l_f1_11_while_body:
    movl    $69830, %eax            #  19:     assign v4 <- 69830
    movl    %eax, -28(%ebp)        
    jmp     l_f1_15_if_false        #  20:     goto   15_if_false
    jmp     l_f1_13                 #  21:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_10_while_cond      #  24:     goto   10_while_cond
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 27 of <array 29 of <array 77 of <array 79 of <array 12 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 38 of <array 61 of <array 34 of <array 88 of <array 55 of <char>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f2_1_while_cond:
    movl    $23884, %eax            #   1:     if     23884 >= 25479 goto 2_while_body
    movl    $25479, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 78 of <array 56 of <array 88 of <array 53 of <array 42 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 36 of <array 34 of <array 79 of <array 25 of <array 35 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 54 of <array 15 of <array 51 of <array 20 of <array 24 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_0                #   2:     goto   0
    jmp     l_test_0                #   3:     goto   0
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_10               #   7:     goto   10
l_test_10:
    movl    $1, %eax                #   9:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_12               #  10:     goto   12
    movl    $0, %eax                #  11:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_12:
    movl    $0, %eax                #  13:     if     0 # t0 goto 7_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_7_if_true       
    jmp     l_test_8_if_false       #  14:     goto   8_if_false
l_test_7_if_true:
l_test_15_while_cond:
    movl    $0, %eax                #  17:     if     0 # 0 goto 16_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_16_while_body   
    jmp     l_test_14               #  18:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  20:     goto   15_while_cond
l_test_14:
l_test_19_while_cond:
    jmp     l_test_18               #  23:     goto   18
    jmp     l_test_19_while_cond    #  24:     goto   19_while_cond
l_test_18:
    jmp     l_test_6                #  26:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_exit            
l_test_23_while_cond:
    call    dummyCHARfunc           #  31:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  32:     if     100 > t1 goto 24_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_24_while_body   
    jmp     l_test_22               #  33:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  35:     goto   23_while_cond
l_test_22:
l_test_27_while_cond:
    jmp     l_test_exit            
    jmp     l_test_27_while_cond    #  39:     goto   27_while_cond
    leal    v3, %eax                #  40:     &()    t2 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  41:     param  3 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  42:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  43:     param  2 <- t3
    pushl   %eax                   
    movl    $66085, %eax            #  44:     param  1 <- 66085
    pushl   %eax                   
    leal    v1, %eax                #  45:     &()    t4 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  46:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  47:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  48:     assign v0 <- t5
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <array 54 of <array 15 of <array 51 of <array 20 of <array 24 of <bool>>>>>>
    .long    5
    .long   54
    .long   15
    .long   51
    .long   20
    .long   24
    .skip 19828800
v2:                                 # <array 36 of <array 34 of <array 79 of <array 25 of <array 35 of <bool>>>>>>
    .long    5
    .long   36
    .long   34
    .long   79
    .long   25
    .long   35
    .skip 84609000
v3:                                 # <array 78 of <array 56 of <array 88 of <array 53 of <array 42 of <int>>>>>>
    .long    5
    .long   78
    .long   56
    .long   88
    .long   53
    .long   42
    .skip -872412160








    # end of global data section
    #-----------------------------------------

    .end
##################################################
