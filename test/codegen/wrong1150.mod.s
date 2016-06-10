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
    #    -45(%ebp)   1  [ $t18      <bool> %ebp-45 ]
    #    -46(%ebp)   1  [ $t19      <char> %ebp-46 ]
    #    -52(%ebp)   4  [ $t2       <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t20      <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 54 of <array 18 of <array 80 of <array 43 of <array 58 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 37 of <array 69 of <array 6 of <array 77 of <array 38 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -85(%ebp)   1  [ $v4       <char> %ebp-85 ]

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
    movl    $98, %eax               #   0:     assign v4 <- 98
    movb    %al, -85(%ebp)         
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   2:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   3:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $39450, %eax            #   4:     mul    t3 <- 39450, t2
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   5:     add    t4 <- t3, 99203
    movl    $99203, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   7:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   8:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #   9:     mul    t6 <- t4, t5
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  10:     add    t7 <- t6, 22322
    movl    $22322, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  14:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  15:     add    t10 <- t9, 45761
    movl    $45761, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  19:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     add    t13 <- t12, 64346
    movl    $64346, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     mul    t14 <- t13, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    16(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  23:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  24:     add    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    16(%ebp), %eax          #  25:     add    t17 <- v2, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $30297, %eax            #  26:     assign @t17 <- 30297
    movl    -44(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $99, %eax               #  27:     return 99
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  28:     call   t18 <- dummyBOOLfunc
    movb    %al, -45(%ebp)         
    jmp     l_f0_9_if_false         #  29:     goto   9_if_false
    jmp     l_f0_7                  #  30:     goto   7
l_f0_9_if_false:
l_f0_7:
    call    dummyCHARfunc           #  33:     call   t19 <- dummyCHARfunc
    movb    %al, -46(%ebp)         
    movl    $19055, %eax            #  34:     param  0 <- 19055
    pushl   %eax                   
    call    WriteInt                #  35:     call   WriteInt
    addl    $4, %esp               
    movl    $99, %eax               #  36:     assign v4 <- 99
    movb    %al, -85(%ebp)         
    movl    $52057, %eax            #  37:     if     52057 >= 51092 goto 14_if_true
    movl    $51092, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  38:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  40:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_1                  #  43:     goto   1
l_f0_1:
    call    dummyCHARfunc           #  45:     call   t20 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #  46:     return t20
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_6_if_false         #   1:     goto   6_if_false
    jmp     l_f1_4                  #   2:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $23740, %eax            #   5:     param  0 <- 23740
    pushl   %eax                   
    call    WriteInt                #   6:     call   WriteInt
    addl    $4, %esp               
    call    WriteLn                 #   7:     call   WriteLn
    jmp     l_f1_1                  #   8:     goto   1
l_f1_1:
    call    ReadInt                 #  10:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 37 of <array 69 of <array 6 of <array 77 of <array 38 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 54 of <array 18 of <array 80 of <array 43 of <array 58 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 72 of <array 47 of <array 86 of <array 35 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 20 of <array 27 of <array 33 of <array 96 of <array 88 of <char>>>>>>> %ebp+16 ]
    #   -775733824(%ebp)  775733784  [ $v3       <array 54 of <array 18 of <array 80 of <array 43 of <array 58 of <int>>>>>> %ebp-775733824 ]
    #   -955015720(%ebp)  179281896  [ $v4       <array 37 of <array 69 of <array 6 of <array 77 of <array 38 of <int>>>>>> %ebp-955015720 ]
    #   -955015724(%ebp)   4  [ $v5       <int> %ebp-955015724 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $955015712, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $238753928, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-775733824(%ebp)     # local array 'v3': 5 dimensions
    movl    $54,-775733820(%ebp)    #   dimension 1: 54 elements
    movl    $18,-775733816(%ebp)    #   dimension 2: 18 elements
    movl    $80,-775733812(%ebp)    #   dimension 3: 80 elements
    movl    $43,-775733808(%ebp)    #   dimension 4: 43 elements
    movl    $58,-775733804(%ebp)    #   dimension 5: 58 elements
    movl    $5,-955015720(%ebp)     # local array 'v4': 5 dimensions
    movl    $37,-955015716(%ebp)    #   dimension 1: 37 elements
    movl    $69,-955015712(%ebp)    #   dimension 2: 69 elements
    movl    $6,-955015708(%ebp)     #   dimension 3: 6 elements
    movl    $77,-955015704(%ebp)    #   dimension 4: 77 elements
    movl    $38,-955015700(%ebp)    #   dimension 5: 38 elements

    # function body
l_f2_4_while_cond:
    jmp     l_f2_3                  #   1:     goto   3
    jmp     l_f2_4_while_cond       #   2:     goto   4_while_cond
l_f2_3:
    movl    $38509, %eax            #   4:     param  3 <- 38509
    pushl   %eax                   
    leal    -955015720(%ebp), %eax  #   5:     &()    t2 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  2 <- t2
    pushl   %eax                   
    leal    -775733824(%ebp), %eax  #   7:     &()    t3 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  1 <- t3
    pushl   %eax                   
    movl    $72281, %eax            #   9:     param  0 <- 72281
    pushl   %eax                   
    call    f0                      #  10:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movl    $7113, %eax             #  11:     assign v5 <- 7113
    movl    %eax, -955015724(%ebp) 
l_f2_9_while_cond:
    jmp     l_f2_9_while_cond       #  13:     goto   9_while_cond
    call    dummyBOOLfunc           #  14:     call   t5 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_f2_0                  #  15:     goto   0
l_f2_0:
    movl    $55391, %eax            #  17:     add    t6 <- 55391, 48022
    movl    $48022, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     sub    t7 <- t6, 96018
    movl    $96018, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     if     t7 # 64556 goto 13
    movl    $64556, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_13                
    jmp     l_f2_14                 #  20:     goto   14
l_f2_13:
    movl    $1, %eax                #  22:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_15                 #  23:     goto   15
l_f2_14:
    movl    $0, %eax                #  25:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f2_15:
    movzbl  -33(%ebp), %eax         #  27:     return t8
    jmp     l_f2_exit              
    call    ReadInt                 #  28:     call   t9 <- ReadInt
    movl    %eax, -40(%ebp)        

l_f2_exit:
    # epilogue
    addl    $955015712, %esp        # remove locals
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
    movl    $97, %eax               #   0:     if     97 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $99, %eax               #   3:     if     99 > 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $1, %eax                #   9:     if     1 # 0 goto 9
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_9               
    jmp     l_test_10               #  10:     goto   10
l_test_9:
    movl    $1, %eax                #  12:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_11               #  13:     goto   11
l_test_10:
    movl    $0, %eax                #  15:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_11:
    movzbl  -13(%ebp), %eax         #  17:     assign v0 <- t0
    movb    %al, v0                
l_test_14_while_cond:
    movl    $66795, %eax            #  19:     if     66795 < 84106 goto 15_while_body
    movl    $84106, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  20:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  22:     goto   14_while_cond
l_test_13:
    jmp     l_test_0                #  24:     goto   0
l_test_2_if_false:
l_test_0:
l_test_18_while_cond:
    movl    $20630, %eax            #  28:     if     20630 <= 90780 goto 19_while_body
    movl    $90780, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_19_while_body   
    jmp     l_test_17               #  29:     goto   17
l_test_19_while_body:
    jmp     l_test_21               #  31:     goto   21
l_test_21:
    call    dummyBOOLfunc           #  33:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_18_while_cond    #  34:     goto   18_while_cond
l_test_17:
    movl    $98, %eax               #  36:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  37:     call   WriteChar
    addl    $4, %esp               

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
