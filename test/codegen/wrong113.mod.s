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
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    jmp     l_f0_exit              
    call    dummyINTfunc            #   1:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $39394, %eax            #   2:     if     39394 # t3 goto 2
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2                 
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f0_4:
    movzbl  -17(%ebp), %eax         #  10:     assign v1 <- t4
    movb    %al, 8(%ebp)           
    call    dummyINTfunc            #  11:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     assign v2 <- t5
    movl    %eax, -28(%ebp)        

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 10 of <array 5 of <array 7 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 5 of <array 2 of <array 8 of <array 4 of <array 3 of <char>>>>>>> %ebp+20 ]
    #    -15(%ebp)   1  [ $v5       <char> %ebp-15 ]

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
    movl    $100, %eax              #   1:     if     100 > 98 goto 4_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   2:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   4:     goto   3
l_f1_5_if_false:
l_f1_3:
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   8:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_9_while_cond:
    movl    $50322, %eax            #  12:     if     50322 >= 33434 goto 10_while_body
    movl    $33434, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_10_while_body     
    jmp     l_f1_8                  #  13:     goto   8
l_f1_10_while_body:
l_f1_13_while_cond:
    movl    $100, %eax              #  16:     if     100 < 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_14_while_body     
    jmp     l_f1_12                 #  17:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  19:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_18_if_false        #  21:     goto   18_if_false
    jmp     l_f1_16                 #  22:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_21_if_false        #  25:     goto   21_if_false
    jmp     l_f1_19                 #  26:     goto   19
l_f1_21_if_false:
l_f1_19:
    call    dummyBOOLfunc           #  29:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_exit              
    movl    $0, %eax                #  31:     assign v1 <- 0
    movb    %al, 8(%ebp)           
    jmp     l_f1_25                 #  32:     goto   25
l_f1_25:
    jmp     l_f1_9_while_cond       #  34:     goto   9_while_cond
l_f1_8:
    movl    $30381, %eax            #  36:     if     30381 <= 96238 goto 29_if_true
    movl    $96238, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_29_if_true        
    jmp     l_f1_30_if_false        #  37:     goto   30_if_false
l_f1_29_if_true:
    call    dummyCHARfunc           #  39:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  40:     assign v5 <- t4
    movb    %al, -15(%ebp)         
    jmp     l_f1_28                 #  41:     goto   28
l_f1_30_if_false:
l_f1_28:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 5 of <array 8 of <array 1 of <int>>>>>>> %ebp+8 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
    movl    $0, %eax                #   0:     assign v2 <- 0
    movb    %al, -16(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_6_while_cond:
    jmp     l_f2_5                  #   3:     goto   5
    jmp     l_f2_6_while_cond       #   4:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_0                  #   6:     goto   0
l_f2_0:
l_f2_9_while_cond:
    movl    $79797, %eax            #   9:     if     79797 > 83632 goto 12_if_true
    movl    $83632, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  10:     goto   13_if_false
l_f2_12_if_true:
    jmp     l_f2_11                 #  12:     goto   11
l_f2_13_if_false:
l_f2_11:
    movl    $29511, %eax            #  15:     if     29511 > 4588 goto 16
    movl    $4588, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_16                
    jmp     l_f2_17                 #  16:     goto   17
l_f2_16:
    movl    $1, %eax                #  18:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_18                 #  19:     goto   18
l_f2_17:
    movl    $0, %eax                #  21:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_18:
    movzbl  -14(%ebp), %eax         #  23:     return t4
    jmp     l_f2_exit              
    jmp     l_f2_22_if_false        #  24:     goto   22_if_false
    jmp     l_f2_20                 #  25:     goto   20
l_f2_22_if_false:
l_f2_20:
    movl    $98, %eax               #  28:     if     98 # 100 goto 24
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_24                
    jmp     l_f2_25                 #  29:     goto   25
l_f2_24:
    movl    $1, %eax                #  31:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_26                 #  32:     goto   26
l_f2_25:
    movl    $0, %eax                #  34:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f2_26:
    movzbl  -15(%ebp), %eax         #  36:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_9_while_cond       #  37:     goto   9_while_cond
l_f2_29_while_cond:
    movl    $98, %eax               #  39:     if     98 # 97 goto 30_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_30_while_body     
    jmp     l_f2_28                 #  40:     goto   28
l_f2_30_while_body:
    jmp     l_f2_29_while_cond      #  42:     goto   29_while_cond
l_f2_28:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <array 2 of <array 8 of <array 4 of <array 3 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <array 10 of <array 5 of <array 7 of <array 2 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    leal    v2, %eax                #   1:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  3 <- t0
    pushl   %eax                   
    movl    $15753, %eax            #   3:     param  2 <- 15753
    pushl   %eax                   
    leal    v1, %eax                #   4:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  1 <- t1
    pushl   %eax                   
    movl    $97, %eax               #   6:     if     97 <= 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2               
    jmp     l_test_3                #   7:     goto   3
l_test_2:
    movl    $1, %eax                #   9:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_4                #  10:     goto   4
l_test_3:
    movl    $0, %eax                #  12:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_4:
    movzbl  -21(%ebp), %eax         #  14:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  15:     call   f1
    addl    $16, %esp              
    jmp     l_test_exit            
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 7 of <array 10 of <array 5 of <array 7 of <array 2 of <int>>>>>>
    .long    5
    .long    7
    .long   10
    .long    5
    .long    7
    .long    2
    .skip 19600
v2:                                 # <array 5 of <array 2 of <array 8 of <array 4 of <array 3 of <char>>>>>>
    .long    5
    .long    5
    .long    2
    .long    8
    .long    4
    .long    3
    .skip  960








    # end of global data section
    #-----------------------------------------

    .end
##################################################
