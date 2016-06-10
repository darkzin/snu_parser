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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]

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
    leal    _str_1, %eax            #   1:     &()    t5 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
    movl    $65095, %eax            #   5:     if     65095 < 56658 goto 6_if_true
    movl    $56658, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   6:     goto   7_if_false
l_f0_6_if_true:
    call    ReadInt                 #   8:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f0_11_while_cond:
    movl    $99, %eax               #  10:     if     99 > 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_12_while_body     
    jmp     l_f0_10                 #  11:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  13:     goto   11_while_cond
l_f0_10:
    movl    $17773, %eax            #  15:     if     17773 < 77925 goto 15_if_true
    movl    $77925, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  16:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  18:     goto   14
l_f0_16_if_false:
l_f0_14:
    jmp     l_f0_5                  #  21:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $100, %eax              #  24:     if     100 = 100 goto 19
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_19                
    jmp     l_f0_20                 #  25:     goto   20
l_f0_19:
    movl    $1, %eax                #  27:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_21                 #  28:     goto   21
l_f0_20:
    movl    $0, %eax                #  30:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f0_21:
    movzbl  -21(%ebp), %eax         #  32:     return t7
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 5 of <char>>> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    leal    _str_2, %eax            #   2:     &()    t7 <- _str_2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 4 of <array 7 of <array 9 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    movl    $100, %eax              #   1:     return 100
    jmp     l_f2_exit              
l_f2_8_while_cond:
    movl    $8600, %eax             #   3:     if     8600 > 13727 goto 9_while_body
    movl    $13727, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_9_while_body      
    jmp     l_f2_7                  #   4:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #   6:     goto   8_while_cond
l_f2_7:
    movl    $100, %eax              #   8:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_4                  #   9:     goto   4
l_f2_4:
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
    call    dummyCHARfunc           #  12:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_18                 #  14:     goto   18
l_f2_18:
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_20                 #  17:     goto   20
    movl    $0, %eax                #  18:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f2_20:
    movl    $0, %eax                #  20:     if     0 = t6 goto 14
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_14                
    jmp     l_f2_15                 #  21:     goto   15
l_f2_14:
    movl    $1, %eax                #  23:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_16                 #  24:     goto   16
l_f2_15:
    movl    $0, %eax                #  26:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f2_16:
    movzbl  -15(%ebp), %eax         #  28:     assign v3 <- t7
    movb    %al, 16(%ebp)          

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
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
    movl    $33611, %eax            #   0:     assign v0 <- 33611
    movl    %eax, v0               
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    jmp     l_test_4                #   2:     goto   4
l_test_4:
    jmp     l_test_7                #   4:     goto   7
l_test_7:
    movl    $99, %eax               #   6:     if     99 >= 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_11_if_true      
    jmp     l_test_12_if_false      #   7:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #   9:     goto   10
l_test_12_if_false:
l_test_10:
l_test_15_while_cond:
    jmp     l_test_14               #  13:     goto   14
    jmp     l_test_15_while_cond    #  14:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_1                #  18:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $99, %eax               #  21:     assign v1 <- 99
    movb    %al, v1                
    call    f0                      #  22:     call   t0 <- f0
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  23:     if     t0 = 1 goto 21
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_21              
    jmp     l_test_22               #  24:     goto   22
    jmp     l_test_22               #  25:     goto   22
    jmp     l_test_22               #  26:     goto   22
    jmp     l_test_22               #  27:     goto   22
l_test_21:
    movl    $1, %eax                #  29:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_23               #  30:     goto   23
l_test_22:
    movl    $0, %eax                #  32:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_23:
    movzbl  -14(%ebp), %eax         #  34:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  35:     call   t2 <- f1
    addl    $4, %esp               
    movb    %al, -15(%ebp)         
    call    f0                      #  36:     call   t3 <- f0
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  37:     if     t3 = 1 goto 36
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_36              
    jmp     l_test_34               #  38:     goto   34
l_test_36:
    jmp     l_test_34               #  40:     goto   34
    movl    $1, %eax                #  41:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_35               #  42:     goto   35
l_test_34:
    movl    $0, %eax                #  44:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_test_35:
    movl    $0, %eax                #  46:     if     0 = t4 goto 30_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_30_if_true      
    jmp     l_test_31_if_false      #  47:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_29               #  49:     goto   29
l_test_31_if_false:
l_test_29:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
