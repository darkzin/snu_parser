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
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 7 of <array 4 of <array 4 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 4 of <array 5 of <array 4 of <array 4 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    movl    $142, %eax              #   1:     add    t3 <- 142, 44126
    movl    $44126, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t4 <- t3, 21631
    movl    $21631, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $19765, %eax            #   3:     if     19765 = t4 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_4:
    jmp     l_f0_1_while_cond       #   8:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_exit              
    jmp     l_f0_12                 #  11:     goto   12
    jmp     l_f0_12                 #  12:     goto   12
    jmp     l_f0_13                 #  13:     goto   13
l_f0_12:
    movl    $1, %eax                #  15:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_14                 #  16:     goto   14
l_f0_13:
    movl    $0, %eax                #  18:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f0_14:
    movl    $1, %eax                #  20:     if     1 # t5 goto 9_if_true
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  21:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_exit              
    jmp     l_f0_8                  #  24:     goto   8
l_f0_10_if_false:
l_f0_8:

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
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]

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
    movl    $100, %eax              #   1:     if     100 < 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_9                  #   7:     goto   9
l_f1_9:
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_11                 #  10:     goto   11
    movl    $0, %eax                #  11:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_11:
    movl    $0, %eax                #  13:     if     0 # t4 goto 6_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  14:     goto   7_if_false
l_f1_6_if_true:
    movl    $74119, %eax            #  16:     if     74119 > 36693 goto 14_if_true
    movl    $36693, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  17:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_5                  #  22:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyBOOLfunc           #  25:     call   t5 <- dummyBOOLfunc
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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t9       <bool> %ebp-26 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 8 of <array 9 of <array 10 of <array 8 of <bool>>>>>>> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   1:     if     t3 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8                 
    jmp     l_f2_6                  #   2:     goto   6
l_f2_8:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_7                  #   5:     goto   7
l_f2_6:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f2_7:
    movl    $1, %eax                #   9:     if     1 = t4 goto 1
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #  10:     goto   2
l_f2_1:
    movl    $1, %eax                #  12:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_3                  #  13:     goto   3
l_f2_2:
    movl    $0, %eax                #  15:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f2_3:
    movzbl  -16(%ebp), %eax         #  17:     return t5
    jmp     l_f2_exit              
    movl    $33599, %eax            #  18:     div    t6 <- 33599, 38038
    movl    $38038, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     div    t7 <- t6, 82976
    movl    $82976, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     if     t7 = 1685 goto 10
    movl    $1685, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #  21:     goto   11
l_f2_10:
    movl    $1, %eax                #  23:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_12                 #  24:     goto   12
l_f2_11:
    movl    $0, %eax                #  26:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f2_12:
    movzbl  -25(%ebp), %eax         #  28:     return t8
    jmp     l_f2_exit              
    movl    $67046, %eax            #  29:     if     67046 > 88709 goto 15_if_true
    movl    $88709, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  30:     goto   16_if_false
l_f2_15_if_true:
l_f2_19_while_cond:
    jmp     l_f2_18                 #  33:     goto   18
    jmp     l_f2_19_while_cond      #  34:     goto   19_while_cond
l_f2_18:
    movl    $1, %eax                #  36:     if     1 # 0 goto 22_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_22_if_true        
    jmp     l_f2_23_if_false        #  37:     goto   23_if_false
l_f2_22_if_true:
    jmp     l_f2_21                 #  39:     goto   21
l_f2_23_if_false:
l_f2_21:
    jmp     l_f2_27_if_false        #  42:     goto   27_if_false
    jmp     l_f2_25                 #  43:     goto   25
l_f2_27_if_false:
l_f2_25:
    movl    $99, %eax               #  46:     if     99 <= 100 goto 29
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_29                
    jmp     l_f2_30                 #  47:     goto   30
l_f2_29:
    movl    $1, %eax                #  49:     assign t9 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_31                 #  50:     goto   31
l_f2_30:
    movl    $0, %eax                #  52:     assign t9 <- 0
    movb    %al, -26(%ebp)         
l_f2_31:
    movzbl  -26(%ebp), %eax         #  54:     return t9
    jmp     l_f2_exit              
    movl    $1, %eax                #  55:     return 1
    jmp     l_f2_exit              
l_f2_35_while_cond:
    jmp     l_f2_34                 #  57:     goto   34
    jmp     l_f2_35_while_cond      #  58:     goto   35_while_cond
l_f2_34:
    movl    $100, %eax              #  60:     if     100 = 100 goto 38
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_38                
    jmp     l_f2_39                 #  61:     goto   39
l_f2_38:
    movl    $1, %eax                #  63:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_40                 #  64:     goto   40
l_f2_39:
    movl    $0, %eax                #  66:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_40:
    movzbl  -13(%ebp), %eax         #  68:     return t10
    jmp     l_f2_exit              
    movl    $100, %eax              #  69:     if     100 # 99 goto 43_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_43_if_true        
    jmp     l_f2_44_if_false        #  70:     goto   44_if_false
l_f2_43_if_true:
    jmp     l_f2_42                 #  72:     goto   42
l_f2_44_if_false:
l_f2_42:
    jmp     l_f2_48_if_false        #  75:     goto   48_if_false
    jmp     l_f2_46                 #  76:     goto   46
l_f2_48_if_false:
l_f2_46:
    jmp     l_f2_14                 #  79:     goto   14
l_f2_16_if_false:
l_f2_14:

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 3 of <array 4 of <array 5 of <array 4 of <array 4 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 7 of <array 4 of <array 4 of <array 10 of <int>>>>>>> %ebp-24 ]

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
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 >= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    movl    $100, %eax              #   8:     param  3 <- 100
    pushl   %eax                   
    leal    v1, %eax                #   9:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  2 <- t1
    pushl   %eax                   
    movl    $99, %eax               #  11:     param  1 <- 99
    pushl   %eax                   
    leal    v0, %eax                #  12:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  14:     call   f0
    addl    $16, %esp              
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
v0:                                 # <array 2 of <array 7 of <array 4 of <array 4 of <array 10 of <int>>>>>>
    .long    5
    .long    2
    .long    7
    .long    4
    .long    4
    .long   10
    .skip 8960
v1:                                 # <array 3 of <array 4 of <array 5 of <array 4 of <array 4 of <bool>>>>>>
    .long    5
    .long    3
    .long    4
    .long    5
    .long    4
    .long    4
    .skip  960








    # end of global data section
    #-----------------------------------------

    .end
##################################################
