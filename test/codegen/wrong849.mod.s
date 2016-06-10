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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $27381, %eax            #   1:     if     27381 # 14098 goto 2_if_true
    movl    $14098, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_5                  #   4:     goto   5
l_f0_5:
    movl    $100, %eax              #   6:     if     100 < 98 goto 9
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_9                 
    jmp     l_f0_10                 #   7:     goto   10
l_f0_9:
    movl    $1, %eax                #   9:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_11                 #  10:     goto   11
l_f0_10:
    movl    $0, %eax                #  12:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f0_11:
    movzbl  -13(%ebp), %eax         #  14:     assign v1 <- t6
    movb    %al, -15(%ebp)         
    jmp     l_f0_1                  #  15:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyBOOLfunc           #  18:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t9       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 2 of <array 5 of <array 4 of <array 1 of <char>>>>>>> %ebp+12 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 <= t6 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #   7:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     return t7
    jmp     l_f1_exit              
l_f1_6_while_cond:
    call    dummyBOOLfunc           #  10:     call   t8 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  11:     if     t8 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_7_while_body      
    jmp     l_f1_5                  #  12:     goto   5
l_f1_7_while_body:
    movl    $35073, %eax            #  14:     if     35073 >= 2217 goto 9
    movl    $2217, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_9                 
    jmp     l_f1_10                 #  15:     goto   10
l_f1_9:
    movl    $1, %eax                #  17:     assign t9 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_11                 #  18:     goto   11
l_f1_10:
    movl    $0, %eax                #  20:     assign t9 <- 0
    movb    %al, -16(%ebp)         
l_f1_11:
    movzbl  -16(%ebp), %eax         #  22:     assign v0 <- t9
    movb    %al, 8(%ebp)           
    jmp     l_f1_6_while_cond       #  23:     goto   6_while_cond
l_f1_5:

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 8 of <array 3 of <array 9 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
    movl    $100, %eax              #   4:     assign v2 <- 100
    movb    %al, -14(%ebp)         
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $1085, %eax             #   8:     if     1085 < 54006 goto 8_if_true
    movl    $54006, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   9:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_exit              
l_f2_13_while_cond:
    jmp     l_f2_13_while_cond      #  13:     goto   13_while_cond
    jmp     l_f2_7                  #  14:     goto   7
l_f2_9_if_false:
l_f2_7:

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 2 of <array 5 of <array 4 of <array 1 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <char> %ebp-23 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    leal    v0, %eax                #   2:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t1
    pushl   %eax                   
    movl    $100, %eax              #   4:     if     100 <= 98 goto 5
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_5               
    jmp     l_test_6                #   5:     goto   6
l_test_5:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_7                #   8:     goto   7
l_test_6:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_7:
    movzbl  -21(%ebp), %eax         #  12:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  13:     call   t3 <- f1
    addl    $8, %esp               
    movb    %al, -22(%ebp)         
    call    dummyCHARfunc           #  14:     call   t4 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movzbl  -22(%ebp), %eax         #  15:     if     t3 > t4 goto 3_while_body
    movzbl  -23(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_3_while_body    
    jmp     l_test_1                #  16:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #  18:     goto   2_while_cond
l_test_1:
    call    ReadInt                 #  20:     call   t5 <- ReadInt
    movl    %eax, -28(%ebp)        

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
v0:                                 # <array 10 of <array 2 of <array 5 of <array 4 of <array 1 of <char>>>>>>
    .long    5
    .long   10
    .long    2
    .long    5
    .long    4
    .long    1
    .skip  400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
