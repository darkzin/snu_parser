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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <char> %ebp-17 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
l_f0_4_while_cond:
    jmp     l_f0_4_while_cond       #   2:     goto   4_while_cond
    call    dummyCHARfunc           #   3:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   4:     return 0
    jmp     l_f0_exit              
    movl    $1, %eax                #   5:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_15                 #   9:     goto   15
    jmp     l_f0_15                 #  10:     goto   15
    movl    $1, %eax                #  11:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_16                 #  12:     goto   16
l_f0_15:
    movl    $0, %eax                #  14:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_16:
    jmp     l_f0_18                 #  16:     goto   18
    jmp     l_f0_18                 #  17:     goto   18
l_f0_18:
    movl    $1, %eax                #  19:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_20                 #  20:     goto   20
    movl    $0, %eax                #  21:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f0_20:
    movzbl  -14(%ebp), %eax         #  23:     if     t6 # t7 goto 10
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_10                
    jmp     l_f0_11                 #  24:     goto   11
l_f0_10:
    movl    $1, %eax                #  26:     assign t8 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_12                 #  27:     goto   12
l_f0_11:
    movl    $0, %eax                #  29:     assign t8 <- 0
    movb    %al, -16(%ebp)         
l_f0_12:
    movzbl  -16(%ebp), %eax         #  31:     return t8
    jmp     l_f0_exit              
    jmp     l_f0_26_if_false        #  32:     goto   26_if_false
    call    dummyCHARfunc           #  33:     call   t9 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_30_if_false        #  34:     goto   30_if_false
    jmp     l_f0_28                 #  35:     goto   28
l_f0_30_if_false:
l_f0_28:
    jmp     l_f0_33_if_false        #  38:     goto   33_if_false
    jmp     l_f0_31                 #  39:     goto   31
l_f0_33_if_false:
l_f0_31:
    jmp     l_f0_24                 #  42:     goto   24
l_f0_26_if_false:
l_f0_24:

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 9 of <array 2 of <array 1 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 4 of <array 6 of <array 3 of <array 2 of <array 8 of <int>>>>>>> %ebp+16 ]

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
    call    f0                      #   0:     call   t5 <- f0
    movb    %al, -13(%ebp)         
    movl    $20061, %eax            #   1:     add    t6 <- 20061, 92192
    movl    $92192, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $25133, %eax            #   2:     if     25133 > t6 goto 2_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_9_while_cond:
    movl    $97, %eax               #   9:     if     97 >= 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_10_while_body     
    jmp     l_f1_8                  #  10:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  12:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_5                  #  14:     goto   5
l_f1_5:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 2 of <array 7 of <array 2 of <array 2 of <int>>>>>>> %ebp+16 ]
    #    -23(%ebp)   1  [ $v5       <bool> %ebp-23 ]

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
    movl    $76617, %eax            #   0:     div    t5 <- 76617, 39664
    movl    $39664, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t6 <- t5, 7253
    movl    $7253, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $51599, %eax            #   2:     if     51599 # t6 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #  10:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_6_if_true          #  11:     goto   6_if_true
    jmp     l_f2_6_if_true          #  12:     goto   6_if_true
    jmp     l_f2_7_if_false         #  13:     goto   7_if_false
l_f2_6_if_true:
    movl    $0, %eax                #  15:     assign v5 <- 0
    movb    %al, -23(%ebp)         
    jmp     l_f2_11                 #  16:     goto   11
l_f2_11:
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  19:     goto   15_while_cond
    movl    $0, %eax                #  20:     assign v5 <- 0
    movb    %al, -23(%ebp)         
    jmp     l_f2_5                  #  21:     goto   5
l_f2_7_if_false:
l_f2_5:
    call    f0                      #  24:     call   t8 <- f0
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 9 of <array 2 of <array 7 of <array 2 of <array 2 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]

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
    jmp     l_test_0                #   0:     goto   0
l_test_0:
    movl    $100, %eax              #   2:     if     100 > 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #   3:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_11_if_false      #   5:     goto   11_if_false
    jmp     l_test_9                #   6:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $1, %eax                #   9:     if     1 # 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_13_if_true      
    jmp     l_test_14_if_false      #  10:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  12:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $99, %eax               #  15:     assign v0 <- 99
    movb    %al, v0                
l_test_18_while_cond:
    jmp     l_test_17               #  17:     goto   17
    jmp     l_test_18_while_cond    #  18:     goto   18_while_cond
l_test_17:
l_test_21_while_cond:
    jmp     l_test_21_while_cond    #  21:     goto   21_while_cond
    jmp     l_test_5                #  22:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyBOOLfunc           #  25:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  26:     if     t0 = 1 goto 24
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_24              
l_test_24:
    movl    $1, %eax                #  28:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_26               #  29:     goto   26
    movl    $0, %eax                #  30:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_26:
    movzbl  -14(%ebp), %eax         #  32:     assign v1 <- t1
    movb    %al, v1                
    call    dummyINTfunc            #  33:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_28               #  34:     goto   28
l_test_28:
    jmp     l_test_exit            
l_test_34_while_cond:
    leal    v2, %eax                #  38:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  39:     param  2 <- t3
    pushl   %eax                   
    movl    $64791, %eax            #  40:     param  1 <- 64791
    pushl   %eax                   
    movl    $100, %eax              #  41:     param  0 <- 100
    pushl   %eax                   
    call    f2                      #  42:     call   t4 <- f2
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  43:     if     t4 = 1 goto 35_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_35_while_body   
    jmp     l_test_33               #  44:     goto   33
l_test_35_while_body:
    movl    $97, %eax               #  46:     assign v0 <- 97
    movb    %al, v0                
    movl    $97, %eax               #  47:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_34_while_cond    #  48:     goto   34_while_cond
l_test_33:

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 9 of <array 2 of <array 7 of <array 2 of <array 2 of <int>>>>>>
    .long    5
    .long    9
    .long    2
    .long    7
    .long    2
    .long    2
    .skip 2016








    # end of global data section
    #-----------------------------------------

    .end
##################################################
