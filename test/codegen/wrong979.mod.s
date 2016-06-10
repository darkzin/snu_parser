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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 1 of <array 10 of <array 2 of <array 2 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 5 of <array 4 of <array 8 of <array 10 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    call    WriteLn                 #   0:     call   WriteLn
l_f0_2_while_cond:
    movl    $33578, %eax            #   2:     if     33578 >= 24471 goto 3_while_body
    movl    $24471, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    movl    $41316, %eax            #   5:     assign v1 <- 41316
    movl    %eax, 12(%ebp)         
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
    movl    $97, %eax               #   8:     return 97
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    call    ReadInt                 #   0:     call   t6 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     div    t7 <- t6, 8822
    movl    $8822, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     return t7
    jmp     l_f1_exit              
    call    ReadInt                 #   3:     call   t8 <- ReadInt
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     sub    t9 <- t8, 84224
    movl    $84224, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   5:     add    t10 <- t9, 17127
    movl    $17127, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     sub    t11 <- t10, 88011
    movl    $88011, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     sub    t12 <- t11, 7849
    movl    $7849, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     return t12
    jmp     l_f1_exit              
    call    ReadInt                 #   9:     call   t13 <- ReadInt
    movl    %eax, -28(%ebp)        

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 8 of <array 5 of <array 4 of <array 8 of <array 10 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 1 of <array 1 of <array 10 of <array 2 of <array 2 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 7 of <array 8 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -128(%ebp)  64  [ $v4       <array 1 of <array 1 of <array 10 of <array 2 of <array 2 of <bool>>>>>> %ebp-128 ]
    #   -12952(%ebp)  12824  [ $v5       <array 8 of <array 5 of <array 4 of <array 8 of <array 10 of <bool>>>>>> %ebp-12952 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12940, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3235, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-128(%ebp)           # local array 'v4': 5 dimensions
    movl    $1,-124(%ebp)           #   dimension 1: 1 elements
    movl    $1,-120(%ebp)           #   dimension 2: 1 elements
    movl    $10,-116(%ebp)          #   dimension 3: 10 elements
    movl    $2,-112(%ebp)           #   dimension 4: 2 elements
    movl    $2,-108(%ebp)           #   dimension 5: 2 elements
    movl    $5,-12952(%ebp)         # local array 'v5': 5 dimensions
    movl    $8,-12948(%ebp)         #   dimension 1: 8 elements
    movl    $5,-12944(%ebp)         #   dimension 2: 5 elements
    movl    $4,-12940(%ebp)         #   dimension 3: 4 elements
    movl    $8,-12936(%ebp)         #   dimension 4: 8 elements
    movl    $10,-12932(%ebp)        #   dimension 5: 10 elements

    # function body
    movl    $56039, %eax            #   0:     div    t6 <- 56039, 56829
    movl    $56829, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   1:     mul    t7 <- t6, 52829
    movl    $52829, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   2:     div    t8 <- t7, 99373
    movl    $99373, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   3:     div    t9 <- t8, 89162
    movl    $89162, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    $50948, %eax            #   4:     add    t10 <- 50948, 44443
    movl    $44443, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -64(%ebp), %eax         #   5:     if     t9 > t10 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   6:     goto   2
l_f2_1:
    movl    $1, %eax                #   8:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_3                  #   9:     goto   3
l_f2_2:
    movl    $0, %eax                #  11:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_3:
    movzbl  -17(%ebp), %eax         #  13:     assign v3 <- t11
    movb    %al, 20(%ebp)          
    leal    -12952(%ebp), %eax      #  14:     &()    t12 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  3 <- t12
    pushl   %eax                   
    leal    -128(%ebp), %eax        #  16:     &()    t13 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     param  2 <- t13
    pushl   %eax                   
    movl    $75420, %eax            #  18:     param  1 <- 75420
    pushl   %eax                   
    movl    $98, %eax               #  19:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #  20:     call   t14 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  21:     if     t14 <= 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  22:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  24:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $33343, %eax            #  27:     add    t15 <- 33343, 91605
    movl    $91605, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     sub    t16 <- t15, 60766
    movl    $60766, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  29:     add    t17 <- t16, 3985
    movl    $3985, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  30:     sub    t18 <- t17, 59783
    movl    $59783, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  31:     assign v0 <- t18
    movl    %eax, 8(%ebp)          

l_f2_exit:
    # epilogue
    addl    $12940, %esp            # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    call    WriteLn                 #   1:     call   WriteLn
l_test_3_while_cond:
    movl    $87143, %eax            #   3:     param  0 <- 87143
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #   6:     goto   8_while_cond
    jmp     l_test_3_while_cond     #   7:     goto   3_while_cond
    movl    $19200, %eax            #   8:     mul    t0 <- 19200, 89782
    movl    $89782, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     div    t1 <- t0, 85670
    movl    $85670, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     div    t2 <- t1, 15001
    movl    $15001, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     mul    t3 <- t2, 95824
    movl    $95824, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     div    t4 <- t3, 18155
    movl    $18155, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     add    t5 <- t4, 51345
    movl    $51345, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #  15:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
