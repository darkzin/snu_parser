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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
l_f0_4_while_cond:
    movl    $2483, %eax             #   3:     if     2483 < 16827 goto 5_while_body
    movl    $16827, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_5_while_body      
    jmp     l_f0_3                  #   4:     goto   3
l_f0_5_while_body:
    jmp     l_f0_4_while_cond       #   6:     goto   4_while_cond
l_f0_3:
    jmp     l_f0_9_if_false         #   8:     goto   9_if_false
    jmp     l_f0_7                  #   9:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
l_f0_0:
    movl    $97, %eax               #  14:     assign v0 <- 97
    movb    %al, 8(%ebp)           
l_f0_12_while_cond:
    movl    $99, %eax               #  16:     if     99 >= 99 goto 15
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_15                
    jmp     l_f0_16                 #  17:     goto   16
l_f0_15:
    movl    $1, %eax                #  19:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_17                 #  20:     goto   17
l_f0_16:
    movl    $0, %eax                #  22:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_17:
    movl    $1, %eax                #  24:     if     1 # t4 goto 13_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_13_while_body     
    jmp     l_f0_11                 #  25:     goto   11
l_f0_13_while_body:
l_f0_20_while_cond:
    jmp     l_f0_20_while_cond      #  28:     goto   20_while_cond
    jmp     l_f0_12_while_cond      #  29:     goto   12_while_cond
l_f0_11:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 6 of <array 5 of <array 2 of <array 3 of <bool>>>>>>> %ebp+12 ]
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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t4
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     return t5
    jmp     l_f1_exit              
l_f1_3_while_cond:
    call    dummyCHARfunc           #   5:     call   t6 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   6:     if     t6 <= 98 goto 4_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_4_while_body      
    jmp     l_f1_2                  #   7:     goto   2
l_f1_4_while_body:
    call    WriteLn                 #   9:     call   WriteLn
    jmp     l_f1_3_while_cond       #  10:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 5 of <array 3 of <array 3 of <array 2 of <char>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]

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
    movl    $13465, %eax            #   0:     if     13465 # 21831 goto 4
    movl    $21831, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_4                 
    jmp     l_f2_5                  #   1:     goto   5
l_f2_4:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t4
    movb    %al, -14(%ebp)         
l_f2_9_while_cond:
    jmp     l_f2_9_while_cond       #  10:     goto   9_while_cond
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  12:     goto   0
l_f2_0:
    jmp     l_f2_exit              
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <array 6 of <array 5 of <array 2 of <array 3 of <bool>>>>>>> %ebp-20 ]
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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    jmp     l_test_4                #   2:     goto   4
l_test_4:
    call    ReadInt                 #   4:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_9_while_cond:
    jmp     l_test_8                #   6:     goto   8
    jmp     l_test_9_while_cond     #   7:     goto   9_while_cond
l_test_8:
    movl    $99, %eax               #   9:     if     99 >= 100 goto 12_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_12_if_true      
    jmp     l_test_13_if_false      #  10:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  12:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_exit            
    jmp     l_test_1                #  16:     goto   1
l_test_3_if_false:
l_test_1:
    leal    v2, %eax                #  19:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  1 <- t1
    pushl   %eax                   
    movl    $99, %eax               #  21:     if     99 < 98 goto 20
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_20              
    jmp     l_test_21               #  22:     goto   21
l_test_20:
    movl    $1, %eax                #  24:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_22               #  25:     goto   22
l_test_21:
    movl    $0, %eax                #  27:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_22:
    movzbl  -21(%ebp), %eax         #  29:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  30:     call   t3 <- f1
    addl    $8, %esp               
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  31:     if     t3 >= 97 goto 17_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_17_if_true      
    jmp     l_test_18_if_false      #  32:     goto   18_if_false
l_test_17_if_true:
    movl    $7052, %eax             #  34:     assign v1 <- 7052
    movl    %eax, v1               
    movl    $81560, %eax            #  35:     if     81560 > 96433 goto 26_if_true
    movl    $96433, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_26_if_true      
    jmp     l_test_27_if_false      #  36:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  38:     goto   25
l_test_27_if_false:
l_test_25:
    jmp     l_test_16               #  41:     goto   16
l_test_18_if_false:
l_test_16:

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
v1:                                 # <int>
    .skip    4
v2:                                 # <array 7 of <array 6 of <array 5 of <array 2 of <array 3 of <bool>>>>>>
    .long    5
    .long    7
    .long    6
    .long    5
    .long    2
    .long    3
    .skip 1260








    # end of global data section
    #-----------------------------------------

    .end
##################################################
