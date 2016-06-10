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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v0       <bool> %ebp-33 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   3:     assign v0 <- 0
    movb    %al, -33(%ebp)         
l_f0_7_while_cond:
    jmp     l_f0_7_while_cond       #   5:     goto   7_while_cond
    movl    $6948, %eax             #   6:     return 6948
    jmp     l_f0_exit              
l_f0_11_while_cond:
    movl    $98927, %eax            #   8:     if     98927 >= 67818 goto 12_while_body
    movl    $67818, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_12_while_body     
    jmp     l_f0_10                 #   9:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  11:     goto   11_while_cond
l_f0_10:
    movl    $44344, %eax            #  13:     if     44344 <= 47488 goto 15_if_true
    movl    $47488, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  14:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  16:     goto   14
l_f0_16_if_false:
l_f0_14:
l_f0_19_while_cond:
    jmp     l_f0_18                 #  20:     goto   18
    jmp     l_f0_19_while_cond      #  21:     goto   19_while_cond
l_f0_18:
    jmp     l_f0_21                 #  23:     goto   21
l_f0_21:
    jmp     l_f0_0                  #  25:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_26_if_false        #  28:     goto   26_if_false
    movl    $47214, %eax            #  29:     return 47214
    jmp     l_f0_exit              
    jmp     l_f0_27                 #  30:     goto   27
l_f0_27:
    jmp     l_f0_24                 #  32:     goto   24
l_f0_26_if_false:
l_f0_24:
    movl    $50744, %eax            #  35:     add    t4 <- 50744, 80022
    movl    $80022, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  36:     sub    t5 <- t4, 40102
    movl    $40102, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     sub    t6 <- t5, 8453
    movl    $8453, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  38:     sub    t7 <- t6, 67543
    movl    $67543, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  39:     return t7
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 2 of <array 2 of <array 2 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <bool> %ebp-14 ]

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
    movl    $98398, %eax            #   0:     if     98398 >= 93399 goto 1
    movl    $93399, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_1                  #   1:     goto   1
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v3 <- t3
    movb    %al, -14(%ebp)         
l_f1_10_while_cond:
    movl    $97, %eax               #  11:     if     97 < 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_11_while_body     
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_while_body:
    movl    $100, %eax              #  14:     return 100
    jmp     l_f1_exit              
    movl    $58183, %eax            #  15:     assign v1 <- 58183
    movl    %eax, 12(%ebp)         
    movl    $99, %eax               #  16:     if     99 # 98 goto 16_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  17:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_15                 #  19:     goto   15
l_f1_17_if_false:
l_f1_15:
    jmp     l_f1_10_while_cond      #  22:     goto   10_while_cond
l_f1_9:
    call    WriteLn                 #  24:     call   WriteLn

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 8 of <array 2 of <array 1 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 9 of <array 7 of <array 7 of <array 6 of <char>>>>>>> %ebp+16 ]
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
    movl    $39468, %eax            #   0:     sub    t3 <- 39468, 95499
    movl    $95499, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t4 <- t3, 8349
    movl    $8349, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   2:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t6 <- t4, t5
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v3 <- t6
    movl    %eax, -44(%ebp)        
l_f2_2_while_cond:
    movl    $97, %eax               #   6:     if     97 = 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_while_body:
    jmp     l_f2_5                  #   9:     goto   5
l_f2_5:
    jmp     l_f2_2_while_cond       #  11:     goto   2_while_cond
l_f2_1:
l_f2_9_while_cond:
    movl    $23446, %eax            #  14:     div    t7 <- 23446, 49078
    movl    $49078, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     mul    t8 <- t7, 17477
    movl    $17477, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     if     t8 < 38163 goto 10_while_body
    movl    $38163, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_10_while_body     
    jmp     l_f2_8                  #  17:     goto   8
l_f2_10_while_body:
    movl    $0, %eax                #  19:     if     0 # 0 goto 13_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  20:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_12                 #  22:     goto   12
l_f2_14_if_false:
l_f2_12:
    call    f0                      #  25:     call   t9 <- f0
    movl    %eax, -40(%ebp)        
l_f2_18_while_cond:
    jmp     l_f2_18_while_cond      #  27:     goto   18_while_cond
    movl    $98, %eax               #  28:     if     98 = 100 goto 21_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_21_if_true        
    jmp     l_f2_22_if_false        #  29:     goto   22_if_false
l_f2_21_if_true:
    jmp     l_f2_20                 #  31:     goto   20
l_f2_22_if_false:
l_f2_20:
    jmp     l_f2_9_while_cond       #  34:     goto   9_while_cond
l_f2_8:

l_f2_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <array 9 of <array 7 of <array 7 of <array 6 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 1 of <array 8 of <array 2 of <array 1 of <array 10 of <bool>>>>>>> %ebp-24 ]

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
l_test_1_while_cond:
    movl    $71240, %eax            #   1:     if     71240 # 23831 goto 2_while_body
    movl    $23831, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    movl    $87359, %eax            #   6:     if     87359 >= 7470 goto 5
    movl    $7470, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_5               
    jmp     l_test_6                #   7:     goto   6
l_test_5:
    movl    $1, %eax                #   9:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #  10:     goto   7
l_test_6:
    movl    $0, %eax                #  12:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #  14:     assign v0 <- t0
    movb    %al, v0                
l_test_10_while_cond:
    movl    $99258, %eax            #  16:     if     99258 <= 62184 goto 11_while_body
    movl    $62184, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_11_while_body   
    jmp     l_test_9                #  17:     goto   9
l_test_11_while_body:
    movl    $30228, %eax            #  19:     assign v1 <- 30228
    movl    %eax, v1               
    leal    v3, %eax                #  20:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     param  2 <- t1
    pushl   %eax                   
    movl    $99, %eax               #  22:     param  1 <- 99
    pushl   %eax                   
    leal    v2, %eax                #  23:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  25:     call   f2
    addl    $12, %esp              
    jmp     l_test_10_while_cond    #  26:     goto   10_while_cond
l_test_9:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 1 of <array 8 of <array 2 of <array 1 of <array 10 of <bool>>>>>>
    .long    5
    .long    1
    .long    8
    .long    2
    .long    1
    .long   10
    .skip  160
v3:                                 # <array 7 of <array 9 of <array 7 of <array 7 of <array 6 of <char>>>>>>
    .long    5
    .long    7
    .long    9
    .long    7
    .long    7
    .long    6
    .skip 18522








    # end of global data section
    #-----------------------------------------

    .end
##################################################
