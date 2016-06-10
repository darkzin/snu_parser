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
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t7       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #    -25(%ebp)   1  [ $v3       <char> %ebp-25 ]

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
    movl    $99, %eax               #   0:     if     99 = 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyINTfunc            #   3:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   4:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #   5:     if     100 > 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   6:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_10                 #  11:     goto   10
l_f0_10:
    jmp     l_f0_0                  #  13:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $100, %eax              #  16:     if     100 >= 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  17:     goto   15_if_false
l_f0_14_if_true:
    call    dummyBOOLfunc           #  19:     call   t6 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    call    dummyBOOLfunc           #  20:     call   t7 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    movl    $98, %eax               #  21:     assign v3 <- 98
    movb    %al, -25(%ebp)         
    jmp     l_f0_13                 #  22:     goto   13
l_f0_15_if_false:
l_f0_13:
    movl    $99563, %eax            #  25:     div    t8 <- 99563, 35286
    movl    $35286, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $33979, %eax            #  26:     if     33979 >= t8 goto 21_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_21_if_true        
    jmp     l_f0_22_if_false        #  27:     goto   22_if_false
l_f0_21_if_true:
    call    dummyProcedure          #  29:     call   dummyProcedure
    movl    $83805, %eax            #  30:     if     83805 > 22427 goto 26_if_true
    movl    $22427, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_26_if_true        
    jmp     l_f0_27_if_false        #  31:     goto   27_if_false
l_f0_26_if_true:
    jmp     l_f0_25                 #  33:     goto   25
l_f0_27_if_false:
l_f0_25:
    jmp     l_f0_20                 #  36:     goto   20
l_f0_22_if_false:
l_f0_20:

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
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $50285, %eax            #   1:     if     50285 <= 55116 goto 2_if_true
    movl    $55116, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    jmp     l_f1_5                  #   5:     goto   5
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
l_f1_5:
    call    dummyBOOLfunc           #   8:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t9       <bool> %ebp-23 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 32 of <array 8 of <array 85 of <array 58 of <array 84 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 75 of <array 83 of <array 27 of <array 30 of <array 70 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 72 of <array 6 of <array 71 of <array 39 of <array 4 of <int>>>>>>> %ebp+20 ]
    #    -24(%ebp)   1  [ $v6       <char> %ebp-24 ]

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
    jmp     l_f2_6                  #   0:     goto   6
    movl    $1, %eax                #   1:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   2:     goto   7
l_f2_6:
    movl    $0, %eax                #   4:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #   6:     if     t4 # 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   7:     goto   2
l_f2_1:
    movl    $1, %eax                #   9:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #  10:     goto   3
l_f2_2:
    movl    $0, %eax                #  12:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  14:     return t5
    jmp     l_f2_exit              
    call    dummyINTfunc            #  15:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  16:     if     97 >= 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  17:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 #  19:     goto   14
l_f2_16_if_false:
l_f2_14:
    movl    $21359, %eax            #  22:     if     21359 < 13878 goto 19_if_true
    movl    $13878, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  23:     goto   20_if_false
l_f2_19_if_true:
    movl    $88279, %eax            #  25:     if     88279 = 58894 goto 23
    movl    $58894, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_23                
    jmp     l_f2_24                 #  26:     goto   24
l_f2_23:
    movl    $1, %eax                #  28:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_25                 #  29:     goto   25
l_f2_24:
    movl    $0, %eax                #  31:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f2_25:
    movzbl  -21(%ebp), %eax         #  33:     return t7
    jmp     l_f2_exit              
    movl    $99, %eax               #  34:     assign v6 <- 99
    movb    %al, -24(%ebp)         
    movl    $98, %eax               #  35:     if     98 <= 99 goto 29
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_29                
    jmp     l_f2_30                 #  36:     goto   30
l_f2_29:
    movl    $1, %eax                #  38:     assign t8 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_31                 #  39:     goto   31
l_f2_30:
    movl    $0, %eax                #  41:     assign t8 <- 0
    movb    %al, -22(%ebp)         
l_f2_31:
    movzbl  -22(%ebp), %eax         #  43:     return t8
    jmp     l_f2_exit              
    movl    $99, %eax               #  44:     if     99 < 98 goto 34
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_34                
    jmp     l_f2_35                 #  45:     goto   35
l_f2_34:
    movl    $1, %eax                #  47:     assign t9 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f2_36                 #  48:     goto   36
l_f2_35:
    movl    $0, %eax                #  50:     assign t9 <- 0
    movb    %al, -23(%ebp)         
l_f2_36:
    movzbl  -23(%ebp), %eax         #  52:     return t9
    jmp     l_f2_exit              
l_f2_39_while_cond:
    jmp     l_f2_39_while_cond      #  54:     goto   39_while_cond
l_f2_42_while_cond:
    movl    $1, %eax                #  56:     if     1 = 0 goto 43_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_43_while_body     
    jmp     l_f2_41                 #  57:     goto   41
l_f2_43_while_body:
    jmp     l_f2_42_while_cond      #  59:     goto   42_while_cond
l_f2_41:
    jmp     l_f2_18                 #  61:     goto   18
l_f2_20_if_false:
l_f2_18:
    jmp     l_f2_11                 #  64:     goto   11
l_f2_11:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-20 ]

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   2:     goto   3
    jmp     l_test_4                #   3:     goto   4
l_test_3:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_5                #   6:     goto   5
l_test_4:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_5:
    movzbl  -14(%ebp), %eax         #  10:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_exit            
    movl    $100, %eax              #  12:     if     100 <= 99 goto 11
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_11              
    jmp     l_test_12               #  13:     goto   12
l_test_11:
    movl    $1, %eax                #  15:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_13               #  16:     goto   13
l_test_12:
    movl    $0, %eax                #  18:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_13:
    movzbl  -15(%ebp), %eax         #  20:     assign v1 <- t2
    movb    %al, v1                
    leal    _str_1, %eax            #  21:     &()    t3 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  23:     call   WriteStr
    addl    $4, %esp               

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
