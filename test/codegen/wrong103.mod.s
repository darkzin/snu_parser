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
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t9       <char> %ebp-26 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 4 of <array 5 of <array 8 of <array 6 of <int>>>>>>> %ebp+12 ]
    #    -27(%ebp)   1  [ $v2       <bool> %ebp-27 ]

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
    movl    -16(%ebp), %eax         #   1:     mul    t6 <- t5, 35096
    movl    $35096, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t6
    jmp     l_f0_exit              
    call    dummyINTfunc            #   3:     call   t7 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $98, %eax               #   4:     if     98 > 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   5:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $97, %eax               #  11:     if     97 <= 100 goto 10
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_10                
    jmp     l_f0_11                 #  12:     goto   11
l_f0_10:
    movl    $1, %eax                #  14:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_12                 #  15:     goto   12
l_f0_11:
    movl    $0, %eax                #  17:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f0_12:
    movzbl  -25(%ebp), %eax         #  19:     assign v2 <- t8
    movb    %al, -27(%ebp)         
    movl    $63565, %eax            #  20:     return 63565
    jmp     l_f0_exit              
    movl    $70882, %eax            #  21:     return 70882
    jmp     l_f0_exit              
    movl    $100, %eax              #  22:     if     100 > 98 goto 17_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  23:     goto   18_if_false
l_f0_17_if_true:
    call    dummyCHARfunc           #  25:     call   t9 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    jmp     l_f0_16                 #  26:     goto   16
l_f0_18_if_false:
l_f0_16:
    jmp     l_f0_2                  #  29:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <char> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 8 of <array 1 of <array 5 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 9 of <array 8 of <array 2 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -17(%ebp)   1  [ $v3       <char> %ebp-17 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t5
    movb    %al, -17(%ebp)         
    jmp     l_f1_3                  #   2:     goto   3
    call    dummyBOOLfunc           #   3:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     if     t6 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2                 
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $1, %eax                #   7:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_4                  #   8:     goto   4
l_f1_3:
    movl    $0, %eax                #  10:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f1_4:
    movzbl  -15(%ebp), %eax         #  12:     return t7
    jmp     l_f1_exit              
l_f1_7_while_cond:
    call    dummyCHARfunc           #  14:     call   t8 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $98, %eax               #  15:     if     98 >= t8 goto 8_while_body
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #  16:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  18:     goto   7_while_cond
l_f1_6:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 5 of <array 2 of <array 1 of <array 4 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 8 of <array 4 of <array 6 of <array 10 of <int>>>>>>> %ebp+20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
    call    ReadInt                 #   4:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $57884, %eax            #   5:     div    t6 <- 57884, t5
    movl    -16(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  0 <- t6
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #   8:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   9:     param  0 <- t7
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               

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
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
    call    dummyBOOLfunc           #   6:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_11_while_cond:
    movl    $17213, %eax            #   8:     if     17213 = 69082 goto 12_while_body
    movl    $69082, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_12_while_body   
    jmp     l_test_10               #   9:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  11:     goto   11_while_cond
l_test_10:
    jmp     l_test_5                #  13:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $36800, %eax            #  16:     mul    t1 <- 36800, 25481
    movl    $25481, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     div    t2 <- t1, 35812
    movl    $35812, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     mul    t3 <- t2, 20091
    movl    $20091, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     assign v0 <- t3
    movl    %eax, v0               
    movl    $70124, %eax            #  20:     if     70124 > 63049 goto 16_if_true
    movl    $63049, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_16_if_true      
    jmp     l_test_17_if_false      #  21:     goto   17_if_false
l_test_16_if_true:
    movl    $97, %eax               #  23:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_15               #  24:     goto   15
l_test_17_if_false:
l_test_15:
    call    dummyCHARfunc           #  27:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  28:     if     t4 <= 99 goto 21_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_21_if_true      
    jmp     l_test_22_if_false      #  29:     goto   22_if_false
l_test_21_if_true:
l_test_25_while_cond:
    movl    $99, %eax               #  32:     if     99 <= 100 goto 26_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_26_while_body   
    jmp     l_test_24               #  33:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  35:     goto   25_while_cond
l_test_24:
    jmp     l_test_20               #  37:     goto   20
l_test_22_if_false:
l_test_20:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
