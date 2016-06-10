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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 4 of <array 9 of <array 9 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 7 of <array 3 of <array 3 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -16(%ebp)   4  [ $v4       <int> %ebp-16 ]

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
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    movl    $50211, %eax            #   2:     assign v4 <- 50211
    movl    %eax, -16(%ebp)        

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 3 of <array 9 of <array 3 of <array 4 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    movl    $0, %eax                #   2:     if     0 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    movl    $97, %eax               #   5:     if     97 < 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   6:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_10_while_cond:
    jmp     l_f1_10_while_cond      #  12:     goto   10_while_cond
    movl    $43643, %eax            #  13:     if     43643 < 6006 goto 13
    movl    $6006, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_13                
    jmp     l_f1_14                 #  14:     goto   14
l_f1_13:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_15                 #  17:     goto   15
l_f1_14:
    movl    $0, %eax                #  19:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f1_15:
    movzbl  -17(%ebp), %eax         #  21:     assign v3 <- t3
    movb    %al, 20(%ebp)          
    jmp     l_f1_2_while_cond       #  22:     goto   2_while_cond
l_f1_1:
    movl    $98, %eax               #  24:     if     98 >= 98 goto 18
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_18                
    jmp     l_f1_19                 #  25:     goto   19
l_f1_18:
    movl    $1, %eax                #  27:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_20                 #  28:     goto   20
l_f1_19:
    movl    $0, %eax                #  30:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f1_20:
    movzbl  -18(%ebp), %eax         #  32:     return t4
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_3                  #   0:     goto   3
l_f2_3:
    movl    $48753, %eax            #   2:     assign v1 <- 48753
    movl    %eax, -32(%ebp)        
    jmp     l_f2_0                  #   3:     goto   0
l_f2_0:
    movl    $100, %eax              #   5:     if     100 # 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   6:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #   8:     goto   7
l_f2_9_if_false:
l_f2_7:
l_f2_14_while_cond:
    movl    $80527, %eax            #  12:     add    t2 <- 80527, 78376
    movl    $78376, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     add    t3 <- t2, 87014
    movl    $87014, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     sub    t4 <- t3, 94095
    movl    $94095, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     sub    t5 <- t4, 27203
    movl    $27203, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     if     t5 >= 14169 goto 15_while_body
    movl    $14169, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_15_while_body     
    jmp     l_f2_13                 #  17:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  19:     goto   14_while_cond
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_4_while_cond:
    jmp     l_test_4_while_cond     #   2:     goto   4_while_cond
    call    ReadInt                 #   3:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #   5:     goto   8_while_cond
    jmp     l_test_12_if_false      #   6:     goto   12_if_false
    jmp     l_test_10               #   7:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_0                #  10:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $97, %eax               #  13:     if     97 <= 100 goto 14_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_14_if_true      
    jmp     l_test_15_if_false      #  14:     goto   15_if_false
l_test_14_if_true:
l_test_18_while_cond:
    movl    $100, %eax              #  17:     if     100 <= 99 goto 19_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_19_while_body   
    jmp     l_test_17               #  18:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  20:     goto   18_while_cond
l_test_17:
    jmp     l_test_13               #  22:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_exit            
    leal    _str_1, %eax            #  26:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  28:     call   WriteStr
    addl    $4, %esp               
    movl    $99, %eax               #  29:     assign v0 <- 99
    movb    %al, v0                

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
