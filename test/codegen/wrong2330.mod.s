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
    #    -49(%ebp)   1  [ $t19      <bool> %ebp-49 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 26 of <array 94 of <array 53 of <array 16 of <array 70 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -92(%ebp)   4  [ $v2       <int> %ebp-92 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $2388, %eax             #   0:     sub    t2 <- 2388, 70365
    movl    $70365, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   1:     assign v2 <- t2
    movl    %eax, -92(%ebp)        
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   4:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   5:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $10516, %eax            #   6:     mul    t4 <- 10516, t3
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   7:     add    t5 <- t4, 70130
    movl    $70130, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  11:     mul    t7 <- t5, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  12:     add    t8 <- t7, 72234
    movl    $72234, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  16:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     add    t11 <- t10, 1149
    movl    $1149, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  21:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     add    t14 <- t13, 28242
    movl    $28242, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  25:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  26:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  27:     add    t18 <- v0, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $99, %eax               #  28:     assign @t18 <- 99
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  29:     call   t19 <- dummyBOOLfunc
    movb    %al, -49(%ebp)         
    jmp     l_f0_1                  #  30:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    ReadInt                 #  33:     call   t20 <- ReadInt
    movl    %eax, -60(%ebp)        

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
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
    #    -29(%ebp)   1  [ $t14      <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t2       <char> %ebp-30 ]
    #    -36(%ebp)   4  [ $t3       <ptr(4) to <array 26 of <array 94 of <array 53 of <array 16 of <array 70 of <char>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t4       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t5       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <int> %ebp-60 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 27 of <array 40 of <array 74 of <array 99 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 41 of <array 63 of <array 26 of <array 3 of <array 13 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 49 of <array 53 of <array 43 of <array 1 of <array 82 of <bool>>>>>>> %ebp+20 ]
    #   -145075924(%ebp)  145075864  [ $v4       <array 26 of <array 94 of <array 53 of <array 16 of <array 70 of <char>>>>>> %ebp-145075924 ]
    #   -145075928(%ebp)   4  [ $v5       <int> %ebp-145075928 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $145075916, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $36268979, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-145075924(%ebp)     # local array 'v4': 5 dimensions
    movl    $26,-145075920(%ebp)    #   dimension 1: 26 elements
    movl    $94,-145075916(%ebp)    #   dimension 2: 94 elements
    movl    $53,-145075912(%ebp)    #   dimension 3: 53 elements
    movl    $16,-145075908(%ebp)    #   dimension 4: 16 elements
    movl    $70,-145075904(%ebp)    #   dimension 5: 70 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #   1:     param  1 <- t2
    pushl   %eax                   
    leal    -145075924(%ebp), %eax  #   2:     &()    t3 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   4:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
    movl    $4460, %eax             #   5:     mul    t5 <- 4460, 91284
    movl    $91284, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     mul    t6 <- t5, 26561
    movl    $26561, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     div    t7 <- t6, 62025
    movl    $62025, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   8:     div    t8 <- t7, 74688
    movl    $74688, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   9:     mul    t9 <- t8, 71496
    movl    $71496, %ebx           
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  10:     assign v5 <- t9
    movl    %eax, -145075928(%ebp) 
    movl    $75303, %eax            #  11:     div    t10 <- 75303, 24341
    movl    $24341, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     mul    t11 <- t10, 32157
    movl    $32157, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     div    t12 <- t11, 41825
    movl    $41825, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     div    t13 <- t12, 16824
    movl    $16824, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     if     t13 > 52411 goto 3
    movl    $52411, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_3                 
    jmp     l_f1_4                  #  16:     goto   4
l_f1_3:
    movl    $1, %eax                #  18:     assign t14 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_5                  #  19:     goto   5
l_f1_4:
    movl    $0, %eax                #  21:     assign t14 <- 0
    movb    %al, -29(%ebp)         
l_f1_5:
    movzbl  -29(%ebp), %eax         #  23:     assign v2 <- t14
    movb    %al, 16(%ebp)          

l_f1_exit:
    # epilogue
    addl    $145075916, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 26 of <array 94 of <array 53 of <array 16 of <array 70 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 15 of <array 8 of <array 91 of <array 40 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #   -145075884(%ebp)  145075864  [ $v3       <array 26 of <array 94 of <array 53 of <array 16 of <array 70 of <char>>>>>> %ebp-145075884 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $145075872, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $36268968, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-145075884(%ebp)     # local array 'v3': 5 dimensions
    movl    $26,-145075880(%ebp)    #   dimension 1: 26 elements
    movl    $94,-145075876(%ebp)    #   dimension 2: 94 elements
    movl    $53,-145075872(%ebp)    #   dimension 3: 53 elements
    movl    $16,-145075868(%ebp)    #   dimension 4: 16 elements
    movl    $70,-145075864(%ebp)    #   dimension 5: 70 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    movl    $0, %eax                #   2:     if     0 # 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    movl    $99, %eax               #   7:     param  1 <- 99
    pushl   %eax                   
    leal    -145075884(%ebp), %eax  #   8:     &()    t2 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  10:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  11:     if     t3 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  12:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  14:     goto   5
l_f2_7_if_false:
l_f2_5:
l_f2_9_while_cond:
    call    dummyCHARfunc           #  18:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  19:     if     t4 > 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_10_while_body     
    jmp     l_f2_8                  #  20:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  22:     goto   9_while_cond
l_f2_8:

l_f2_exit:
    # epilogue
    addl    $145075872, %esp        # remove locals
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
    jmp     l_test_exit            
l_test_2_while_cond:
    call    ReadInt                 #   2:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t0 <= 22110 goto 3_while_body
    movl    $22110, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    call    dummyINTfunc            #   9:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_9_if_false       #  10:     goto   9_if_false
l_test_11_while_cond:
    movl    $0, %eax                #  12:     if     0 = 1 goto 12_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_12_while_body   
    jmp     l_test_10               #  13:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  15:     goto   11_while_cond
l_test_10:
    movl    $1, %eax                #  17:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_15               #  18:     goto   15
l_test_15:
    movl    $34485, %eax            #  20:     assign v1 <- 34485
    movl    %eax, v1               
    jmp     l_test_7                #  21:     goto   7
l_test_9_if_false:
l_test_7:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
