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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    movl    $52693, %eax            #   0:     div    t4 <- 52693, 38184
    movl    $38184, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t5 <- t4, 12322
    movl    $12322, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t5
    movl    %eax, -28(%ebp)        
    jmp     l_f0_0                  #   3:     goto   0
l_f0_0:
    call    dummyCHARfunc           #   5:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #   6:     return 99
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 17 of <array 44 of <array 77 of <array 21 of <array 88 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   2:     goto   5_while_cond
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   6:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   7:     if     98 <= t4 goto 8
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_8                 
    jmp     l_f1_9                  #   8:     goto   9
l_f1_8:
    movl    $1, %eax                #  10:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_10                 #  11:     goto   10
l_f1_9:
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_10:
    movzbl  -14(%ebp), %eax         #  15:     assign v4 <- t5
    movb    %al, 20(%ebp)          
    movl    $98, %eax               #  16:     if     98 # 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  17:     goto   14_if_false
l_f1_13_if_true:
    movl    $1, %eax                #  19:     assign v4 <- 1
    movb    %al, 20(%ebp)          
    jmp     l_f1_12                 #  20:     goto   12
l_f1_14_if_false:
l_f1_12:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 50 of <array 72 of <array 80 of <array 97 of <array 70 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
    jmp     l_f2_2_while_body       #   3:     goto   2_while_body
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    movl    $100, %eax              #   8:     if     100 # 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   9:     goto   9_if_false
l_f2_8_if_true:
    movl    $0, %eax                #  11:     return 0
    jmp     l_f2_exit              
    call    ReadInt                 #  12:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f2_14_while_cond:
    movl    $0, %eax                #  14:     if     0 = 1 goto 15_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_15_while_body     
    jmp     l_f2_13                 #  15:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  17:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_7                  #  19:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_18                 #  22:     goto   18
    jmp     l_f2_18                 #  23:     goto   18
    jmp     l_f2_18                 #  24:     goto   18
l_f2_18:
    movl    $1, %eax                #  26:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_20                 #  27:     goto   20
    movl    $0, %eax                #  28:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f2_20:
    movzbl  -17(%ebp), %eax         #  30:     return t5
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   4:     assign v0 <- 100
    movb    %al, v0                
    movl    $99, %eax               #   5:     if     99 < 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_7_if_true       
    jmp     l_test_8_if_false       #   6:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   8:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_1                #  11:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_15_if_false      #  14:     goto   15_if_false
    jmp     l_test_13               #  15:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $97, %eax               #  18:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_10               #  19:     goto   10
l_test_10:
    leal    _str_1, %eax            #  21:     &()    t2 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  23:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_19_if_true       #  24:     goto   19_if_true
l_test_19_if_true:
l_test_23_while_cond:
    jmp     l_test_22               #  27:     goto   22
    jmp     l_test_23_while_cond    #  28:     goto   23_while_cond
l_test_22:
    jmp     l_test_18               #  30:     goto   18
l_test_18:
    movl    $40710, %eax            #  32:     if     40710 >= 86596 goto 26_if_true
    movl    $86596, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_26_if_true      
    jmp     l_test_27_if_false      #  33:     goto   27_if_false
l_test_26_if_true:
    call    dummyCHARfunc           #  35:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
l_test_31_while_cond:
    movl    $1, %eax                #  37:     if     1 = 0 goto 32_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_32_while_body   
    jmp     l_test_30               #  38:     goto   30
l_test_32_while_body:
    jmp     l_test_31_while_cond    #  40:     goto   31_while_cond
l_test_30:
l_test_35_while_cond:
    movl    $99, %eax               #  43:     if     99 # 100 goto 36_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_36_while_body   
    jmp     l_test_34               #  44:     goto   34
l_test_36_while_body:
    jmp     l_test_35_while_cond    #  46:     goto   35_while_cond
l_test_34:
    jmp     l_test_exit            
    jmp     l_test_41_if_false      #  49:     goto   41_if_false
    jmp     l_test_39               #  50:     goto   39
l_test_41_if_false:
l_test_39:
l_test_43_while_cond:
    movl    $97, %eax               #  54:     if     97 <= 98 goto 44_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_44_while_body   
    jmp     l_test_42               #  55:     goto   42
l_test_44_while_body:
    jmp     l_test_43_while_cond    #  57:     goto   43_while_cond
l_test_42:
    jmp     l_test_25               #  59:     goto   25
l_test_27_if_false:
l_test_25:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
