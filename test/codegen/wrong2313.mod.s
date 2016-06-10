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
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 81 of <array 81 of <array 72 of <array 50 of <array 16 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 80 of <array 95 of <array 55 of <array 96 of <array 72 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v6       <char> %ebp+20 ]
    #    -21(%ebp)   1  [ $v7       <bool> %ebp-21 ]

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
l_f0_1_while_cond:
    jmp     l_f0_5                  #   1:     goto   5
l_f0_5:
    jmp     l_f0_0                  #   3:     goto   0
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
l_f0_9_while_cond:
    call    dummyBOOLfunc           #   7:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     if     t7 # 0 goto 10_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_10_while_body     
    jmp     l_f0_8                  #   9:     goto   8
l_f0_10_while_body:
    movl    $100, %eax              #  11:     if     100 <= 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  12:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  14:     goto   12
l_f0_14_if_false:
l_f0_12:
l_f0_17_while_cond:
    movl    $73594, %eax            #  18:     if     73594 < 49027 goto 18_while_body
    movl    $49027, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_18_while_body     
    jmp     l_f0_16                 #  19:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  21:     goto   17_while_cond
l_f0_16:
    jmp     l_f0_20                 #  23:     goto   20
l_f0_20:
    movl    $100, %eax              #  25:     if     100 >= 98 goto 24
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_24                
    jmp     l_f0_25                 #  26:     goto   25
l_f0_24:
    movl    $1, %eax                #  28:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_26                 #  29:     goto   26
l_f0_25:
    movl    $0, %eax                #  31:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f0_26:
    movzbl  -14(%ebp), %eax         #  33:     assign v7 <- t8
    movb    %al, -21(%ebp)         
    jmp     l_f0_9_while_cond       #  34:     goto   9_while_cond
l_f0_8:
    call    ReadInt                 #  36:     call   t9 <- ReadInt
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v4       <char> %ebp-25 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
l_f1_2_while_body:
    movl    $64268, %eax            #   4:     assign v3 <- 64268
    movl    %eax, -24(%ebp)        
    movl    $98, %eax               #   5:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_11_while_cond:
    movl    $69351, %eax            #   8:     add    t7 <- 69351, 30166
    movl    $30166, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     if     t7 <= 19619 goto 12_while_body
    movl    $19619, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_12_while_body     
    jmp     l_f1_10                 #  10:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  12:     goto   11_while_cond
l_f1_10:
l_f1_15_while_cond:
    movl    $47206, %eax            #  15:     if     47206 < 62335 goto 16_while_body
    movl    $62335, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_16_while_body     
    jmp     l_f1_14                 #  16:     goto   14
l_f1_16_while_body:
    call    dummyINTfunc            #  18:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  19:     if     98 < 98 goto 20_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  20:     goto   21_if_false
l_f1_20_if_true:
    jmp     l_f1_19                 #  22:     goto   19
l_f1_21_if_false:
l_f1_19:
    movl    $100, %eax              #  25:     assign v4 <- 100
    movb    %al, -25(%ebp)         
    movl    $21998, %eax            #  26:     assign v3 <- 21998
    movl    %eax, -24(%ebp)        
    jmp     l_f1_27_if_false        #  27:     goto   27_if_false
    jmp     l_f1_25                 #  28:     goto   25
l_f1_27_if_false:
l_f1_25:
    jmp     l_f1_15_while_cond      #  31:     goto   15_while_cond
l_f1_14:

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v3       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 29 of <array 7 of <array 99 of <array 33 of <array 90 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <ptr(4) to <array 73 of <array 67 of <array 8 of <array 62 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v6       <ptr(4) to <array 82 of <array 90 of <array 88 of <array 79 of <array 57 of <char>>>>>>> %ebp+20 ]
    #    -14(%ebp)   1  [ $v7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v8       <char> %ebp-15 ]

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
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $73513, %eax            #   2:     if     73513 > 41118 goto 3_while_body
    movl    $41118, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    jmp     l_f2_5                  #   6:     goto   5
    jmp     l_f2_6_while_cond       #   7:     goto   6_while_cond
l_f2_5:
    movl    $99, %eax               #   9:     if     99 = 97 goto 9
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_9                 
    jmp     l_f2_10                 #  10:     goto   10
l_f2_9:
    movl    $1, %eax                #  12:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_11                 #  13:     goto   11
l_f2_10:
    movl    $0, %eax                #  15:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f2_11:
    movzbl  -13(%ebp), %eax         #  17:     assign v7 <- t7
    movb    %al, -14(%ebp)         
    jmp     l_f2_2_while_cond       #  18:     goto   2_while_cond
l_f2_1:
    movl    $97, %eax               #  20:     assign v8 <- 97
    movb    %al, -15(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_16                 #  22:     goto   16
l_f2_16:
    jmp     l_f2_13                 #  24:     goto   13
l_f2_13:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t6       <char> %ebp-19 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $65275, %eax            #   1:     if     65275 <= 86795 goto 5
    movl    $86795, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_5               
    jmp     l_test_6                #   2:     goto   6
l_test_5:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_7:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
l_test_10_while_cond:
    movl    $1, %eax                #  11:     if     1 # 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_11_while_body   
    jmp     l_test_9                #  12:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  14:     goto   10_while_cond
l_test_9:
    movl    $21036, %eax            #  16:     assign v1 <- 21036
    movl    %eax, v1               
    call    dummyBOOLfunc           #  17:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #  18:     if     99 <= 98 goto 16
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_16              
    jmp     l_test_17               #  19:     goto   17
l_test_16:
    movl    $1, %eax                #  21:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_18               #  22:     goto   18
l_test_17:
    movl    $0, %eax                #  24:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_18:
    movzbl  -16(%ebp), %eax         #  26:     assign v0 <- t3
    movb    %al, v0                
    movl    $1039, %eax             #  27:     assign v1 <- 1039
    movl    %eax, v1               
l_test_22_while_cond:
    jmp     l_test_22_while_cond    #  29:     goto   22_while_cond
    jmp     l_test_exit            
    jmp     l_test_0                #  31:     goto   0
l_test_0:
    movl    $51385, %eax            #  33:     if     51385 = 99383 goto 26_if_true
    movl    $99383, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_26_if_true      
    jmp     l_test_27_if_false      #  34:     goto   27_if_false
l_test_26_if_true:
    movl    $1, %eax                #  36:     assign v0 <- 1
    movb    %al, v0                
    movl    $99, %eax               #  37:     assign v2 <- 99
    movb    %al, v2                
    jmp     l_test_25               #  38:     goto   25
l_test_27_if_false:
l_test_25:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $91856, %eax            #  43:     if     91856 # 3331 goto 34_if_true
    movl    $3331, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_34_if_true      
    jmp     l_test_35_if_false      #  44:     goto   35_if_false
l_test_34_if_true:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  47:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_exit            
    call    dummyCHARfunc           #  49:     call   t5 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_33               #  51:     goto   33
l_test_35_if_false:
l_test_33:
l_test_43_while_cond:
    call    f1                      #  55:     call   t6 <- f1
    movb    %al, -19(%ebp)         
    movl    $99, %eax               #  56:     if     99 <= t6 goto 44_while_body
    movzbl  -19(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_44_while_body   
    jmp     l_test_42               #  57:     goto   42
l_test_44_while_body:
    movl    $35015, %eax            #  59:     if     35015 # 60111 goto 47_if_true
    movl    $60111, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_47_if_true      
    jmp     l_test_48_if_false      #  60:     goto   48_if_false
l_test_47_if_true:
    jmp     l_test_46               #  62:     goto   46
l_test_48_if_false:
l_test_46:
    movl    $98, %eax               #  65:     if     98 > 99 goto 51_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_51_if_true      
    jmp     l_test_52_if_false      #  66:     goto   52_if_false
l_test_51_if_true:
    jmp     l_test_50               #  68:     goto   50
l_test_52_if_false:
l_test_50:
    jmp     l_test_43_while_cond    #  71:     goto   43_while_cond
l_test_42:

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

    # scope: test
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
