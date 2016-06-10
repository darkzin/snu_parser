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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
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
    movl    $97, %eax               #   0:     assign v2 <- 97
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t1
    jmp     l_f0_exit              
l_f0_3_while_cond:
    jmp     l_f0_6                  #   4:     goto   6
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_8:
    movl    $1, %eax                #  12:     if     1 # t2 goto 4_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_4_while_body      
    jmp     l_f0_2                  #  13:     goto   2
l_f0_4_while_body:
    movl    $100, %eax              #  15:     if     100 < 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  16:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  18:     goto   12
l_f0_14_if_false:
l_f0_12:
l_f0_17_while_cond:
    movl    $99, %eax               #  22:     if     99 <= 98 goto 18_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_18_while_body     
    jmp     l_f0_16                 #  23:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  25:     goto   17_while_cond
l_f0_16:
    jmp     l_f0_3_while_cond       #  27:     goto   3_while_cond
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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 3 of <array 1 of <array 6 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 1 of <array 1 of <array 5 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #    -21(%ebp)   1  [ $v5       <char> %ebp-21 ]

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
    jmp     l_f1_0                  #   1:     goto   0
l_f1_5_while_cond:
    movl    $91483, %eax            #   3:     if     91483 # 54244 goto 6_while_body
    movl    $54244, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_6_while_body      
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
l_f1_4:
    call    dummyBOOLfunc           #   8:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
l_f1_0:
    movl    $99, %eax               #  11:     if     99 < 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  12:     goto   11_if_false
l_f1_10_if_true:
    call    dummyProcedure          #  14:     call   dummyProcedure
l_f1_15_while_cond:
    movl    $97, %eax               #  16:     if     97 = 99 goto 16_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_16_while_body     
    jmp     l_f1_14                 #  17:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  19:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_18                 #  21:     goto   18
l_f1_18:
l_f1_22_while_cond:
    movl    $0, %eax                #  24:     if     0 # 1 goto 23_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_23_while_body     
    jmp     l_f1_21                 #  25:     goto   21
l_f1_23_while_body:
    movl    $98, %eax               #  27:     assign v5 <- 98
    movb    %al, -21(%ebp)         
    leal    _str_1, %eax            #  28:     &()    t2 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  30:     call   WriteStr
    addl    $4, %esp               
    movl    $58953, %eax            #  31:     param  0 <- 58953
    pushl   %eax                   
    call    WriteInt                #  32:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_22_while_cond      #  33:     goto   22_while_cond
l_f1_21:
    jmp     l_f1_9                  #  35:     goto   9
l_f1_11_if_false:
l_f1_9:
l_f1_29_while_cond:
    movl    $100, %eax              #  39:     if     100 >= 97 goto 30_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_30_while_body     
l_f1_30_while_body:
    jmp     l_f1_29_while_cond      #  41:     goto   29_while_cond

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v2       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     if     98 >= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $59838, %eax            #   3:     sub    t1 <- 59838, 13807
    movl    $13807, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t1
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
l_f2_6_while_cond:
    movl    $20085, %eax            #   7:     if     20085 >= 74725 goto 7_while_body
    movl    $74725, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_7_while_body      
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  10:     goto   6_while_cond
l_f2_5:
    movl    $98, %eax               #  12:     assign v2 <- 98
    movb    %al, -33(%ebp)         
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f2_0                  #  14:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $84825, %eax            #  17:     assign v3 <- 84825
    movl    %eax, -40(%ebp)        
    movl    $31416, %eax            #  18:     sub    t3 <- 31416, 11651
    movl    $11651, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t4 <- t3, 8117
    movl    $8117, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     sub    t5 <- t4, 7965
    movl    $7965, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     return t5
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    movl    $17129, %eax            #   0:     assign v0 <- 17129
    movl    %eax, v0               
    jmp     l_test_2                #   1:     goto   2
    jmp     l_test_2                #   2:     goto   2
    jmp     l_test_3                #   3:     goto   3
l_test_2:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   6:     goto   4
l_test_3:
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #  10:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_10_while_cond:
    jmp     l_test_9                #  14:     goto   9
    movl    $70252, %eax            #  15:     if     70252 >= 57524 goto 13_if_true
    movl    $57524, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_13_if_true      
    jmp     l_test_14_if_false      #  16:     goto   14_if_false
l_test_13_if_true:
    movl    $43526, %eax            #  18:     if     43526 = 84145 goto 17_if_true
    movl    $84145, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_17_if_true      
    jmp     l_test_18_if_false      #  19:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  21:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_exit            
    movl    $85424, %eax            #  25:     assign v0 <- 85424
    movl    %eax, v0               
    jmp     l_test_12               #  26:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_10_while_cond    #  29:     goto   10_while_cond
l_test_9:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
