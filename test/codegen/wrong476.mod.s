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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <bool> %ebp-41 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 5 of <array 9 of <array 6 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 1 of <array 2 of <array 8 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 8 of <array 1 of <array 10 of <array 3 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 5 of <array 4 of <array 4 of <array 7 of <int>>>>>>> %ebp+20 ]
    #    -42(%ebp)   1  [ $v4       <bool> %ebp-42 ]
    #    -43(%ebp)   1  [ $v5       <char> %ebp-43 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    jmp     l_f0_2                  #   1:     goto   2
    jmp     l_f0_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   8:     return t2
    jmp     l_f0_exit              
    movl    $66650, %eax            #   9:     sub    t3 <- 66650, 79205
    movl    $79205, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     sub    t4 <- t3, 2273
    movl    $2273, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     sub    t5 <- t4, 45724
    movl    $45724, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     add    t6 <- t5, 5448
    movl    $5448, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     sub    t7 <- t6, 25605
    movl    $25605, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     sub    t8 <- t7, 93068
    movl    $93068, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     if     t8 # 15660 goto 10
    movl    $15660, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_10                
    jmp     l_f0_11                 #  16:     goto   11
l_f0_10:
    movl    $1, %eax                #  18:     assign t9 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f0_12                 #  19:     goto   12
l_f0_11:
    movl    $0, %eax                #  21:     assign t9 <- 0
    movb    %al, -41(%ebp)         
l_f0_12:
    movzbl  -41(%ebp), %eax         #  23:     return t9
    jmp     l_f0_exit              
    jmp     l_f0_16_if_false        #  24:     goto   16_if_false
    movl    $97, %eax               #  25:     if     97 < 100 goto 18
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_18                
    jmp     l_f0_19                 #  26:     goto   19
l_f0_18:
    movl    $1, %eax                #  28:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_20                 #  29:     goto   20
l_f0_19:
    movl    $0, %eax                #  31:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_20:
    movzbl  -13(%ebp), %eax         #  33:     assign v4 <- t10
    movb    %al, -42(%ebp)         
    movl    $97, %eax               #  34:     assign v5 <- 97
    movb    %al, -43(%ebp)         
l_f0_24_while_cond:
    movl    $100, %eax              #  36:     if     100 <= 98 goto 25_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_25_while_body     
    jmp     l_f0_23                 #  37:     goto   23
l_f0_25_while_body:
    jmp     l_f0_24_while_cond      #  39:     goto   24_while_cond
l_f0_23:
l_f0_28_while_cond:
    movl    $78145, %eax            #  42:     if     78145 >= 24082 goto 29_while_body
    movl    $24082, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_29_while_body     
    jmp     l_f0_27                 #  43:     goto   27
l_f0_29_while_body:
    jmp     l_f0_28_while_cond      #  45:     goto   28_while_cond
l_f0_27:
    jmp     l_f0_31                 #  47:     goto   31
l_f0_31:
    jmp     l_f0_14                 #  49:     goto   14
l_f0_16_if_false:
l_f0_14:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 9 of <array 9 of <array 9 of <array 10 of <char>>>>>>> %ebp+8 ]
    #    -18(%ebp)   1  [ $v1       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $v2       <char> %ebp-19 ]

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
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_5_while_cond:
    movl    $55302, %eax            #   2:     if     55302 # 78902 goto 6_while_body
    movl    $78902, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_6_while_body      
    jmp     l_f1_4                  #   3:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_0                  #   7:     goto   0
l_f1_0:
    movl    $3105, %eax             #   9:     if     3105 >= 68363 goto 9_if_true
    movl    $68363, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  10:     goto   10_if_false
l_f1_9_if_true:
l_f1_13_while_cond:
    movl    $12649, %eax            #  13:     if     12649 <= 32454 goto 14_while_body
    movl    $32454, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_14_while_body     
    jmp     l_f1_12                 #  14:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  16:     goto   13_while_cond
l_f1_12:
    movl    $1, %eax                #  18:     assign v1 <- 1
    movb    %al, -18(%ebp)         
    movl    $98, %eax               #  19:     assign v2 <- 98
    movb    %al, -19(%ebp)         
    call    dummyCHARfunc           #  20:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_8                  #  21:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_22                 #  24:     goto   22
l_f1_22:
    jmp     l_f1_exit              
l_f1_27_while_cond:
    movl    $44451, %eax            #  28:     if     44451 <= 4679 goto 28_while_body
    movl    $4679, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_28_while_body     
    jmp     l_f1_26                 #  29:     goto   26
l_f1_28_while_body:
    jmp     l_f1_27_while_cond      #  31:     goto   27_while_cond
l_f1_26:
    jmp     l_f1_19                 #  33:     goto   19
l_f1_19:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 8 of <array 9 of <array 9 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 7 of <array 4 of <array 10 of <array 10 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 >= t2 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     return t3
    jmp     l_f2_exit              
    movl    $100, %eax              #   9:     assign v4 <- 100
    movb    %al, -15(%ebp)         

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    call    ReadInt                 #   2:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_4_while_cond:
    jmp     l_test_3                #   4:     goto   3
    jmp     l_test_3                #   5:     goto   3
    jmp     l_test_3                #   6:     goto   3
    jmp     l_test_4_while_cond     #   7:     goto   4_while_cond
l_test_3:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
