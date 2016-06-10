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
    #    -53(%ebp)   1  [ $t20      <char> %ebp-53 ]
    #    -54(%ebp)   1  [ $t21      <char> %ebp-54 ]
    #    -55(%ebp)   1  [ $t3       <bool> %ebp-55 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 1 of <array 5 of <array 7 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 1 of <array 10 of <array 6 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 10 of <array 3 of <array 4 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -81(%ebp)   1  [ $v4       <bool> %ebp-81 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    jmp     l_f0_2                  #   1:     goto   2
    movl    $1, %eax                #   2:     assign t3 <- 1
    movb    %al, -55(%ebp)         
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $0, %eax                #   5:     assign t3 <- 0
    movb    %al, -55(%ebp)         
l_f0_3:
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $71336, %eax            #  10:     mul    t5 <- 71336, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  11:     add    t6 <- t5, 8897
    movl    $8897, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  15:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  16:     add    t9 <- t8, 11562
    movl    $11562, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  20:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     add    t12 <- t11, 66806
    movl    $66806, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  25:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t15 <- t14, 99583
    movl    $99583, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  28:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  29:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  30:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  31:     add    t19 <- v1, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -55(%ebp), %eax         #  32:     assign @t19 <- t3
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  33:     call   t20 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #  34:     return t20
    jmp     l_f0_exit              
    movl    $54566, %eax            #  35:     if     54566 # 66836 goto 9_if_true
    movl    $66836, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  36:     goto   10_if_false
l_f0_9_if_true:
l_f0_13_while_cond:
    movl    $97, %eax               #  39:     if     97 >= 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_14_while_body     
    jmp     l_f0_12                 #  40:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  42:     goto   13_while_cond
l_f0_12:
    call    dummyCHARfunc           #  44:     call   t21 <- dummyCHARfunc
    movb    %al, -54(%ebp)         
    movzbl  -54(%ebp), %eax         #  45:     return t21
    jmp     l_f0_exit              
    jmp     l_f0_8                  #  46:     goto   8
l_f0_10_if_false:
l_f0_8:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 10 of <array 3 of <array 4 of <array 1 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 4 of <array 1 of <array 10 of <array 6 of <array 1 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 2 of <array 1 of <array 5 of <array 7 of <array 7 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <char> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 3 of <array 2 of <array 3 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 4 of <array 8 of <array 7 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #   -548(%ebp)  514  [ $v2       <array 2 of <array 1 of <array 5 of <array 7 of <array 7 of <char>>>>>> %ebp-548 ]
    #   -812(%ebp)  264  [ $v3       <array 4 of <array 1 of <array 10 of <array 6 of <array 1 of <bool>>>>>> %ebp-812 ]
    #   -1796(%ebp)  984  [ $v4       <array 8 of <array 10 of <array 3 of <array 4 of <array 1 of <bool>>>>>> %ebp-1796 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1784, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $446, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-548(%ebp)           # local array 'v2': 5 dimensions
    movl    $2,-544(%ebp)           #   dimension 1: 2 elements
    movl    $1,-540(%ebp)           #   dimension 2: 1 elements
    movl    $5,-536(%ebp)           #   dimension 3: 5 elements
    movl    $7,-532(%ebp)           #   dimension 4: 7 elements
    movl    $7,-528(%ebp)           #   dimension 5: 7 elements
    movl    $5,-812(%ebp)           # local array 'v3': 5 dimensions
    movl    $4,-808(%ebp)           #   dimension 1: 4 elements
    movl    $1,-804(%ebp)           #   dimension 2: 1 elements
    movl    $10,-800(%ebp)          #   dimension 3: 10 elements
    movl    $6,-796(%ebp)           #   dimension 4: 6 elements
    movl    $1,-792(%ebp)           #   dimension 5: 1 elements
    movl    $5,-1796(%ebp)          # local array 'v4': 5 dimensions
    movl    $8,-1792(%ebp)          #   dimension 1: 8 elements
    movl    $10,-1788(%ebp)         #   dimension 2: 10 elements
    movl    $3,-1784(%ebp)          #   dimension 3: 3 elements
    movl    $4,-1780(%ebp)          #   dimension 4: 4 elements
    movl    $1,-1776(%ebp)          #   dimension 5: 1 elements

    # function body
    jmp     l_f1_exit              
    movl    $82213, %eax            #   1:     mul    t3 <- 82213, 2823
    movl    $2823, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t4 <- t3, 20757
    movl    $20757, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t4 <= 92329 goto 2_if_true
    movl    $92329, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_2_if_true:
    movl    $12121, %eax            #   6:     param  3 <- 12121
    pushl   %eax                   
    leal    -1796(%ebp), %eax       #   7:     &()    t5 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     param  2 <- t5
    pushl   %eax                   
    leal    -812(%ebp), %eax        #   9:     &()    t6 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     param  1 <- t6
    pushl   %eax                   
    leal    -548(%ebp), %eax        #  11:     &()    t7 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  13:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #  15:     goto   7_while_cond
l_f1_10_while_cond:
    jmp     l_f1_10_while_cond      #  17:     goto   10_while_cond
    jmp     l_f1_1                  #  18:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    WriteLn                 #  21:     call   WriteLn

l_f1_exit:
    # epilogue
    addl    $1784, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 10 of <array 3 of <array 4 of <array 1 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 1 of <array 10 of <array 6 of <array 1 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 1 of <array 5 of <array 7 of <array 7 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <bool> %ebp-41 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 5 of <array 2 of <array 5 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #   -556(%ebp)  514  [ $v2       <array 2 of <array 1 of <array 5 of <array 7 of <array 7 of <char>>>>>> %ebp-556 ]
    #   -820(%ebp)  264  [ $v3       <array 4 of <array 1 of <array 10 of <array 6 of <array 1 of <bool>>>>>> %ebp-820 ]
    #   -1804(%ebp)  984  [ $v4       <array 8 of <array 10 of <array 3 of <array 4 of <array 1 of <bool>>>>>> %ebp-1804 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1792, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $448, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-556(%ebp)           # local array 'v2': 5 dimensions
    movl    $2,-552(%ebp)           #   dimension 1: 2 elements
    movl    $1,-548(%ebp)           #   dimension 2: 1 elements
    movl    $5,-544(%ebp)           #   dimension 3: 5 elements
    movl    $7,-540(%ebp)           #   dimension 4: 7 elements
    movl    $7,-536(%ebp)           #   dimension 5: 7 elements
    movl    $5,-820(%ebp)           # local array 'v3': 5 dimensions
    movl    $4,-816(%ebp)           #   dimension 1: 4 elements
    movl    $1,-812(%ebp)           #   dimension 2: 1 elements
    movl    $10,-808(%ebp)          #   dimension 3: 10 elements
    movl    $6,-804(%ebp)           #   dimension 4: 6 elements
    movl    $1,-800(%ebp)           #   dimension 5: 1 elements
    movl    $5,-1804(%ebp)          # local array 'v4': 5 dimensions
    movl    $8,-1800(%ebp)          #   dimension 1: 8 elements
    movl    $10,-1796(%ebp)         #   dimension 2: 10 elements
    movl    $3,-1792(%ebp)          #   dimension 3: 3 elements
    movl    $4,-1788(%ebp)          #   dimension 4: 4 elements
    movl    $1,-1784(%ebp)          #   dimension 5: 1 elements

    # function body
    movl    $11194, %eax            #   0:     param  3 <- 11194
    pushl   %eax                   
    leal    -1804(%ebp), %eax       #   1:     &()    t3 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  2 <- t3
    pushl   %eax                   
    leal    -820(%ebp), %eax        #   3:     &()    t4 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  1 <- t4
    pushl   %eax                   
    leal    -556(%ebp), %eax        #   5:     &()    t5 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   7:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movl    $82348, %eax            #   8:     div    t7 <- 82348, 85116
    movl    $85116, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     div    t8 <- t7, 59589
    movl    $59589, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     if     t8 < 58444 goto 2
    movl    $58444, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2                 
    jmp     l_f2_3                  #  11:     goto   3
l_f2_2:
    movl    $1, %eax                #  13:     assign t9 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f2_4                  #  14:     goto   4
l_f2_3:
    movl    $0, %eax                #  16:     assign t9 <- 0
    movb    %al, -41(%ebp)         
l_f2_4:
    movzbl  -41(%ebp), %eax         #  18:     return t9
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  19:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

l_f2_exit:
    # epilogue
    addl    $1792, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <array 5 of <array 2 of <array 5 of <array 5 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 = 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    jmp     l_test_4                #   5:     goto   4
    jmp     l_test_5_while_cond     #   6:     goto   5_while_cond
l_test_4:
    movl    $99, %eax               #   8:     if     99 = 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_8_if_true       
    jmp     l_test_9_if_false       #   9:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  11:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $100, %eax              #  14:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    movl    $0, %eax                #  16:     param  1 <- 0
    pushl   %eax                   
    leal    v0, %eax                #  17:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #  19:     call   t1 <- f2
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #  20:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_test_1_while_cond     #  21:     goto   1_while_cond
l_test_0:
l_test_15_while_cond:
    movl    $99, %eax               #  24:     if     99 = 99 goto 16_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_16_while_body   
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  26:     goto   15_while_cond
    jmp     l_test_exit            

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
v0:                                 # <array 7 of <array 5 of <array 2 of <array 5 of <array 5 of <bool>>>>>>
    .long    5
    .long    7
    .long    5
    .long    2
    .long    5
    .long    5
    .skip 1750








    # end of global data section
    #-----------------------------------------

    .end
##################################################
