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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v0       <bool> %ebp-25 ]

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
    movl    $40836, %eax            #   0:     sub    t5 <- 40836, 71361
    movl    $71361, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t5
    jmp     l_f0_exit              
    jmp     l_f0_2                  #   2:     goto   2
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f0_4:
    movzbl  -17(%ebp), %eax         #  10:     assign v0 <- t6
    movb    %al, -25(%ebp)         
    call    dummyINTfunc            #  11:     call   t7 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 32 of <array 13 of <array 7 of <array 55 of <array 44 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 94 of <array 15 of <array 69 of <array 96 of <array 52 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 96 of <array 40 of <array 94 of <array 25 of <array 48 of <char>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
l_f1_2_while_cond:
    jmp     l_f1_2_while_cond       #   2:     goto   2_while_cond
    jmp     l_f1_7_if_false         #   3:     goto   7_if_false
    jmp     l_f1_7_if_false         #   4:     goto   7_if_false
    jmp     l_f1_11_if_false        #   5:     goto   11_if_false
    jmp     l_f1_9                  #   6:     goto   9
l_f1_11_if_false:
l_f1_9:
l_f1_13_while_cond:
    movl    $76272, %eax            #  10:     if     76272 >= 25034 goto 14_while_body
    movl    $25034, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_14_while_body     
    jmp     l_f1_12                 #  11:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  13:     goto   13_while_cond
l_f1_12:
    movl    $100, %eax              #  15:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_5                  #  16:     goto   5
l_f1_7_if_false:
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 96 of <array 40 of <array 94 of <array 25 of <array 48 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 94 of <array 15 of <array 69 of <array 96 of <array 52 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <ptr(4) to <array 32 of <array 13 of <array 7 of <array 55 of <array 44 of <int>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <char> %ebp-45 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 85 of <array 93 of <array 43 of <array 63 of <array 23 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 37 of <array 23 of <array 92 of <array 66 of <array 11 of <int>>>>>>> %ebp+16 ]
    #   -28188236(%ebp)  28188184  [ $v3       <array 32 of <array 13 of <array 7 of <array 55 of <array 44 of <int>>>>>> %ebp-28188236 ]
    #   -1970874980(%ebp)  1942686744  [ $v4       <array 94 of <array 15 of <array 69 of <array 96 of <array 52 of <int>>>>>> %ebp-1970874980 ]
    #   1890940292(%ebp)  433152024  [ $v5       <array 96 of <array 40 of <array 94 of <array 25 of <array 48 of <char>>>>>> %ebp+1890940292 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1890940304, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $601006748, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-28188236(%ebp)      # local array 'v3': 5 dimensions
    movl    $32,-28188232(%ebp)     #   dimension 1: 32 elements
    movl    $13,-28188228(%ebp)     #   dimension 2: 13 elements
    movl    $7,-28188224(%ebp)      #   dimension 3: 7 elements
    movl    $55,-28188220(%ebp)     #   dimension 4: 55 elements
    movl    $44,-28188216(%ebp)     #   dimension 5: 44 elements
    movl    $5,-1970874980(%ebp)    # local array 'v4': 5 dimensions
    movl    $94,-1970874976(%ebp)   #   dimension 1: 94 elements
    movl    $15,-1970874972(%ebp)   #   dimension 2: 15 elements
    movl    $69,-1970874968(%ebp)   #   dimension 3: 69 elements
    movl    $96,-1970874964(%ebp)   #   dimension 4: 96 elements
    movl    $52,-1970874960(%ebp)   #   dimension 5: 52 elements
    movl    $5,1890940292(%ebp)     # local array 'v5': 5 dimensions
    movl    $96,1890940296(%ebp)    #   dimension 1: 96 elements
    movl    $40,1890940300(%ebp)    #   dimension 2: 40 elements
    movl    $94,1890940304(%ebp)    #   dimension 3: 94 elements
    movl    $25,1890940308(%ebp)    #   dimension 4: 25 elements
    movl    $48,1890940312(%ebp)    #   dimension 5: 48 elements

    # function body
    leal    1890940292(%ebp), %eax  #   0:     &()    t5 <- v5
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   1:     param  2 <- t5
    pushl   %eax                   
    leal    -1970874980(%ebp), %eax #   2:     &()    t6 <- v4
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     param  1 <- t6
    pushl   %eax                   
    leal    -28188236(%ebp), %eax   #   4:     &()    t7 <- v3
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   5:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #   6:     call   t8 <- f1
    addl    $12, %esp              
    movb    %al, -45(%ebp)         
    movl    $98589, %eax            #   7:     div    t9 <- 98589, 56631
    movl    $56631, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   8:     div    t10 <- t9, 85534
    movl    $85534, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     div    t11 <- t10, 42400
    movl    $42400, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     mul    t12 <- t11, 28413
    movl    $28413, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     sub    t13 <- t12, 81292
    movl    $81292, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     add    t14 <- t13, 73762
    movl    $73762, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     return t14
    jmp     l_f2_exit              
l_f2_3_while_cond:
    movl    $99, %eax               #  15:     if     99 <= 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_4_while_body      
    jmp     l_f2_2                  #  16:     goto   2
l_f2_4_while_body:
l_f2_7_while_cond:
    jmp     l_f2_7_while_cond       #  19:     goto   7_while_cond
l_f2_10_while_cond:
    jmp     l_f2_11_while_body      #  21:     goto   11_while_body
    jmp     l_f2_9                  #  22:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  24:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_3_while_cond       #  26:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $-1890940304, %esp      # remove locals
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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 <= t0 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    movl    $39559, %eax            #   4:     if     39559 <= 65595 goto 5_if_true
    movl    $65595, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   7:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $98, %eax               #  10:     if     98 > 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_9_if_true       
    jmp     l_test_10_if_false      #  11:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  13:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_0                #  16:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $76996, %eax            #  19:     div    t1 <- 76996, 54102
    movl    $54102, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     mul    t2 <- t1, 26311
    movl    $26311, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     div    t3 <- t2, 36126
    movl    $36126, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $387, %eax              #  22:     if     387 >= t3 goto 13
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_13              
    jmp     l_test_14               #  23:     goto   14
l_test_13:
    movl    $1, %eax                #  25:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_15               #  26:     goto   15
l_test_14:
    movl    $0, %eax                #  28:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_15:
    movzbl  -29(%ebp), %eax         #  30:     assign v0 <- t4
    movb    %al, v0                
    jmp     l_test_exit            

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
