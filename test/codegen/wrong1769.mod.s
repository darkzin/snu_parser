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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 12 of <array 91 of <array 63 of <array 27 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 100 of <array 42 of <array 38 of <array 75 of <array 72 of <char>>>>>>> %ebp+20 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    jmp     l_f0_2                  #   1:     goto   2
    movl    $1, %eax                #   2:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $0, %eax                #   5:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   7:     return t1
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   8:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   9:     if     98 # t2 goto 7_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  10:     goto   8_if_false
l_f0_7_if_true:
    call    dummyBOOLfunc           #  12:     call   t3 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $64951, %eax            #  13:     if     64951 = 77826 goto 12
    movl    $77826, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_12                
    jmp     l_f0_13                 #  14:     goto   13
l_f0_12:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_14                 #  17:     goto   14
l_f0_13:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f0_14:
    movzbl  -16(%ebp), %eax         #  21:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  22:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $32768, %eax            #  25:     if     32768 < 6141 goto 17_if_true
    movl    $6141, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  26:     goto   18_if_false
l_f0_17_if_true:
    call    dummyCHARfunc           #  28:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $71468, %eax            #  29:     assign v1 <- 71468
    movl    %eax, 8(%ebp)          
    movl    $100, %eax              #  30:     if     100 <= 100 goto 23
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_23                
    jmp     l_f0_24                 #  31:     goto   24
l_f0_23:
    movl    $1, %eax                #  33:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_25                 #  34:     goto   25
l_f0_24:
    movl    $0, %eax                #  36:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f0_25:
    movzbl  -18(%ebp), %eax         #  38:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_27                 #  39:     goto   27
l_f0_27:
    jmp     l_f0_16                 #  41:     goto   16
l_f0_18_if_false:
l_f0_16:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $0, %eax                #   4:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v2 <- t1
    movb    %al, 12(%ebp)          
    movl    $99, %eax               #   7:     assign v4 <- 99
    movb    %al, -14(%ebp)         
l_f1_7_while_cond:
    jmp     l_f1_8_while_body       #   9:     goto   8_while_body
    jmp     l_f1_8_while_body       #  10:     goto   8_while_body
    jmp     l_f1_8_while_body       #  11:     goto   8_while_body
    jmp     l_f1_8_while_body       #  12:     goto   8_while_body
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  14:     goto   7_while_cond

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -22(%ebp)   1  [ $v3       <bool> %ebp-22 ]

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
l_f2_1_while_cond:
    movl    $42497, %eax            #   1:     add    t1 <- 42497, 94262
    movl    $94262, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t2 <- t1, 60341
    movl    $60341, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $31347, %eax            #   3:     if     31347 > t2 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_6_if_false         #   8:     goto   6_if_false
    movl    $100, %eax              #   9:     if     100 >= 97 goto 8_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #  10:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #  12:     goto   7
l_f2_9_if_false:
l_f2_7:
l_f2_12_while_cond:
    movl    $99, %eax               #  16:     if     99 # 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_13_while_body     
    jmp     l_f2_11                 #  17:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  19:     goto   12_while_cond
l_f2_11:
    jmp     l_f2_17_if_false        #  21:     goto   17_if_false
    jmp     l_f2_15                 #  22:     goto   15
l_f2_17_if_false:
l_f2_15:
    movl    $0, %eax                #  25:     if     0 = 0 goto 19_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  26:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  28:     goto   18
l_f2_20_if_false:
l_f2_18:
    jmp     l_f2_4                  #  31:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $14249, %eax            #  34:     if     14249 >= 57785 goto 23_if_true
    movl    $57785, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_23_if_true        
    jmp     l_f2_24_if_false        #  35:     goto   24_if_false
l_f2_23_if_true:
    movl    $3663, %eax             #  37:     assign v1 <- 3663
    movl    %eax, 8(%ebp)          
    movl    $62834, %eax            #  38:     if     62834 < 424 goto 28
    movl    $424, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_28                
    jmp     l_f2_29                 #  39:     goto   29
l_f2_28:
    movl    $1, %eax                #  41:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_30                 #  42:     goto   30
l_f2_29:
    movl    $0, %eax                #  44:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f2_30:
    movzbl  -21(%ebp), %eax         #  46:     assign v3 <- t3
    movb    %al, -22(%ebp)         
    movl    $98, %eax               #  47:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_33                 #  48:     goto   33
l_f2_33:
    movl    $97, %eax               #  50:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_22                 #  51:     goto   22
l_f2_24_if_false:
l_f2_22:

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    movl    $31301, %eax            #   2:     assign v0 <- 31301
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
l_test_0:
    call    dummyBOOLfunc           #   5:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   6:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_exit            
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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
