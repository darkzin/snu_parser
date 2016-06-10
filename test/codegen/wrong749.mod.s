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
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t6       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t7       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t9       <int> %ebp-112 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 10 of <array 9 of <array 7 of <array 5 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $100, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $25, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $30333, %eax            #   0:     add    t6 <- 30333, 18170
    movl    $18170, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   1:     add    t7 <- t6, 58901
    movl    $58901, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   2:     sub    t8 <- t7, 79445
    movl    $79445, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   3:     sub    t9 <- t8, 4093
    movl    $4093, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   4:     add    t10 <- t9, 3694
    movl    $3694, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     add    t11 <- t10, 30160
    movl    $30160, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     sub    t12 <- t11, 40310
    movl    $40310, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   8:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   9:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  10:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $31663, %eax            #  11:     sub    t15 <- 31663, 38150
    movl    $38150, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     sub    t16 <- t15, 28479
    movl    $28479, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  13:     add    t17 <- t14, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  15:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  16:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  17:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  18:     add    t20 <- t19, 31715
    movl    $31715, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  20:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  21:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  22:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  23:     add    t23 <- t22, 63044
    movl    $63044, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  25:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  26:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  27:     mul    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  28:     add    t26 <- t25, 42004
    movl    $42004, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  29:     mul    t27 <- t26, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    20(%ebp), %eax          #  30:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  31:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  32:     add    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    20(%ebp), %eax          #  33:     add    t30 <- v4, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $53149, %eax            #  34:     assign @t30 <- 53149
    movl    -96(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_exit              
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $100, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    movl    $99, %eax               #   0:     if     99 > 100 goto 4
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_4                 
    jmp     l_f1_5                  #   1:     goto   5
l_f1_4:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $0, %eax                #   6:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #   8:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
    movl    $57867, %eax            #  10:     if     57867 < 97157 goto 12
    movl    $97157, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_12                
    jmp     l_f1_13                 #  11:     goto   13
l_f1_12:
    movl    $1, %eax                #  13:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_14                 #  14:     goto   14
l_f1_13:
    movl    $0, %eax                #  16:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f1_14:
    movzbl  -14(%ebp), %eax         #  18:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_8                  #  19:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_0                  #  22:     goto   0
l_f1_0:
    movl    $100, %eax              #  24:     if     100 >= 100 goto 17
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_17                
    jmp     l_f1_18                 #  25:     goto   18
l_f1_17:
    movl    $1, %eax                #  27:     assign t8 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_19                 #  28:     goto   19
l_f1_18:
    movl    $0, %eax                #  30:     assign t8 <- 0
    movb    %al, -15(%ebp)         
l_f1_19:
    movzbl  -15(%ebp), %eax         #  32:     assign v1 <- t8
    movb    %al, -16(%ebp)         
l_f1_22_while_cond:
    movl    $1, %eax                #  34:     return 1
    jmp     l_f1_exit              
    movl    $55186, %eax            #  35:     assign v2 <- 55186
    movl    %eax, -20(%ebp)        
    jmp     l_f1_22_while_cond      #  36:     goto   22_while_cond

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t9       <char> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 7 of <array 4 of <array 5 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -17(%ebp)   1  [ $v3       <bool> %ebp-17 ]

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
    movl    $97, %eax               #   0:     if     97 > 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $99, %eax               #   3:     if     99 > 99 goto 5
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   7:     goto   7
l_f2_6:
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  11:     assign v3 <- t6
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #  12:     if     98 # 97 goto 10
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_10                
    jmp     l_f2_11                 #  13:     goto   11
l_f2_10:
    movl    $1, %eax                #  15:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_12                 #  16:     goto   12
l_f2_11:
    movl    $0, %eax                #  18:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f2_12:
    movzbl  -14(%ebp), %eax         #  20:     assign v3 <- t7
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #  21:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f2_0                  #  22:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $97, %eax               #  25:     assign v2 <- 97
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #  26:     call   t9 <- dummyCHARfunc
    movb    %al, -16(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     assign v0 <- t0
    movb    %al, v0                
l_test_4_while_cond:
    movl    $91528, %eax            #   5:     mul    t1 <- 91528, 10035
    movl    $10035, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     mul    t2 <- t1, 63122
    movl    $63122, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $62560, %eax            #   7:     add    t3 <- 62560, t2
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $375, %eax              #   8:     if     375 <= t3 goto 5_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_5_while_body    
    jmp     l_test_3                #   9:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #  11:     goto   4_while_cond
l_test_3:
    call    f1                      #  13:     call   t4 <- f1
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  14:     assign v1 <- t4
    movb    %al, v1                
    jmp     l_test_9                #  15:     goto   9
    jmp     l_test_9                #  16:     goto   9
    jmp     l_test_9                #  17:     goto   9
    jmp     l_test_10               #  18:     goto   10
l_test_9:
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_11               #  21:     goto   11
l_test_10:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_test_11:
    movzbl  -30(%ebp), %eax         #  25:     assign v1 <- t5
    movb    %al, v1                

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
