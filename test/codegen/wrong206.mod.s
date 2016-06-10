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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 6 of <array 5 of <array 1 of <array 9 of <char>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, 8(%ebp)           
l_f0_2_while_cond:
    jmp     l_f0_2_while_cond       #   2:     goto   2_while_cond
l_f0_6_while_cond:
    movl    $49864, %eax            #   4:     if     49864 # 18919 goto 7_while_body
    movl    $18919, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_while_body:
l_f0_13_while_cond:
    jmp     l_f0_13_while_cond      #   8:     goto   13_while_cond
    jmp     l_f0_9                  #   9:     goto   9
l_f0_9:
    jmp     l_f0_6_while_cond       #  11:     goto   6_while_cond
l_f0_5:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 9 of <array 4 of <array 4 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 5 of <array 7 of <array 3 of <array 3 of <bool>>>>>>> %ebp+16 ]

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
    jmp     l_f1_6                  #   0:     goto   6
    movl    $1, %eax                #   1:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   2:     goto   7
l_f1_6:
    movl    $0, %eax                #   4:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movl    $98, %eax               #   6:     if     98 <= 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_10                
    jmp     l_f1_11                 #   7:     goto   11
l_f1_10:
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #  10:     goto   12
l_f1_11:
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -13(%ebp), %eax         #  14:     if     t3 # t4 goto 1
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #  15:     goto   2
l_f1_1:
    movl    $1, %eax                #  17:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_3                  #  18:     goto   3
l_f1_2:
    movl    $0, %eax                #  20:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f1_3:
    movzbl  -15(%ebp), %eax         #  22:     return t5
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  23:     call   t6 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  24:     return t6
    jmp     l_f1_exit              
    movl    $97, %eax               #  25:     if     97 >= 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  26:     goto   17_if_false
l_f1_16_if_true:
    movl    $0, %eax                #  28:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_22_if_false        #  29:     goto   22_if_false
    jmp     l_f1_20                 #  30:     goto   20
l_f1_22_if_false:
l_f1_20:
l_f1_24_while_cond:
    movl    $13569, %eax            #  34:     if     13569 <= 8808 goto 25_while_body
    movl    $8808, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_25_while_body     
    jmp     l_f1_23                 #  35:     goto   23
l_f1_25_while_body:
    jmp     l_f1_24_while_cond      #  37:     goto   24_while_cond
l_f1_23:
    jmp     l_f1_15                 #  39:     goto   15
l_f1_17_if_false:
l_f1_15:

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
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -17(%ebp)   1  [ $v1       <char> %ebp-17 ]

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
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 = t3 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    movl    $98, %eax               #   5:     assign v1 <- 98
    movb    %al, -17(%ebp)         
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_6                  #   8:     goto   6
l_f2_6:
    movl    $1, %eax                #  10:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_8                  #  11:     goto   8
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_8:
    movzbl  -14(%ebp), %eax         #  14:     return t4
    jmp     l_f2_exit              
l_f2_13_while_cond:
    call    dummyCHARfunc           #  16:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  17:     if     t5 > 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_14_while_body     
    jmp     l_f2_12                 #  18:     goto   12
l_f2_14_while_body:
    movl    $97, %eax               #  20:     if     97 > 98 goto 17
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_17                
    jmp     l_f2_18                 #  21:     goto   18
l_f2_17:
    movl    $1, %eax                #  23:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_19                 #  24:     goto   19
l_f2_18:
    movl    $0, %eax                #  26:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f2_19:
    movzbl  -16(%ebp), %eax         #  28:     assign v0 <- t6
    movb    %al, 8(%ebp)           
    jmp     l_f2_13_while_cond      #  29:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    jmp     l_test_exit            
    movl    $100, %eax              #   1:     assign v0 <- 100
    movb    %al, v0                
    movl    $66284, %eax            #   2:     if     66284 <= 15582 goto 3_if_true
    movl    $15582, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyCHARfunc           #   8:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_12               #  11:     goto   12
l_test_12:
    movl    $97, %eax               #  13:     if     97 = 100 goto 16_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_16_if_true      
    jmp     l_test_17_if_false      #  14:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  16:     goto   15
l_test_17_if_false:
l_test_15:
    call    dummyCHARfunc           #  19:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    call    WriteLn                 #  20:     call   WriteLn
    jmp     l_test_2                #  21:     goto   2
l_test_4_if_false:
l_test_2:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
