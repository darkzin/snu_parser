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
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
l_f0_1_while_cond:
l_f0_4_while_cond:
    movl    $98, %eax               #   2:     if     98 < 99 goto 5_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_5_while_body      
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_while_body:
    movl    $69015, %eax            #   5:     assign v2 <- 69015
    movl    %eax, -20(%ebp)        
    jmp     l_f0_4_while_cond       #   6:     goto   4_while_cond
l_f0_3:
    jmp     l_f0_1_while_cond       #   8:     goto   1_while_cond
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #  10:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 9 of <array 9 of <array 1 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 10 of <array 7 of <array 7 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #   2:     if     1 # 0 goto 3_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   3:     goto   4_if_false
l_f1_3_if_true:
    movl    $99, %eax               #   5:     if     99 < 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   6:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #   8:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_2                  #  11:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t5 < 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     return t6
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  10:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #  11:     if     99 <= t7 goto 6_if_true
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  12:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  14:     goto   5
l_f2_7_if_false:
l_f2_5:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  18:     goto   9
    movl    $37975, %eax            #  19:     if     37975 >= 99570 goto 13
    movl    $99570, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_13                
    jmp     l_f2_14                 #  20:     goto   14
l_f2_13:
    movl    $1, %eax                #  22:     assign t8 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_15                 #  23:     goto   15
l_f2_14:
    movl    $0, %eax                #  25:     assign t8 <- 0
    movb    %al, -16(%ebp)         
l_f2_15:
    movzbl  -16(%ebp), %eax         #  27:     return t8
    jmp     l_f2_exit              
    movl    $98, %eax               #  28:     if     98 # 99 goto 18_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  29:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  31:     goto   17
l_f2_19_if_false:
l_f2_17:
    call    dummyBOOLfunc           #  34:     call   t9 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_f2_23_while_cond:
    movl    $98, %eax               #  36:     if     98 > 97 goto 24_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_24_while_body     
    jmp     l_f2_22                 #  37:     goto   22
l_f2_24_while_body:
    jmp     l_f2_23_while_cond      #  39:     goto   23_while_cond
l_f2_22:
    movl    $0, %eax                #  41:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_10_while_cond      #  42:     goto   10_while_cond
l_f2_9:

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
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    call    ReadInt                 #   4:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $99, %eax               #   5:     param  1 <- 99
    pushl   %eax                   
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   7:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #   8:     call   t4 <- f2
    addl    $8, %esp               
    movb    %al, -26(%ebp)         
    movl    $98, %eax               #   9:     if     98 # 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #  12:     goto   5
l_test_7_if_false:
l_test_5:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
