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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 95 of <array 100 of <array 74 of <array 3 of <array 69 of <int>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_2                  #   1:     goto   2
l_f0_2:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_4                  #   4:     goto   4
    movl    $0, %eax                #   5:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_4:
    movzbl  -14(%ebp), %eax         #   7:     return t3
    jmp     l_f0_exit              
    movl    $98, %eax               #   8:     if     98 # 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_10                
    jmp     l_f0_11                 #   9:     goto   11
l_f0_10:
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_12                 #  12:     goto   12
l_f0_11:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f0_12:
    movzbl  -15(%ebp), %eax         #  16:     return t4
    jmp     l_f0_exit              

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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $98, %eax               #   1:     if     98 > 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   2:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   4:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $69998, %eax            #  10:     add    t2 <- 69998, 99492
    movl    $99492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     sub    t3 <- t2, 68444
    movl    $68444, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     sub    t4 <- t3, 78378
    movl    $78378, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     return t4
    jmp     l_f1_exit              
    movl    $50838, %eax            #  14:     assign v0 <- 50838
    movl    %eax, 8(%ebp)          

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    jmp     l_f2_5                  #   1:     goto   5
    jmp     l_f2_5                  #   2:     goto   5
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movl    $1, %eax                #   8:     if     1 # t2 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_while_body:
l_f2_9_while_cond:
    movl    $80330, %eax            #  12:     if     80330 = 92762 goto 10_while_body
    movl    $92762, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_10_while_body     
    jmp     l_f2_8                  #  13:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  15:     goto   9_while_cond
l_f2_8:
    movl    $0, %eax                #  17:     assign v0 <- 0
    movb    %al, 8(%ebp)           
    jmp     l_f2_1_while_cond       #  18:     goto   1_while_cond
l_f2_0:
    movl    $97, %eax               #  20:     assign v1 <- 97
    movb    %al, 12(%ebp)          
    call    dummyINTfunc            #  21:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
l_test_4_while_cond:
    movl    $98, %eax               #   1:     if     98 >= 97 goto 5_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_5_while_body    
    jmp     l_test_3                #   2:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   4:     goto   4_while_cond
l_test_3:
    movl    $31218, %eax            #   6:     if     31218 <= 65587 goto 8_if_true
    movl    $65587, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_8_if_true       
    jmp     l_test_9_if_false       #   7:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #   9:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_0                #  14:     goto   0
l_test_0:
    jmp     l_test_exit            
l_test_15_while_cond:
l_test_18_while_cond:
    jmp     l_test_17               #  19:     goto   17
    jmp     l_test_18_while_cond    #  20:     goto   18_while_cond
l_test_17:
    movl    $100, %eax              #  22:     if     100 <= 98 goto 21
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_21              
    jmp     l_test_22               #  23:     goto   22
l_test_21:
    movl    $1, %eax                #  25:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_23               #  26:     goto   23
l_test_22:
    movl    $0, %eax                #  28:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_23:
    movzbl  -13(%ebp), %eax         #  30:     assign v0 <- t0
    movb    %al, v0                
    movl    $21590, %eax            #  31:     assign v1 <- 21590
    movl    %eax, v1               
    call    dummyCHARfunc           #  32:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_15_while_cond    #  33:     goto   15_while_cond

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
