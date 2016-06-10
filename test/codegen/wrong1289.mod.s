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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    leal    _str_1, %eax            #   0:     &()    t1 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_f0_2_while_cond:
    movl    $98, %eax               #   4:     if     98 < 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   8:     goto   5
    jmp     l_f0_6_while_cond       #   9:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_2_while_cond       #  11:     goto   2_while_cond
l_f0_1:
    movl    $97, %eax               #  13:     if     97 < 100 goto 9
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_9                 
    jmp     l_f0_10                 #  14:     goto   10
l_f0_9:
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_11                 #  17:     goto   11
l_f0_10:
    movl    $0, %eax                #  19:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f0_11:
    movzbl  -17(%ebp), %eax         #  21:     assign v0 <- t2
    movb    %al, 8(%ebp)           

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t5       <bool> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v1 <- t1
    movl    %eax, 12(%ebp)         
    movl    $42171, %eax            #   2:     return 42171
    jmp     l_f1_exit              
    movl    $90788, %eax            #   3:     if     90788 <= 58490 goto 6_if_true
    movl    $58490, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   4:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $9826, %eax             #  10:     if     9826 <= 26607 goto 11
    movl    $26607, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_11                
    jmp     l_f1_12                 #  11:     goto   12
l_f1_11:
    movl    $1, %eax                #  13:     assign t3 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_13                 #  14:     goto   13
l_f1_12:
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -18(%ebp)         
l_f1_13:
    movzbl  -18(%ebp), %eax         #  18:     assign v0 <- t3
    movb    %al, 8(%ebp)           
    movl    $99, %eax               #  19:     if     99 <= 100 goto 16
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_16                
    jmp     l_f1_17                 #  20:     goto   17
l_f1_16:
    movl    $1, %eax                #  22:     assign t4 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f1_18                 #  23:     goto   18
l_f1_17:
    movl    $0, %eax                #  25:     assign t4 <- 0
    movb    %al, -19(%ebp)         
l_f1_18:
    movzbl  -19(%ebp), %eax         #  27:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  28:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -20(%ebp)         
    movl    $89133, %eax            #  29:     if     89133 >= 15545 goto 21_if_true
    movl    $15545, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_21_if_true        
    jmp     l_f1_22_if_false        #  30:     goto   22_if_false
l_f1_21_if_true:
    jmp     l_f1_20                 #  32:     goto   20
l_f1_22_if_false:
l_f1_20:
    movl    $30084, %eax            #  35:     return 30084
    jmp     l_f1_exit              
    movl    $7528, %eax             #  36:     return 7528
    jmp     l_f1_exit              
    movl    $58618, %eax            #  37:     return 58618
    jmp     l_f1_exit              
    movl    $98206, %eax            #  38:     return 98206
    jmp     l_f1_exit              
    movl    $98, %eax               #  39:     if     98 > 97 goto 29
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_29                
    jmp     l_f1_30                 #  40:     goto   30
l_f1_29:
    movl    $1, %eax                #  42:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_31                 #  43:     goto   31
l_f1_30:
    movl    $0, %eax                #  45:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f1_31:
    movzbl  -21(%ebp), %eax         #  47:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  48:     call   t7 <- f0
    addl    $4, %esp               
    movb    %al, -22(%ebp)         
    jmp     l_f1_1                  #  49:     goto   1
l_f1_1:
    call    ReadInt                 #  51:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  52:     return t8
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v0       <char> %ebp-22 ]

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
    movl    $8937, %eax             #   0:     add    t1 <- 8937, 5890
    movl    $5890, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 14640
    movl    $14640, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t2 # 4751 goto 1
    movl    $4751, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #  10:     return t3
    jmp     l_f2_exit              
l_f2_6_while_cond:
l_f2_9_while_cond:
    movl    $46496, %eax            #  13:     if     46496 >= 94912 goto 10_while_body
    movl    $94912, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_10_while_body     
    jmp     l_f2_8                  #  14:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  16:     goto   9_while_cond
l_f2_8:
l_f2_13_while_cond:
    jmp     l_f2_13_while_cond      #  19:     goto   13_while_cond
l_f2_16_while_cond:
    jmp     l_f2_16_while_cond      #  21:     goto   16_while_cond
    movl    $100, %eax              #  22:     if     100 < 100 goto 19_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  23:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  25:     goto   18
l_f2_20_if_false:
l_f2_18:
l_f2_23_while_cond:
    movl    $99, %eax               #  29:     if     99 > 97 goto 24_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_24_while_body     
    jmp     l_f2_22                 #  30:     goto   22
l_f2_24_while_body:
    jmp     l_f2_23_while_cond      #  32:     goto   23_while_cond
l_f2_22:
    jmp     l_f2_6_while_cond       #  34:     goto   6_while_cond
l_f2_27_while_cond:
    movl    $50383, %eax            #  36:     if     50383 >= 45881 goto 28_while_body
    movl    $45881, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_28_while_body     
    jmp     l_f2_26                 #  37:     goto   26
l_f2_28_while_body:
    movl    $99, %eax               #  39:     assign v0 <- 99
    movb    %al, -22(%ebp)         
    movl    $99, %eax               #  40:     assign v0 <- 99
    movb    %al, -22(%ebp)         
    jmp     l_f2_27_while_cond      #  41:     goto   27_while_cond
l_f2_26:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    call    WriteLn                 #   1:     call   WriteLn
    jmp     l_test_0                #   2:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $59329, %eax            #   6:     if     59329 # 59072 goto 7_if_true
    movl    $59072, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_7_if_true       
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
l_test_7_if_true:
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  10:     goto   11_while_cond
    movl    $0, %eax                #  11:     assign v0 <- 0
    movb    %al, v0                
    movl    $84914, %eax            #  12:     param  1 <- 84914
    pushl   %eax                   
    movl    $0, %eax                #  13:     param  0 <- 0
    pushl   %eax                   
    call    f1                      #  14:     call   t0 <- f1
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    jmp     l_test_6                #  15:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $99, %eax               #  18:     if     99 >= 99 goto 16_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_16_if_true      
    jmp     l_test_17_if_false      #  19:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_exit            
l_test_21_while_cond:
    jmp     l_test_20               #  23:     goto   20
    jmp     l_test_21_while_cond    #  24:     goto   21_while_cond
l_test_20:
    jmp     l_test_exit            
    jmp     l_test_15               #  27:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_27               #  30:     goto   27
l_test_27:
    movl    $99, %eax               #  32:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_24               #  33:     goto   24
l_test_24:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
