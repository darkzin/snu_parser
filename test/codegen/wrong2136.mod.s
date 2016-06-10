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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 64 of <array 8 of <array 52 of <array 16 of <array 29 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f0_exit              
l_f0_5_while_cond:
    movl    $14857, %eax            #   3:     if     14857 # 88502 goto 6_while_body
    movl    $88502, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_6_while_body      
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
l_f0_4:
    movl    $98, %eax               #   8:     if     98 <= 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #   9:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  11:     goto   8
l_f0_10_if_false:
l_f0_8:
    movl    $26859, %eax            #  14:     if     26859 >= 99685 goto 13_if_true
    movl    $99685, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  15:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  17:     goto   12
l_f0_14_if_false:
l_f0_12:
    movl    $98, %eax               #  20:     if     98 <= 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  21:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  23:     goto   16
l_f0_18_if_false:
l_f0_16:
    movl    $97, %eax               #  26:     if     97 >= 99 goto 21_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_21_if_true        
    jmp     l_f0_22_if_false        #  27:     goto   22_if_false
l_f0_21_if_true:
    jmp     l_f0_20                 #  29:     goto   20
l_f0_22_if_false:
l_f0_20:
    jmp     l_f0_24                 #  32:     goto   24
l_f0_24:
    jmp     l_f0_1                  #  34:     goto   1
l_f0_1:
l_f0_28_while_cond:
    call    dummyProcedure          #  37:     call   dummyProcedure
    jmp     l_f0_28_while_cond      #  38:     goto   28_while_cond

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 37 of <array 51 of <array 19 of <array 27 of <array 92 of <int>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v2       <bool> %ebp-25 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_2_if_true          #   1:     goto   2_if_true
l_f1_2_if_true:
    jmp     l_f1_7_if_false         #   3:     goto   7_if_false
    jmp     l_f1_5                  #   4:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_1                  #   7:     goto   1
l_f1_1:
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
    call    WriteLn                 #  10:     call   WriteLn
    call    dummyBOOLfunc           #  11:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $72413, %eax            #  12:     assign v1 <- 72413
    movl    %eax, -24(%ebp)        
    movl    $99, %eax               #  13:     if     99 >= 100 goto 15
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_15                
    jmp     l_f1_16                 #  14:     goto   16
l_f1_15:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_17                 #  17:     goto   17
l_f1_16:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f1_17:
    movzbl  -18(%ebp), %eax         #  21:     assign v2 <- t4
    movb    %al, -25(%ebp)         
    jmp     l_f1_8                  #  22:     goto   8
l_f1_10_if_false:
l_f1_8:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 32 of <array 84 of <array 37 of <array 34 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 88 of <array 12 of <array 11 of <array 82 of <array 47 of <char>>>>>>> %ebp+20 ]
    #    -29(%ebp)   1  [ $v4       <char> %ebp-29 ]

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
    movl    $97002, %eax            #   0:     div    t2 <- 97002, 90564
    movl    $90564, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $23482, %eax            #   1:     sub    t3 <- 23482, t2
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
    movl    $1509, %eax             #   4:     return 1509
    jmp     l_f2_exit              
    movl    $97, %eax               #   5:     assign v4 <- 97
    movb    %al, -29(%ebp)         
    movl    $98, %eax               #   6:     if     98 # 97 goto 7
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_7                 
    jmp     l_f2_8                  #   7:     goto   8
l_f2_7:
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_9                  #  10:     goto   9
l_f2_8:
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f2_9:
    movzbl  -21(%ebp), %eax         #  14:     assign v0 <- t4
    movb    %al, 8(%ebp)           
    call    ReadInt                 #  15:     call   t5 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_f2_1                  #  16:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_13_while_cond:
    jmp     l_f2_12                 #  20:     goto   12
    jmp     l_f2_12                 #  21:     goto   12
    jmp     l_f2_12                 #  22:     goto   12
    jmp     l_f2_12                 #  23:     goto   12
    jmp     l_f2_13_while_cond      #  24:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    jmp     l_test_5                #   2:     goto   5
    jmp     l_test_5                #   3:     goto   5
    jmp     l_test_5                #   4:     goto   5
    jmp     l_test_5                #   5:     goto   5
l_test_5:
    jmp     l_test_2_while_cond     #   7:     goto   2_while_cond
    call    dummyINTfunc            #   8:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     if     t1 < 56082 goto 12_if_true
    movl    $56082, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_12_if_true      
    jmp     l_test_13_if_false      #  10:     goto   13_if_false
l_test_12_if_true:
l_test_16_while_cond:
    jmp     l_test_16_while_cond    #  13:     goto   16_while_cond
l_test_19_while_cond:
    movl    $1, %eax                #  15:     if     1 # 1 goto 20_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_20_while_body   
    jmp     l_test_18               #  16:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  18:     goto   19_while_cond
l_test_18:
    jmp     l_test_24_if_false      #  20:     goto   24_if_false
    jmp     l_test_22               #  21:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_11               #  24:     goto   11
l_test_13_if_false:
l_test_11:

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
