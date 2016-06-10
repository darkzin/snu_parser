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
    #    -85(%ebp)   1  [ $t28      <char> %ebp-85 ]
    #    -86(%ebp)   1  [ $t5       <char> %ebp-86 ]
    #    -92(%ebp)   4  [ $t6       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t7       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 13 of <array 81 of <array 51 of <array 51 of <array 96 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 82 of <array 11 of <array 27 of <array 46 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #   -108(%ebp)   4  [ $v5       <int> %ebp-108 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -86(%ebp)         
    movzbl  -86(%ebp), %eax         #   1:     return t5
    jmp     l_f0_exit              
    movl    $71371, %eax            #   2:     add    t6 <- 71371, 97960
    movl    $97960, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   3:     add    t7 <- t6, 2349
    movl    $2349, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   5:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   6:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #   7:     mul    t9 <- t7, t8
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   8:     add    t10 <- t9, 88612
    movl    $88612, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  12:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $58738, %eax            #  13:     add    t13 <- 58738, 12999
    movl    $12999, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     sub    t14 <- t13, 85152
    movl    $85152, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     sub    t15 <- t14, 5548
    movl    $5548, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     sub    t16 <- t15, 39088
    movl    $39088, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -24(%ebp), %eax         #  17:     add    t17 <- t12, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  21:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t20 <- t19, 75317
    movl    $75317, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  26:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  27:     add    t23 <- t22, 98214
    movl    $98214, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  28:     mul    t24 <- t23, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  29:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  30:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  31:     add    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    8(%ebp), %eax           #  32:     add    t27 <- v2, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $68537, %eax            #  33:     assign @t27 <- 68537
    movl    -84(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  34:     call   t28 <- dummyCHARfunc
    movb    %al, -85(%ebp)         
    movzbl  -85(%ebp), %eax         #  35:     return t28
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $96, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 82 of <array 11 of <array 27 of <array 46 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 13 of <array 81 of <array 51 of <array 51 of <array 96 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #    -26(%ebp)   1  [ $v3       <bool> %ebp-26 ]
    #   -1051719604(%ebp)  1051719576  [ $v4       <array 13 of <array 81 of <array 51 of <array 51 of <array 96 of <int>>>>>> %ebp-1051719604 ]
    #   -1074125308(%ebp)  22405704  [ $v5       <array 5 of <array 82 of <array 11 of <array 27 of <array 46 of <int>>>>>> %ebp-1074125308 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1074125296, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $268531324, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1051719604(%ebp)    # local array 'v4': 5 dimensions
    movl    $13,-1051719600(%ebp)   #   dimension 1: 13 elements
    movl    $81,-1051719596(%ebp)   #   dimension 2: 81 elements
    movl    $51,-1051719592(%ebp)   #   dimension 3: 51 elements
    movl    $51,-1051719588(%ebp)   #   dimension 4: 51 elements
    movl    $96,-1051719584(%ebp)   #   dimension 5: 96 elements
    movl    $5,-1074125308(%ebp)    # local array 'v5': 5 dimensions
    movl    $5,-1074125304(%ebp)    #   dimension 1: 5 elements
    movl    $82,-1074125300(%ebp)   #   dimension 2: 82 elements
    movl    $11,-1074125296(%ebp)   #   dimension 3: 11 elements
    movl    $27,-1074125292(%ebp)   #   dimension 4: 27 elements
    movl    $46,-1074125288(%ebp)   #   dimension 5: 46 elements

    # function body
l_f1_1_while_cond:
    movl    $99, %eax               #   1:     if     99 < 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $99, %eax               #   4:     return 99
    jmp     l_f1_exit              
    movl    $0, %eax                #   5:     assign v3 <- 0
    movb    %al, -26(%ebp)         
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    leal    _str_1, %eax            #   8:     &()    t5 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #  10:     call   WriteStr
    addl    $4, %esp               
    movl    $100, %eax              #  11:     param  2 <- 100
    pushl   %eax                   
    leal    -1074125308(%ebp), %eax #  12:     &()    t6 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  1 <- t6
    pushl   %eax                   
    leal    -1051719604(%ebp), %eax #  14:     &()    t7 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  16:     call   t8 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         

l_f1_exit:
    # epilogue
    addl    $1074125296, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]

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
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 >= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    movl    $99, %eax               #   5:     if     99 = 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_6_while_body      
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   8:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
l_f2_9_while_cond:
    movl    $50565, %eax            #  13:     if     50565 <= 95904 goto 10_while_body
    movl    $95904, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_10_while_body     
    jmp     l_f2_8                  #  14:     goto   8
l_f2_10_while_body:
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  17:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_9_while_cond       #  18:     goto   9_while_cond
l_f2_8:
    movl    $97, %eax               #  20:     if     97 < 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  21:     goto   16_if_false
l_f2_15_if_true:
    movl    $86842, %eax            #  23:     div    t6 <- 86842, 6638
    movl    $6638, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  25:     call   t7 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #  26:     if     99 <= t7 goto 19_if_true
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  27:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  29:     goto   18
l_f2_20_if_false:
l_f2_18:
    jmp     l_f2_14                 #  32:     goto   14
l_f2_16_if_false:
l_f2_14:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $99, %eax               #   1:     if     99 <= 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    movl    $0, %eax                #   5:     assign v0 <- 0
    movb    %al, v0                
l_test_8_while_cond:
    movl    $98, %eax               #   7:     if     98 <= 100 goto 9_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_9_while_body    
    jmp     l_test_7                #   8:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  10:     goto   8_while_cond
l_test_7:
    movl    $97, %eax               #  12:     assign v1 <- 97
    movb    %al, v1                
    call    dummyINTfunc            #  13:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_13               #  14:     goto   13
l_test_13:
    jmp     l_test_1                #  16:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $97, %eax               #  19:     if     97 <= 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_17_if_true      
    jmp     l_test_18_if_false      #  20:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  23:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_16               #  24:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $97, %eax               #  27:     if     97 >= 100 goto 23_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_23_if_true      
    jmp     l_test_24_if_false      #  28:     goto   24_if_false
l_test_23_if_true:
    movl    $85092, %eax            #  30:     assign v2 <- 85092
    movl    %eax, v2               
l_test_28_while_cond:
    jmp     l_test_28_while_cond    #  32:     goto   28_while_cond
    movl    $37155, %eax            #  33:     assign v2 <- 37155
    movl    %eax, v2               
    jmp     l_test_22               #  34:     goto   22
l_test_24_if_false:
l_test_22:
l_test_32_while_cond:
    jmp     l_test_33_while_body    #  38:     goto   33_while_body
l_test_33_while_body:
    jmp     l_test_exit            
    jmp     l_test_32_while_cond    #  41:     goto   32_while_cond
    call    ReadInt                 #  42:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
l_test_42_while_cond:
    movl    $97, %eax               #  44:     if     97 < 99 goto 43_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_43_while_body   
    jmp     l_test_41               #  45:     goto   41
l_test_43_while_body:
    jmp     l_test_42_while_cond    #  47:     goto   42_while_cond
l_test_41:
    jmp     l_test_45               #  49:     goto   45
l_test_45:
    call    dummyCHARfunc           #  51:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_37               #  52:     goto   37
l_test_37:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
