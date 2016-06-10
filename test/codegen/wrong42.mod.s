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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    movl    $100, %eax              #   0:     if     100 < 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $97, %eax               #   4:     if     97 <= 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6_while_body      
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_10_if_false        #  12:     goto   10_if_false
    movl    $99, %eax               #  13:     return 99
    jmp     l_f0_exit              
l_f0_13_while_cond:
    movl    $97, %eax               #  15:     if     97 < 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_14_while_body     
    jmp     l_f0_12                 #  16:     goto   12
l_f0_14_while_body:
    movl    $99, %eax               #  18:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_13_while_cond      #  19:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_8                  #  21:     goto   8
l_f0_10_if_false:
l_f0_8:
    call    dummyCHARfunc           #  24:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 4 of <array 1 of <array 1 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -22(%ebp)   1  [ $v4       <char> %ebp-22 ]

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
l_f1_1_while_cond:
    movl    $0, %eax                #   1:     if     0 = 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $39334, %eax            #   4:     add    t5 <- 39334, 81290
    movl    $81290, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     add    t6 <- t5, 83641
    movl    $83641, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     assign v2 <- t6
    movl    %eax, 16(%ebp)         
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
    movl    $97, %eax               #   9:     return 97
    jmp     l_f1_exit              
    movl    $79396, %eax            #  10:     assign v2 <- 79396
    movl    %eax, 16(%ebp)         
    movl    $0, %eax                #  11:     assign v3 <- 0
    movb    %al, 20(%ebp)          
    movl    $99, %eax               #  12:     return 99
    jmp     l_f1_exit              
    jmp     l_f1_14_if_false        #  13:     goto   14_if_false
    jmp     l_f1_12                 #  14:     goto   12
l_f1_14_if_false:
l_f1_12:
    jmp     l_f1_5                  #  17:     goto   5
l_f1_5:
    call    dummyCHARfunc           #  19:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  20:     assign v4 <- t7
    movb    %al, -22(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 10 of <array 8 of <array 3 of <array 2 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   1:     if     97 = 98 goto 2
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_2                 
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $1, %eax                #   4:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $0, %eax                #   7:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f2_4:
    movzbl  -17(%ebp), %eax         #   9:     assign v0 <- t6
    movb    %al, 8(%ebp)           
    jmp     l_f2_10                 #  10:     goto   10
    jmp     l_f2_10                 #  11:     goto   10
l_f2_10:
    movl    $1, %eax                #  13:     assign t7 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_9                  #  14:     goto   9
    movl    $0, %eax                #  15:     assign t7 <- 0
    movb    %al, -18(%ebp)         
l_f2_9:
    movzbl  -18(%ebp), %eax         #  17:     return t7
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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <array 10 of <array 8 of <array 3 of <array 2 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <char> %ebp-23 ]

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
    jmp     l_test_exit            
    movl    $17997, %eax            #   1:     if     17997 <= 51987 goto 2_if_true
    movl    $51987, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_7_if_true        #   8:     goto   7_if_true
l_test_7_if_true:
l_test_13_while_cond:
    movl    $98, %eax               #  11:     if     98 < 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_14_while_body   
    jmp     l_test_12               #  12:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  14:     goto   13_while_cond
l_test_12:
    call    dummyCHARfunc           #  16:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #  17:     param  3 <- 97
    pushl   %eax                   
    leal    v0, %eax                #  18:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     param  2 <- t1
    pushl   %eax                   
    movl    $73897, %eax            #  20:     param  1 <- 73897
    pushl   %eax                   
    movl    $99, %eax               #  21:     if     99 # 99 goto 18
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_18              
    jmp     l_test_19               #  22:     goto   19
l_test_18:
    movl    $1, %eax                #  24:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_20               #  25:     goto   20
l_test_19:
    movl    $0, %eax                #  27:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_20:
    movzbl  -21(%ebp), %eax         #  29:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  30:     call   t3 <- f2
    addl    $16, %esp              
    movb    %al, -22(%ebp)         
l_test_23_while_cond:
    movl    $26672, %eax            #  32:     if     26672 <= 22674 goto 24_while_body
    movl    $22674, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_24_while_body   
    jmp     l_test_22               #  33:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  35:     goto   23_while_cond
l_test_22:
    jmp     l_test_6                #  37:     goto   6
l_test_6:
l_test_27_while_cond:
    call    dummyCHARfunc           #  40:     call   t4 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  41:     if     t4 < 100 goto 28_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_28_while_body   
    jmp     l_test_26               #  42:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  44:     goto   27_while_cond
l_test_26:

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
v0:                                 # <array 5 of <array 10 of <array 8 of <array 3 of <array 2 of <int>>>>>>
    .long    5
    .long    5
    .long   10
    .long    8
    .long    3
    .long    2
    .skip 9600








    # end of global data section
    #-----------------------------------------

    .end
##################################################
