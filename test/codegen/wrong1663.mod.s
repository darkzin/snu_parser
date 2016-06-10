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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 35 of <array 7 of <array 29 of <array 99 of <array 45 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    movl    $99, %eax               #   1:     assign v1 <- 99
    movb    %al, 12(%ebp)          
    movl    $77955, %eax            #   2:     if     77955 < 70894 goto 3_if_true
    movl    $70894, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
l_f0_3_if_true:
    leal    _str_1, %eax            #   5:     &()    t4 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   7:     call   WriteStr
    addl    $4, %esp               
    movl    $99, %eax               #   8:     assign v1 <- 99
    movb    %al, 12(%ebp)          
    movl    $99, %eax               #   9:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_9                  #  10:     goto   9
l_f0_9:
    jmp     l_f0_2                  #  12:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 52 of <array 21 of <array 75 of <array 8 of <array 95 of <bool>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 < t4 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98, %eax               #   9:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_13_if_false        #  10:     goto   13_if_false
    jmp     l_f1_11                 #  11:     goto   11
l_f1_13_if_false:
l_f1_11:
l_f1_15_while_cond:
    movl    $2742, %eax             #  15:     if     2742 > 51619 goto 16_while_body
    movl    $51619, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_16_while_body     
    jmp     l_f1_14                 #  16:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  18:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_7                  #  20:     goto   7
l_f1_7:
    call    dummyCHARfunc           #  22:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 75 of <array 49 of <array 65 of <array 74 of <array 98 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 74 of <array 20 of <array 38 of <array 55 of <array 6 of <bool>>>>>>> %ebp+12 ]
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
l_f2_1_while_cond:
    movl    $17205, %eax            #   1:     add    t4 <- 17205, 64939
    movl    $64939, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $29111, %eax            #   2:     if     29111 >= t4 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    movl    $89388, %eax            #   6:     if     89388 # 92992 goto 6_while_body
    movl    $92992, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_6_while_body      
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   9:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    movl    $6273, %eax             #  13:     mul    t5 <- 6273, 19625
    movl    $19625, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     assign v2 <- t5
    movl    %eax, -24(%ebp)        
l_f2_10_while_cond:
    movl    $54258, %eax            #  16:     if     54258 < 90195 goto 11_while_body
    movl    $90195, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_11_while_body     
    jmp     l_f2_9                  #  17:     goto   9
l_f2_11_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_10_while_cond      #  20:     goto   10_while_cond
l_f2_9:

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 52 of <array 21 of <array 75 of <array 8 of <array 95 of <bool>>>>>>> %ebp-20 ]
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
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_1                #   3:     goto   1
l_test_1:
    leal    v1, %eax                #   5:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  2 <- t1
    pushl   %eax                   
    movl    $98, %eax               #   7:     param  1 <- 98
    pushl   %eax                   
    movl    $97, %eax               #   8:     if     97 <= 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_7               
    jmp     l_test_8                #   9:     goto   8
l_test_7:
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_9                #  12:     goto   9
l_test_8:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_9:
    movzbl  -21(%ebp), %eax         #  16:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  17:     call   t3 <- f1
    addl    $12, %esp              
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  18:     assign v0 <- t3
    movb    %al, v0                
    movl    $13688, %eax            #  19:     assign v2 <- 13688
    movl    %eax, v2               

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 52 of <array 21 of <array 75 of <array 8 of <array 95 of <bool>>>>>>
    .long    5
    .long   52
    .long   21
    .long   75
    .long    8
    .long   95
    .skip 62244000
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
