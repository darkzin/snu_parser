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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f0_exit              
    call    ReadInt                 #   2:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   4:     return t3
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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 53 of <array 92 of <array 64 of <array 89 of <array 43 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 59 of <array 99 of <array 74 of <array 41 of <array 53 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 23 of <array 95 of <array 88 of <array 26 of <array 75 of <int>>>>>>> %ebp+16 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
l_f1_4_while_cond:
    movl    $100, %eax              #   3:     if     100 < 98 goto 5_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_5_while_body      
    jmp     l_f1_3                  #   4:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   6:     goto   4_while_cond
l_f1_3:
    movl    $99, %eax               #   8:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #   9:     call   t1 <- f0
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  10:     return t1
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  11:     goto   1_while_cond
l_f1_0:
    movl    $97, %eax               #  13:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  14:     call   t2 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #  15:     if     97 # t2 goto 9_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  16:     goto   10_if_false
l_f1_9_if_true:
l_f1_13_while_cond:
    movl    $99, %eax               #  19:     if     99 # 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_14_while_body     
    jmp     l_f1_12                 #  20:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  22:     goto   13_while_cond
l_f1_12:
    movl    $98, %eax               #  24:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_8                  #  25:     goto   8
l_f1_10_if_false:
l_f1_8:
l_f1_18_while_cond:
    call    dummyCHARfunc           #  29:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #  30:     if     98 = t3 goto 19_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_19_while_body     
    jmp     l_f1_17                 #  31:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  33:     goto   18_while_cond
l_f1_17:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 74 of <array 39 of <array 23 of <array 51 of <array 86 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 20 of <array 35 of <array 50 of <array 65 of <array 62 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 8 of <array 38 of <array 27 of <array 75 of <array 74 of <char>>>>>>> %ebp+20 ]

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
    movl    $97, %eax               #   0:     if     97 <= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     return t1
    jmp     l_f2_exit              
l_f2_6_while_cond:
    jmp     l_f2_5                  #  10:     goto   5
    jmp     l_f2_5                  #  11:     goto   5
    jmp     l_f2_6_while_cond       #  12:     goto   6_while_cond
l_f2_5:
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_16                 #  15:     goto   16
    movl    $0, %eax                #  16:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_16:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_20                 #  19:     goto   20
    movl    $0, %eax                #  20:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f2_20:
    movzbl  -14(%ebp), %eax         #  22:     if     t2 # t3 goto 10
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_10                
    jmp     l_f2_11                 #  23:     goto   11
l_f2_10:
    movl    $1, %eax                #  25:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_12                 #  26:     goto   12
l_f2_11:
    movl    $0, %eax                #  28:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f2_12:
    movzbl  -16(%ebp), %eax         #  30:     return t4
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_3_while_cond:
    movl    $99, %eax               #   3:     if     99 > 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_4_while_body    
    jmp     l_test_2                #   4:     goto   2
l_test_4_while_body:
    movl    $99, %eax               #   6:     if     99 = 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_7_if_true       
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   9:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $100, %eax              #  12:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $9610, %eax             #  14:     assign v1 <- 9610
    movl    %eax, v1               
    jmp     l_test_3_while_cond     #  15:     goto   3_while_cond
l_test_2:
l_test_14_while_cond:
    jmp     l_test_13               #  18:     goto   13
l_test_17_while_cond:
    movl    $99, %eax               #  20:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_17_while_cond    #  22:     goto   17_while_cond
    jmp     l_test_14_while_cond    #  23:     goto   14_while_cond
l_test_13:
    jmp     l_test_exit            
    jmp     l_test_24_if_false      #  26:     goto   24_if_false
    jmp     l_test_exit            
    jmp     l_test_22               #  28:     goto   22
l_test_24_if_false:
l_test_22:

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
