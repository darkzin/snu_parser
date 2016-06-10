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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
    movl    $98, %eax               #   2:     assign v2 <- 98
    movb    %al, 8(%ebp)           

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    movl    $16238, %eax            #   0:     if     16238 # 18358 goto 4
    movl    $18358, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_4                 
    jmp     l_f1_5                  #   1:     goto   5
l_f1_4:
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #   8:     return t5
    jmp     l_f1_exit              
    movl    $100, %eax              #   9:     if     100 = 97 goto 9_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  10:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  12:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $99, %eax               #  15:     assign v4 <- 99
    movb    %al, -15(%ebp)         
    call    dummyBOOLfunc           #  16:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_0                  #  17:     goto   0
l_f1_0:
    movl    $97, %eax               #  19:     assign v4 <- 97
    movb    %al, -15(%ebp)         
    movl    $100, %eax              #  20:     assign v4 <- 100
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 5 of <array 9 of <array 7 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 5 of <array 8 of <array 7 of <array 5 of <array 3 of <int>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $50544, %eax            #   2:     if     50544 # 81423 goto 3_if_true
    movl    $81423, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
l_f2_3_if_true:
    call    dummyINTfunc            #   5:     call   t7 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f2_8_while_cond:
    call    ReadInt                 #   7:     call   t8 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     param  1 <- t8
    pushl   %eax                   
    movl    $1, %eax                #   9:     param  0 <- 1
    pushl   %eax                   
    call    f1                      #  10:     call   t9 <- f1
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  11:     if     t9 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9_while_body      
    jmp     l_f2_7                  #  12:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  14:     goto   8_while_cond
l_f2_7:
    jmp     l_f2_2                  #  16:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]

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
l_test_1_while_cond:
    movl    $98, %eax               #   1:     if     98 <= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $99, %eax               #   4:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
    movl    $98, %eax               #   8:     if     98 = 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #   9:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  11:     goto   8
l_test_10_if_false:
l_test_8:
    call    WriteLn                 #  14:     call   WriteLn
    movl    $0, %eax                #  15:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_5                #  16:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyCHARfunc           #  19:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  20:     assign v0 <- t0
    movb    %al, v0                
    call    dummyINTfunc            #  21:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $45930, %eax            #  22:     sub    t2 <- 45930, t1
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     param  1 <- t2
    pushl   %eax                   
    movl    $9981, %eax             #  24:     if     9981 # 4489 goto 16
    movl    $4489, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_16              
    jmp     l_test_17               #  25:     goto   17
l_test_16:
    movl    $1, %eax                #  27:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_18               #  28:     goto   18
l_test_17:
    movl    $0, %eax                #  30:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_18:
    movzbl  -25(%ebp), %eax         #  32:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  33:     call   t4 <- f1
    addl    $8, %esp               
    movb    %al, -26(%ebp)         
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
