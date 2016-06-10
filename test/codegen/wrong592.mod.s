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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $98, %eax               #   0:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    call    dummyINTfunc            #   2:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   3:     assign v1 <- 97
    movb    %al, 12(%ebp)          

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t9       <bool> %ebp-26 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 2 of <array 5 of <array 7 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 1 of <array 4 of <array 7 of <array 4 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 2 of <array 1 of <array 5 of <array 7 of <int>>>>>>> %ebp+20 ]

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
    movl    $54822, %eax            #   0:     add    t6 <- 54822, 57473
    movl    $57473, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     add    t7 <- t6, 79744
    movl    $79744, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     if     t7 < 85213 goto 5
    movl    $85213, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_5                 
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $1, %eax                #   5:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $0, %eax                #   8:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f1_7:
    movzbl  -25(%ebp), %eax         #  10:     if     t8 # 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #  11:     goto   2
l_f1_1:
    movl    $1, %eax                #  13:     assign t9 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_3                  #  14:     goto   3
l_f1_2:
    movl    $0, %eax                #  16:     assign t9 <- 0
    movb    %al, -26(%ebp)         
l_f1_3:
    movzbl  -26(%ebp), %eax         #  18:     return t9
    jmp     l_f1_exit              
    jmp     l_f1_10                 #  19:     goto   10
l_f1_10:
    movl    $1, %eax                #  21:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_12                 #  22:     goto   12
    movl    $0, %eax                #  23:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_12:
    movzbl  -13(%ebp), %eax         #  25:     return t10
    jmp     l_f1_exit              
    movl    $97, %eax               #  26:     assign v0 <- 97
    movb    %al, 8(%ebp)           

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 3 of <array 3 of <array 5 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 1 of <array 3 of <array 6 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    movl    $99, %eax               #   2:     if     99 <= 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    movl    $0, %eax                #   5:     return 0
    jmp     l_f2_exit              
    movl    $0, %eax                #   6:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #   7:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #   9:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <char> %ebp-18 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $99, %eax               #   3:     if     99 > 97 goto 4
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_4               
    jmp     l_test_5                #   4:     goto   5
l_test_4:
    movl    $1, %eax                #   6:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   7:     goto   6
l_test_5:
    movl    $0, %eax                #   9:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t0
    movb    %al, v0                
    movl    $0, %eax                #  12:     param  3 <- 0
    pushl   %eax                   
    movl    $1, %eax                #  13:     param  2 <- 1
    pushl   %eax                   
    movl    $1, %eax                #  14:     if     1 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9               
    jmp     l_test_10               #  15:     goto   10
l_test_9:
    movl    $1, %eax                #  17:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_11               #  18:     goto   11
l_test_10:
    movl    $0, %eax                #  20:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_11:
    movzbl  -14(%ebp), %eax         #  22:     param  3 <- t1
    pushl   %eax                   
    movl    $1, %eax                #  23:     param  2 <- 1
    pushl   %eax                   
    movl    $1, %eax                #  24:     param  3 <- 1
    pushl   %eax                   
    movl    $1, %eax                #  25:     param  2 <- 1
    pushl   %eax                   
    movl    $100, %eax              #  26:     param  1 <- 100
    pushl   %eax                   
    movl    $97, %eax               #  27:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  28:     call   t2 <- f0
    addl    $16, %esp              
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  29:     param  1 <- t2
    pushl   %eax                   
    call    dummyCHARfunc           #  30:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  31:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  32:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  33:     param  1 <- t4
    pushl   %eax                   
    movl    $99, %eax               #  34:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  35:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -18(%ebp)         
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
