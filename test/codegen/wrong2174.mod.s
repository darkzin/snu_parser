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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 41 of <array 76 of <array 92 of <array 15 of <array 34 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -15(%ebp)   1  [ $v3       <bool> %ebp-15 ]

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
    movl    $0, %eax                #   0:     assign v3 <- 0
    movb    %al, -15(%ebp)         
    movl    $1, %eax                #   1:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   2:     goto   7
    movl    $0, %eax                #   3:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #   5:     if     t1 # 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   6:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_12_if_false        #   8:     goto   12_if_false
    jmp     l_f0_10                 #   9:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_1                  #  12:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $97, %eax               #  15:     if     97 = 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  16:     goto   15_if_false
l_f0_14_if_true:
    movl    $98, %eax               #  18:     if     98 >= 100 goto 18
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_18                
    jmp     l_f0_19                 #  19:     goto   19
l_f0_18:
    movl    $1, %eax                #  21:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_20                 #  22:     goto   20
l_f0_19:
    movl    $0, %eax                #  24:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_20:
    movzbl  -14(%ebp), %eax         #  26:     assign v3 <- t2
    movb    %al, -15(%ebp)         
    jmp     l_f0_13                 #  27:     goto   13
l_f0_15_if_false:
l_f0_13:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 41 of <array 76 of <array 92 of <array 15 of <array 34 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 57 of <array 1 of <array 43 of <array 81 of <array 65 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 90 of <array 57 of <array 23 of <array 10 of <array 30 of <bool>>>>>>> %ebp+16 ]
    #   -146202768(%ebp)  146202744  [ $v4       <array 41 of <array 76 of <array 92 of <array 15 of <array 34 of <char>>>>>> %ebp-146202768 ]
    #   -146202772(%ebp)   4  [ $v5       <int> %ebp-146202772 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $146202760, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $36550690, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-146202768(%ebp)     # local array 'v4': 5 dimensions
    movl    $41,-146202764(%ebp)    #   dimension 1: 41 elements
    movl    $76,-146202760(%ebp)    #   dimension 2: 76 elements
    movl    $92,-146202756(%ebp)    #   dimension 3: 92 elements
    movl    $15,-146202752(%ebp)    #   dimension 4: 15 elements
    movl    $34,-146202748(%ebp)    #   dimension 5: 34 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f1_exit              
    movl    $20421, %eax            #   2:     param  1 <- 20421
    pushl   %eax                   
    leal    -146202768(%ebp), %eax  #   3:     &()    t2 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   5:     call   t3 <- f0
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $4630, %eax             #   6:     if     4630 > t3 goto 2_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   7:     goto   3_if_false
l_f1_2_if_true:
    movl    $100, %eax              #   9:     return 100
    jmp     l_f1_exit              
    movl    $100, %eax              #  10:     if     100 < 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  11:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  13:     goto   6
l_f1_8_if_false:
l_f1_6:
    movl    $98, %eax               #  16:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_1                  #  17:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $99, %eax               #  20:     if     99 > 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  21:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  23:     goto   14
l_f1_16_if_false:
l_f1_14:
    movl    $100, %eax              #  26:     return 100
    jmp     l_f1_exit              
    movl    $73888, %eax            #  27:     assign v5 <- 73888
    movl    %eax, -146202772(%ebp) 
    movl    $99, %eax               #  28:     return 99
    jmp     l_f1_exit              
    movl    $98, %eax               #  29:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_22                 #  30:     goto   22
l_f1_22:
    jmp     l_f1_11                 #  32:     goto   11
l_f1_11:

l_f1_exit:
    # epilogue
    addl    $146202760, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 76 of <array 32 of <array 80 of <array 48 of <array 40 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 77 of <array 25 of <array 64 of <array 83 of <array 100 of <int>>>>>>> %ebp+20 ]

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
    movl    $63234, %eax            #   0:     mul    t1 <- 63234, 37180
    movl    $37180, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t2 <- t1, 99903
    movl    $99903, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $50993, %eax            #   2:     sub    t3 <- 50993, t2
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t3
    jmp     l_f2_exit              
l_f2_2_while_cond:
    jmp     l_f2_3_while_body       #   5:     goto   3_while_body
    jmp     l_f2_1                  #   6:     goto   1
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   9:     goto   2_while_cond
l_f2_1:
    movl    $100, %eax              #  11:     if     100 = 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  12:     goto   11_if_false
l_f2_10_if_true:
    movl    $61808, %eax            #  14:     if     61808 # 92811 goto 14_if_true
    movl    $92811, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  15:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_17                 #  17:     goto   17
l_f2_17:
    movl    $100, %eax              #  19:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  20:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_13                 #  21:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_9                  #  24:     goto   9
l_f2_11_if_false:
l_f2_9:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    jmp     l_test_1                #   0:     goto   1
    jmp     l_test_1                #   1:     goto   1
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
l_test_12_while_cond:
    jmp     l_test_14               #  12:     goto   14
    jmp     l_test_14               #  13:     goto   14
l_test_14:
    jmp     l_test_12_while_cond    #  15:     goto   12_while_cond
l_test_21_while_cond:
    jmp     l_test_22_while_body    #  17:     goto   22_while_body
    jmp     l_test_22_while_body    #  18:     goto   22_while_body
    jmp     l_test_20               #  19:     goto   20
l_test_22_while_body:
    jmp     l_test_exit            
    jmp     l_test_21_while_cond    #  22:     goto   21_while_cond
l_test_20:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
