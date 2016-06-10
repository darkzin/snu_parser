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
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    movl    $52725, %eax            #   0:     add    t4 <- 52725, 29396
    movl    $29396, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
    movl    $33035, %eax            #   3:     div    t5 <- 33035, 3455
    movl    $3455, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     return t5
    jmp     l_f0_exit              
l_f0_3_while_cond:
    call    dummyBOOLfunc           #   6:     call   t6 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   7:     if     t6 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4_while_body      
    jmp     l_f0_2                  #   8:     goto   2
l_f0_4_while_body:
    jmp     l_f0_5                  #  10:     goto   5
l_f0_5:
    jmp     l_f0_3_while_cond       #  12:     goto   3_while_cond
l_f0_2:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $v0       <char> %ebp-30 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $88855, %eax            #   1:     sub    t4 <- 88855, 53776
    movl    $53776, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t5 <- t4, 68402
    movl    $68402, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t6 <- t5, 40401
    movl    $40401, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t7 <- t6, 33671
    movl    $33671, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     if     t7 >= 55435 goto 2_while_body
    movl    $55435, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
l_f1_0:
l_f1_6_while_cond:
    call    dummyBOOLfunc           #  12:     call   t8 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  13:     if     t8 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_8                 
    jmp     l_f1_5                  #  14:     goto   5
l_f1_8:
    jmp     l_f1_5                  #  16:     goto   5
    jmp     l_f1_6_while_cond       #  17:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_11_if_false        #  19:     goto   11_if_false
    movl    $99, %eax               #  20:     assign v0 <- 99
    movb    %al, -30(%ebp)         
    movl    $36849, %eax            #  21:     if     36849 < 74945 goto 14_if_true
    movl    $74945, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  22:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  24:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_19_if_false        #  27:     goto   19_if_false
    jmp     l_f1_17                 #  28:     goto   17
l_f1_19_if_false:
l_f1_17:
    jmp     l_f1_9                  #  31:     goto   9
l_f1_11_if_false:
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 1 of <array 5 of <array 1 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 10 of <array 8 of <array 4 of <array 4 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 9 of <array 4 of <array 4 of <array 6 of <char>>>>>>> %ebp+16 ]
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
    jmp     l_f2_exit              
    jmp     l_f2_exit              
l_f2_3_while_cond:
l_f2_6_while_cond:
    call    dummyBOOLfunc           #   4:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_10_while_cond:
    jmp     l_f2_9                  #   6:     goto   9
    jmp     l_f2_10_while_cond      #   7:     goto   10_while_cond
l_f2_9:
    movl    $42113, %eax            #   9:     if     42113 >= 49717 goto 13
    movl    $49717, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_13                
    jmp     l_f2_14                 #  10:     goto   14
l_f2_13:
    movl    $1, %eax                #  12:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_15                 #  13:     goto   15
l_f2_14:
    movl    $0, %eax                #  15:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_15:
    movzbl  -14(%ebp), %eax         #  17:     assign v3 <- t5
    movb    %al, -15(%ebp)         
    jmp     l_f2_19_if_false        #  18:     goto   19_if_false
    jmp     l_f2_17                 #  19:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_6_while_cond       #  22:     goto   6_while_cond
    jmp     l_f2_3_while_cond       #  23:     goto   3_while_cond

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   8:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   9:     if     100 < t0 goto 9
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_9               
    jmp     l_test_10               #  10:     goto   10
l_test_9:
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_11               #  13:     goto   11
l_test_10:
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_11:
    movzbl  -14(%ebp), %eax         #  17:     assign v0 <- t1
    movb    %al, v0                
l_test_14_while_cond:
    movl    $79843, %eax            #  19:     sub    t2 <- 79843, 68521
    movl    $68521, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $10402, %eax            #  20:     if     10402 <= t2 goto 15_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_15_while_body   
    jmp     l_test_13               #  21:     goto   13
l_test_15_while_body:
    movl    $77341, %eax            #  23:     param  1 <- 77341
    pushl   %eax                   
    movl    $24239, %eax            #  24:     param  0 <- 24239
    pushl   %eax                   
    call    f0                      #  25:     call   t3 <- f0
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
l_test_19_while_cond:
    jmp     l_test_18               #  27:     goto   18
    jmp     l_test_19_while_cond    #  28:     goto   19_while_cond
l_test_18:
    movl    $97, %eax               #  30:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  31:     call   WriteChar
    addl    $4, %esp               
l_test_23_while_cond:
    movl    $97, %eax               #  33:     if     97 < 97 goto 24_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_24_while_body   
    jmp     l_test_22               #  34:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  36:     goto   23_while_cond
l_test_22:
    jmp     l_test_14_while_cond    #  38:     goto   14_while_cond
l_test_13:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
