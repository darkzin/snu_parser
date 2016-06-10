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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 10 of <array 8 of <array 9 of <bool>>>>>>> %ebp+12 ]

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
    movl    $41298, %eax            #   0:     add    t4 <- 41298, 56359
    movl    $56359, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     sub    t5 <- t4, 24043
    movl    $24043, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     if     t5 = 44296 goto 1_if_true
    movl    $44296, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   3:     goto   2_if_false
l_f0_1_if_true:
    movl    $98, %eax               #   5:     return 98
    jmp     l_f0_exit              
    movl    $98, %eax               #   6:     return 98
    jmp     l_f0_exit              
    movl    $98, %eax               #   7:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_8_while_cond:
    movl    $99, %eax               #  12:     if     99 < 99 goto 9_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_9_while_body      
    jmp     l_f0_7                  #  13:     goto   7
l_f0_9_while_body:
l_f0_12_while_cond:
    movl    $99, %eax               #  16:     if     99 >= 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_13_while_body     
    jmp     l_f0_11                 #  17:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  19:     goto   12_while_cond
l_f0_11:
    call    ReadInt                 #  21:     call   t6 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_f0_8_while_cond       #  22:     goto   8_while_cond
l_f0_7:
l_f0_17_while_cond:
    movl    $10523, %eax            #  25:     div    t7 <- 10523, 65510
    movl    $65510, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     mul    t8 <- t7, 77303
    movl    $77303, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     mul    t9 <- t8, 22314
    movl    $22314, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $92229, %eax            #  28:     add    t10 <- 92229, 39191
    movl    $39191, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -40(%ebp), %eax         #  29:     if     t9 < t10 goto 18_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_18_while_body     
    jmp     l_f0_16                 #  30:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  32:     goto   17_while_cond
l_f0_16:

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #    -53(%ebp)   1  [ $t20      <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 3 of <array 3 of <array 9 of <array 6 of <int>>>>>>> %ebp+8 ]
    #    -84(%ebp)   4  [ $v1       <int> %ebp-84 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_1_if_true          #   1:     goto   1_if_true
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   5:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   6:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $27890, %eax            #   7:     mul    t5 <- 27890, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   8:     add    t6 <- t5, 89512
    movl    $89512, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  11:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  12:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  13:     add    t9 <- t8, 50964
    movl    $50964, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  17:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     add    t12 <- t11, 55734
    movl    $55734, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  22:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     add    t15 <- t14, 11997
    movl    $11997, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     mul    t16 <- t15, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  26:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  27:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t19 <- v0, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $62203, %eax            #  29:     assign @t19 <- 62203
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_0                  #  30:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  33:     call   t20 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 4 of <array 5 of <array 10 of <array 8 of <array 9 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 4 of <array 5 of <array 10 of <array 8 of <array 9 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t8       <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $t9       <char> %ebp-31 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 4 of <array 6 of <array 5 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 10 of <array 4 of <array 10 of <array 6 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 4 of <array 6 of <array 9 of <array 10 of <int>>>>>>> %ebp+20 ]
    #   -14456(%ebp)  14424  [ $v4       <array 4 of <array 5 of <array 10 of <array 8 of <array 9 of <bool>>>>>> %ebp-14456 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $14444, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3611, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-14456(%ebp)         # local array 'v4': 5 dimensions
    movl    $4,-14452(%ebp)         #   dimension 1: 4 elements
    movl    $5,-14448(%ebp)         #   dimension 2: 5 elements
    movl    $10,-14444(%ebp)        #   dimension 3: 10 elements
    movl    $8,-14440(%ebp)         #   dimension 4: 8 elements
    movl    $9,-14436(%ebp)         #   dimension 5: 9 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    movl    $68431, %eax            #   2:     return 68431
    jmp     l_f2_exit              
    movl    $75501, %eax            #   3:     return 75501
    jmp     l_f2_exit              
    movl    $48598, %eax            #   4:     return 48598
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    movl    $7590, %eax             #   7:     add    t4 <- 7590, 78745
    movl    $78745, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     return t4
    jmp     l_f2_exit              
    leal    -14456(%ebp), %eax      #   9:     &()    t5 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  1 <- t5
    pushl   %eax                   
    leal    -14456(%ebp), %eax      #  11:     &()    t6 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  1 <- t6
    pushl   %eax                   
    call    dummyCHARfunc           #  13:     call   t7 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  14:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  15:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  16:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  17:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -31(%ebp)         
    movl    $98, %eax               #  18:     if     98 # t9 goto 8
    movzbl  -31(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_8                 
    jmp     l_f2_9                  #  19:     goto   9
l_f2_8:
    movl    $1, %eax                #  21:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_10                 #  22:     goto   10
l_f2_9:
    movl    $0, %eax                #  24:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_10:
    movzbl  -13(%ebp), %eax         #  26:     assign v0 <- t10
    movb    %al, 8(%ebp)           

l_f2_exit:
    # epilogue
    addl    $14444, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 4 of <array 5 of <array 10 of <array 8 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]

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
    movl    $98, %eax               #   0:     if     98 > 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $0, %eax                #   4:     if     0 # 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #  10:     goto   9_while_cond
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #  14:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    leal    v1, %eax                #  15:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  1 <- t1
    pushl   %eax                   
    call    dummyCHARfunc           #  17:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  18:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  19:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  20:     assign v0 <- t3
    movb    %al, v0                
    movl    $36777, %eax            #  21:     if     36777 <= 90737 goto 14_if_true
    movl    $90737, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_14_if_true      
    jmp     l_test_15_if_false      #  22:     goto   15_if_false
l_test_14_if_true:
l_test_18_while_cond:
    movl    $41046, %eax            #  25:     if     41046 = 49848 goto 19_while_body
    movl    $49848, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_19_while_body   
    jmp     l_test_17               #  26:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  28:     goto   18_while_cond
l_test_17:
l_test_22_while_cond:
    movl    $81024, %eax            #  31:     if     81024 < 72214 goto 23_while_body
    movl    $72214, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_23_while_body   
    jmp     l_test_21               #  32:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  34:     goto   22_while_cond
l_test_21:
    jmp     l_test_exit            
    jmp     l_test_13               #  37:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_exit            

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
    .align   4
v1:                                 # <array 4 of <array 5 of <array 10 of <array 8 of <array 9 of <bool>>>>>>
    .long    5
    .long    4
    .long    5
    .long   10
    .long    8
    .long    9
    .skip 14400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
