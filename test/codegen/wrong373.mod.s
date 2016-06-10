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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 5 of <array 1 of <array 9 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 9 of <array 1 of <array 10 of <array 6 of <char>>>>>>> %ebp+16 ]

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
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
    movl    $69284, %eax            #   3:     if     69284 < 42726 goto 2_if_true
    movl    $42726, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   4:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    movl    $1, %eax                #   7:     if     1 # 0 goto 7_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #   8:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  10:     goto   6_while_cond
l_f0_5:
    call    dummyBOOLfunc           #  12:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_f0_11_while_cond:
    movl    $99, %eax               #  14:     if     99 > 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_12_while_body     
    jmp     l_f0_10                 #  15:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  17:     goto   11_while_cond
l_f0_10:
    movl    $98, %eax               #  19:     assign v1 <- 98
    movb    %al, 12(%ebp)          
    jmp     l_f0_1                  #  20:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  23:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  24:     assign v1 <- t2
    movb    %al, 12(%ebp)          

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    movl    $99, %eax               #   0:     if     99 > 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyProcedure          #   3:     call   dummyProcedure
    movl    $28323, %eax            #   4:     return 28323
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $47856, %eax            #   8:     add    t0 <- 47856, 61761
    movl    $61761, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     sub    t1 <- t0, 14655
    movl    $14655, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     return t1
    jmp     l_f1_exit              
    movl    $61383, %eax            #  11:     add    t2 <- 61383, 15510
    movl    $15510, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t3 <- t2, 53738
    movl    $53738, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     return t3
    jmp     l_f1_exit              

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 4 of <array 10 of <array 7 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 3 of <array 3 of <array 4 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 1 of <array 8 of <array 1 of <array 3 of <bool>>>>>>> %ebp+20 ]

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
    movl    $95000, %eax            #   0:     sub    t0 <- 95000, 80537
    movl    $80537, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 43401
    movl    $43401, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t1
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f2_4_if_false         #   4:     goto   4_if_false
l_f2_6_while_cond:
    jmp     l_f2_5                  #   6:     goto   5
    jmp     l_f2_5                  #   7:     goto   5
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_2                  #  10:     goto   2
l_f2_4_if_false:
l_f2_2:

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $51489, %eax            #   2:     if     51489 # 14184 goto 3_while_body
    movl    $14184, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    movl    $97, %eax               #   6:     if     97 < 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_7_while_body    
    jmp     l_test_5                #   7:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   9:     goto   6_while_cond
l_test_5:
l_test_10_while_cond:
    jmp     l_test_9                #  12:     goto   9
    jmp     l_test_10_while_cond    #  13:     goto   10_while_cond
l_test_9:
l_test_13_while_cond:
    movl    $97, %eax               #  16:     if     97 # 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_14_while_body   
    jmp     l_test_12               #  17:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  19:     goto   13_while_cond
l_test_12:
l_test_17_while_cond:
    movl    $88591, %eax            #  22:     if     88591 > 70140 goto 18_while_body
    movl    $70140, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_18_while_body   
    jmp     l_test_16               #  23:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  25:     goto   17_while_cond
l_test_16:
    jmp     l_test_2_while_cond     #  27:     goto   2_while_cond
l_test_1:
    movl    $1, %eax                #  29:     assign v0 <- 1
    movb    %al, v0                
l_test_22_while_cond:
    jmp     l_test_21               #  31:     goto   21
l_test_25_while_cond:
    movl    $100, %eax              #  33:     if     100 = 98 goto 26_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_26_while_body   
    jmp     l_test_24               #  34:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  36:     goto   25_while_cond
l_test_24:
    jmp     l_test_exit            
    jmp     l_test_22_while_cond    #  39:     goto   22_while_cond
l_test_21:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
