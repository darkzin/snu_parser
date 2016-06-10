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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 39 of <array 90 of <array 81 of <array 39 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -21(%ebp)   1  [ $v3       <char> %ebp-21 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     assign v3 <- 97
    movb    %al, -21(%ebp)         
    movl    $67819, %eax            #   2:     add    t5 <- 67819, 8863
    movl    $8863, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     return t5
    jmp     l_f0_exit              

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 54 of <array 79 of <array 20 of <array 26 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -13(%ebp)   1  [ $v2       <char> %ebp-13 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
    jmp     l_f1_3                  #   2:     goto   3
    jmp     l_f1_4_while_cond       #   3:     goto   4_while_cond
l_f1_3:
    movl    $98, %eax               #   5:     assign v2 <- 98
    movb    %al, -13(%ebp)         
l_f1_8_while_cond:
    jmp     l_f1_8_while_cond       #   7:     goto   8_while_cond
    jmp     l_f1_10                 #   8:     goto   10
l_f1_10:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_17_while_cond:
    movl    $97, %eax               #  14:     if     97 # 99 goto 18_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_18_while_body     
    jmp     l_f1_16                 #  15:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  17:     goto   17_while_cond
l_f1_16:
    movl    $98, %eax               #  19:     if     98 <= 98 goto 21_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_21_if_true        
    jmp     l_f1_22_if_false        #  20:     goto   22_if_false
l_f1_21_if_true:
    jmp     l_f1_20                 #  22:     goto   20
l_f1_22_if_false:
l_f1_20:
    jmp     l_f1_13                 #  25:     goto   13
l_f1_13:
    movl    $100, %eax              #  27:     return 100
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 20 of <array 90 of <array 1 of <array 83 of <array 70 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 3825
    movl    $3825, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t6 <- t5, 17894
    movl    $17894, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v2 <- t6
    movl    %eax, 16(%ebp)         
    call    WriteLn                 #   4:     call   WriteLn
    call    ReadInt                 #   5:     call   t7 <- ReadInt
    movl    %eax, -28(%ebp)        

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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]

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
    movl    $79276, %eax            #   0:     sub    t0 <- 79276, 83848
    movl    $83848, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 66884
    movl    $66884, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t1 = 50369 goto 1
    movl    $50369, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   3:     goto   2
l_test_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_3:
    movzbl  -21(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, v0                
    movl    $81677, %eax            #  11:     if     81677 > 77013 goto 6_if_true
    movl    $77013, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #  12:     goto   7_if_false
l_test_6_if_true:
l_test_10_while_cond:
    jmp     l_test_9                #  15:     goto   9
    jmp     l_test_10_while_cond    #  16:     goto   10_while_cond
l_test_9:
    movl    $59603, %eax            #  18:     assign v1 <- 59603
    movl    %eax, v1               
    call    dummyCHARfunc           #  19:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  20:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #  21:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_5                #  22:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $99, %eax               #  25:     if     99 > 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_15_if_true      
    jmp     l_test_16_if_false      #  26:     goto   16_if_false
l_test_15_if_true:
l_test_19_while_cond:
    movl    $100, %eax              #  29:     if     100 > 97 goto 20_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_20_while_body   
    jmp     l_test_18               #  30:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  32:     goto   19_while_cond
l_test_18:
    movl    $59905, %eax            #  34:     if     59905 > 11199 goto 23_if_true
    movl    $11199, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_23_if_true      
    jmp     l_test_24_if_false      #  35:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  37:     goto   22
l_test_24_if_false:
l_test_22:
l_test_27_while_cond:
    movl    $99, %eax               #  41:     if     99 >= 99 goto 28_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_28_while_body   
    jmp     l_test_26               #  42:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  44:     goto   27_while_cond
l_test_26:
    jmp     l_test_32_if_false      #  46:     goto   32_if_false
    jmp     l_test_30               #  47:     goto   30
l_test_32_if_false:
l_test_30:
    jmp     l_test_14               #  50:     goto   14
l_test_16_if_false:
l_test_14:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
