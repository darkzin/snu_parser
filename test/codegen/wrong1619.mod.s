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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 32 of <array 7 of <array 39 of <array 26 of <array 90 of <bool>>>>>>> %ebp+8 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $59033, %eax            #   1:     add    t1 <- 59033, 17800
    movl    $17800, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 86160
    movl    $86160, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t3 <- t2, 19456
    movl    $19456, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v1 <- t3
    movl    %eax, -36(%ebp)        
l_f0_3_while_cond:
    movl    $53539, %eax            #   6:     mul    t4 <- 53539, 6970
    movl    $6970, %ebx            
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $24516, %eax            #   7:     if     24516 <= t4 goto 4_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_4_while_body      
    jmp     l_f0_2                  #   8:     goto   2
l_f0_4_while_body:
    movl    $19483, %eax            #  10:     assign v1 <- 19483
    movl    %eax, -36(%ebp)        
l_f0_8_while_cond:
    movl    $68263, %eax            #  12:     if     68263 # 92831 goto 9_while_body
    movl    $92831, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_9_while_body      
    jmp     l_f0_7                  #  13:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  15:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  18:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 18 of <array 34 of <array 43 of <array 49 of <array 36 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 33 of <array 53 of <array 41 of <array 72 of <array 10 of <bool>>>>>>> %ebp+20 ]

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
    movl    $80818, %eax            #   0:     if     80818 < 14994 goto 1_if_true
    movl    $14994, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $99, %eax               #   3:     if     99 <= 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   4:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_9_while_cond:
    movl    $90964, %eax            #  10:     if     90964 >= 46245 goto 10_while_body
    movl    $46245, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_10_while_body     
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  13:     goto   9_while_cond
l_f1_8:
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  16:     goto   13_while_cond
    jmp     l_f1_0                  #  17:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_16_while_cond:
    movl    $1, %eax                #  21:     if     1 = 0 goto 19
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_19                
    jmp     l_f1_20                 #  22:     goto   20
l_f1_19:
    movl    $1, %eax                #  24:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_21                 #  25:     goto   21
l_f1_20:
    movl    $0, %eax                #  27:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_21:
    movzbl  -13(%ebp), %eax         #  29:     if     t0 # 1 goto 17_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_17_while_body     
    jmp     l_f1_15                 #  30:     goto   15
l_f1_17_while_body:
    movl    $76666, %eax            #  32:     assign v2 <- 76666
    movl    %eax, 16(%ebp)         
l_f1_25_while_cond:
    jmp     l_f1_24                 #  34:     goto   24
    jmp     l_f1_25_while_cond      #  35:     goto   25_while_cond
l_f1_24:
    jmp     l_f1_16_while_cond      #  37:     goto   16_while_cond
l_f1_15:
    call    dummyCHARfunc           #  39:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_1_if_true          #   1:     goto   1_if_true
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
l_f2_6_while_cond:
    jmp     l_f2_5                  #   5:     goto   5
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
l_f2_5:
    movl    $10107, %eax            #   8:     if     10107 # 29148 goto 9_if_true
    movl    $29148, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   9:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  11:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $97, %eax               #  14:     if     97 >= 98 goto 13
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_13                
    jmp     l_f2_14                 #  15:     goto   14
l_f2_13:
    movl    $1, %eax                #  17:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_15                 #  18:     goto   15
l_f2_14:
    movl    $0, %eax                #  20:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f2_15:
    movzbl  -13(%ebp), %eax         #  22:     return t0
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  23:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #  26:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  27:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #  28:     if     99 >= t2 goto 22
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_22                
    jmp     l_f2_23                 #  29:     goto   23
l_f2_22:
    movl    $1, %eax                #  31:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_24                 #  32:     goto   24
l_f2_23:
    movl    $0, %eax                #  34:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_f2_24:
    movzbl  -16(%ebp), %eax         #  36:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_18                 #  37:     goto   18
l_f2_18:

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
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   5:     goto   2_while_cond
l_test_1:
    movl    $62544, %eax            #   7:     param  0 <- 62544
    pushl   %eax                   
    call    WriteInt                #   8:     call   WriteInt
    addl    $4, %esp               
    movl    $97, %eax               #   9:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_7                #  11:     goto   7
l_test_7:
    jmp     l_test_15_if_false      #  13:     goto   15_if_false
    movl    $100, %eax              #  14:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_13               #  15:     goto   13
l_test_15_if_false:
l_test_13:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
