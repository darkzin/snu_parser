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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t9       <char> %ebp-37 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 46 of <array 50 of <array 86 of <array 55 of <array 56 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 80 of <array 60 of <array 74 of <array 21 of <array 93 of <bool>>>>>>> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $34685, %eax            #   1:     mul    t4 <- 34685, t3
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t4
    jmp     l_f0_exit              
    movl    $56057, %eax            #   3:     div    t5 <- 56057, 24958
    movl    $24958, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t6 <- t5, 81505
    movl    $81505, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t7 <- t6, 22668
    movl    $22668, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     add    t8 <- t7, 14008
    movl    $14008, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     return t8
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   8:     call   t9 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #   9:     if     t9 # 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #  10:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_2                  #  12:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

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
    leal    _str_1, %eax            #   2:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_7_while_cond:
    movl    $37500, %eax            #   8:     add    t4 <- 37500, 60986
    movl    $60986, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     if     t4 > 73345 goto 8_while_body
    movl    $73345, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_8_while_body      
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_while_body:
    movl    $8203, %eax             #  12:     assign v0 <- 8203
    movl    %eax, -24(%ebp)        
    jmp     l_f1_7_while_cond       #  13:     goto   7_while_cond
l_f1_6:
    movl    $99, %eax               #  15:     if     99 > 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  16:     goto   13_if_false
l_f1_12_if_true:
    movl    $51725, %eax            #  18:     if     51725 # 64334 goto 16_if_true
    movl    $64334, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  19:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_15                 #  21:     goto   15
l_f1_17_if_false:
l_f1_15:
l_f1_20_while_cond:
    movl    $0, %eax                #  25:     if     0 = 0 goto 21_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_21_while_body     
    jmp     l_f1_19                 #  26:     goto   19
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  28:     goto   20_while_cond
l_f1_19:
    jmp     l_f1_11                 #  30:     goto   11
l_f1_13_if_false:
l_f1_11:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 99 of <array 11 of <array 54 of <array 54 of <array 21 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 19 of <array 95 of <array 80 of <array 67 of <array 93 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
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
l_f2_1_while_cond:
l_f2_4_while_cond:
    movl    $97, %eax               #   2:     if     97 >= 100 goto 5_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_5_while_body      
    jmp     l_f2_3                  #   3:     goto   3
l_f2_5_while_body:
    jmp     l_f2_4_while_cond       #   5:     goto   4_while_cond
l_f2_3:
    movl    $97, %eax               #   7:     assign v4 <- 97
    movb    %al, -14(%ebp)         
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
    movl    $97, %eax               #   9:     assign v4 <- 97
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #  10:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    movl    $95995, %eax            #   2:     if     95995 >= 98322 goto 3_while_body
    movl    $98322, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
    jmp     l_test_5                #   6:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $100, %eax              #   9:     if     100 >= 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_9_if_true       
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  12:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_2_while_cond     #  15:     goto   2_while_cond
l_test_1:
    movl    $83473, %eax            #  17:     if     83473 < 83067 goto 13_if_true
    movl    $83067, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_13_if_true      
    jmp     l_test_14_if_false      #  18:     goto   14_if_false
l_test_13_if_true:
    movl    $97, %eax               #  20:     assign v0 <- 97
    movb    %al, v0                
    movl    $2803, %eax             #  21:     add    t1 <- 2803, 18711
    movl    $18711, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $9571, %eax             #  22:     if     9571 > t1 goto 18
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_18              
    jmp     l_test_19               #  23:     goto   19
l_test_18:
    movl    $1, %eax                #  25:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_20               #  26:     goto   20
l_test_19:
    movl    $0, %eax                #  28:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_20:
    movzbl  -21(%ebp), %eax         #  30:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_12               #  31:     goto   12
l_test_14_if_false:
l_test_12:

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
