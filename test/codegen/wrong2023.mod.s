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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 87 of <array 97 of <array 58 of <array 3 of <array 15 of <char>>>>>>> %ebp+16 ]
    #    -22(%ebp)   1  [ $v3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
l_f0_1_while_cond:
    jmp     l_f0_5                  #   1:     goto   5
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   3:     goto   6
l_f0_5:
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   7:     if     t0 = 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_while_body:
    movl    $1, %eax                #  10:     assign v3 <- 1
    movb    %al, -22(%ebp)         
    movl    $97, %eax               #  11:     if     97 # 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_10                
    jmp     l_f0_11                 #  12:     goto   11
l_f0_10:
    movl    $1, %eax                #  14:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_12                 #  15:     goto   12
l_f0_11:
    movl    $0, %eax                #  17:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f0_12:
    movzbl  -14(%ebp), %eax         #  19:     return t1
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  20:     goto   1_while_cond
l_f0_0:
    movl    $80958, %eax            #  22:     if     80958 < 76451 goto 15_if_true
    movl    $76451, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  23:     goto   16_if_false
l_f0_15_if_true:
    movl    $58611, %eax            #  25:     assign v4 <- 58611
    movl    %eax, -28(%ebp)        
l_f0_20_while_cond:
    jmp     l_f0_19                 #  27:     goto   19
    jmp     l_f0_20_while_cond      #  28:     goto   20_while_cond
l_f0_19:
    call    dummyINTfunc            #  30:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f0_24_while_cond:
    movl    $99, %eax               #  32:     if     99 < 97 goto 25_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_25_while_body     
    jmp     l_f0_23                 #  33:     goto   23
l_f0_25_while_body:
    jmp     l_f0_24_while_cond      #  35:     goto   24_while_cond
l_f0_23:
    jmp     l_f0_14                 #  37:     goto   14
l_f0_16_if_false:
l_f0_14:
    jmp     l_f0_28                 #  40:     goto   28
    jmp     l_f0_29                 #  41:     goto   29
l_f0_28:
    movl    $1, %eax                #  43:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_30                 #  44:     goto   30
l_f0_29:
    movl    $0, %eax                #  46:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f0_30:
    movzbl  -21(%ebp), %eax         #  48:     return t3
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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 94 of <array 65 of <array 3 of <array 1 of <array 71 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 100 of <array 70 of <array 49 of <array 32 of <array 38 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_exit              
l_f1_3_while_cond:
    movl    $89822, %eax            #   5:     if     89822 >= 88153 goto 6_if_true
    movl    $88153, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   6:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_10_while_cond:
    movl    $68387, %eax            #  12:     if     68387 < 37145 goto 11_while_body
    movl    $37145, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_11_while_body     
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  15:     goto   10_while_cond
l_f1_9:
    call    dummyINTfunc            #  17:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_16_if_false        #  18:     goto   16_if_false
    jmp     l_f1_14                 #  19:     goto   14
l_f1_16_if_false:
l_f1_14:
    call    dummyBOOLfunc           #  22:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f1_3_while_cond       #  23:     goto   3_while_cond

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    movl    $90782, %eax            #   0:     sub    t0 <- 90782, 19068
    movl    $19068, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 69824
    movl    $69824, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 15153
    movl    $15153, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t3 <- t2, 59072
    movl    $59072, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t4 <- t3, 35236
    movl    $35236, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     assign v1 <- t4
    movl    %eax, 12(%ebp)         
l_f2_2_while_cond:
    jmp     l_f2_2_while_cond       #   7:     goto   2_while_cond
    jmp     l_f2_14                 #   8:     goto   14
    jmp     l_f2_14                 #   9:     goto   14
    jmp     l_f2_9                  #  10:     goto   9
l_f2_14:
    jmp     l_f2_9                  #  12:     goto   9
l_f2_9:
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_11                 #  15:     goto   11
    movl    $0, %eax                #  16:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_f2_11:
    movzbl  -33(%ebp), %eax         #  18:     return t5
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    jmp     l_test_0                #   1:     goto   0
    movl    $61216, %eax            #   2:     assign v0 <- 61216
    movl    %eax, v0               
    movl    $100, %eax              #   3:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
l_test_6_while_cond:
    jmp     l_test_10_if_false      #   7:     goto   10_if_false
    jmp     l_test_8                #   8:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_exit            
    jmp     l_test_6_while_cond     #  12:     goto   6_while_cond
    jmp     l_test_exit            

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
