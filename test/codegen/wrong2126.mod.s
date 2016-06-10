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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v0       <char> %ebp-17 ]

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
    jmp     l_f0_exit              
    movl    $100, %eax              #   1:     assign v0 <- 100
    movb    %al, -17(%ebp)         
l_f0_3_while_cond:
    movl    $98, %eax               #   3:     if     98 > 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_4_while_body      
    jmp     l_f0_2                  #   4:     goto   2
l_f0_4_while_body:
    movl    $99, %eax               #   6:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   7:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_exit              
    call    dummyINTfunc            #   9:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  11:     goto   3_while_cond
l_f0_2:

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t6
    movb    %al, -15(%ebp)         
l_f1_2_while_cond:
    movl    $21158, %eax            #   3:     if     21158 = 25679 goto 3_while_body
    movl    $25679, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   7:     goto   6_while_cond
    movl    $36362, %eax            #   8:     if     36362 >= 68815 goto 9_if_true
    movl    $68815, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_2_while_cond       #  14:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_14_if_false        #  16:     goto   14_if_false
    movl    $100, %eax              #  17:     return 100
    jmp     l_f1_exit              
    movl    $56379, %eax            #  18:     if     56379 >= 53519 goto 17
    movl    $53519, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_17                
    jmp     l_f1_18                 #  19:     goto   18
l_f1_17:
    movl    $1, %eax                #  21:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_19                 #  22:     goto   19
l_f1_18:
    movl    $0, %eax                #  24:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f1_19:
    movzbl  -14(%ebp), %eax         #  26:     assign v1 <- t7
    movb    %al, 12(%ebp)          
    jmp     l_f1_12                 #  27:     goto   12
l_f1_14_if_false:
l_f1_12:

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <char> %ebp-25 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    call    ReadInt                 #   3:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
l_f2_0:
l_f2_6_while_cond:
    call    dummyINTfunc            #   7:     call   t7 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $14910, %eax            #   8:     mul    t8 <- 14910, 63377
    movl    $63377, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   9:     if     t7 >= t8 goto 7_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_7_while_body      
    jmp     l_f2_5                  #  10:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  12:     goto   6_while_cond
l_f2_5:
l_f2_10_while_cond:
    movl    $97, %eax               #  15:     if     97 < 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_11_while_body     
    jmp     l_f2_9                  #  16:     goto   9
l_f2_11_while_body:
    call    dummyCHARfunc           #  18:     call   t9 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  19:     if     t9 # 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  20:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  22:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_10_while_cond      #  25:     goto   10_while_cond
l_f2_9:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $33857, %eax            #   2:     if     33857 > 2719 goto 7
    movl    $2719, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_7               
    jmp     l_test_8                #   3:     goto   8
l_test_7:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_9                #   6:     goto   9
l_test_8:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_9:
    movzbl  -15(%ebp), %eax         #  10:     param  1 <- t2
    pushl   %eax                   
    movl    $7063, %eax             #  11:     mul    t3 <- 7063, 40251
    movl    $40251, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  13:     call   t4 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #  14:     if     98 <= t4 goto 3
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_3               
    jmp     l_test_4                #  15:     goto   4
l_test_3:
    movl    $1, %eax                #  17:     assign t5 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_5                #  18:     goto   5
l_test_4:
    movl    $0, %eax                #  20:     assign t5 <- 0
    movb    %al, -22(%ebp)         
l_test_5:
    movzbl  -22(%ebp), %eax         #  22:     assign v0 <- t5
    movb    %al, v0                

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
