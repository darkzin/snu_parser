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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    movl    $83179, %eax            #   0:     assign v2 <- 83179
    movl    %eax, -20(%ebp)        
    movl    $63094, %eax            #   1:     if     63094 < 78523 goto 2_if_true
    movl    $78523, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_exit              
l_f0_7_while_cond:
    jmp     l_f0_7_while_cond       #   6:     goto   7_while_cond
    movl    $50513, %eax            #   7:     if     50513 < 62940 goto 10_if_true
    movl    $62940, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #   8:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  10:     goto   9
l_f0_11_if_false:
l_f0_9:
    leal    _str_1, %eax            #  13:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  15:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_1                  #  16:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyProcedure          #  19:     call   dummyProcedure

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 8 of <array 9 of <array 3 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 5 of <array 3 of <array 2 of <array 1 of <int>>>>>>> %ebp+16 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
    movl    $100, %eax              #   1:     if     100 >= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   5:     goto   4
    jmp     l_f1_4                  #   6:     goto   4
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
l_f1_0:
    movl    $58425, %eax            #  11:     if     58425 > 12451 goto 11_if_true
    movl    $12451, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  12:     goto   12_if_false
l_f1_11_if_true:
l_f1_15_while_cond:
    jmp     l_f1_14                 #  15:     goto   14
    jmp     l_f1_15_while_cond      #  16:     goto   15_while_cond
l_f1_14:
    call    dummyINTfunc            #  18:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $98, %eax               #  19:     return 98
    jmp     l_f1_exit              
    movl    $45480, %eax            #  20:     if     45480 < 87690 goto 20_if_true
    movl    $87690, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  21:     goto   21_if_false
l_f1_20_if_true:
    jmp     l_f1_19                 #  23:     goto   19
l_f1_21_if_false:
l_f1_19:
    movl    $0, %eax                #  26:     assign v3 <- 0
    movb    %al, -21(%ebp)         
    jmp     l_f1_10                 #  27:     goto   10
l_f1_12_if_false:
l_f1_10:
    call    dummyINTfunc            #  30:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]

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
    movl    $82374, %eax            #   0:     mul    t3 <- 82374, 5562
    movl    $5562, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t5 <- t3, t4
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t5
    jmp     l_f2_exit              
l_f2_2_while_cond:
    jmp     l_f2_1                  #   5:     goto   1
    jmp     l_f2_6_if_false         #   6:     goto   6_if_false
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    WriteLn                 #  10:     call   WriteLn
    movl    $71810, %eax            #  11:     return 71810
    jmp     l_f2_exit              
    movl    $34359, %eax            #  12:     if     34359 > 80186 goto 10_if_true
    movl    $80186, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  13:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  15:     goto   9
l_f2_11_if_false:
l_f2_9:
l_f2_14_while_cond:
    jmp     l_f2_13                 #  19:     goto   13
    jmp     l_f2_14_while_cond      #  20:     goto   14_while_cond
l_f2_13:
l_f2_17_while_cond:
    jmp     l_f2_16                 #  23:     goto   16
    jmp     l_f2_17_while_cond      #  24:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_2_while_cond       #  26:     goto   2_while_cond
l_f2_1:
    movl    $68824, %eax            #  28:     assign v0 <- 68824
    movl    %eax, -28(%ebp)        

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
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
l_test_1_while_cond:
    jmp     l_test_3                #   1:     goto   3
    jmp     l_test_3                #   2:     goto   3
    jmp     l_test_3                #   3:     goto   3
l_test_3:
    jmp     l_test_0                #   5:     goto   0
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   8:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     if     t0 <= 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_9_if_true       
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
l_test_9_if_true:
    movl    $39453, %eax            #  12:     if     39453 = 2026 goto 13_if_true
    movl    $2026, %ebx            
    cmpl    %ebx, %eax             
    je      l_test_13_if_true      
    jmp     l_test_14_if_false      #  13:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  15:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_exit            
    call    dummyINTfunc            #  19:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_8                #  20:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  24:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
