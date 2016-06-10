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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 2 of <array 3 of <array 7 of <array 10 of <char>>>>>>> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    leal    _str_1, %eax            #   1:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #   4:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $v0       <int> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t1 <- t0, 72362
    movl    $72362, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3445, %eax             #   3:     if     3445 > t1 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    call    dummyBOOLfunc           #   9:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  10:     if     t2 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6_while_body      
    jmp     l_f1_4                  #  11:     goto   4
l_f1_6_while_body:
    movl    $0, %eax                #  13:     if     0 # 0 goto 8_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_8_if_true         
    jmp     l_f1_9_if_false         #  14:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #  16:     goto   7
l_f1_9_if_false:
l_f1_7:
l_f1_12_while_cond:
    movl    $18944, %eax            #  20:     if     18944 = 7126 goto 13_while_body
    movl    $7126, %ebx            
    cmpl    %ebx, %eax             
    je      l_f1_13_while_body     
    jmp     l_f1_11                 #  21:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  23:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_5_while_cond       #  25:     goto   5_while_cond
l_f1_4:
    movl    $51368, %eax            #  27:     mul    t3 <- 51368, 381
    movl    $381, %ebx             
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     div    t4 <- t3, 13353
    movl    $13353, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t5 <- t4, 49233
    movl    $49233, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     div    t6 <- t5, 51444
    movl    $51444, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     div    t7 <- t6, 88468
    movl    $88468, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    $52469, %eax            #  32:     sub    t8 <- 52469, t7
    movl    -44(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  33:     assign v0 <- t8
    movl    %eax, -52(%ebp)        

l_f1_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 8 of <array 2 of <array 3 of <array 7 of <array 10 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <bool> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #   -3404(%ebp)  3384  [ $v1       <array 8 of <array 2 of <array 3 of <array 7 of <array 10 of <char>>>>>> %ebp-3404 ]
    #   -3408(%ebp)   4  [ $v2       <int> %ebp-3408 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3396, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $849, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3404(%ebp)          # local array 'v1': 5 dimensions
    movl    $8,-3400(%ebp)          #   dimension 1: 8 elements
    movl    $2,-3396(%ebp)          #   dimension 2: 2 elements
    movl    $3,-3392(%ebp)          #   dimension 3: 3 elements
    movl    $7,-3388(%ebp)          #   dimension 4: 7 elements
    movl    $10,-3384(%ebp)         #   dimension 5: 10 elements

    # function body
    leal    -3404(%ebp), %eax       #   0:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t0
    pushl   %eax                   
    movl    $14467, %eax            #   2:     param  1 <- 14467
    pushl   %eax                   
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   5:     call   t2 <- f0
    addl    $12, %esp              
    movb    %al, -18(%ebp)         
    movl    $39170, %eax            #   6:     if     39170 >= 53043 goto 2_if_true
    movl    $53043, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   7:     goto   3_if_false
l_f2_2_if_true:
    movl    $12670, %eax            #   9:     assign v2 <- 12670
    movl    %eax, -3408(%ebp)      
    movl    $76363, %eax            #  10:     if     76363 >= 20837 goto 7_if_true
    movl    $20837, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  11:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #  13:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $100, %eax              #  16:     if     100 <= 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  17:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  19:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_1                  #  22:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_15_while_cond:
    movl    $99, %eax               #  26:     if     99 < 100 goto 18
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_18                
    jmp     l_f2_19                 #  27:     goto   19
l_f2_18:
    movl    $1, %eax                #  29:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_20                 #  30:     goto   20
l_f2_19:
    movl    $0, %eax                #  32:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_f2_20:
    movzbl  -19(%ebp), %eax         #  34:     if     t3 = 0 goto 16_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_16_while_body     
    jmp     l_f2_14                 #  35:     goto   14
l_f2_16_while_body:
    call    f1                      #  37:     call   t4 <- f1
    movb    %al, -20(%ebp)         
    movl    $29196, %eax            #  38:     if     29196 >= 26731 goto 24_if_true
    movl    $26731, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_24_if_true        
    jmp     l_f2_25_if_false        #  39:     goto   25_if_false
l_f2_24_if_true:
    jmp     l_f2_23                 #  41:     goto   23
l_f2_25_if_false:
l_f2_23:
    jmp     l_f2_27                 #  44:     goto   27
l_f2_27:
    jmp     l_f2_15_while_cond      #  46:     goto   15_while_cond
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $3396, %esp             # remove locals
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
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
    jmp     l_test_exit            
l_test_12_while_cond:
    movl    $41992, %eax            #   7:     assign v0 <- 41992
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_12_while_cond    #   9:     goto   12_while_cond

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
