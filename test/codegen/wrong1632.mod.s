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
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 50 of <array 10 of <array 74 of <array 81 of <array 37 of <int>>>>>>> %ebp+8 ]

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
    call    ReadInt                 #   1:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f0_3_while_cond:
    jmp     l_f0_6                  #   3:     goto   6
    jmp     l_f0_6                  #   4:     goto   6
l_f0_6:
    jmp     l_f0_4_while_body       #   6:     goto   4_while_body
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   8:     goto   3_while_cond

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
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    jmp     l_f1_4                  #   0:     goto   4
    jmp     l_f1_4                  #   1:     goto   4
    jmp     l_f1_4                  #   2:     goto   4
    jmp     l_f1_1                  #   3:     goto   1
l_f1_4:
l_f1_1:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   7:     goto   3
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #  10:     assign v2 <- t5
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  11:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  12:     assign v1 <- t6
    movb    %al, 12(%ebp)          
    movl    $97, %eax               #  13:     assign v1 <- 97
    movb    %al, 12(%ebp)          

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 16 of <array 15 of <array 93 of <array 2 of <array 53 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 42 of <array 86 of <array 30 of <array 73 of <array 72 of <int>>>>>>> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $46183, %eax            #   7:     div    t6 <- 46183, 79679
    movl    $79679, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     div    t7 <- t6, 7573
    movl    $7573, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     if     t7 > 34891 goto 10
    movl    $34891, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_10                
    jmp     l_f2_11                 #  10:     goto   11
l_f2_10:
    movl    $1, %eax                #  12:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_12                 #  13:     goto   12
l_f2_11:
    movl    $0, %eax                #  15:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f2_12:
    movzbl  -25(%ebp), %eax         #  17:     return t8
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]

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
l_test_1_while_cond:
    movl    $37645, %eax            #   1:     if     37645 < 64813 goto 2_while_body
    movl    $64813, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    call    dummyCHARfunc           #   4:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
    movl    $100, %eax              #   9:     param  1 <- 100
    pushl   %eax                   
    movl    $26763, %eax            #  10:     param  0 <- 26763
    pushl   %eax                   
    call    f1                      #  11:     call   t2 <- f1
    addl    $8, %esp               
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  12:     assign v0 <- t2
    movb    %al, v0                
l_test_9_while_cond:
    call    dummyBOOLfunc           #  14:     call   t3 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  15:     if     t3 = 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  16:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  18:     goto   9_while_cond
l_test_8:
    movl    $7644, %eax             #  20:     if     7644 = 71090 goto 16_if_true
    movl    $71090, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_16_if_true      
    jmp     l_test_17_if_false      #  21:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_exit            
    movl    $0, %eax                #  24:     if     0 = 0 goto 21_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_21_if_true      
    jmp     l_test_22_if_false      #  25:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  27:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_exit            
l_test_26_while_cond:
    movl    $100, %eax              #  32:     if     100 < 99 goto 27_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_27_while_body   
    jmp     l_test_25               #  33:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  35:     goto   26_while_cond
l_test_25:
    call    dummyBOOLfunc           #  37:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_15               #  38:     goto   15
l_test_17_if_false:
l_test_15:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
