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
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 11 of <array 38 of <array 40 of <array 84 of <array 1 of <char>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v4       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t2 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   8:     goto   4
    jmp     l_f0_9                  #   9:     goto   9
    jmp     l_f0_9                  #  10:     goto   9
    movl    $1, %eax                #  11:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_10                 #  12:     goto   10
l_f0_9:
    movl    $0, %eax                #  14:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_10:
    movzbl  -14(%ebp), %eax         #  16:     assign v4 <- t3
    movb    %al, -15(%ebp)         
    jmp     l_f0_5_while_cond       #  17:     goto   5_while_cond
l_f0_4:
    movl    $46700, %eax            #  19:     if     46700 < 78625 goto 14_if_true
    movl    $78625, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  20:     goto   15_if_false
l_f0_14_if_true:
l_f0_18_while_cond:
    jmp     l_f0_17                 #  23:     goto   17
    jmp     l_f0_18_while_cond      #  24:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_exit              
    jmp     l_f0_13                 #  27:     goto   13
l_f0_15_if_false:
l_f0_13:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 25 of <array 3 of <array 35 of <array 42 of <array 49 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]

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
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    movl    $19030, %eax            #   3:     if     19030 <= 60556 goto 2_if_true
    movl    $60556, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_2_if_true:
    movl    $70787, %eax            #   6:     if     70787 <= 90516 goto 6
    movl    $90516, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6                 
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_8:
    movzbl  -14(%ebp), %eax         #  14:     return t3
    jmp     l_f1_exit              
    movl    $35398, %eax            #  15:     if     35398 <= 9639 goto 11_if_true
    movl    $9639, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  16:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  18:     goto   10
l_f1_12_if_false:
l_f1_10:
l_f1_15_while_cond:
    jmp     l_f1_14                 #  22:     goto   14
    jmp     l_f1_15_while_cond      #  23:     goto   15_while_cond
l_f1_14:
l_f1_18_while_cond:
    movl    $65844, %eax            #  26:     if     65844 >= 57572 goto 19_while_body
    movl    $57572, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_19_while_body     
    jmp     l_f1_17                 #  27:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  29:     goto   18_while_cond
l_f1_17:
l_f1_22_while_cond:
    jmp     l_f1_22_while_cond      #  32:     goto   22_while_cond
    call    dummyBOOLfunc           #  33:     call   t4 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_1                  #  34:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_26_while_cond:
    jmp     l_f1_27_while_body      #  38:     goto   27_while_body
l_f1_27_while_body:
    jmp     l_f1_30                 #  40:     goto   30
l_f1_30:
    jmp     l_f1_26_while_cond      #  42:     goto   26_while_cond

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <bool> %ebp-26 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 37 of <array 44 of <array 85 of <array 98 of <array 83 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 29 of <array 54 of <array 27 of <array 92 of <array 22 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 61 of <array 94 of <array 53 of <array 15 of <array 67 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 32 of <array 6 of <array 65 of <array 93 of <array 36 of <char>>>>>>> %ebp+20 ]

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
    movl    $97, %eax               #   1:     if     97 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $0, %eax                #   4:     return 0
    jmp     l_f2_exit              
    movl    $1, %eax                #   5:     return 1
    jmp     l_f2_exit              
l_f2_7_while_cond:
    jmp     l_f2_6                  #   7:     goto   6
    jmp     l_f2_7_while_cond       #   8:     goto   7_while_cond
l_f2_6:
    call    dummyBOOLfunc           #  10:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_12_if_false        #  11:     goto   12_if_false
    jmp     l_f2_10                 #  12:     goto   10
l_f2_12_if_false:
l_f2_10:
    movl    $0, %eax                #  15:     if     0 # 1 goto 14
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_14                
    jmp     l_f2_15                 #  16:     goto   15
l_f2_14:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_16                 #  19:     goto   16
l_f2_15:
    movl    $0, %eax                #  21:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_16:
    movzbl  -14(%ebp), %eax         #  23:     return t3
    jmp     l_f2_exit              
    movl    $1, %eax                #  24:     return 1
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  25:     goto   1_while_cond
l_f2_0:
    movl    $46713, %eax            #  27:     add    t4 <- 46713, 79906
    movl    $79906, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $33114, %eax            #  28:     div    t5 <- 33114, 21438
    movl    $21438, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  29:     if     t4 < t5 goto 20
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_20                
    jmp     l_f2_21                 #  30:     goto   21
l_f2_20:
    movl    $1, %eax                #  32:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_22                 #  33:     goto   22
l_f2_21:
    movl    $0, %eax                #  35:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f2_22:
    movzbl  -25(%ebp), %eax         #  37:     return t6
    jmp     l_f2_exit              
    movl    $0, %eax                #  38:     if     0 # 1 goto 25_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_25_if_true        
    jmp     l_f2_26_if_false        #  39:     goto   26_if_false
l_f2_25_if_true:
l_f2_29_while_cond:
    movl    $99, %eax               #  42:     if     99 >= 97 goto 30_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_30_while_body     
    jmp     l_f2_28                 #  43:     goto   28
l_f2_30_while_body:
    jmp     l_f2_29_while_cond      #  45:     goto   29_while_cond
l_f2_28:
    movl    $0, %eax                #  47:     if     0 # 1 goto 33
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_33                
    jmp     l_f2_34                 #  48:     goto   34
l_f2_33:
    movl    $1, %eax                #  50:     assign t7 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_35                 #  51:     goto   35
l_f2_34:
    movl    $0, %eax                #  53:     assign t7 <- 0
    movb    %al, -26(%ebp)         
l_f2_35:
    movzbl  -26(%ebp), %eax         #  55:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_39_if_false        #  56:     goto   39_if_false
    jmp     l_f2_37                 #  57:     goto   37
l_f2_39_if_false:
l_f2_37:
    movl    $89208, %eax            #  60:     if     89208 < 20189 goto 41_if_true
    movl    $20189, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_41_if_true        
    jmp     l_f2_42_if_false        #  61:     goto   42_if_false
l_f2_41_if_true:
    jmp     l_f2_40                 #  63:     goto   40
l_f2_42_if_false:
l_f2_40:
    jmp     l_f2_44                 #  66:     goto   44
l_f2_44:
    jmp     l_f2_24                 #  68:     goto   24
l_f2_26_if_false:
l_f2_24:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
l_test_2_while_cond:
    movl    $97, %eax               #   2:     if     97 # 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    movl    $64262, %eax            #   5:     assign v1 <- 64262
    movl    %eax, v1               
l_test_7_while_cond:
    jmp     l_test_6                #   7:     goto   6
    jmp     l_test_7_while_cond     #   8:     goto   7_while_cond
l_test_6:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  11:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_2_while_cond     #  12:     goto   2_while_cond
l_test_1:
    call    dummyCHARfunc           #  14:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_test_13_while_cond:
    movl    $13705, %eax            #  16:     if     13705 # 73694 goto 14_while_body
    movl    $73694, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_14_while_body   
    jmp     l_test_12               #  17:     goto   12
l_test_14_while_body:
    jmp     l_test_exit            
l_test_18_while_cond:
    jmp     l_test_17               #  21:     goto   17
    jmp     l_test_18_while_cond    #  22:     goto   18_while_cond
l_test_17:
l_test_21_while_cond:
    movl    $99, %eax               #  25:     if     99 < 98 goto 22_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_22_while_body   
    jmp     l_test_20               #  26:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  28:     goto   21_while_cond
l_test_20:
    jmp     l_test_13_while_cond    #  30:     goto   13_while_cond
l_test_12:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
