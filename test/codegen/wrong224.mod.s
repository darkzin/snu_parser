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
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 6 of <array 6 of <array 2 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 6 of <array 4 of <array 6 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #    -44(%ebp)   4  [ $v3       <int> %ebp-44 ]

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
    movl    $55821, %eax            #   0:     sub    t5 <- 55821, 94287
    movl    $94287, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     assign v3 <- t5
    movl    %eax, -44(%ebp)        
l_f0_2_while_cond:
    movl    $96836, %eax            #   3:     if     96836 <= 78227 goto 3_while_body
    movl    $78227, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    call    dummyCHARfunc           #   6:     call   t6 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $97, %eax               #   7:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
    movl    $99, %eax               #   9:     if     99 > 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #  10:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #  12:     goto   7
l_f0_9_if_false:
l_f0_7:
    movl    $0, %eax                #  15:     if     0 # 0 goto 12_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  16:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  18:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_2_while_cond       #  21:     goto   2_while_cond
l_f0_1:
    movl    $83887, %eax            #  23:     mul    t7 <- 83887, 58453
    movl    $58453, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     mul    t8 <- t7, 17999
    movl    $17999, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     mul    t9 <- t8, 46844
    movl    $46844, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     mul    t10 <- t9, 84388
    movl    $84388, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  27:     sub    t11 <- t10, 18183
    movl    $18183, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     return t11
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 4 of <array 10 of <array 6 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 10 of <array 5 of <array 9 of <array 6 of <int>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   2:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 9 of <array 10 of <array 5 of <array 9 of <array 6 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 3 of <array 4 of <array 10 of <array 6 of <array 3 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 4 of <array 3 of <array 6 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 7 of <array 4 of <array 8 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 4 of <array 5 of <array 4 of <array 9 of <bool>>>>>>> %ebp+20 ]
    #   -2228(%ebp)  2184  [ $v4       <array 3 of <array 4 of <array 10 of <array 6 of <array 3 of <bool>>>>>> %ebp-2228 ]
    #   -99452(%ebp)  97224  [ $v5       <array 9 of <array 10 of <array 5 of <array 9 of <array 6 of <int>>>>>> %ebp-99452 ]
    #   -99453(%ebp)   1  [ $v6       <char> %ebp-99453 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $99444, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24861, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2228(%ebp)          # local array 'v4': 5 dimensions
    movl    $3,-2224(%ebp)          #   dimension 1: 3 elements
    movl    $4,-2220(%ebp)          #   dimension 2: 4 elements
    movl    $10,-2216(%ebp)         #   dimension 3: 10 elements
    movl    $6,-2212(%ebp)          #   dimension 4: 6 elements
    movl    $3,-2208(%ebp)          #   dimension 5: 3 elements
    movl    $5,-99452(%ebp)         # local array 'v5': 5 dimensions
    movl    $9,-99448(%ebp)         #   dimension 1: 9 elements
    movl    $10,-99444(%ebp)        #   dimension 2: 10 elements
    movl    $5,-99440(%ebp)         #   dimension 3: 5 elements
    movl    $9,-99436(%ebp)         #   dimension 4: 9 elements
    movl    $6,-99432(%ebp)         #   dimension 5: 6 elements

    # function body
    movl    $26694, %eax            #   0:     sub    t5 <- 26694, 17189
    movl    $17189, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     sub    t6 <- t5, 96070
    movl    $96070, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     return t6
    jmp     l_f2_exit              
    call    ReadInt                 #   3:     call   t7 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     mul    t8 <- t7, 134
    movl    $134, %ebx             
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     div    t9 <- t8, 36901
    movl    $36901, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     return t9
    jmp     l_f2_exit              
    movl    $40296, %eax            #   7:     return 40296
    jmp     l_f2_exit              
    leal    -99452(%ebp), %eax      #   8:     &()    t10 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     param  1 <- t10
    pushl   %eax                   
    leal    -2228(%ebp), %eax       #  10:     &()    t11 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  12:     call   t12 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  13:     assign v6 <- 97
    movb    %al, -99453(%ebp)      
l_f2_9_while_cond:
    movl    $97, %eax               #  15:     if     97 > 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_10_while_body     
    jmp     l_f2_8                  #  16:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  18:     goto   9_while_cond
l_f2_8:
l_f2_13_while_cond:
    jmp     l_f2_12                 #  21:     goto   12
    jmp     l_f2_13_while_cond      #  22:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_2                  #  24:     goto   2
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $99444, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_4_while_cond:
    jmp     l_test_3                #   3:     goto   3
    jmp     l_test_4_while_cond     #   4:     goto   4_while_cond
l_test_3:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_8_while_cond:
    call    dummyCHARfunc           #   9:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  10:     if     98 = t0 goto 9_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #  11:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  13:     goto   8_while_cond
l_test_7:
l_test_12_while_cond:
    movl    $40155, %eax            #  16:     if     40155 <= 26928 goto 13_while_body
    movl    $26928, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_13_while_body   
    jmp     l_test_11               #  17:     goto   11
l_test_13_while_body:
    call    dummyCHARfunc           #  19:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_12_while_cond    #  20:     goto   12_while_cond
l_test_11:
    movl    $96606, %eax            #  22:     add    t2 <- 96606, 39557
    movl    $39557, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     assign v0 <- t2
    movl    %eax, v0               
    movl    $62116, %eax            #  24:     mul    t3 <- 62116, 31732
    movl    $31732, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     mul    t4 <- t3, 77498
    movl    $77498, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $85763, %eax            #  26:     if     85763 >= t4 goto 18_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_18_if_true      
    jmp     l_test_19_if_false      #  27:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_exit            
l_test_23_while_cond:
    jmp     l_test_22               #  31:     goto   22
    jmp     l_test_23_while_cond    #  32:     goto   23_while_cond
l_test_22:
    jmp     l_test_27_if_false      #  34:     goto   27_if_false
    jmp     l_test_25               #  35:     goto   25
l_test_27_if_false:
l_test_25:
    jmp     l_test_17               #  38:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
