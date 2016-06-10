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
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 1 of <array 2 of <array 10 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 10 of <array 8 of <array 9 of <array 9 of <array 4 of <char>>>>>>> %ebp+16 ]
    #    -24(%ebp)   4  [ $v5       <int> %ebp-24 ]

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
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_0                  #   2:     goto   0
    jmp     l_f0_0                  #   3:     goto   0
    jmp     l_f0_0                  #   4:     goto   0
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $62885, %eax            #   7:     sub    t3 <- 62885, 59723
    movl    $59723, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     assign v5 <- t3
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #   9:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
l_f1_2_while_cond:
    jmp     l_f1_1                  #   4:     goto   1
l_f1_5_while_cond:
    movl    $69518, %eax            #   6:     if     69518 < 73910 goto 6_while_body
    movl    $73910, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   9:     goto   5_while_cond
l_f1_4:
l_f1_9_while_cond:
    jmp     l_f1_8                  #  12:     goto   8
    jmp     l_f1_9_while_cond       #  13:     goto   9_while_cond
l_f1_8:
    movl    $98, %eax               #  15:     if     98 >= 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  16:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  18:     goto   11
l_f1_13_if_false:
l_f1_11:
    movl    $98, %eax               #  21:     if     98 <= 98 goto 16_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  22:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_15                 #  24:     goto   15
l_f1_17_if_false:
l_f1_15:
    jmp     l_f1_2_while_cond       #  27:     goto   2_while_cond
l_f1_1:
l_f1_20_while_cond:
    movl    $98, %eax               #  30:     if     98 # 98 goto 21_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_21_while_body     
    jmp     l_f1_19                 #  31:     goto   19
l_f1_21_while_body:
    call    dummyCHARfunc           #  33:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  34:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $16388, %eax            #  35:     if     16388 >= 27566 goto 26_if_true
    movl    $27566, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_26_if_true        
    jmp     l_f1_27_if_false        #  36:     goto   27_if_false
l_f1_26_if_true:
    jmp     l_f1_25                 #  38:     goto   25
l_f1_27_if_false:
l_f1_25:
    movl    $1, %eax                #  41:     return 1
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  42:     call   t6 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
l_f1_32_while_cond:
    jmp     l_f1_31                 #  44:     goto   31
    jmp     l_f1_32_while_cond      #  45:     goto   32_while_cond
l_f1_31:
    jmp     l_f1_20_while_cond      #  47:     goto   20_while_cond
l_f1_19:

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 8 of <array 10 of <array 9 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 9 of <array 6 of <array 10 of <array 6 of <char>>>>>>> %ebp+12 ]
    #    -22(%ebp)   1  [ $v4       <char> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v4 <- t3
    movb    %al, -22(%ebp)         
l_f2_2_while_cond:
    movl    $99, %eax               #   3:     if     99 <= 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    movl    $69251, %eax            #   6:     return 69251
    jmp     l_f2_exit              
l_f2_7_while_cond:
    jmp     l_f2_6                  #   8:     goto   6
    call    dummyINTfunc            #   9:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $74989, %eax            #  10:     return 74989
    jmp     l_f2_exit              
    jmp     l_f2_7_while_cond       #  11:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_2_while_cond       #  13:     goto   2_while_cond
l_f2_1:
    movl    $33863, %eax            #  15:     if     33863 > 40415 goto 12_if_true
    movl    $40415, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  16:     goto   13_if_false
l_f2_12_if_true:
    call    f1                      #  18:     call   t5 <- f1
    movb    %al, -21(%ebp)         
    jmp     l_f2_18_if_false        #  19:     goto   18_if_false
    jmp     l_f2_16                 #  20:     goto   16
l_f2_18_if_false:
l_f2_16:
    movl    $32397, %eax            #  23:     return 32397
    jmp     l_f2_exit              
    movl    $75434, %eax            #  24:     if     75434 > 78613 goto 21_if_true
    movl    $78613, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_21_if_true        
    jmp     l_f2_22_if_false        #  25:     goto   22_if_false
l_f2_21_if_true:
    jmp     l_f2_20                 #  27:     goto   20
l_f2_22_if_false:
l_f2_20:
    jmp     l_f2_11                 #  30:     goto   11
l_f2_13_if_false:
l_f2_11:

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    call    WriteLn                 #   0:     call   WriteLn
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_1                #   3:     goto   1
    movl    $1, %eax                #   4:     if     1 = 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6_if_true       
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   7:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyBOOLfunc           #  10:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #  11:     assign v0 <- 99
    movb    %al, v0                
    movl    $79233, %eax            #  12:     assign v1 <- 79233
    movl    %eax, v1               
    jmp     l_test_2_while_cond     #  13:     goto   2_while_cond
l_test_1:
l_test_13_while_cond:
    jmp     l_test_12               #  16:     goto   12
    movl    $50098, %eax            #  17:     if     50098 < 81928 goto 14_while_body
    movl    $81928, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_14_while_body   
    jmp     l_test_12               #  18:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  20:     goto   13_while_cond
l_test_12:
    movl    $97, %eax               #  22:     assign v0 <- 97
    movb    %al, v0                
    movl    $62553, %eax            #  23:     div    t1 <- 62553, 6227
    movl    $6227, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     div    t2 <- t1, 26866
    movl    $26866, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #  26:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
