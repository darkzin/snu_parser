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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t8       <bool> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 6 of <array 10 of <array 3 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 7 of <array 4 of <array 4 of <array 9 of <int>>>>>>> %ebp+12 ]
    #    -25(%ebp)   1  [ $v2       <char> %ebp-25 ]

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
    movl    $99, %eax               #   0:     assign v2 <- 99
    movb    %al, -25(%ebp)         
    call    ReadInt                 #   1:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t4 <- t3, 7102
    movl    $7102, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t4 < 51167 goto 2
    movl    $51167, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2                 
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f0_4:
    movzbl  -21(%ebp), %eax         #  11:     return t5
    jmp     l_f0_exit              
    jmp     l_f0_11                 #  12:     goto   11
    jmp     l_f0_11                 #  13:     goto   11
l_f0_11:
    movl    $1, %eax                #  15:     assign t6 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_13                 #  16:     goto   13
    movl    $0, %eax                #  17:     assign t6 <- 0
    movb    %al, -22(%ebp)         
l_f0_13:
    jmp     l_f0_17                 #  19:     goto   17
    jmp     l_f0_17                 #  20:     goto   17
    jmp     l_f0_17                 #  21:     goto   17
    jmp     l_f0_17                 #  22:     goto   17
    jmp     l_f0_18                 #  23:     goto   18
l_f0_17:
    movl    $1, %eax                #  25:     assign t7 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f0_19                 #  26:     goto   19
l_f0_18:
    movl    $0, %eax                #  28:     assign t7 <- 0
    movb    %al, -23(%ebp)         
l_f0_19:
    movzbl  -22(%ebp), %eax         #  30:     if     t6 # t7 goto 7
    movzbl  -23(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_7                 
    jmp     l_f0_8                  #  31:     goto   8
l_f0_7:
    movl    $1, %eax                #  33:     assign t8 <- 1
    movb    %al, -24(%ebp)         
    jmp     l_f0_9                  #  34:     goto   9
l_f0_8:
    movl    $0, %eax                #  36:     assign t8 <- 0
    movb    %al, -24(%ebp)         
l_f0_9:
    movzbl  -24(%ebp), %eax         #  38:     return t8
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   1:     if     1 # 0 goto 2
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_2                 
l_f1_2:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   4:     goto   4
    movl    $0, %eax                #   5:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #   7:     return t4
    jmp     l_f1_exit              
l_f1_9_while_cond:
    call    dummyBOOLfunc           #   9:     call   t5 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  10:     if     t5 = 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10_while_body     
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_while_body:
    movl    $76608, %eax            #  13:     assign v1 <- 76608
    movl    %eax, -20(%ebp)        
    jmp     l_f1_9_while_cond       #  14:     goto   9_while_cond
l_f1_8:

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
l_f2_1_while_cond:
l_f2_4_while_cond:
    jmp     l_f2_4_while_cond       #   2:     goto   4_while_cond
    movl    $100, %eax              #   3:     if     100 > 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   4:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #   6:     goto   6
l_f2_8_if_false:
l_f2_6:
    call    dummyCHARfunc           #   9:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #  10:     assign v0 <- 100
    movb    %al, -15(%ebp)         
    movl    $50645, %eax            #  11:     assign v1 <- 50645
    movl    %eax, -20(%ebp)        
l_f2_14_while_cond:
    movl    $31606, %eax            #  13:     if     31606 # 74245 goto 15_while_body
    movl    $74245, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_15_while_body     
    jmp     l_f2_13                 #  14:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  16:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_1_while_cond       #  18:     goto   1_while_cond
l_f2_18_while_cond:
    movl    $46697, %eax            #  20:     if     46697 > 53351 goto 19_while_body
    movl    $53351, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_19_while_body     
    jmp     l_f2_17                 #  21:     goto   17
l_f2_19_while_body:
    movl    $97, %eax               #  23:     param  0 <- 97
    pushl   %eax                   
    call    f1                      #  24:     call   t4 <- f1
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    jmp     l_f2_18_while_cond      #  25:     goto   18_while_cond
l_f2_17:
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_2                #   4:     goto   2
l_test_2:
l_test_7_while_cond:
    call    dummyCHARfunc           #   7:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #   8:     if     98 < t2 goto 8_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_8_while_body    
    jmp     l_test_6                #   9:     goto   6
l_test_8_while_body:
    jmp     l_test_10               #  11:     goto   10
l_test_10:
    jmp     l_test_7_while_cond     #  13:     goto   7_while_cond
l_test_6:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
