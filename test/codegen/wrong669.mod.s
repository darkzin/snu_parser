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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 7 of <array 9 of <array 4 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 1 of <array 10 of <array 5 of <array 6 of <int>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v4       <bool> %ebp-14 ]

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
l_f0_1_while_cond:
    movl    $100, %eax              #   1:     if     100 <= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
l_f0_5_while_cond:
    call    dummyBOOLfunc           #   7:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     if     t7 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_7                 
    jmp     l_f0_4                  #   9:     goto   4
l_f0_7:
    jmp     l_f0_4                  #  11:     goto   4
    jmp     l_f0_5_while_cond       #  12:     goto   5_while_cond
l_f0_4:
    movl    $1, %eax                #  14:     assign v4 <- 1
    movb    %al, -14(%ebp)         

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 6 of <array 6 of <array 10 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
l_f1_1_while_cond:
    movl    $60039, %eax            #   1:     sub    t7 <- 60039, 9439
    movl    $9439, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     sub    t8 <- t7, 53405
    movl    $53405, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $90073, %eax            #   3:     if     90073 > t8 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    call    dummyCHARfunc           #   6:     call   t9 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    call    ReadInt                 #   7:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_7_while_cond:
    jmp     l_f1_6                  #   9:     goto   6
    jmp     l_f1_7_while_cond       #  10:     goto   7_while_cond
l_f1_6:
    call    dummyBOOLfunc           #  12:     call   t11 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_1_while_cond       #  13:     goto   1_while_cond
l_f1_0:
l_f1_11_while_cond:
l_f1_14_while_cond:
    movl    $62397, %eax            #  17:     if     62397 < 83459 goto 15_while_body
    movl    $83459, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  18:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  20:     goto   14_while_cond
l_f1_13:
    movl    $98, %eax               #  22:     if     98 < 98 goto 18
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_18                
    jmp     l_f1_19                 #  23:     goto   19
l_f1_18:
    movl    $1, %eax                #  25:     assign t12 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_20                 #  26:     goto   20
l_f1_19:
    movl    $0, %eax                #  28:     assign t12 <- 0
    movb    %al, -18(%ebp)         
l_f1_20:
    movzbl  -18(%ebp), %eax         #  30:     assign v3 <- t12
    movb    %al, 16(%ebp)          
    jmp     l_f1_11_while_cond      #  31:     goto   11_while_cond
    movl    $98, %eax               #  32:     if     98 # 98 goto 23_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  33:     goto   24_if_false
l_f1_23_if_true:
    movl    $97, %eax               #  35:     return 97
    jmp     l_f1_exit              
l_f1_28_while_cond:
    movl    $52848, %eax            #  37:     if     52848 < 72052 goto 29_while_body
    movl    $72052, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_29_while_body     
    jmp     l_f1_27                 #  38:     goto   27
l_f1_29_while_body:
    jmp     l_f1_28_while_cond      #  40:     goto   28_while_cond
l_f1_27:
    jmp     l_f1_22                 #  42:     goto   22
l_f1_24_if_false:
l_f1_22:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
l_f2_1_while_cond:
    movl    $88002, %eax            #   1:     add    t7 <- 88002, 62907
    movl    $62907, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $40590, %eax            #   2:     if     40590 <= t7 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    movl    $35774, %eax            #   5:     assign v3 <- 35774
    movl    %eax, 16(%ebp)         
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    call    dummyINTfunc            #   8:     call   t8 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $89572, %eax            #   9:     sub    t9 <- 89572, t8
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $12838, %eax            #  10:     if     12838 <= t9 goto 6
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_6                 
    jmp     l_f2_7                  #  11:     goto   7
l_f2_6:
    movl    $1, %eax                #  13:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_8                  #  14:     goto   8
l_f2_7:
    movl    $0, %eax                #  16:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_8:
    movzbl  -13(%ebp), %eax         #  18:     return t10
    jmp     l_f2_exit              
l_f2_11_while_cond:
l_f2_14_while_cond:
    jmp     l_f2_14_while_cond      #  21:     goto   14_while_cond
    movl    $99, %eax               #  22:     assign v2 <- 99
    movb    %al, 12(%ebp)          
    movl    $97, %eax               #  23:     assign v2 <- 97
    movb    %al, 12(%ebp)          
    jmp     l_f2_11_while_cond      #  24:     goto   11_while_cond

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    movl    $97, %eax               #   2:     if     97 > 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_exit            
    movl    $84529, %eax            #   6:     assign v0 <- 84529
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $46877, %eax            #   8:     assign v0 <- 46877
    movl    %eax, v0               
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
l_test_10_while_cond:
    movl    $48398, %eax            #  12:     div    t1 <- 48398, 43232
    movl    $43232, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     div    t2 <- t1, 21437
    movl    $21437, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     mul    t3 <- t2, 95438
    movl    $95438, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     div    t4 <- t3, 77846
    movl    $77846, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t5 <- t4, 54287
    movl    $54287, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $92930, %eax            #  17:     if     92930 > t5 goto 11_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #  18:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  20:     goto   10_while_cond
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_19               #  23:     goto   19
    movl    $1, %eax                #  24:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_20               #  25:     goto   20
l_test_19:
    movl    $0, %eax                #  27:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_test_20:
    movzbl  -37(%ebp), %eax         #  29:     if     t6 # 0 goto 15_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_15_if_true      
    jmp     l_test_16_if_false      #  30:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  32:     goto   14
l_test_16_if_false:
l_test_14:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
