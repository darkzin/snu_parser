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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 5 of <array 10 of <array 4 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 6 of <array 6 of <array 8 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
l_f0_1_while_cond:
    movl    $38414, %eax            #   1:     mul    t2 <- 38414, 40401
    movl    $40401, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $76348, %eax            #   2:     if     76348 <= t2 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    call    dummyCHARfunc           #   5:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
l_f0_6_while_cond:
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
l_f0_9_while_cond:
    jmp     l_f0_8                  #   9:     goto   8
    jmp     l_f0_9_while_cond       #  10:     goto   9_while_cond
l_f0_8:
    movl    $86848, %eax            #  12:     if     86848 <= 72813 goto 12
    movl    $72813, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_12                
    jmp     l_f0_13                 #  13:     goto   13
l_f0_12:
    movl    $1, %eax                #  15:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_14                 #  16:     goto   14
l_f0_13:
    movl    $0, %eax                #  18:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f0_14:
    movzbl  -18(%ebp), %eax         #  20:     return t4
    jmp     l_f0_exit              
    call    WriteLn                 #  21:     call   WriteLn
l_f0_18_while_cond:
    jmp     l_f0_18_while_cond      #  23:     goto   18_while_cond
l_f0_21_while_cond:
    movl    $97, %eax               #  25:     if     97 = 98 goto 22_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_22_while_body     
    jmp     l_f0_20                 #  26:     goto   20
l_f0_22_while_body:
    jmp     l_f0_21_while_cond      #  28:     goto   21_while_cond
l_f0_20:
    jmp     l_f0_1_while_cond       #  30:     goto   1_while_cond
l_f0_0:
l_f0_25_while_cond:
    jmp     l_f0_27                 #  33:     goto   27
    jmp     l_f0_27                 #  34:     goto   27
    jmp     l_f0_26_while_body      #  35:     goto   26_while_body
l_f0_27:
    jmp     l_f0_24                 #  37:     goto   24
l_f0_26_while_body:
    jmp     l_f0_25_while_cond      #  39:     goto   25_while_cond
l_f0_24:
    call    dummyProcedure          #  41:     call   dummyProcedure

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
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 2 of <array 9 of <array 1 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -85(%ebp)   1  [ $v3       <char> %ebp-85 ]

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
    movl    $97110, %eax            #   0:     if     97110 > 80287 goto 1_if_true
    movl    $80287, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $28825, %eax            #   3:     assign v2 <- 28825
    movl    %eax, 16(%ebp)         
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   5:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   6:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $55813, %eax            #   7:     mul    t3 <- 55813, t2
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   8:     add    t4 <- t3, 67176
    movl    $67176, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  11:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  12:     mul    t6 <- t4, t5
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  13:     add    t7 <- t6, 15288
    movl    $15288, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  17:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  18:     add    t10 <- t9, 38158
    movl    $38158, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  22:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t13 <- t12, 21234
    movl    $21234, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  26:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  27:     add    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t17 <- v0, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $99, %eax               #  29:     assign @t17 <- 99
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_7_while_cond:
    jmp     l_f1_6                  #  31:     goto   6
    jmp     l_f1_7_while_cond       #  32:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_0                  #  34:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $67359, %eax            #  37:     div    t18 <- 67359, 71307
    movl    $71307, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  38:     if     t18 = 59119 goto 10_if_true
    movl    $59119, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  39:     goto   11_if_false
l_f1_10_if_true:
    call    dummyINTfunc            #  41:     call   t19 <- dummyINTfunc
    movl    %eax, -52(%ebp)        
    jmp     l_f1_9                  #  42:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 6 of <array 6 of <array 8 of <array 8 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 5 of <array 10 of <array 4 of <array 8 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 2 of <array 8 of <array 6 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -37(%ebp)   1  [ $v3       <bool> %ebp-37 ]
    #   -6464(%ebp)  6424  [ $v4       <array 1 of <array 5 of <array 10 of <array 4 of <array 8 of <int>>>>>> %ebp-6464 ]
    #   -24920(%ebp)  18456  [ $v5       <array 2 of <array 6 of <array 6 of <array 8 of <array 8 of <int>>>>>> %ebp-24920 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24908, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6227, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6464(%ebp)          # local array 'v4': 5 dimensions
    movl    $1,-6460(%ebp)          #   dimension 1: 1 elements
    movl    $5,-6456(%ebp)          #   dimension 2: 5 elements
    movl    $10,-6452(%ebp)         #   dimension 3: 10 elements
    movl    $4,-6448(%ebp)          #   dimension 4: 4 elements
    movl    $8,-6444(%ebp)          #   dimension 5: 8 elements
    movl    $5,-24920(%ebp)         # local array 'v5': 5 dimensions
    movl    $2,-24916(%ebp)         #   dimension 1: 2 elements
    movl    $6,-24912(%ebp)         #   dimension 2: 6 elements
    movl    $6,-24908(%ebp)         #   dimension 3: 6 elements
    movl    $8,-24904(%ebp)         #   dimension 4: 8 elements
    movl    $8,-24900(%ebp)         #   dimension 5: 8 elements

    # function body
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $98, %eax               #   1:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   2:     goto   0
l_f2_0:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_8                  #   5:     goto   8
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f2_8:
    movzbl  -17(%ebp), %eax         #   8:     assign v3 <- t3
    movb    %al, -37(%ebp)         
    movl    $40550, %eax            #   9:     if     40550 <= 42422 goto 12_if_true
    movl    $42422, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  10:     goto   13_if_false
l_f2_12_if_true:
    call    dummyProcedure          #  12:     call   dummyProcedure
    movl    $0, %eax                #  13:     param  3 <- 0
    pushl   %eax                   
    movl    $97, %eax               #  14:     param  2 <- 97
    pushl   %eax                   
    leal    -24920(%ebp), %eax      #  15:     &()    t4 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  1 <- t4
    pushl   %eax                   
    leal    -6464(%ebp), %eax       #  17:     &()    t5 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  19:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    call    ReadInt                 #  20:     call   t7 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    $97, %eax               #  21:     return 97
    jmp     l_f2_exit              
l_f2_20_while_cond:
    jmp     l_f2_20_while_cond      #  23:     goto   20_while_cond
    movl    $22730, %eax            #  24:     assign v2 <- 22730
    movl    %eax, 16(%ebp)         
    movl    $100, %eax              #  25:     return 100
    jmp     l_f2_exit              
    movl    $97, %eax               #  26:     if     97 = 100 goto 25_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_25_if_true        
    jmp     l_f2_26_if_false        #  27:     goto   26_if_false
l_f2_25_if_true:
    jmp     l_f2_24                 #  29:     goto   24
l_f2_26_if_false:
l_f2_24:
    jmp     l_f2_11                 #  32:     goto   11
l_f2_13_if_false:
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $24908, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <array 2 of <array 8 of <array 6 of <array 7 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    movl    $97, %eax               #   0:     if     97 # 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $38093, %eax            #   3:     param  2 <- 38093
    pushl   %eax                   
    leal    v0, %eax                #   4:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  1 <- t0
    pushl   %eax                   
    movl    $97, %eax               #   6:     param  0 <- 97
    pushl   %eax                   
    call    f2                      #   7:     call   t1 <- f2
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
l_test_6_while_cond:
    jmp     l_test_5                #  12:     goto   5
l_test_10_while_cond:
    jmp     l_test_10_while_cond    #  14:     goto   10_while_cond
    jmp     l_test_6_while_cond     #  15:     goto   6_while_cond
l_test_5:
    movl    $97, %eax               #  17:     assign v1 <- 97
    movb    %al, v1                

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
v0:                                 # <array 7 of <array 2 of <array 8 of <array 6 of <array 7 of <int>>>>>>
    .long    5
    .long    7
    .long    2
    .long    8
    .long    6
    .long    7
    .skip 18816
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
