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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 6 of <array 3 of <array 9 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    jmp     l_f0_0                  #   1:     goto   0
    leal    _str_1, %eax            #   2:     &()    t1 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    movl    $41731, %eax            #   9:     sub    t2 <- 41731, 45191
    movl    $45191, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     sub    t3 <- t2, 14562
    movl    $14562, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     add    t4 <- t3, 60016
    movl    $60016, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     return t4
    jmp     l_f0_exit              
    movl    $98, %eax               #  13:     if     98 >= 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  14:     goto   10_if_false
l_f0_9_if_true:
l_f0_13_while_cond:
    movl    $97, %eax               #  17:     if     97 # 97 goto 14_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_14_while_body     
    jmp     l_f0_12                 #  18:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  20:     goto   13_while_cond
l_f0_12:
    movl    $34131, %eax            #  22:     return 34131
    jmp     l_f0_exit              
    jmp     l_f0_8                  #  23:     goto   8
l_f0_10_if_false:
l_f0_8:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 6 of <array 3 of <array 9 of <array 10 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 6 of <array 5 of <array 7 of <array 7 of <char>>>>>>> %ebp+12 ]
    #    -34(%ebp)   1  [ $v2       <bool> %ebp-34 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]
    #   -19504(%ebp)  19464  [ $v4       <array 3 of <array 6 of <array 3 of <array 9 of <array 10 of <int>>>>>> %ebp-19504 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $19492, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4873, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-19504(%ebp)         # local array 'v4': 5 dimensions
    movl    $3,-19500(%ebp)         #   dimension 1: 3 elements
    movl    $6,-19496(%ebp)         #   dimension 2: 6 elements
    movl    $3,-19492(%ebp)         #   dimension 3: 3 elements
    movl    $9,-19488(%ebp)         #   dimension 4: 9 elements
    movl    $10,-19484(%ebp)        #   dimension 5: 10 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t1 >= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v2 <- t2
    movb    %al, -34(%ebp)         
    jmp     l_f1_8                  #  10:     goto   8
l_f1_8:
    movl    $1373, %eax             #  12:     assign v3 <- 1373
    movl    %eax, -40(%ebp)        
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  14:     goto   13_while_cond
    movl    $91526, %eax            #  15:     param  1 <- 91526
    pushl   %eax                   
    leal    -19504(%ebp), %eax      #  16:     &()    t3 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  18:     call   t4 <- f0
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    jmp     l_f1_5                  #  19:     goto   5
l_f1_5:
    call    ReadInt                 #  21:     call   t5 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     add    t6 <- t5, 49563
    movl    $49563, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     if     t6 >= 73620 goto 17
    movl    $73620, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_17                
    jmp     l_f1_18                 #  24:     goto   18
l_f1_17:
    movl    $1, %eax                #  26:     assign t7 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_19                 #  27:     goto   19
l_f1_18:
    movl    $0, %eax                #  29:     assign t7 <- 0
    movb    %al, -33(%ebp)         
l_f1_19:
    movzbl  -33(%ebp), %eax         #  31:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $19492, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 2 of <array 1 of <array 1 of <array 1 of <char>>>>>>> %ebp+16 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $34365, %eax            #   2:     assign v3 <- 34365
    movl    %eax, -24(%ebp)        

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
    jmp     l_test_exit            
    jmp     l_test_2_if_true        #   1:     goto   2_if_true
l_test_2_if_true:
l_test_6_while_cond:
    movl    $97, %eax               #   4:     if     97 > 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   5:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
    call    dummyCHARfunc           #   9:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_11_while_cond:
    movl    $37045, %eax            #  11:     if     37045 < 17724 goto 12_while_body
    movl    $17724, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_12_while_body   
    jmp     l_test_10               #  12:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  14:     goto   11_while_cond
l_test_10:
    jmp     l_test_1                #  16:     goto   1
l_test_1:
    jmp     l_test_exit            

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
