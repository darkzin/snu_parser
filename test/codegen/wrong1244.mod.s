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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v0       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v1       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
l_f0_5_while_cond:
    movl    $100, %eax              #   2:     if     100 < 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_6_while_body      
    jmp     l_f0_4                  #   3:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
l_f0_4:
    movl    $98, %eax               #   7:     if     98 > 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #   8:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_if_false:
l_f0_8:
    movl    $0, %eax                #  13:     assign v0 <- 0
    movb    %al, -17(%ebp)         
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
    movl    $97, %eax               #  15:     assign v1 <- 97
    movb    %al, -18(%ebp)         
    movl    $97, %eax               #  16:     if     97 <= 100 goto 15_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  17:     goto   16_if_false
l_f0_15_if_true:
    call    dummyINTfunc            #  19:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $65713, %eax            #  20:     assign v2 <- 65713
    movl    %eax, -24(%ebp)        
    movl    $99, %eax               #  21:     assign v1 <- 99
    movb    %al, -18(%ebp)         
    movl    $99, %eax               #  22:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_14                 #  23:     goto   14
l_f0_16_if_false:
l_f0_14:

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v1       <char> %ebp-17 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
l_f1_2_while_body:
    movl    $63474, %eax            #   3:     if     63474 <= 79981 goto 5
    movl    $79981, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_5                 
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #  11:     return t5
    jmp     l_f1_exit              
    movl    $1, %eax                #  12:     assign v0 <- 1
    movb    %al, -16(%ebp)         
l_f1_11_while_cond:
    jmp     l_f1_10                 #  14:     goto   10
    jmp     l_f1_11_while_cond      #  15:     goto   11_while_cond
l_f1_10:
    movl    $98, %eax               #  17:     assign v1 <- 98
    movb    %al, -17(%ebp)         
    jmp     l_f1_1_while_cond       #  18:     goto   1_while_cond
l_f1_15_while_cond:
    jmp     l_f1_16_while_body      #  20:     goto   16_while_body
    jmp     l_f1_16_while_body      #  21:     goto   16_while_body
l_f1_16_while_body:
    call    dummyCHARfunc           #  23:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_15_while_cond      #  24:     goto   15_while_cond
    movl    $99, %eax               #  25:     if     99 < 99 goto 25
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_25                
    jmp     l_f1_26                 #  26:     goto   26
l_f1_25:
    movl    $1, %eax                #  28:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_27                 #  29:     goto   27
l_f1_26:
    movl    $0, %eax                #  31:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f1_27:
    movzbl  -15(%ebp), %eax         #  33:     assign v0 <- t7
    movb    %al, -16(%ebp)         

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
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 27 of <array 46 of <array 27 of <array 43 of <array 25 of <int>>>>>>> %ebp+8 ]
    #    -19(%ebp)   1  [ $v1       <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $v2       <bool> %ebp-20 ]

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
    movl    $99, %eax               #   0:     assign v1 <- 99
    movb    %al, -19(%ebp)         
    movl    $1, %eax                #   1:     if     1 # 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    call    dummyINTfunc            #   4:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_7_while_cond:
    jmp     l_f2_6                  #   6:     goto   6
    jmp     l_f2_7_while_cond       #   7:     goto   7_while_cond
l_f2_6:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  10:     goto   9
    jmp     l_f2_10_while_cond      #  11:     goto   10_while_cond
l_f2_9:
    call    dummyCHARfunc           #  13:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #  14:     if     98 < 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  15:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  17:     goto   13
l_f2_15_if_false:
l_f2_13:
    movl    $0, %eax                #  20:     if     0 = 1 goto 18
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_18                
    jmp     l_f2_19                 #  21:     goto   19
l_f2_18:
    movl    $1, %eax                #  23:     assign t7 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_20                 #  24:     goto   20
l_f2_19:
    movl    $0, %eax                #  26:     assign t7 <- 0
    movb    %al, -18(%ebp)         
l_f2_20:
    movzbl  -18(%ebp), %eax         #  28:     assign v2 <- t7
    movb    %al, -20(%ebp)         
    jmp     l_f2_1                  #  29:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $99, %eax               #  32:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  33:     call   WriteChar
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 27 of <array 46 of <array 27 of <array 43 of <array 25 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 27 of <array 46 of <array 27 of <array 43 of <array 25 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    leal    v0, %eax                #   2:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #   4:     call   t1 <- f2
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    call    f1                      #   5:     call   t2 <- f1
    movb    %al, -18(%ebp)         
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_6_while_cond:
    movl    $98, %eax               #   9:     if     98 >= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #  10:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  12:     goto   6_while_cond
l_test_5:
    leal    v0, %eax                #  14:     &()    t3 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  16:     call   t4 <- f2
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  17:     assign v1 <- t4
    movb    %al, v1                

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
v0:                                 # <array 27 of <array 46 of <array 27 of <array 43 of <array 25 of <int>>>>>>
    .long    5
    .long   27
    .long   46
    .long   27
    .long   43
    .long   25
    .skip 144196200
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
