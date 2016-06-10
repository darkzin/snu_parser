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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <char>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 68 of <array 48 of <array 52 of <array 70 of <array 24 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    movl    $98, %eax               #   0:     if     98 = 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $33394, %eax            #   4:     sub    t5 <- 33394, 83408
    movl    $83408, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     add    t6 <- t5, 43811
    movl    $43811, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     sub    t7 <- t6, 9875
    movl    $9875, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $63979, %eax            #   7:     if     63979 >= t7 goto 6_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_6_while_body      
    jmp     l_f0_4                  #   8:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  10:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    leal    _str_1, %eax            #  15:     &()    t8 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #  17:     call   WriteStr
    addl    $4, %esp               
    movl    $98, %eax               #  18:     if     98 >= 97 goto 10
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_10                
    jmp     l_f0_11                 #  19:     goto   11
l_f0_10:
    movl    $1, %eax                #  21:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_12                 #  22:     goto   12
l_f0_11:
    movl    $0, %eax                #  24:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f0_12:
    movzbl  -29(%ebp), %eax         #  26:     assign v1 <- t9
    movb    %al, 12(%ebp)          

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 12 of <array 53 of <array 10 of <array 83 of <array 69 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
    jmp     l_f1_8_if_false         #   3:     goto   8_if_false
    jmp     l_f1_6                  #   4:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_11_if_false        #   7:     goto   11_if_false
    jmp     l_f1_9                  #   8:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $98, %eax               #  11:     assign v3 <- 98
    movb    %al, 20(%ebp)          
    movl    $97, %eax               #  12:     if     97 > 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  13:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  15:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_0                  #  18:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  21:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  22:     assign v3 <- t5
    movb    %al, 20(%ebp)          
    movl    $100, %eax              #  23:     assign v3 <- 100
    movb    %al, 20(%ebp)          

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    jmp     l_f2_1_while_cond       #   1:     goto   1_while_cond
    jmp     l_f2_exit              
l_f2_7_while_cond:
    movl    $42724, %eax            #   4:     sub    t5 <- 42724, 40652
    movl    $40652, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     add    t6 <- t5, 16632
    movl    $16632, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     if     t6 <= 48970 goto 8_while_body
    movl    $48970, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_8_while_body      
    jmp     l_f2_6                  #   7:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   9:     goto   7_while_cond
l_f2_6:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 68 of <array 48 of <array 52 of <array 70 of <array 24 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_4_while_cond:
    movl    $9155, %eax             #   2:     if     9155 > 88731 goto 5_while_body
    movl    $88731, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_5_while_body    
    jmp     l_test_3                #   3:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   5:     goto   4_while_cond
l_test_3:
    movl    $0, %eax                #   7:     param  1 <- 0
    pushl   %eax                   
    leal    v0, %eax                #   8:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     param  0 <- t0
    pushl   %eax                   
    call    f0                      #  10:     call   t1 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    jmp     l_test_exit            
    movl    $100, %eax              #  12:     assign v1 <- 100
    movb    %al, v1                
    movl    $99, %eax               #  13:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_0                #  15:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $49525, %eax            #  18:     div    t2 <- 49525, 97294
    movl    $97294, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     mul    t3 <- t2, 9172
    movl    $9172, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $85920, %eax            #  20:     if     85920 = t3 goto 13_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_13_if_true      
    jmp     l_test_14_if_false      #  21:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_exit            
    jmp     l_test_12               #  24:     goto   12
l_test_14_if_false:
l_test_12:
l_test_18_while_cond:
    jmp     l_test_17               #  28:     goto   17
l_test_21_while_cond:
    jmp     l_test_21_while_cond    #  30:     goto   21_while_cond
l_test_24_while_cond:
    jmp     l_test_23               #  32:     goto   23
    jmp     l_test_24_while_cond    #  33:     goto   24_while_cond
l_test_23:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  36:     call   t4 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_18_while_cond    #  37:     goto   18_while_cond
l_test_17:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <array 68 of <array 48 of <array 52 of <array 70 of <array 24 of <int>>>>>>
    .long    5
    .long   68
    .long   48
    .long   52
    .long   70
    .long   24
    .skip 1140572160
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
