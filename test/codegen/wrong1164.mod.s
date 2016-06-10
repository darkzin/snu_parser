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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 12 of <array 12 of <array 45 of <array 7 of <array 75 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 17 of <array 72 of <array 56 of <array 95 of <array 74 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f0_1_while_cond:
    movl    $97, %eax               #   1:     if     97 = 98 goto 3
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_3                 
    jmp     l_f0_0                  #   2:     goto   0
l_f0_3:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    movl    $32521, %eax            #   6:     param  0 <- 32521
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
    movl    $98, %eax               #   8:     if     98 > 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   9:     goto   8_if_false
l_f0_7_if_true:
    movl    $99, %eax               #  11:     assign v2 <- 99
    movb    %al, 16(%ebp)          
    jmp     l_f0_6                  #  12:     goto   6
l_f0_8_if_false:
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 94 of <array 64 of <array 89 of <array 53 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 81 of <array 100 of <array 55 of <array 94 of <array 56 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 57 of <array 59 of <array 32 of <array 99 of <array 70 of <bool>>>>>>> %ebp+20 ]

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
l_f1_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $65937, %eax            #   2:     assign v2 <- 65937
    movl    %eax, 16(%ebp)         
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
l_f1_6_while_cond:
    movl    $8635, %eax             #   5:     sub    t3 <- 8635, 81744
    movl    $81744, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     sub    t4 <- t3, 36360
    movl    $36360, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     if     t4 >= 67103 goto 7_while_body
    movl    $67103, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7_while_body      
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_while_body:
l_f1_10_while_cond:
    movl    $93098, %eax            #  11:     if     93098 <= 25502 goto 11_while_body
    movl    $25502, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  14:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_6_while_cond       #  16:     goto   6_while_cond
l_f1_5:
l_f1_14_while_cond:
    movl    $51261, %eax            #  19:     sub    t5 <- 51261, 75646
    movl    $75646, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $22293, %eax            #  20:     if     22293 < t5 goto 15_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  21:     goto   13
l_f1_15_while_body:
l_f1_18_while_cond:
    jmp     l_f1_18_while_cond      #  24:     goto   18_while_cond
l_f1_21_while_cond:
    jmp     l_f1_20                 #  26:     goto   20
    jmp     l_f1_21_while_cond      #  27:     goto   21_while_cond
l_f1_20:
    jmp     l_f1_14_while_cond      #  29:     goto   14_while_cond
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $v0       <bool> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_1                  #   0:     goto   1
    jmp     l_f2_1                  #   1:     goto   1
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_f2_3:
    movzbl  -18(%ebp), %eax         #   9:     assign v0 <- t2
    movb    %al, -45(%ebp)         
l_f2_12_while_cond:
    movl    $6313, %eax             #  11:     if     6313 > 43988 goto 15
    movl    $43988, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_15                
    jmp     l_f2_16                 #  12:     goto   16
l_f2_15:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_17                 #  15:     goto   17
l_f2_16:
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_f2_17:
    movzbl  -19(%ebp), %eax         #  19:     assign v0 <- t3
    movb    %al, -45(%ebp)         
    movl    $35353, %eax            #  20:     return 35353
    jmp     l_f2_exit              
    jmp     l_f2_22_if_false        #  21:     goto   22_if_false
    jmp     l_f2_20                 #  22:     goto   20
l_f2_22_if_false:
l_f2_20:
    jmp     l_f2_12_while_cond      #  25:     goto   12_while_cond
    movl    $30223, %eax            #  26:     mul    t4 <- 30223, 63977
    movl    $63977, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     mul    t5 <- t4, 32988
    movl    $32988, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t6 <- t5, 52595
    movl    $52595, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t7 <- t6, 58823
    movl    $58823, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     mul    t8 <- t7, 75044
    movl    $75044, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     sub    t9 <- t8, 30515
    movl    $30515, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  32:     sub    t10 <- t9, 14424
    movl    $14424, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  33:     if     t10 <= 27079 goto 24
    movl    $27079, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_24                
    jmp     l_f2_25                 #  34:     goto   25
l_f2_24:
    movl    $1, %eax                #  36:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_26                 #  37:     goto   26
l_f2_25:
    movl    $0, %eax                #  39:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_26:
    movzbl  -17(%ebp), %eax         #  41:     assign v0 <- t11
    movb    %al, -45(%ebp)         

l_f2_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_2_if_true        #   3:     goto   2_if_true
l_test_2_if_true:
    jmp     l_test_1                #   5:     goto   1
l_test_1:
l_test_8_while_cond:
    call    dummyCHARfunc           #   8:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   9:     if     t1 < 99 goto 9_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_9_while_body    
    jmp     l_test_7                #  10:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  12:     goto   8_while_cond
l_test_7:
    jmp     l_test_exit            

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
