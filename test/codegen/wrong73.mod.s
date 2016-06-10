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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]

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
    movl    $53056, %eax            #   0:     if     53056 >= 25764 goto 1_if_true
    movl    $25764, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   4:     goto   4
l_f0_8_while_cond:
    jmp     l_f0_7                  #   6:     goto   7
    jmp     l_f0_8_while_cond       #   7:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_5_while_cond       #   9:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  14:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  15:     return t3
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  16:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 3 of <array 4 of <array 6 of <array 6 of <bool>>>>>>> %ebp+12 ]
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
    call    f0                      #   0:     call   t3 <- f0
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t3
    movb    %al, -15(%ebp)         
    movl    $25953, %eax            #   2:     assign v0 <- 25953
    movl    %eax, 8(%ebp)          
l_f1_3_while_cond:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_8                  #   5:     goto   8
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_8:
    movl    $0, %eax                #   8:     if     0 = t4 goto 4_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_4_while_body      
    jmp     l_f1_2                  #   9:     goto   2
l_f1_4_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #  12:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 10 of <array 6 of <array 2 of <array 9 of <int>>>>>>> %ebp+8 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]

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
    movl    $99, %eax               #   1:     if     99 > 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_exit              
l_f2_6_while_cond:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_11                 #   7:     goto   11
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_11:
    movl    $1, %eax                #  10:     if     1 = t3 goto 7_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  11:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  13:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_1_while_cond       #  15:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_19                 #  17:     goto   19
    movl    $1, %eax                #  18:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_20                 #  19:     goto   20
l_f2_19:
    movl    $0, %eax                #  21:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_20:
    movzbl  -14(%ebp), %eax         #  23:     assign v1 <- t4
    movb    %al, -16(%ebp)         
l_f2_23_while_cond:
    jmp     l_f2_27                 #  25:     goto   27
    movl    $1, %eax                #  26:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_28                 #  27:     goto   28
l_f2_27:
    movl    $0, %eax                #  29:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f2_28:
    movl    $0, %eax                #  31:     if     0 = t5 goto 24_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_24_while_body     
    jmp     l_f2_22                 #  32:     goto   22
l_f2_24_while_body:
    jmp     l_f2_23_while_cond      #  34:     goto   23_while_cond
l_f2_22:

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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
l_test_2_while_cond:
    movl    $98, %eax               #   2:     if     98 < 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
    jmp     l_test_5                #   6:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $100, %eax              #   9:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_2_while_cond     #  10:     goto   2_while_cond
l_test_1:
    jmp     l_test_10_if_true       #  12:     goto   10_if_true
l_test_10_if_true:
l_test_15_while_cond:
    jmp     l_test_15_while_cond    #  15:     goto   15_while_cond
    movl    $52917, %eax            #  16:     if     52917 < 2771 goto 18
    movl    $2771, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_18              
    jmp     l_test_19               #  17:     goto   19
l_test_18:
    movl    $1, %eax                #  19:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_20               #  20:     goto   20
l_test_19:
    movl    $0, %eax                #  22:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_20:
    movzbl  -13(%ebp), %eax         #  24:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_9                #  25:     goto   9
l_test_9:
    jmp     l_test_24_if_false      #  27:     goto   24_if_false
    jmp     l_test_24_if_false      #  28:     goto   24_if_false
    movl    $100, %eax              #  29:     if     100 <= 97 goto 27
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_27              
    jmp     l_test_28               #  30:     goto   28
l_test_27:
    movl    $1, %eax                #  32:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_29               #  33:     goto   29
l_test_28:
    movl    $0, %eax                #  35:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_29:
    movzbl  -14(%ebp), %eax         #  37:     assign v1 <- t1
    movb    %al, v1                
    call    dummyINTfunc            #  38:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_22               #  39:     goto   22
l_test_24_if_false:
l_test_22:

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
