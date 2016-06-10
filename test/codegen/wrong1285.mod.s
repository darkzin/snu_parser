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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 38 of <array 73 of <array 73 of <array 15 of <array 59 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 14 of <array 97 of <array 35 of <array 52 of <char>>>>>>> %ebp+20 ]

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
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t7       <char> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 29 of <array 3 of <array 33 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 84 of <array 64 of <array 78 of <array 82 of <array 72 of <char>>>>>>> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
l_f1_1_while_cond:
    movl    $95862, %eax            #   1:     if     95862 > 44173 goto 2_while_body
    movl    $44173, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $97374, %eax            #   4:     if     97374 # 94370 goto 5_if_true
    movl    $94370, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   5:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  11:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #  12:     if     99 # 99 goto 11
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_11                
    jmp     l_f1_12                 #  13:     goto   12
l_f1_11:
    movl    $1, %eax                #  15:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_13                 #  16:     goto   13
l_f1_12:
    movl    $0, %eax                #  18:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_13:
    movzbl  -14(%ebp), %eax         #  20:     assign v2 <- t5
    movb    %al, 16(%ebp)          
    movl    $83004, %eax            #  21:     assign v4 <- 83004
    movl    %eax, -20(%ebp)        
l_f1_17_while_cond:
    movl    $98798, %eax            #  23:     if     98798 >= 46499 goto 18_while_body
    movl    $46499, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_18_while_body     
    jmp     l_f1_16                 #  24:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  26:     goto   17_while_cond
l_f1_16:
    jmp     l_f1_1_while_cond       #  28:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_25_if_false        #  30:     goto   25_if_false
    movl    $100, %eax              #  31:     if     100 <= 98 goto 27_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_27_if_true        
    jmp     l_f1_28_if_false        #  32:     goto   28_if_false
l_f1_27_if_true:
    jmp     l_f1_26                 #  34:     goto   26
l_f1_28_if_false:
l_f1_26:
    call    dummyCHARfunc           #  37:     call   t6 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_23                 #  40:     goto   23
l_f1_25_if_false:
l_f1_23:
    jmp     l_f1_20                 #  43:     goto   20
l_f1_20:
    call    dummyCHARfunc           #  45:     call   t7 <- dummyCHARfunc
    movb    %al, -16(%ebp)         

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 23 of <array 21 of <array 13 of <array 78 of <array 60 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 11 of <array 1 of <array 1 of <array 10 of <array 80 of <char>>>>>>> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #   2:     assign v2 <- 1
    movb    %al, -21(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-28 ]

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
    movl    $39737, %eax            #   1:     add    t0 <- 39737, 95679
    movl    $95679, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   2:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t2 <- t0, t1
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $11855, %eax            #   4:     if     11855 < t2 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   5:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_6_while_cond:
    jmp     l_test_7_while_body     #  11:     goto   7_while_body
    jmp     l_test_5                #  12:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  14:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
l_test_13_while_cond:
    movl    $99, %eax               #  18:     if     99 >= 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_14_while_body   
    jmp     l_test_12               #  19:     goto   12
l_test_14_while_body:
    movl    $49962, %eax            #  21:     if     49962 < 45133 goto 17_if_true
    movl    $45133, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_17_if_true      
    jmp     l_test_18_if_false      #  22:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  24:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_22_if_false      #  27:     goto   22_if_false
    leal    _str_1, %eax            #  28:     &()    t3 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  30:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_27_if_false      #  32:     goto   27_if_false
    jmp     l_test_25               #  33:     goto   25
l_test_27_if_false:
l_test_25:
    movl    $50886, %eax            #  36:     if     50886 = 51311 goto 29_if_true
    movl    $51311, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_29_if_true      
    jmp     l_test_30_if_false      #  37:     goto   30_if_false
l_test_29_if_true:
    jmp     l_test_28               #  39:     goto   28
l_test_30_if_false:
l_test_28:
    jmp     l_test_20               #  42:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_13_while_cond    #  45:     goto   13_while_cond
l_test_12:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
