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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]

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
    movl    $97, %eax               #   0:     if     97 = 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $0, %eax                #   3:     return 0
    jmp     l_f0_exit              
    movl    $62217, %eax            #   4:     if     62217 < 38346 goto 6
    movl    $38346, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_6                 
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $1, %eax                #   7:     assign t7 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $0, %eax                #  10:     assign t7 <- 0
    movb    %al, -18(%ebp)         
l_f0_8:
    movzbl  -18(%ebp), %eax         #  12:     assign v3 <- t7
    movb    %al, 12(%ebp)          
    jmp     l_f0_0                  #  13:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    ReadInt                 #  16:     call   t8 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     mul    t9 <- t8, 31528
    movl    $31528, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     assign v2 <- t9
    movl    %eax, 8(%ebp)          
    movl    $85435, %eax            #  19:     add    t10 <- 85435, 97871
    movl    $97871, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $57053, %eax            #  20:     if     57053 <= t10 goto 12_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  21:     goto   13_if_false
l_f0_12_if_true:
l_f0_16_while_cond:
    jmp     l_f0_16_while_cond      #  24:     goto   16_while_cond
l_f0_19_while_cond:
    jmp     l_f0_19_while_cond      #  26:     goto   19_while_cond
    movl    $98, %eax               #  27:     if     98 <= 97 goto 22
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_22                
    jmp     l_f0_23                 #  28:     goto   23
l_f0_22:
    movl    $1, %eax                #  30:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_24                 #  31:     goto   24
l_f0_23:
    movl    $0, %eax                #  33:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f0_24:
    movzbl  -17(%ebp), %eax         #  35:     assign v3 <- t11
    movb    %al, 12(%ebp)          
    jmp     l_f0_11                 #  36:     goto   11
l_f0_13_if_false:
l_f0_11:

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 3 of <array 4 of <array 7 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <bool> %ebp+20 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f1_exit              
    movl    $9625, %eax             #   1:     param  2 <- 9625
    pushl   %eax                   
    movl    $45497, %eax            #   2:     if     45497 = 59526 goto 5
    movl    $59526, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f1_7:
    movzbl  -14(%ebp), %eax         #  10:     param  1 <- t7
    pushl   %eax                   
    movl    $62782, %eax            #  11:     div    t8 <- 62782, 74914
    movl    $74914, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  13:     call   t9 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    jmp     l_f1_0                  #  14:     goto   0
l_f1_0:
l_f1_10_while_cond:
    call    dummyCHARfunc           #  17:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #  18:     if     97 # t10 goto 11_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_11_while_body     
    jmp     l_f1_9                  #  19:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  21:     goto   10_while_cond
l_f1_9:
    movl    $98, %eax               #  23:     return 98
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 10 of <array 2 of <array 10 of <array 8 of <array 2 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 4 of <array 2 of <array 1 of <array 5 of <array 2 of <char>>>>>>> %ebp+20 ]
    #    -13(%ebp)   1  [ $v6       <bool> %ebp-13 ]

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
    movl    $1, %eax                #   1:     assign v6 <- 1
    movb    %al, -13(%ebp)         
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    movl    $78869, %eax            #   4:     assign v0 <- 78869
    movl    %eax, v0               
    movl    $14981, %eax            #   5:     assign v0 <- 14981
    movl    %eax, v0               
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #   7:     goto   7_while_cond
    movl    $100, %eax              #   8:     if     100 = 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_10_if_true      
    jmp     l_test_11_if_false      #   9:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  11:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_0                #  14:     goto   0
l_test_2_if_false:
l_test_0:
l_test_14_while_cond:
    jmp     l_test_13               #  18:     goto   13
    movl    $100, %eax              #  19:     if     100 <= 100 goto 17
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_17              
    jmp     l_test_18               #  20:     goto   18
l_test_17:
    movl    $1, %eax                #  22:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_19               #  23:     goto   19
l_test_18:
    movl    $0, %eax                #  25:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_19:
    movzbl  -14(%ebp), %eax         #  27:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_14_while_cond    #  28:     goto   14_while_cond
l_test_13:
    jmp     l_test_exit            
    movl    $10079, %eax            #  31:     sub    t2 <- 10079, 72535
    movl    $72535, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  32:     add    t3 <- t2, 55059
    movl    $55059, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     sub    t4 <- t3, 68202
    movl    $68202, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  34:     sub    t5 <- t4, 31837
    movl    $31837, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  35:     assign v0 <- t5
    movl    %eax, v0               
    movl    $100, %eax              #  36:     if     100 > 100 goto 24_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_24_if_true      
    jmp     l_test_25_if_false      #  37:     goto   25_if_false
l_test_24_if_true:
l_test_28_while_cond:
    jmp     l_test_29_while_body    #  40:     goto   29_while_body
    jmp     l_test_29_while_body    #  41:     goto   29_while_body
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  43:     goto   28_while_cond
    jmp     l_test_23               #  44:     goto   23
l_test_25_if_false:
l_test_23:
l_test_35_while_cond:
    movl    $96439, %eax            #  48:     param  2 <- 96439
    pushl   %eax                   
    movl    $1, %eax                #  49:     param  1 <- 1
    pushl   %eax                   
    movl    $80576, %eax            #  50:     param  0 <- 80576
    pushl   %eax                   
    call    f0                      #  51:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  52:     if     t6 = 1 goto 38
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_38              
    jmp     l_test_34               #  53:     goto   34
l_test_38:
    jmp     l_test_34               #  55:     goto   34
    jmp     l_test_35_while_cond    #  56:     goto   35_while_cond
l_test_34:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
