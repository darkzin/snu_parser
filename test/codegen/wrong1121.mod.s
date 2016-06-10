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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $69975, %eax            #   1:     if     69975 >= 79781 goto 2_if_true
    movl    $79781, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    movl    $24450, %eax            #   4:     return 24450
    jmp     l_f0_exit              
    movl    $99, %eax               #   5:     assign v2 <- 99
    movb    %al, 16(%ebp)          
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  10:     assign v2 <- t1
    movb    %al, 16(%ebp)          

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <char> %ebp-21 ]
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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #   1:     if     100 >= 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    movl    $82860, %eax            #   5:     if     82860 < 94522 goto 7_while_body
    movl    $94522, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
l_f1_10_while_cond:
    jmp     l_f1_9                  #   9:     goto   9
    jmp     l_f1_10_while_cond      #  10:     goto   10_while_cond
l_f1_9:
    movl    $40229, %eax            #  12:     assign v1 <- 40229
    movl    %eax, -28(%ebp)        
    movl    $99, %eax               #  13:     assign v0 <- 99
    movb    %al, -21(%ebp)         
l_f1_15_while_cond:
    jmp     l_f1_14                 #  15:     goto   14
    jmp     l_f1_15_while_cond      #  16:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_17                 #  18:     goto   17
l_f1_17:
    call    dummyBOOLfunc           #  20:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  21:     if     98 <= 97 goto 22_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_22_if_true        
    jmp     l_f1_23_if_false        #  22:     goto   23_if_false
l_f1_22_if_true:
    jmp     l_f1_21                 #  24:     goto   21
l_f1_23_if_false:
l_f1_21:
    call    dummyCHARfunc           #  27:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              
    movl    $27761, %eax            #  29:     if     27761 > 57965 goto 28_if_true
    movl    $57965, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_28_if_true        
    jmp     l_f1_29_if_false        #  30:     goto   29_if_false
l_f1_28_if_true:
    jmp     l_f1_27                 #  32:     goto   27
l_f1_29_if_false:
l_f1_27:
    jmp     l_f1_exit              
    jmp     l_f1_6_while_cond       #  36:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_1                  #  38:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_34_if_false        #  41:     goto   34_if_false
    movl    $99, %eax               #  42:     param  2 <- 99
    pushl   %eax                   
    movl    $61247, %eax            #  43:     param  1 <- 61247
    pushl   %eax                   
    movl    $99, %eax               #  44:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  45:     call   t2 <- f0
    addl    $12, %esp              
    movl    %eax, -20(%ebp)        
    jmp     l_f1_40_if_false        #  46:     goto   40_if_false
    jmp     l_f1_38                 #  47:     goto   38
l_f1_40_if_false:
l_f1_38:
    jmp     l_f1_exit              
    movl    $100, %eax              #  51:     if     100 <= 98 goto 43_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_43_if_true        
    jmp     l_f1_44_if_false        #  52:     goto   44_if_false
l_f1_43_if_true:
    jmp     l_f1_42                 #  54:     goto   42
l_f1_44_if_false:
l_f1_42:
    jmp     l_f1_exit              
    jmp     l_f1_32                 #  58:     goto   32
l_f1_34_if_false:
l_f1_32:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 99 of <array 3 of <array 2 of <array 54 of <array 73 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 95 of <array 53 of <array 10 of <array 44 of <array 88 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    movl    $1, %eax                #   1:     if     1 # 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_4                  #   4:     goto   4
l_f2_4:
    call    ReadInt                 #   6:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #  10:     if     100 > t1 goto 9
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_9                 
    jmp     l_f2_10                 #  11:     goto   10
l_f2_9:
    movl    $1, %eax                #  13:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_11                 #  14:     goto   11
l_f2_10:
    movl    $0, %eax                #  16:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_f2_11:
    movzbl  -18(%ebp), %eax         #  18:     assign v0 <- t2
    movb    %al, 8(%ebp)           
    movl    $100, %eax              #  19:     param  2 <- 100
    pushl   %eax                   
    movl    $97, %eax               #  20:     param  2 <- 97
    pushl   %eax                   
    movl    $57819, %eax            #  21:     param  1 <- 57819
    pushl   %eax                   
    movl    $98, %eax               #  22:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #  23:     call   t3 <- f0
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t4 <- t3, 57801
    movl    $57801, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     sub    t5 <- t4, 31930
    movl    $31930, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     param  1 <- t5
    pushl   %eax                   
    call    dummyCHARfunc           #  27:     call   t6 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  28:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  29:     call   t7 <- f0
    addl    $12, %esp              
    movl    %eax, -40(%ebp)        

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
l_test_7_while_cond:
    jmp     l_test_6                #   7:     goto   6
    jmp     l_test_7_while_cond     #   8:     goto   7_while_cond
l_test_6:
    jmp     l_test_1_while_cond     #  10:     goto   1_while_cond
l_test_0:
    movl    $100, %eax              #  12:     if     100 # 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_10_if_true      
    jmp     l_test_10_if_true       #  13:     goto   10_if_true
    jmp     l_test_10_if_true       #  14:     goto   10_if_true
    jmp     l_test_11_if_false      #  15:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  17:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $1373, %eax             #  20:     assign v0 <- 1373
    movl    %eax, v0               
    movl    $99, %eax               #  21:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  22:     call   WriteChar
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
