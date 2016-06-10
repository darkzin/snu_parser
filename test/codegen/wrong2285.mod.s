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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
l_f0_2_while_cond:
    movl    $55015, %eax            #   2:     sub    t9 <- 55015, 10907
    movl    $10907, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t10 <- t9, 63454
    movl    $63454, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $65496, %eax            #   4:     if     65496 >= t10 goto 3_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
    call    dummyBOOLfunc           #   9:     call   t11 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  10:     assign v0 <- t11
    movb    %al, -25(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 64 of <array 99 of <array 64 of <array 73 of <array 50 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
    jmp     l_f1_6                  #   3:     goto   6
l_f1_6:
    jmp     l_f1_2_while_cond       #   5:     goto   2_while_cond
l_f1_1:
l_f1_10_while_cond:
    movl    $77429, %eax            #   8:     div    t8 <- 77429, 13614
    movl    $13614, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     mul    t9 <- t8, 79361
    movl    $79361, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     div    t10 <- t9, 90156
    movl    $90156, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     div    t11 <- t10, 98564
    movl    $98564, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     if     t11 <= 18149 goto 11_while_body
    movl    $18149, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  15:     goto   10_while_cond
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    movl    $99, %eax               #   0:     if     99 > 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_5_if_true          #   3:     goto   5_if_true
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $99, %eax               #  12:     if     99 > 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  13:     goto   11_if_false
l_f2_10_if_true:
    movl    $13581, %eax            #  15:     if     13581 >= 59588 goto 14_if_true
    movl    $59588, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  16:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  18:     goto   13
l_f2_15_if_false:
l_f2_13:
    leal    _str_1, %eax            #  21:     &()    t8 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #  23:     call   WriteStr
    addl    $4, %esp               
    movl    $32230, %eax            #  24:     assign v0 <- 32230
    movl    %eax, 8(%ebp)          
    movl    $100, %eax              #  25:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_20                 #  26:     goto   20
l_f2_20:
    call    dummyINTfunc            #  28:     call   t9 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #  29:     return 100
    jmp     l_f2_exit              
    movl    $99, %eax               #  30:     return 99
    jmp     l_f2_exit              
    movl    $98, %eax               #  31:     assign v2 <- 98
    movb    %al, 16(%ebp)          
    jmp     l_f2_9                  #  32:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $99, %eax               #  35:     return 99
    jmp     l_f2_exit              
    movl    $98, %eax               #  36:     if     98 # 97 goto 32_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_32_if_true        
    jmp     l_f2_33_if_false        #  37:     goto   33_if_false
l_f2_32_if_true:
    jmp     l_f2_31                 #  39:     goto   31
l_f2_33_if_false:
l_f2_31:
    movl    $20866, %eax            #  42:     assign v0 <- 20866
    movl    %eax, 8(%ebp)          
    jmp     l_f2_27                 #  43:     goto   27
l_f2_27:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <bool> %ebp-38 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $80596, %eax            #   2:     add    t0 <- 80596, 58368
    movl    $58368, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t1 <- t0, 22480
    movl    $22480, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t2 <- t1, 55969
    movl    $55969, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     if     t2 > 77707 goto 3_while_body
    movl    $77707, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_3_while_body    
    jmp     l_test_1                #   6:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
    call    dummyBOOLfunc           #  10:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
l_test_7_while_cond:
    movl    $99, %eax               #  12:     if     99 <= 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_8_while_body    
    jmp     l_test_6                #  13:     goto   6
l_test_8_while_body:
    call    ReadInt                 #  15:     call   t4 <- ReadInt
    movl    %eax, -32(%ebp)        
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  17:     goto   12_while_cond
    jmp     l_test_7_while_cond     #  18:     goto   7_while_cond
l_test_6:
    movl    $11761, %eax            #  20:     mul    t5 <- 11761, 26252
    movl    $26252, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $88053, %eax            #  21:     if     88053 >= t5 goto 15_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_15_if_true      
    jmp     l_test_16_if_false      #  22:     goto   16_if_false
l_test_15_if_true:
    movl    $98, %eax               #  24:     assign v0 <- 98
    movb    %al, v0                
    call    dummyCHARfunc           #  25:     call   t6 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    jmp     l_test_exit            
l_test_22_while_cond:
    jmp     l_test_22_while_cond    #  28:     goto   22_while_cond
    jmp     l_test_14               #  29:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_25_if_true       #  32:     goto   25_if_true
l_test_25_if_true:
    call    dummyBOOLfunc           #  34:     call   t7 <- dummyBOOLfunc
    movb    %al, -38(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_24               #  36:     goto   24
l_test_24:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
