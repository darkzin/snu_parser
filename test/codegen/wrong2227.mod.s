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
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 43 of <array 85 of <array 76 of <array 30 of <array 55 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -68(%ebp)        
    movl    $87325, %eax            #   1:     div    t6 <- 87325, t5
    movl    -68(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   3:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   4:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $27946, %eax            #   5:     mul    t8 <- 27946, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   6:     add    t9 <- t8, 51016
    movl    $51016, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  10:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t12 <- t11, 98707
    movl    $98707, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t15 <- t14, 70360
    movl    $70360, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  20:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     add    t18 <- t17, 34637
    movl    $34637, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  24:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  25:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  26:     add    t22 <- v3, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -72(%ebp), %eax         #  27:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $1, %eax                #  28:     if     1 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #  29:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_1                  #  33:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]

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
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   4:     goto   5_while_cond
    movl    $98, %eax               #   5:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               
    movl    $98, %eax               #   7:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_exit              
    movl    $0, %eax                #  10:     assign v1 <- 0
    movb    %al, -14(%ebp)         
    jmp     l_f1_2_while_cond       #  11:     goto   2_while_cond
l_f1_1:
    call    dummyBOOLfunc           #  13:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 28 of <array 24 of <array 72 of <array 45 of <array 42 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #   4:     goto   6_while_cond
    call    ReadInt                 #   5:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $97753, %eax            #   6:     assign v4 <- 97753
    movl    %eax, 20(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_13_if_false        #   8:     goto   13_if_false
    jmp     l_f2_11                 #   9:     goto   11
l_f2_13_if_false:
l_f2_11:
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
l_f2_0:
    movl    $100, %eax              #  14:     if     100 > 100 goto 15_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  15:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_20_if_false        #  17:     goto   20_if_false
    jmp     l_f2_exit              
l_f2_23_while_cond:
    movl    $4734, %eax             #  20:     if     4734 # 5700 goto 24_while_body
    movl    $5700, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_24_while_body     
    jmp     l_f2_22                 #  21:     goto   22
l_f2_24_while_body:
    jmp     l_f2_23_while_cond      #  23:     goto   23_while_cond
l_f2_22:
    jmp     l_f2_18                 #  25:     goto   18
l_f2_20_if_false:
l_f2_18:
    jmp     l_f2_14                 #  28:     goto   14
l_f2_16_if_false:
l_f2_14:
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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    movl    $98, %eax               #   2:     if     98 <= 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_6                #   6:     goto   6
l_test_6:
    jmp     l_test_9                #   8:     goto   9
l_test_9:
    movl    $99, %eax               #  10:     if     99 >= 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_13_if_true      
    jmp     l_test_14_if_false      #  11:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  13:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_1                #  16:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $28794, %eax            #  19:     sub    t1 <- 28794, 27721
    movl    $27721, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     if     t1 = 4310 goto 17
    movl    $4310, %ebx            
    cmpl    %ebx, %eax             
    je      l_test_17              
    jmp     l_test_18               #  21:     goto   18
l_test_17:
    movl    $1, %eax                #  23:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_19               #  24:     goto   19
l_test_18:
    movl    $0, %eax                #  26:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_19:
    movzbl  -21(%ebp), %eax         #  28:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_exit            
l_test_23_while_cond:
    movl    $88099, %eax            #  31:     if     88099 > 86204 goto 24_while_body
    movl    $86204, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_24_while_body   
    jmp     l_test_22               #  32:     goto   22
l_test_24_while_body:
    call    dummyBOOLfunc           #  34:     call   t3 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_test_exit            
    movl    $98, %eax               #  36:     if     98 # 97 goto 29_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_29_if_true      
    jmp     l_test_30_if_false      #  37:     goto   30_if_false
l_test_29_if_true:
    call    dummyBOOLfunc           #  39:     call   t4 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
l_test_34_while_cond:
    jmp     l_test_33               #  41:     goto   33
    jmp     l_test_34_while_cond    #  42:     goto   34_while_cond
l_test_33:
    jmp     l_test_28               #  44:     goto   28
l_test_30_if_false:
l_test_28:
    jmp     l_test_23_while_cond    #  47:     goto   23_while_cond
l_test_22:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
